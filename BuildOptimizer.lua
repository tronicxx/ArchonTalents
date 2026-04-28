-- Builds an optimal talent loadout for the active spec from WCL pick-rate data.
-- Handles prereq chains via BFS, respects per-section currency gates, and runs
-- a swap pass that trades low-rate includes for higher-rate skips.

local _, addon = ...

local Build = {}
addon.Build = Build

-- Pick-rate floors. Data values are 0..1 (1.0 == 100% of top-100 logs).
local MIN_PICK_RATE = 0.01
local MIN_TIER_RATE = 0.25
local SWAP_ROUND_CAP = 8

local cachedEntries, cachedSet, cachedNodes, cachedDiagnostics, cachedSubTree
local cachedKey

function Build.Invalidate()
	cachedEntries, cachedSet, cachedNodes, cachedDiagnostics, cachedSubTree, cachedKey = nil, nil, nil, nil, nil, nil
end

local function DetectActiveSubTreeID(configID, treeNodes, specData, nodeInfos)
	for _, nodeID in ipairs(treeNodes) do
		local info = nodeInfos[nodeID]
		if info and info.isVisible and info.type == Enum.TraitNodeType.SubTreeSelection and info.entryIDs then
			local bestEntry, bestRate = nil, 0
			for _, eID in ipairs(info.entryIDs) do
				local rate = specData[eID] or 0
				if rate > bestRate then bestEntry, bestRate = eID, rate end
			end
			if not bestEntry and info.activeEntry then bestEntry = info.activeEntry.entryID end
			if bestEntry then
				local eInfo = C_Traits.GetEntryInfo(configID, bestEntry)
				if eInfo and eInfo.subTreeID then return eInfo.subTreeID end
			end
		end
	end
	return nil
end

-- Tiered nodes: keep allocating ranks while the next entry clears the floor.
-- Non-tiered passives: gate the whole node by MIN_TIER_RATE so a 2-rank node
-- like Carnivorous Stalkers (6% on Mythic Chimaerus) doesn't claim 2 budget
-- points just because it's anchored. Without this, low-rate non-tiered nodes
-- starve the spec budget before the high-rate skip-list (Vilefiend, Stabilized
-- Portals, Mark of F'harg) gets processed.
local function DesiredRanks(configID, info, specData, isHeroBranch)
	local maxRanks = info.maxRanks or 1
	if info.type == Enum.TraitNodeType.Selection or info.type == Enum.TraitNodeType.SubTreeSelection then
		return 1
	end
	if info.type ~= Enum.TraitNodeType.Tiered then
		if isHeroBranch then return maxRanks end
		local bestRate = 0
		for _, eID in ipairs(info.entryIDs) do
			local rate = specData[eID] or 0
			if rate > bestRate then bestRate = rate end
		end
		if bestRate < MIN_TIER_RATE then return 0 end
		return maxRanks
	end
	local allocated = 0
	for i, eID in ipairs(info.entryIDs) do
		if allocated >= maxRanks then break end
		local rate = specData[eID] or 0
		local floor = (i == 1) and MIN_PICK_RATE or MIN_TIER_RATE
		if not isHeroBranch and rate < floor then break end
		local eInfo = C_Traits.GetEntryInfo(configID, eID)
		allocated = allocated + math.min(maxRanks - allocated, eInfo and eInfo.maxRanks or 1)
	end
	return allocated
end

local function DiscoverGates(configID, info)
	local gates, maxGate = {}, 0
	if not info.conditionIDs then return gates, maxGate end
	for _, condID in ipairs(info.conditionIDs) do
		local cond = C_Traits.GetConditionInfo(configID, condID)
		if cond and cond.isGate and cond.spentAmountRequired and cond.traitCurrencyID then
			local req = cond.spentAmountRequired
			local cID = cond.traitCurrencyID
			if not gates[cID] or req > gates[cID] then gates[cID] = req end
			if req > maxGate then maxGate = req end
		end
	end
	return gates, maxGate
end

local function ScoreCandidates(configID, treeNodes, specData, activeSubTreeID, nodeInfos)
	local candidates = {}
	for _, nodeID in ipairs(treeNodes) do
		local info = nodeInfos[nodeID]
		if info and info.entryIDs and #info.entryIDs > 0 and info.isVisible
			and not (info.subTreeID and activeSubTreeID and info.subTreeID ~= activeSubTreeID) then
			local bestEntry, bestRate = nil, 0
			for _, eID in ipairs(info.entryIDs) do
				local rate = specData[eID] or 0
				if rate > bestRate then bestEntry, bestRate = eID, rate end
			end
			if not bestEntry then bestEntry = info.entryIDs[1] end
			local isFree, costPerRank, currencyID = false, 0, nil
			local nodeCosts = C_Traits.GetNodeCost(configID, nodeID)
			if not nodeCosts or #nodeCosts == 0 or nodeCosts[1].amount == 0 then
				isFree = true
			elseif info.ranksPurchased == 0 and info.activeRank > 0 and (info.ranksIncreased or 0) == 0 then
				isFree = true
			else
				costPerRank = nodeCosts[1].amount
				currencyID = nodeCosts[1].ID
			end
			local isHeroBranch = info.subTreeID and info.subTreeID == activeSubTreeID
			local gates, maxGate = DiscoverGates(configID, info)
			candidates[#candidates + 1] = {
				nodeID = nodeID, info = info,
				bestEntry = bestEntry, bestRate = bestRate,
				isFree = isFree, costPerRank = costPerRank, currencyID = currencyID,
				isHeroBranch = isHeroBranch,
				desiredRanks = DesiredRanks(configID, info, specData, isHeroBranch),
				gates = gates, maxGate = maxGate,
			}
		end
	end
	table.sort(candidates, function(a, b)
		if a.maxGate ~= b.maxGate then return a.maxGate < b.maxGate end
		return a.bestRate > b.bestRate
	end)
	return candidates
end

local function ReadBudgets(configID, treeID)
	local currencyInfo = C_Traits.GetTreeCurrencyInfo(configID, treeID, false)
	local budgets = {}
	for _, ci in ipairs(currencyInfo) do
		local max = ci.maxQuantity
		if max == nil then max = (ci.quantity or 0) + (ci.spent or 0) end
		budgets[ci.traitCurrencyID] = max
	end
	return budgets
end

local function AddEntry(cand, configID, importEntries, metaSet, metaNodes)
	local info = cand.info
	local isChoice = info.type == Enum.TraitNodeType.Selection or info.type == Enum.TraitNodeType.SubTreeSelection
	local isTiered = info.type == Enum.TraitNodeType.Tiered
	local ranks = cand.desiredRanks or info.maxRanks or 1
	metaSet[cand.bestEntry] = true
	metaNodes[cand.nodeID] = { entryID = cand.bestEntry, ranks = ranks, tiered = isTiered, choice = isChoice }
	if isTiered then
		local remaining = ranks
		for _, eID in ipairs(info.entryIDs) do
			if remaining <= 0 then break end
			local eInfo = C_Traits.GetEntryInfo(configID, eID)
			local r = math.min(remaining, eInfo and eInfo.maxRanks or 1)
			importEntries[#importEntries + 1] = { nodeID = cand.nodeID, ranksGranted = 0, ranksPurchased = r, selectionEntryID = eID }
			metaSet[eID] = true
			remaining = remaining - r
		end
	elseif isChoice then
		importEntries[#importEntries + 1] = { nodeID = cand.nodeID, ranksGranted = 0, ranksPurchased = 1, selectionEntryID = cand.bestEntry }
	else
		importEntries[#importEntries + 1] = { nodeID = cand.nodeID, ranksGranted = 0, ranksPurchased = ranks, selectionEntryID = cand.bestEntry }
	end
end

local function RemoveEntry(cand, importEntries, metaSet, metaNodes)
	metaNodes[cand.nodeID] = nil
	local info = cand.info
	if info.type == Enum.TraitNodeType.Tiered then
		for _, eID in ipairs(info.entryIDs) do metaSet[eID] = nil end
	else
		metaSet[cand.bestEntry] = nil
	end
	for i = #importEntries, 1, -1 do
		if importEntries[i].nodeID == cand.nodeID then table.remove(importEntries, i) end
	end
end

local function SetRemovalOrphans(removeSet, metaNodes, predecessors)
	for nID in pairs(metaNodes) do
		if not removeSet[nID] then
			local preds = predecessors[nID]
			if preds and #preds > 0 then
				local hasAnchor = false
				for _, p in ipairs(preds) do
					if metaNodes[p] and not removeSet[p] then hasAnchor = true; break end
				end
				if not hasAnchor then return true end
			end
		end
	end
	return false
end

local function BuildPredecessors(treeNodes, nodeInfos)
	local pred = {}
	for _, nodeID in ipairs(treeNodes) do
		local info = nodeInfos[nodeID]
		if info and info.visibleEdges then
			for _, edge in ipairs(info.visibleEdges) do
				local t = edge.targetNode
				if t then
					local list = pred[t]
					if not list then list = {}; pred[t] = list end
					list[#list + 1] = nodeID
				end
			end
		end
	end
	return pred
end

local function BuildSortedPredecessors(predecessors, candidatesByNodeID)
	local sorted = {}
	for target, preds in pairs(predecessors) do
		local out = {}
		for _, p in ipairs(preds) do out[#out + 1] = p end
		table.sort(out, function(a, b)
			local ra = candidatesByNodeID[a] and candidatesByNodeID[a].bestRate or 0
			local rb = candidatesByNodeID[b] and candidatesByNodeID[b].bestRate or 0
			return ra > rb
		end)
		sorted[target] = out
	end
	return sorted
end

local function FindMissingChain(target, sortedPreds, metaNodes, candidatesByNodeID)
	local preds = sortedPreds[target]
	if not preds or #preds == 0 then return {} end
	for _, p in ipairs(preds) do
		if metaNodes[p] then return {} end
	end
	local queue, head, visited = {}, 1, { [target] = true }
	for _, p in ipairs(preds) do
		if candidatesByNodeID[p] and not visited[p] then
			visited[p] = true
			queue[#queue + 1] = { nodeID = p }
		end
	end
	while head <= #queue do
		local state = queue[head]; head = head + 1
		local ancPreds = sortedPreds[state.nodeID]
		local anchored = not ancPreds or #ancPreds == 0
		if not anchored then
			for _, p in ipairs(ancPreds) do
				if metaNodes[p] then anchored = true; break end
			end
		end
		if anchored then
			local chain, cur = {}, state
			while cur do chain[#chain + 1] = cur.nodeID; cur = cur.parent end
			local rev = {}
			for i = #chain, 1, -1 do rev[#rev + 1] = chain[i] end
			return rev
		end
		for _, p in ipairs(ancPreds) do
			if candidatesByNodeID[p] and not visited[p] then
				visited[p] = true
				queue[#queue + 1] = { nodeID = p, parent = state }
			end
		end
	end
	return nil
end

local function CandidateCost(c)
	if c.isFree or not c.currencyID then return nil, 0 end
	return c.currencyID, c.costPerRank * (c.desiredRanks or 1)
end

local function GatesMet(spent, gates)
	if not gates then return true end
	for cID, req in pairs(gates) do
		if (spent[cID] or 0) < req then return false end
	end
	return true
end

local function BuildOptimalEntries(configID, treeID, specData)
	local treeNodes = C_Traits.GetTreeNodes(treeID)
	if not treeNodes then return {}, {}, {}, {} end
	local nodeInfos = {}
	for _, nodeID in ipairs(treeNodes) do nodeInfos[nodeID] = C_Traits.GetNodeInfo(configID, nodeID) end
	local activeSubTreeID = DetectActiveSubTreeID(configID, treeNodes, specData, nodeInfos)
	cachedSubTree = activeSubTreeID
	local candidates = ScoreCandidates(configID, treeNodes, specData, activeSubTreeID, nodeInfos)
	local predecessors = BuildPredecessors(treeNodes, nodeInfos)
	local budgets = ReadBudgets(configID, treeID)
	local spent = {}
	local importEntries, metaSet, metaNodes = {}, {}, {}
	local candidatesByNodeID = {}
	for _, c in ipairs(candidates) do candidatesByNodeID[c.nodeID] = c end
	local sortedPreds = BuildSortedPredecessors(predecessors, candidatesByNodeID)

	local diagnostics = {}
	local function note(nodeID, rate, verdict)
		diagnostics[nodeID] = { nodeID = nodeID, rate = rate, verdict = verdict }
	end

	-- Pass 0 — anchored-only fixed point. Pass 1's iteration order is
	-- (maxGate asc, rate desc), which doesn't respect topology: a 100% node
	-- can be processed before its 100% predecessor has been added, forcing the
	-- chain BFS to take a low-rate detour (e.g. Flametouched ← Carnivorous
	-- Stalkers when Implosion would have anchored it). Iterate adding everything
	-- whose chain is already empty, until stable. After this, Pass 1 only needs
	-- chains for nodes whose predecessors are genuinely not in the meta build.
	local function TryAddAnchored(cand)
		if metaNodes[cand.nodeID] or not cand.bestEntry or cand.desiredRanks <= 0 then return false end
		if not (cand.isFree or cand.isHeroBranch or cand.bestRate >= MIN_PICK_RATE) then return false end
		local chain = FindMissingChain(cand.nodeID, sortedPreds, metaNodes, candidatesByNodeID)
		if not chain or #chain > 0 then return false end
		if not GatesMet(spent, cand.gates) then return false end
		local cID, amt = CandidateCost(cand)
		if cID and (not budgets[cID] or budgets[cID] < amt) then return false end
		if cID then
			budgets[cID] = budgets[cID] - amt
			spent[cID] = (spent[cID] or 0) + amt
		end
		AddEntry(cand, configID, importEntries, metaSet, metaNodes)
		diagnostics[cand.nodeID] = { nodeID = cand.nodeID, rate = cand.bestRate, verdict = "included" }
		return true
	end
	repeat
		local added = false
		for _, cand in ipairs(candidates) do
			if TryAddAnchored(cand) then added = true end
		end
	until not added

	for _, cand in ipairs(candidates) do
		if metaNodes[cand.nodeID] then
			diagnostics[cand.nodeID] = diagnostics[cand.nodeID] or { nodeID = cand.nodeID, rate = cand.bestRate, verdict = "included:chain" }
		elseif not cand.bestEntry then
			note(cand.nodeID, cand.bestRate, "skip:no_entry")
		elseif cand.desiredRanks <= 0 then
			note(cand.nodeID, cand.bestRate, "skip:desired_ranks=0")
		elseif not (cand.isFree or cand.isHeroBranch or cand.bestRate >= MIN_PICK_RATE) then
			note(cand.nodeID, cand.bestRate, "skip:rate_gate")
		else
			local chain = FindMissingChain(cand.nodeID, sortedPreds, metaNodes, candidatesByNodeID)
			if not chain then
				note(cand.nodeID, cand.bestRate, "skip:unreachable")
			else
				local toAdd, missingPred = {}, nil
				for _, nID in ipairs(chain) do
					local c = candidatesByNodeID[nID]
					if not c then missingPred = nID; break end
					toAdd[#toAdd + 1] = c
				end
				if missingPred then
					note(cand.nodeID, cand.bestRate, "skip:pred_not_candidate:" .. missingPred)
				else
					toAdd[#toAdd + 1] = cand
					local gateFail
					for _, c in ipairs(toAdd) do
						if not GatesMet(spent, c.gates) then gateFail = c; break end
					end
					if gateFail then
						note(cand.nodeID, cand.bestRate, "skip:gate:maxGate=" .. gateFail.maxGate)
					else
						local cost = {}
						for _, c in ipairs(toAdd) do
							local cID, amt = CandidateCost(c)
							if cID then cost[cID] = (cost[cID] or 0) + amt end
						end
						local fits, shortCur, shortNeed = true, nil, nil
						for cID, amt in pairs(cost) do
							if not budgets[cID] or budgets[cID] < amt then
								fits, shortCur, shortNeed = false, cID, amt; break
							end
						end
						if fits then
							for cID, amt in pairs(cost) do
								budgets[cID] = budgets[cID] - amt
								spent[cID] = (spent[cID] or 0) + amt
							end
							for _, c in ipairs(toAdd) do
								AddEntry(c, configID, importEntries, metaSet, metaNodes)
								diagnostics[c.nodeID] = { nodeID = c.nodeID, rate = c.bestRate,
									verdict = (c == cand) and "included" or ("included:chain_for=" .. cand.nodeID) }
							end
						else
							note(cand.nodeID, cand.bestRate, ("skip:budget:cur=%s need=%s have=%s"):format(
								tostring(shortCur), tostring(shortNeed), tostring(budgets[shortCur] or 0)))
						end
					end
				end
			end
		end
	end

	for _ = 1, SWAP_ROUND_CAP do
		local improved = false
		for _, cand in ipairs(candidates) do
			if not metaNodes[cand.nodeID] and cand.bestEntry and cand.desiredRanks > 0
				and (cand.isFree or cand.isHeroBranch or cand.bestRate >= MIN_PICK_RATE) then
				local chain = FindMissingChain(cand.nodeID, sortedPreds, metaNodes, candidatesByNodeID)
				if chain then
					local toAdd, skip = {}, false
					for _, nID in ipairs(chain) do
						local c = candidatesByNodeID[nID]
						if not c then skip = true; break end
						toAdd[#toAdd + 1] = c
					end
					if not skip then
						toAdd[#toAdd + 1] = cand
						local needCost, addRate = {}, 0
						for _, c in ipairs(toAdd) do
							addRate = addRate + c.bestRate * (c.desiredRanks or 1)
							local cID, amt = CandidateCost(c)
							if cID then needCost[cID] = (needCost[cID] or 0) + amt end
						end
						local swappable = {}
						for nID in pairs(metaNodes) do
							local c = candidatesByNodeID[nID]
							if c and not c.isFree and c.bestRate < cand.bestRate
								and c.currencyID and needCost[c.currencyID] then
								swappable[#swappable + 1] = c
							end
						end
						table.sort(swappable, function(a, b) return a.bestRate < b.bestRate end)
						local removeSet, freed, removedRate = {}, {}, 0
						local fits = false
						for _, c in ipairs(swappable) do
							removeSet[c.nodeID] = true
							removedRate = removedRate + c.bestRate * (c.desiredRanks or 1)
							local cID, amt = CandidateCost(c)
							if cID then freed[cID] = (freed[cID] or 0) + amt end
							local allFit = true
							for cID2, need in pairs(needCost) do
								if (budgets[cID2] or 0) + (freed[cID2] or 0) < need then allFit = false; break end
							end
							if allFit then fits = true; break end
						end
						local chainClash = false
						for _, c in ipairs(toAdd) do
							if removeSet[c.nodeID] then chainClash = true; break end
						end
						local tentativeSpent = {}
						for cID, s in pairs(spent) do tentativeSpent[cID] = s end
						for cID, amt in pairs(freed) do tentativeSpent[cID] = (tentativeSpent[cID] or 0) - amt end
						for cID, amt in pairs(needCost) do tentativeSpent[cID] = (tentativeSpent[cID] or 0) + amt end
						local gatesOK = true
						for nID in pairs(metaNodes) do
							if not removeSet[nID] then
								local c = candidatesByNodeID[nID]
								if c and not GatesMet(tentativeSpent, c.gates) then gatesOK = false; break end
							end
						end
						if gatesOK then
							for _, c in ipairs(toAdd) do
								if not GatesMet(tentativeSpent, c.gates) then gatesOK = false; break end
							end
						end
						if fits and gatesOK and not chainClash and addRate > removedRate
							and not SetRemovalOrphans(removeSet, metaNodes, predecessors) then
							for nID in pairs(removeSet) do
								local c = candidatesByNodeID[nID]
								local cID, amt = CandidateCost(c)
								if cID then
									budgets[cID] = budgets[cID] + amt
									spent[cID] = (spent[cID] or 0) - amt
								end
								RemoveEntry(c, importEntries, metaSet, metaNodes)
								diagnostics[nID] = { nodeID = nID, rate = c.bestRate, verdict = "swapped_out_for=" .. cand.nodeID }
							end
							for cID, amt in pairs(needCost) do
								budgets[cID] = budgets[cID] - amt
								spent[cID] = (spent[cID] or 0) + amt
							end
							for _, c in ipairs(toAdd) do
								AddEntry(c, configID, importEntries, metaSet, metaNodes)
								diagnostics[c.nodeID] = { nodeID = c.nodeID, rate = c.bestRate,
									verdict = (c == cand) and "included:swap" or ("included:chain_for=" .. cand.nodeID) }
							end
							improved = true
						end
					end
				end
			end
		end
		if not improved then break end
	end

	-- Pass 3 — fill remaining budget. Walks candidates by rate desc and adds
	-- anything whose chain fits the leftover currency, ignoring the rate floor.
	-- Catches the case where the rate gate, swap pass, or chain-cost dependencies
	-- left points unspent in a section.
	for _, cand in ipairs(candidates) do
		if not metaNodes[cand.nodeID] and cand.bestEntry and cand.desiredRanks > 0 then
			local chain = FindMissingChain(cand.nodeID, sortedPreds, metaNodes, candidatesByNodeID)
			if chain then
				local toAdd, missingPred = {}, nil
				for _, nID in ipairs(chain) do
					local c = candidatesByNodeID[nID]
					if not c then missingPred = nID; break end
					toAdd[#toAdd + 1] = c
				end
				if not missingPred then
					toAdd[#toAdd + 1] = cand
					local gateFail
					for _, c in ipairs(toAdd) do
						if not GatesMet(spent, c.gates) then gateFail = c; break end
					end
					if not gateFail then
						local cost = {}
						for _, c in ipairs(toAdd) do
							local cID, amt = CandidateCost(c)
							if cID then cost[cID] = (cost[cID] or 0) + amt end
						end
						local fits = true
						for cID, amt in pairs(cost) do
							if not budgets[cID] or budgets[cID] < amt then fits = false; break end
						end
						if fits then
							for cID, amt in pairs(cost) do
								budgets[cID] = budgets[cID] - amt
								spent[cID] = (spent[cID] or 0) + amt
							end
							for _, c in ipairs(toAdd) do
								AddEntry(c, configID, importEntries, metaSet, metaNodes)
								diagnostics[c.nodeID] = { nodeID = c.nodeID, rate = c.bestRate,
									verdict = (c == cand) and "included:fill" or ("included:chain_for=" .. cand.nodeID) }
							end
						end
					end
				end
			end
		end
	end

	return importEntries, metaSet, metaNodes, diagnostics
end

function Build.Compute()
	local Heatmap = addon.Heatmap
	if not Heatmap then return nil, nil, nil end
	local specData, key = Heatmap.GetSpecData()
	if not specData then return nil, nil, nil end
	if cachedEntries and cachedKey == key then
		return cachedEntries, cachedSet, cachedNodes
	end
	local configID = C_ClassTalents.GetActiveConfigID()
	if not configID then return nil, nil, nil end
	local cfgInfo = C_Traits.GetConfigInfo(configID)
	if not cfgInfo or not cfgInfo.treeIDs or not cfgInfo.treeIDs[1] then return nil, nil, nil end
	cachedEntries, cachedSet, cachedNodes, cachedDiagnostics = BuildOptimalEntries(configID, cfgInfo.treeIDs[1], specData)
	cachedKey = key
	return cachedEntries, cachedSet, cachedNodes
end

function Build.GetMetaSet()
	local _, set = Build.Compute()
	return set
end

function Build.GetMetaNodes()
	local _, _, nodes = Build.Compute()
	return nodes
end

function Build.GetDiagnostics()
	Build.Compute()
	return cachedDiagnostics
end

function Build.GetActiveSubTreeID()
	Build.Compute()
	return cachedSubTree
end

-- ===== DIAGNOSTIC SLASH COMMAND =====

local function ResolveNodeNames(configID, nodeID)
	local info = C_Traits.GetNodeInfo(configID, nodeID)
	if not info or not info.entryIDs then return "node " .. nodeID, nil end
	local names, subTreeID = {}, info.subTreeID
	for _, eID in ipairs(info.entryIDs) do
		local eInfo = C_Traits.GetEntryInfo(configID, eID)
		if eInfo and eInfo.definitionID then
			local def = C_Traits.GetDefinitionInfo(eInfo.definitionID)
			if def and def.spellID then
				local n = C_Spell.GetSpellName(def.spellID)
				if n then names[#names + 1] = n end
			end
		end
	end
	if #names == 0 then return "node " .. nodeID, subTreeID end
	return table.concat(names, " / "), subTreeID
end

local function PrintDiagnostics()
	local Heatmap = addon.Heatmap
	if not Heatmap or not Heatmap.HasData() then
		print("|cffff0000[Archon Diag]|r No data for current spec/boss/difficulty.")
		return
	end
	Build.Compute()
	local diag = cachedDiagnostics
	if not diag then
		print("|cffff0000[Archon Diag]|r No diagnostics available.")
		return
	end
	local configID = C_ClassTalents.GetActiveConfigID()
	if not configID then return end

	local _, classToken = UnitClass("player")
	local specIndex = C_SpecializationInfo.GetSpecialization()
	local _, specName = C_SpecializationInfo.GetSpecializationInfo(specIndex)
	print(("|cff00ff00[Archon Diag]|r %s %s | subtree=%s"):format(
		specName or "?", classToken or "?", tostring(cachedSubTree)))

	local rows = {}
	for nodeID, d in pairs(diag) do
		local name, subTreeID = ResolveNodeNames(configID, nodeID)
		rows[#rows + 1] = {
			rate = d.rate or 0,
			nodeID = nodeID,
			name = name,
			subTreeID = subTreeID,
			verdict = d.verdict or "?",
		}
	end
	table.sort(rows, function(a, b) return a.rate > b.rate end)

	for _, r in ipairs(rows) do
		local mark = r.subTreeID and "[H]" or "   "
		print(("  %s %3d%% %-32s (n=%d) %s"):format(
			mark, math.floor((r.rate or 0) * 100 + 0.5), r.name, r.nodeID, r.verdict))
	end
end

SLASH_ATDIAG1 = "/atdiag"
SlashCmdList["ATDIAG"] = PrintDiagnostics
