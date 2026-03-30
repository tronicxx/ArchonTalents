-- Archon Talents Addon
-- Displays the most popular talent builds from Archon.gg meta data

local addonName, addon = ...
local ArchonTalents = CreateFrame("Frame")

-- SavedVariables: only user preferences (minimap button position, etc.)
if not ArchonTalentsDB then
	ArchonTalentsDB = {}
end

-- Talent data comes from ArchonData.lua (a plain global, NOT a SavedVariable).
-- It is freshly loaded every time the addon loads — no stale cache issues.
if not ArchonTalentsData then
	ArchonTalentsData = { specData = {} }
end

-- WCL heatmap data comes from WCLTalentData.lua
if not WCLTalentHeatmap then
	WCLTalentHeatmap = {}
end

-- Boss list for Midnight Season 1
local BOSS_LIST = {
	"Imperator",
	"Vorasius",
	"Salhadaar",
	"Vaelgor & Ezzorak",
	"Vanguard",
	"Crown",
	"Chimaerus",
	"Belo'ren",
	"Midnight Falls"
}

-- Initialize addon
function ArchonTalents:Initialize()
	self:RegisterEvent("ADDON_LOADED")
end

--- Create LibDBIcon minimap button (with embedded libraries)
function ArchonTalents:CreateMinimapButton()
	-- Libraries are now embedded, so they should always be available
	local LDB = LibStub:GetLibrary("LibDataBroker-1.1")
	local LibDBIcon = LibStub:GetLibrary("LibDBIcon-1.0")
	
	-- Initialize minimap button settings
	if not ArchonTalentsDB.minimapButton then
		ArchonTalentsDB.minimapButton = {
			hide = false
		}
	end
	
	-- Hide button if it was previously hidden (after registration)
	C_Timer.After(0.1, function()
		if ArchonTalentsDB.minimapButton.hide and self.LibDBIcon then
			self.LibDBIcon:Hide("Archon Talents")
		end
	end)
	
	-- Create LibDataBroker data object
	local dataObject = LDB:NewDataObject("Archon Talents", {
		type = "launcher",
		text = "Archon",
		icon = "Interface\\AddOns\\ArchonTalents\\logo",
		OnClick = function(self, button)
			if button == "LeftButton" then
				ArchonTalents:CreateGUI()
			end
		end,
		OnTooltipShow = function(tooltip)
			if not tooltip or not tooltip.AddLine then return end
			tooltip:SetText("|cFF00FF00Archon Talents|r")
			tooltip:AddLine("Left-click: Open talent GUI", 1, 1, 1)
			tooltip:AddLine(" ")
			tooltip:AddLine("Drag to move button around minimap", 0.8, 0.8, 0.8)
		end,
	})
	
	-- Register with LibDBIcon
	LibDBIcon:Register("Archon Talents", dataObject, ArchonTalentsDB.minimapButton)
	
	-- Store references
	self.dataObject = dataObject
	self.LibDBIcon = LibDBIcon
end

-- Event handler
function ArchonTalents:OnEvent(event, ...)
	if event == "ADDON_LOADED" then
		local loadedAddon = ...
		if loadedAddon == addonName then
			self:OnAddonLoaded()
		end
	end
end

function ArchonTalents:OnAddonLoaded()
	-- SavedVariables are now available — create the minimap button
	self:CreateMinimapButton()
	print("|cFF00FF00[Archon Talents]|r Loaded! Use minimap button or type /archon to open.")
end

-- Pretty-print class token: "DEATHKNIGHT" -> "Death Knight"
local CLASS_DISPLAY_NAMES = {
	DEATHKNIGHT = "Death Knight",
	DEMONHUNTER = "Demon Hunter",
	DRUID = "Druid",
	EVOKER = "Evoker",
	HUNTER = "Hunter",
	MAGE = "Mage",
	MONK = "Monk",
	PALADIN = "Paladin",
	PRIEST = "Priest",
	ROGUE = "Rogue",
	SHAMAN = "Shaman",
	WARLOCK = "Warlock",
	WARRIOR = "Warrior",
}

local function FormatClassName(classToken)
	return CLASS_DISPLAY_NAMES[classToken] or classToken
end

-- Map WoW class tokens to WCL URL-style class names
local CLASS_TOKEN_TO_WCL = {
	DEATHKNIGHT = "DeathKnight",
	DEMONHUNTER = "DemonHunter",
	DRUID = "Druid",
	EVOKER = "Evoker",
	HUNTER = "Hunter",
	MAGE = "Mage",
	MONK = "Monk",
	PALADIN = "Paladin",
	PRIEST = "Priest",
	ROGUE = "Rogue",
	SHAMAN = "Shaman",
	WARLOCK = "Warlock",
	WARRIOR = "Warrior",
}

-- GUI variables
local mainFrame = nil
local selectedBoss = "Imperator"
local selectedDifficulty = "Heroic"
local selectedTab = "Raid"
local heatmapBoss = "Imperator"
local heatmapDifficulty = "mythic"

local function UpdateMythicPlusDisplay()
	if not mainFrame or not mainFrame.mythicPlusContent then return end

	local className, specName = ArchonTalents:GetPlayerClassSpec()
	if not className or not specName then
		mainFrame.mpSpecText:SetText("No class/spec detected")
		mainFrame.mpUsageText:SetText("Please select a specialization")
		mainFrame.mpCodeBox:SetText("No loadout available")
		mainFrame.mpCodeBox.originalText = "No loadout available"
		return
	end

	mainFrame.mpSpecText:SetText(FormatClassName(className) .. " - " .. specName)

	local mythicPlusData = ArchonTalentsData and ArchonTalentsData.specData and ArchonTalentsData.specData["Mythic+"]
	if not mythicPlusData then
		mainFrame.mpUsageText:SetText("No Mythic+ data available")
		mainFrame.mpCodeBox:SetText("No loadout available")
		mainFrame.mpCodeBox.originalText = "No loadout available"
		return
	end

	local classData = mythicPlusData[className]
	if not classData then
		mainFrame.mpUsageText:SetText("No M+ data for " .. FormatClassName(className))
		mainFrame.mpCodeBox:SetText("No loadout available")
		mainFrame.mpCodeBox.originalText = "No loadout available"
		return
	end

	local specData = classData[specName]
	if not specData then
		mainFrame.mpUsageText:SetText("No M+ data for " .. specName)
		mainFrame.mpCodeBox:SetText("No loadout available")
		mainFrame.mpCodeBox.originalText = "No loadout available"
		return
	end

	local usageText = string.format("%.1f%% popularity (%s parses)", specData.usage or 0, tostring(specData.totalRankings or 0))
	mainFrame.mpUsageText:SetText(usageText)
	mainFrame.mpCodeBox:SetText(specData.loadoutCode or "No loadout available")
	mainFrame.mpCodeBox.originalText = specData.loadoutCode or "No loadout available"
	mainFrame.mpCodeBox:SetCursorPosition(0)
end

-- Update the raid display with current boss data
local function UpdateRaidDisplay()
	if not mainFrame then return end

	local bossName = selectedBoss
	if not bossName then return end

	if mainFrame.bossText then
		mainFrame.bossText:SetText(bossName)
	end

	local className, specName = ArchonTalents:GetPlayerClassSpec()
	if not className or not specName then
		mainFrame.specText:SetText("No class/spec detected")
		mainFrame.usageText:SetText("Select a specialization first")
		mainFrame.codeBox:SetText("No loadout available")
		mainFrame.codeBox.originalText = "No loadout available"
		return
	end

	mainFrame.specText:SetText(FormatClassName(className) .. " - " .. specName)

	local loadoutData = ArchonTalents:GetLoadoutData(bossName, selectedDifficulty, className, specName)
	if loadoutData then
		mainFrame.usageText:SetText(string.format("%.1f%% popularity (%s parses)", loadoutData.usage or 0, tostring(loadoutData.totalRankings or 0)))
		mainFrame.codeBox:SetText(loadoutData.loadoutCode or "")
		mainFrame.codeBox.originalText = loadoutData.loadoutCode or ""
	else
		mainFrame.usageText:SetText("No data available")
		mainFrame.codeBox:SetText("No loadout for this combination")
		mainFrame.codeBox.originalText = "No loadout for this combination"
	end
	mainFrame.codeBox:SetCursorPosition(0)

	if mainFrame.heroicButton and mainFrame.mythicButton then
		if selectedDifficulty == "Heroic" then
			mainFrame.heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1)
			mainFrame.mythicButton:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
		else
			mainFrame.heroicButton:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
			mainFrame.mythicButton:GetFontString():SetTextColor(1, 0.8, 0, 1)
		end
	end
end

-- ===== HEATMAP TAB LOGIC =====

-- Color gradient: red (0%) -> yellow (50%) -> green (100%)
local function GetHeatmapColor(pct)
	if pct >= 0.8 then
		-- Green: high usage
		return 0.2, 1.0, 0.2
	elseif pct >= 0.5 then
		-- Yellow-green: moderate-high
		local t = (pct - 0.5) / 0.3
		return 1.0 - 0.8 * t, 0.8 + 0.2 * t, 0.2
	elseif pct >= 0.2 then
		-- Orange-yellow: moderate-low
		local t = (pct - 0.2) / 0.3
		return 1.0, 0.4 + 0.4 * t, 0.2
	else
		-- Red-gray: low usage
		return 0.6, 0.25, 0.2
	end
end

local heatmapDots = {}
local heatmapLines = {}
local heatmapLabels = {}

local function ClearHeatmap()
	for _, dot in pairs(heatmapDots) do
		dot:Hide()
		dot:ClearAllPoints()
	end
	for _, line in pairs(heatmapLines) do
		line:Hide()
	end
	for _, label in pairs(heatmapLabels) do
		label:Hide()
	end
	wipe(heatmapDots)
	wipe(heatmapLines)
	wipe(heatmapLabels)
end

local function RenderHeatmap()
	if not mainFrame or not mainFrame.heatmapContainer then return end
	ClearHeatmap()

	local className, specName = ArchonTalents:GetPlayerClassSpec()
	if not className or not specName then
		if mainFrame.heatmapStatusText then
			mainFrame.heatmapStatusText:SetText("No class/spec detected")
			mainFrame.heatmapStatusText:Show()
		end
		return
	end

	-- Get the WCL class name
	local wclClass = CLASS_TOKEN_TO_WCL[className]
	if not wclClass then
		if mainFrame.heatmapStatusText then
			mainFrame.heatmapStatusText:SetText("Unsupported class: " .. className)
			mainFrame.heatmapStatusText:Show()
		end
		return
	end

	-- Get heatmap data
	local heatData = WCLTalentHeatmap and WCLTalentHeatmap[heatmapDifficulty]
		and WCLTalentHeatmap[heatmapDifficulty][wclClass]
		and WCLTalentHeatmap[heatmapDifficulty][wclClass][specName]
		and WCLTalentHeatmap[heatmapDifficulty][wclClass][specName][heatmapBoss]

	if not heatData then
		if mainFrame.heatmapStatusText then
			mainFrame.heatmapStatusText:SetText("No heatmap data for " .. specName .. " " .. FormatClassName(className) .. "\n" .. heatmapBoss .. " (" .. heatmapDifficulty .. ")")
			mainFrame.heatmapStatusText:Show()
		end
		return
	end

	if mainFrame.heatmapStatusText then
		mainFrame.heatmapStatusText:Hide()
	end

	-- Get LibTalentTree
	local LTT = LibStub and LibStub:GetLibrary("LibTalentTree-1.0", true)
	if not LTT then
		if mainFrame.heatmapStatusText then
			mainFrame.heatmapStatusText:SetText("LibTalentTree not loaded")
			mainFrame.heatmapStatusText:Show()
		end
		return
	end

	-- Get spec ID for filtering
	local specIndex = C_SpecializationInfo.GetSpecialization()
	local specID = specIndex and C_SpecializationInfo.GetSpecializationInfo(specIndex)
	if not specID then return end

	-- Get the tree ID
	local treeID = LTT:GetClassTreeID(className)
	if not treeID then return end

	-- Get active hero subtree
	local activeSubTreeID = nil
	local subTreeIDs = LTT:GetSubTreeIDsForSpecID(specID)
	if subTreeIDs then
		for _, subTreeID in ipairs(subTreeIDs) do
			local selNodeID, selEntryID = LTT:GetSubTreeSelectionNodeIDAndEntryIDBySpecID(specID, subTreeID)
			if selNodeID and selEntryID then
				local configID = C_ClassTalents.GetActiveConfigID()
				if configID then
					local nodeInfo = C_Traits.GetNodeInfo(configID, selNodeID)
					if nodeInfo and nodeInfo.activeEntry and nodeInfo.activeEntry.entryID == selEntryID then
						activeSubTreeID = subTreeID
					end
				end
			end
		end
	end

	-- Build subtree info first, then sort so dominant (most-used) is on top
	local subTreeNames = {}
	local subTreeUsage = {}
	local heroUsageData = heatData and heatData.heroUsage
	if subTreeIDs then
		for _, stID in ipairs(subTreeIDs) do
			local stInfo = LTT:GetSubTreeInfo(stID)
			subTreeNames[stID] = stInfo and stInfo.name or ("Hero ?")
			-- Use scraped heroUsage data directly (keyed by subTreeID)
			subTreeUsage[stID] = heroUsageData and heroUsageData[stID] or 0
		end
		-- Sort so the most-used subtree gets index 1 (top position)
		table.sort(subTreeIDs, function(a, b) return (subTreeUsage[a] or 0) > (subTreeUsage[b] or 0) end)
	end

	-- Build subtree index map for row offsetting (dominant is index 1 = top)
	local subTreeMap = {}
	if subTreeIDs then
		for i, stID in ipairs(subTreeIDs) do
			subTreeMap[stID] = i
		end
	end

	-- Determine the dominant (most-used) hero subtree — only show that one
	local dominantSubTreeID = nil
	if subTreeIDs then
		local bestUsage = -1
		for _, stID in ipairs(subTreeIDs) do
			if subTreeUsage[stID] > bestUsage then
				bestUsage = subTreeUsage[stID]
				dominantSubTreeID = stID
			end
		end
	end

	local container = mainFrame.heatmapContainer
	local dotSize = 12
	local spacing = 20
	local topPad = 20 -- extra space at top for first subtree label
	local dotsByNodeID = {}

	-- Convert WCL entry IDs to node IDs for lookup
	local pctByNodeID = {}
	local pctByEntryID = {}
	for entryID, pct in pairs(heatData) do
		if type(entryID) == "number" then
			pctByEntryID[entryID] = pct
			local nodeID = LTT:GetNodeIDForEntry(entryID)
			if nodeID then
				-- If multiple entries map to the same node, take the max
				if not pctByNodeID[nodeID] or pct > pctByNodeID[nodeID] then
					pctByNodeID[nodeID] = pct
				end
			end
		end
	end

	-- Track hero subtree dot positions for label placement
	local subTreeDotPositions = {} -- subTreeID -> {minCol, maxCol, minRow}

	-- Get all nodes from the tree and iterate visible ones
	local nodeData = LTT.cache and LTT.cache.nodeData and LTT.cache.nodeData[treeID]
	if not nodeData then return end

	-- First pass: find grid bounds for centering
	local minCol, maxCol, minRow, maxRow = 999, 0, 999, 0
	for nodeID, _ in pairs(nodeData) do
		if LTT:IsNodeVisibleForSpec(specID, nodeID) then
			local nodeInfo = LTT:GetLibNodeInfo(nodeID)
			if nodeInfo and not nodeInfo.isSubTreeSelection then
				local col, row = LTT:GetNodeGridPosition(nodeID)
				if col and row then
					if nodeInfo.subTreeID and subTreeMap[nodeInfo.subTreeID] then
						row = row + (subTreeMap[nodeInfo.subTreeID] - 1) * 5
					end
					if col < minCol then minCol = col end
					if col > maxCol then maxCol = col end
					if row < minRow then minRow = row end
					if row > maxRow then maxRow = row end
				end
			end
		end
	end

	-- Calculate centering offsets
	local treeWidth = (maxCol - minCol) * spacing + dotSize
	local treeHeight = (maxRow - minRow) * spacing + dotSize + topPad
	local containerWidth = container:GetWidth()
	local containerHeight = container:GetHeight()
	local offsetX = math.max(0, math.floor((containerWidth - treeWidth) / 2))
	local offsetY = math.max(0, math.floor((containerHeight - treeHeight) / 2))

	-- Scale hero subtree node/entry percentages by hero tree usage
	for nodeID, _ in pairs(nodeData) do
		local ni = LTT:GetLibNodeInfo(nodeID)
		if ni and ni.subTreeID and subTreeUsage[ni.subTreeID] then
			local scale = subTreeUsage[ni.subTreeID]
			if pctByNodeID[nodeID] then
				pctByNodeID[nodeID] = pctByNodeID[nodeID] * scale
			end
			if ni.entryIDs then
				for _, eid in ipairs(ni.entryIDs) do
					if pctByEntryID[eid] then
						pctByEntryID[eid] = pctByEntryID[eid] * scale
					end
				end
			end
		end
	end

	for nodeID, _ in pairs(nodeData) do
		if LTT:IsNodeVisibleForSpec(specID, nodeID) then
			local nodeInfo = LTT:GetLibNodeInfo(nodeID)
			if nodeInfo then
				-- Skip the hero subtree selection node itself
				if nodeInfo.isSubTreeSelection then
					-- skip
				else
					local col, row = LTT:GetNodeGridPosition(nodeID)
					if col and row then
						-- Offset hero subtree rows (stack them on rows 1-5)
						if nodeInfo.subTreeID and subTreeMap[nodeInfo.subTreeID] then
							row = row + (subTreeMap[nodeInfo.subTreeID] - 1) * 5
							-- Track bounding box for label placement
							local stID = nodeInfo.subTreeID
							if not subTreeDotPositions[stID] then
								subTreeDotPositions[stID] = { minCol = col, maxCol = col, minRow = row }
							else
								local p = subTreeDotPositions[stID]
								if col < p.minCol then p.minCol = col end
								if col > p.maxCol then p.maxCol = col end
								if row < p.minRow then p.minRow = row end
							end
						end

						-- Fade non-dominant hero subtree nodes
						local isMinorHero = nodeInfo.subTreeID and dominantSubTreeID and nodeInfo.subTreeID ~= dominantSubTreeID

						local pct = pctByNodeID[nodeID] or 0
						local hasData = pctByNodeID[nodeID] ~= nil
						local r, g, b

						if hasData then
							r, g, b = GetHeatmapColor(pct)
						else
							-- Not used = dim dark dot
							r, g, b = 0.3, 0.3, 0.35
						end

						-- Create dot frame
						local dot = CreateFrame("Frame", nil, container)
						dot:SetSize(dotSize, dotSize)
						dot:SetPoint("TOPLEFT", (col - minCol) * spacing + offsetX, -((row - minRow) * spacing) - topPad - offsetY)

						-- Circle texture
						local tex = dot:CreateTexture(nil, "ARTWORK")
						tex:SetAllPoints()
						tex:SetTexture("Interface\\COMMON\\Indicator-Gray")
						tex:SetVertexColor(r, g, b, 1)

						if isMinorHero then
							dot:SetAlpha(0.35)
						elseif not hasData then
							dot:SetAlpha(0.4)
						else
							dot:SetAlpha(1)
						end

						-- Percentage text on hover
						dot:EnableMouse(true)
						dot.pct = pct
						dot.nodeID = nodeID
						dot.hasData = hasData
						dot.dotR, dot.dotG, dot.dotB = r, g, b
						dot:SetScript("OnEnter", function(self)
							GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
							local nInfo = LTT:GetLibNodeInfo(self.nodeID)
							local isChoiceNode = nInfo and nInfo.entryIDs and #nInfo.entryIDs > 1

							if isChoiceNode then
								-- Choice node: show each entry with its own percentage
								GameTooltip:SetText("Choice Node", 1, 1, 1)
								for _, eid in ipairs(nInfo.entryIDs) do
									local entryPct = pctByEntryID[eid] or 0
									local eInfo = LTT:GetEntryInfo(eid)
									local spellName = "?"
									local icon = nil
									if eInfo and eInfo.definitionID then
										local defInfo = C_Traits.GetDefinitionInfo(eInfo.definitionID)
										if defInfo and defInfo.spellID then
											spellName = C_Spell.GetSpellName(defInfo.spellID) or spellName
											icon = C_Spell.GetSpellTexture(defInfo.spellID)
										end
									end
									local er, eg, eb = GetHeatmapColor(entryPct)
									local prefix = icon and ("|T" .. icon .. ":14:14:0:0|t ") or ""
									GameTooltip:AddLine(prefix .. spellName .. "  " .. string.format("%.0f%%", entryPct * 100), er, eg, eb)
								end
							else
								-- Single entry node: show spell tooltip + percentage
								local spellShown = false
								local spellIcon = nil
								if nInfo and nInfo.entryIDs and #nInfo.entryIDs > 0 then
									local eInfo = LTT:GetEntryInfo(nInfo.entryIDs[1])
									if eInfo and eInfo.definitionID then
										local defInfo = C_Traits.GetDefinitionInfo(eInfo.definitionID)
										if defInfo and defInfo.spellID then
											GameTooltip:SetSpellByID(defInfo.spellID)
											spellShown = true
											spellIcon = C_Spell.GetSpellTexture(defInfo.spellID)
										end
									end
								end
								if not spellShown then
									GameTooltip:SetText("Node " .. self.nodeID, 0.7, 0.7, 0.7)
								end
								if spellIcon then
									local titleLine = GameTooltipTextLeft1
									if titleLine then
										local existing = titleLine:GetText() or ""
										titleLine:SetText("|T" .. spellIcon .. ":16:16:0:0|t " .. existing)
									end
								end
								if self.hasData then
									GameTooltip:AddLine(string.format("%.0f%%", self.pct * 100), self.dotR, self.dotG, self.dotB)
								else
									GameTooltip:AddLine("0%", 0.5, 0.5, 0.5)
								end
							end
							GameTooltip:Show()
						end)
						dot:SetScript("OnLeave", function()
							GameTooltip:Hide()
						end)

						dotsByNodeID[nodeID] = dot
						table.insert(heatmapDots, dot)
					end
				end
			end
		end
	end

	-- Draw connections
	for nodeID, dot in pairs(dotsByNodeID) do
		local edges = LTT:GetNodeEdges(nodeID)
		if edges then
			for _, edge in ipairs(edges) do
				local targetDot = dotsByNodeID[edge.targetNode]
				if targetDot then
					local line = container:CreateLine(nil, "BACKGROUND")
					line:SetThickness(2)
					line:SetStartPoint("CENTER", dot)
					line:SetEndPoint("CENTER", targetDot)
					-- Color the line based on the lower of the two node percentages
					local pct1 = pctByNodeID[nodeID] or 0
					local pct2 = pctByNodeID[edge.targetNode] or 0
					local minPct = math.min(pct1, pct2)
					local lr, lg, lb = GetHeatmapColor(minPct)
					line:SetColorTexture(lr, lg, lb, 0.4)
					line:SetAlpha(math.min(dot:GetAlpha(), targetDot:GetAlpha()))
					table.insert(heatmapLines, line)
				end
			end
		end
	end

	-- Add labels for both hero subtrees — dominant in green, minor in gray
	if subTreeIDs then
		for _, stID in ipairs(subTreeIDs) do
			local pos = subTreeDotPositions[stID]
			if pos then
				local name = subTreeNames[stID]
				local usage = subTreeUsage[stID]
				local isDominant = (stID == dominantSubTreeID)
				local centerX = ((pos.minCol + pos.maxCol) / 2 - minCol) * spacing + (dotSize / 2) + offsetX
				local topY = -((pos.minRow - minRow) * spacing) - topPad + 16 - offsetY
				-- Push non-first subtree labels down a bit to avoid clipping dots above
				if subTreeMap[stID] > 1 then
					topY = topY - 4
				end

				local labelFrame = CreateFrame("Frame", nil, container)
				labelFrame:SetSize(140, 14)
				labelFrame:SetPoint("TOPLEFT", centerX - 70, topY)
				local labelText = labelFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
				labelText:SetPoint("CENTER")
				labelText:SetText(string.format("%s (%.0f%%)", name, usage * 100))
				if isDominant then
					labelText:SetTextColor(0.2, 1.0, 0.2, 1)
				else
					labelText:SetTextColor(0.5, 0.5, 0.5, 1)
				end
				table.insert(heatmapLabels, labelFrame)
			end
		end
	end

	-- Update header text
	if mainFrame.heatmapSpecText then
		mainFrame.heatmapSpecText:SetText(FormatClassName(className) .. " - " .. specName)
	end
end

local function UpdateHeatmapDisplay()
	if not mainFrame or not mainFrame.heatmapContent then return end
	RenderHeatmap()
end

-- Update tab display visibility (must be defined after UpdateRaidDisplay/UpdateMythicPlusDisplay)
local function UpdateTabDisplay()
	if not mainFrame then return end

	local tabs = {
		{ button = mainFrame.raidTabButton, key = "Raid" },
		{ button = mainFrame.mythicPlusTabButton, key = "Mythic+" },
		{ button = mainFrame.heatmapTabButton, key = "Heatmap" },
	}
	for _, tab in ipairs(tabs) do
		if tab.button then
			if selectedTab == tab.key then
				tab.button:GetFontString():SetTextColor(1, 0.8, 0, 1)
				tab.button:SetBackdropBorderColor(1, 0.8, 0, 0.8)
			else
				tab.button:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
				tab.button:SetBackdropBorderColor(0.4, 0.4, 0.5, 0.8)
			end
		end
	end

	if mainFrame.raidContent then
		mainFrame.raidContent:SetShown(selectedTab == "Raid")
	end
	if mainFrame.mythicPlusContent then
		mainFrame.mythicPlusContent:SetShown(selectedTab == "Mythic+")
	end
	if mainFrame.heatmapContent then
		mainFrame.heatmapContent:SetShown(selectedTab == "Heatmap")
	end

	if selectedTab == "Raid" then
		UpdateRaidDisplay()
	elseif selectedTab == "Mythic+" then
		UpdateMythicPlusDisplay()
	elseif selectedTab == "Heatmap" then
		UpdateHeatmapDisplay()
	end
end


-- Helper: create a read-only EditBox that auto-selects on click (for copy-paste)
local function CreateReadOnlyCodeBox(parent, width, height)
	-- Wrapper frame holds the EditBox and the "Copied!" overlay
	local wrapper = CreateFrame("Frame", nil, parent, "BackdropTemplate")
	wrapper:SetSize(width, height)
	wrapper:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	wrapper:SetBackdropColor(0, 0, 0, 0.6)
	wrapper:SetBackdropBorderColor(0.4, 0.4, 0.4, 0.8)

	local box = CreateFrame("EditBox", nil, wrapper)
	box:SetPoint("TOPLEFT", 6, 0)
	box:SetPoint("BOTTOMRIGHT", -6, 0)
	box:SetFontObject(GameFontHighlightSmall)
	box:SetAutoFocus(false)
	box:EnableMouse(true)
	box:SetText("No loadout available")
	box.originalText = "No loadout available"

	-- Hint label that shows on click (parented to box so it draws on top)
	local hintLabel = box:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	hintLabel:SetPoint("BOTTOM", box, "TOP", 0, 2)
	hintLabel:SetTextColor(0.3, 1, 0.3, 1)
	hintLabel:Hide()

	-- Defer highlight so it happens after WoW's internal cursor placement
	local function selectAllDeferred()
		C_Timer.After(0.01, function()
			box:HighlightText()
		end)
	end

	-- On click: focus, select all, show hint
	box:SetScript("OnMouseDown", function(self)
		self:SetFocus()
		selectAllDeferred()
		hintLabel:SetText("Ctrl+C to copy")
		hintLabel:Show()
		C_Timer.After(3, function() hintLabel:Hide() end)
	end)

	-- On focus: select all
	box:SetScript("OnEditFocusGained", function(self)
		selectAllDeferred()
	end)

	-- On losing focus: hide hint
	box:SetScript("OnEditFocusLost", function(self)
		hintLabel:Hide()
	end)

	box:SetScript("OnKeyDown", function(self, key)
		if key == "ESCAPE" then
			self:ClearFocus()
		end
	end)

	-- Keep read-only: restore original text if user types anything
	box:SetScript("OnTextChanged", function(self, userInput)
		if userInput and wrapper.originalText then
			self:SetText(wrapper.originalText)
			selectAllDeferred()
		end
	end)

	box:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	box:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)

	-- Proxy EditBox methods through the wrapper so callers work as before
	wrapper.editBox = box
	wrapper.SetText = function(self, text) box:SetText(text) end
	wrapper.GetText = function(self) return box:GetText() end
	wrapper.SetCursorPosition = function(self, pos) box:SetCursorPosition(pos) end
	wrapper.HighlightText = function(self, ...) box:HighlightText(...) end
	wrapper.ClearFocus = function(self) box:ClearFocus() end
	wrapper.SetFocus = function(self) box:SetFocus() end
	wrapper.originalText = "No loadout available"

	return wrapper
end

-- Helper: create a flat text button (no 3D GameMenu chrome)
local function CreateTextButton(parent, text, width, height, onClick)
	local btn = CreateFrame("Button", nil, parent, "BackdropTemplate")
	btn:SetSize(width, height)
	btn:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 2, right = 2, top = 2, bottom = 2 }
	})
	btn:SetBackdropColor(0.1, 0.1, 0.15, 0.9)
	btn:SetBackdropBorderColor(0.4, 0.4, 0.5, 0.8)
	local fs = btn:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	fs:SetPoint("CENTER")
	fs:SetText(text)
	btn:SetFontString(fs)
	btn:SetScript("OnEnter", function(self)
		self:SetBackdropBorderColor(1, 0.8, 0, 1)
	end)
	btn:SetScript("OnLeave", function(self)
		self:SetBackdropBorderColor(0.4, 0.4, 0.5, 0.8)
	end)
	if onClick then btn:SetScript("OnClick", onClick) end
	return btn
end

-- Create the GUI window
function ArchonTalents:CreateGUI()
	if mainFrame then
		if mainFrame:IsShown() then
			mainFrame:Hide()
			else
			mainFrame:Show()
				UpdateTabDisplay()
		end
		return
	end

	-- ===== MAIN FRAME =====
	mainFrame = CreateFrame("Frame", "ArchonTalentsGUI", UIParent, "BackdropTemplate")
	mainFrame:SetSize(600, 440)
	mainFrame:SetPoint("CENTER")
	mainFrame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }
	})
	mainFrame:SetBackdropColor(0.05, 0.05, 0.09, 0.95)
	mainFrame:SetBackdropBorderColor(0.3, 0.3, 0.4, 1)
	mainFrame:SetFrameStrata("DIALOG")
	mainFrame:EnableMouse(true)
	mainFrame:SetMovable(true)
	mainFrame:RegisterForDrag("LeftButton")
	mainFrame:SetScript("OnDragStart", mainFrame.StartMoving)
	mainFrame:SetScript("OnDragStop", mainFrame.StopMovingOrSizing)
	-- Handle Escape to close without using UISpecialFrames (which causes
	-- Blizzard panels like the talent tree to auto-close this frame)
	mainFrame:EnableKeyboard(true)
	mainFrame:SetPropagateKeyboardInput(true)
	mainFrame:SetScript("OnKeyDown", function(self, key)
		if key == "ESCAPE" then
			self:SetPropagateKeyboardInput(false)
			self:Hide()
		else
			self:SetPropagateKeyboardInput(true)
		end
	end)


	-- ===== TITLE BAR =====
	local titleBar = CreateFrame("Frame", nil, mainFrame, "BackdropTemplate")
	titleBar:SetHeight(28)
	titleBar:SetPoint("TOPLEFT", 6, -6)
	titleBar:SetPoint("TOPRIGHT", -6, -6)
	titleBar:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	titleBar:SetBackdropColor(0.12, 0.12, 0.2, 1)
	titleBar:SetBackdropBorderColor(0.4, 0.4, 0.5, 0.8)

	local titleText = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	titleText:SetPoint("LEFT", 10, 0)
	titleText:SetText("Archon Talents")
	titleText:SetTextColor(1, 0.8, 0, 1)

	-- Version / data timestamp
	local versionText = titleBar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	versionText:SetPoint("RIGHT", -30, 0)
	if ArchonTalentsData and ArchonTalentsData.lastUpdated then
		versionText:SetText("Data: " .. ArchonTalentsData.lastUpdated)
	else
		versionText:SetText("")
	end
	versionText:SetTextColor(0.5, 0.5, 0.5, 1)

	local closeButton = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
	closeButton:SetPoint("TOPRIGHT", 4, 4)
	closeButton:SetSize(22, 22)
	closeButton:SetScript("OnClick", function() mainFrame:Hide() end)

	-- ===== TAB BAR =====
	local tabY = -40
	local raidTabButton = CreateTextButton(mainFrame, "Raid", 70, 22, function()
		selectedTab = "Raid"; UpdateTabDisplay()
	end)
	raidTabButton:SetPoint("TOPLEFT", 10, tabY)
	mainFrame.raidTabButton = raidTabButton

	local mythicPlusTabButton = CreateTextButton(mainFrame, "Mythic+", 70, 22, function()
		selectedTab = "Mythic+"; UpdateTabDisplay()
	end)
	mythicPlusTabButton:SetPoint("LEFT", raidTabButton, "RIGHT", 4, 0)
	mainFrame.mythicPlusTabButton = mythicPlusTabButton

	local heatmapTabButton = CreateTextButton(mainFrame, "WCL Top 100", 85, 22, function()
		selectedTab = "Heatmap"; UpdateTabDisplay()
	end)
	heatmapTabButton:SetPoint("LEFT", mythicPlusTabButton, "RIGHT", 4, 0)
	mainFrame.heatmapTabButton = heatmapTabButton

	-- Thin separator line under tabs
	local sep = mainFrame:CreateTexture(nil, "ARTWORK")
	sep:SetHeight(1)
	sep:SetPoint("TOPLEFT", 8, tabY - 26)
	sep:SetPoint("TOPRIGHT", -8, tabY - 26)
	sep:SetColorTexture(0.4, 0.4, 0.5, 0.5)

	-- ===== CONTENT CONTAINERS =====
	local contentTop = tabY - 32

	local raidContent = CreateFrame("Frame", nil, mainFrame)
	raidContent:SetPoint("TOPLEFT", 8, contentTop)
	raidContent:SetPoint("BOTTOMRIGHT", -8, 8)
	mainFrame.raidContent = raidContent

	local mythicPlusContent = CreateFrame("Frame", nil, mainFrame)
	mythicPlusContent:SetPoint("TOPLEFT", 8, contentTop)
	mythicPlusContent:SetPoint("BOTTOMRIGHT", -8, 8)
	mythicPlusContent:Hide()
	mainFrame.mythicPlusContent = mythicPlusContent

	local heatmapContent = CreateFrame("Frame", nil, mainFrame)
	heatmapContent:SetPoint("TOPLEFT", 8, contentTop)
	heatmapContent:SetPoint("BOTTOMRIGHT", -8, 8)
	heatmapContent:Hide()
	mainFrame.heatmapContent = heatmapContent

	-- ===== RAID TAB: LEFT PANEL (boss list) =====
	local leftPanel = CreateFrame("Frame", nil, raidContent, "BackdropTemplate")
	leftPanel:SetWidth(170)
	leftPanel:SetPoint("TOPLEFT", 0, 0)
	leftPanel:SetPoint("BOTTOMLEFT", 0, 0)
	leftPanel:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	leftPanel:SetBackdropColor(0.08, 0.08, 0.12, 0.8)
	leftPanel:SetBackdropBorderColor(0.3, 0.3, 0.4, 0.6)

	local bossListLabel = leftPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	bossListLabel:SetPoint("TOPLEFT", 10, -8)
	bossListLabel:SetText("Boss")
	bossListLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local bossButtons = {}
	for i, bossName in ipairs(BOSS_LIST) do
		local btn = CreateFrame("Button", nil, leftPanel)
		btn:SetSize(154, 22)
		btn:SetPoint("TOPLEFT", bossListLabel, "BOTTOMLEFT", -2, -4 - (i - 1) * 24)
		local highlight = btn:CreateTexture(nil, "HIGHLIGHT")
		highlight:SetAllPoints()
		highlight:SetColorTexture(1, 0.8, 0, 0.1)
		local fs = btn:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		fs:SetPoint("LEFT", 8, 0)
		fs:SetText(bossName)
		fs:SetJustifyH("LEFT")
		btn:SetFontString(fs)
		btn:SetScript("OnClick", function()
			selectedBoss = bossName
			UpdateTabDisplay()
			for j, b in ipairs(bossButtons) do
				if j == i then
					b:GetFontString():SetTextColor(1, 0.8, 0, 1)
				else
					b:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
				end
			end
		end)
		bossButtons[i] = btn
	end

	-- ===== RAID TAB: RIGHT PANEL (details) =====
	local rightPanel = CreateFrame("Frame", nil, raidContent, "BackdropTemplate")
	rightPanel:SetPoint("TOPLEFT", leftPanel, "TOPRIGHT", 6, 0)
	rightPanel:SetPoint("BOTTOMRIGHT", 0, 0)
	rightPanel:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	rightPanel:SetBackdropColor(0.08, 0.08, 0.12, 0.8)
	rightPanel:SetBackdropBorderColor(0.3, 0.3, 0.4, 0.6)

	-- Boss name header
	local bossText = rightPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	bossText:SetPoint("TOPLEFT", 12, -10)
	bossText:SetText(BOSS_LIST[1] or "")
	bossText:SetTextColor(1, 0.8, 0, 1)
	mainFrame.bossText = bossText

	-- Difficulty toggles
	local heroicButton = CreateTextButton(rightPanel, "Heroic", 70, 20)
	heroicButton:SetPoint("TOPLEFT", bossText, "BOTTOMLEFT", 0, -10)
	mainFrame.heroicButton = heroicButton

	local mythicButton = CreateTextButton(rightPanel, "Mythic", 70, 20)
	mythicButton:SetPoint("LEFT", heroicButton, "RIGHT", 4, 0)
	mainFrame.mythicButton = mythicButton

	heroicButton:SetScript("OnClick", function()
		selectedDifficulty = "Heroic"
		heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1)
		mythicButton:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
		UpdateTabDisplay()
	end)
	mythicButton:SetScript("OnClick", function()
		selectedDifficulty = "Mythic"
		mythicButton:GetFontString():SetTextColor(1, 0.8, 0, 1)
		heroicButton:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
		UpdateTabDisplay()
	end)

	-- Separator
	local detailSep = rightPanel:CreateTexture(nil, "ARTWORK")
	detailSep:SetHeight(1)
	detailSep:SetPoint("TOPLEFT", heroicButton, "BOTTOMLEFT", 0, -10)
	detailSep:SetPoint("RIGHT", rightPanel, "RIGHT", -12, 0)
	detailSep:SetColorTexture(0.4, 0.4, 0.5, 0.3)

	-- Class/Spec
	local specLabel = rightPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	specLabel:SetPoint("TOPLEFT", detailSep, "BOTTOMLEFT", 0, -12)
	specLabel:SetText("Spec:")
	specLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local specText = rightPanel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	specText:SetPoint("LEFT", specLabel, "RIGHT", 8, 0)
	specText:SetText("--")
	specText:SetTextColor(0.4, 0.78, 1, 1)
	mainFrame.specText = specText

	-- Popularity
	local usageLabel = rightPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	usageLabel:SetPoint("TOPLEFT", specLabel, "BOTTOMLEFT", 0, -10)
	usageLabel:SetText("Popularity:")
	usageLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local usageText = rightPanel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	usageText:SetPoint("LEFT", usageLabel, "RIGHT", 8, 0)
	usageText:SetText("--")
	usageText:SetTextColor(0.3, 1, 0.3, 1)
	mainFrame.usageText = usageText

	-- Loadout code
	local codeLabel = rightPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	codeLabel:SetPoint("TOPLEFT", usageLabel, "BOTTOMLEFT", 0, -16)
	codeLabel:SetText("Talent Build  (click to copy)")
	codeLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local codeBox = CreateReadOnlyCodeBox(rightPanel, 1, 24)
	codeBox:SetPoint("TOPLEFT", codeLabel, "BOTTOMLEFT", 0, -4)
	codeBox:SetPoint("RIGHT", rightPanel, "RIGHT", -12, 0)
	mainFrame.codeBox = codeBox

	-- ===== MYTHIC+ TAB =====
	local mpPanel = CreateFrame("Frame", nil, mythicPlusContent, "BackdropTemplate")
	mpPanel:SetPoint("TOPLEFT", 0, 0)
	mpPanel:SetPoint("BOTTOMRIGHT", 0, 0)
	mpPanel:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	mpPanel:SetBackdropColor(0.08, 0.08, 0.12, 0.8)
	mpPanel:SetBackdropBorderColor(0.3, 0.3, 0.4, 0.6)

	local mpTitle = mpPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	mpTitle:SetPoint("TOPLEFT", 12, -12)
	mpTitle:SetText("Mythic+ Meta Build")
	mpTitle:SetTextColor(1, 0.8, 0, 1)

	local mpSep = mpPanel:CreateTexture(nil, "ARTWORK")
	mpSep:SetHeight(1)
	mpSep:SetPoint("TOPLEFT", mpTitle, "BOTTOMLEFT", 0, -8)
	mpSep:SetPoint("RIGHT", mpPanel, "RIGHT", -12, 0)
	mpSep:SetColorTexture(0.4, 0.4, 0.5, 0.3)

	local mpSpecLabel = mpPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	mpSpecLabel:SetPoint("TOPLEFT", mpSep, "BOTTOMLEFT", 0, -14)
	mpSpecLabel:SetText("Spec:")
	mpSpecLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local mpSpecText = mpPanel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	mpSpecText:SetPoint("LEFT", mpSpecLabel, "RIGHT", 8, 0)
	mpSpecText:SetText("--")
	mpSpecText:SetTextColor(0.4, 0.78, 1, 1)
	mainFrame.mpSpecText = mpSpecText

	local mpUsageLabel = mpPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	mpUsageLabel:SetPoint("TOPLEFT", mpSpecLabel, "BOTTOMLEFT", 0, -10)
	mpUsageLabel:SetText("Popularity:")
	mpUsageLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local mpUsageText = mpPanel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	mpUsageText:SetPoint("LEFT", mpUsageLabel, "RIGHT", 8, 0)
	mpUsageText:SetText("--")
	mpUsageText:SetTextColor(0.3, 1, 0.3, 1)
	mainFrame.mpUsageText = mpUsageText

	local mpCodeLabel = mpPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	mpCodeLabel:SetPoint("TOPLEFT", mpUsageLabel, "BOTTOMLEFT", 0, -16)
	mpCodeLabel:SetText("Talent Build  (click to copy)")
	mpCodeLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local mpCodeBox = CreateReadOnlyCodeBox(mpPanel, 1, 24)
	mpCodeBox:SetPoint("TOPLEFT", mpCodeLabel, "BOTTOMLEFT", 0, -4)
	mpCodeBox:SetPoint("RIGHT", mpPanel, "RIGHT", -12, 0)
	mainFrame.mpCodeBox = mpCodeBox

	-- ===== HEATMAP TAB =====
	local hmPanel = CreateFrame("Frame", nil, heatmapContent, "BackdropTemplate")
	hmPanel:SetPoint("TOPLEFT", 0, 0)
	hmPanel:SetPoint("BOTTOMRIGHT", 0, 0)
	hmPanel:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	hmPanel:SetBackdropColor(0.08, 0.08, 0.12, 0.8)
	hmPanel:SetBackdropBorderColor(0.3, 0.3, 0.4, 0.6)

	-- Header row: spec name + boss selector + difficulty toggle
	local hmSpecText = hmPanel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	hmSpecText:SetPoint("TOPLEFT", 12, -10)
	hmSpecText:SetText("--")
	hmSpecText:SetTextColor(0.4, 0.78, 1, 1)
	mainFrame.heatmapSpecText = hmSpecText

	-- Difficulty toggles
	local hmHeroicBtn = CreateTextButton(hmPanel, "Heroic", 60, 18)
	hmHeroicBtn:SetPoint("TOPRIGHT", hmPanel, "TOPRIGHT", -74, -8)

	local hmMythicBtn = CreateTextButton(hmPanel, "Mythic", 60, 18)
	hmMythicBtn:SetPoint("LEFT", hmHeroicBtn, "RIGHT", 4, 0)

	local function UpdateHeatmapDiffButtons()
		if heatmapDifficulty == "heroic" then
			hmHeroicBtn:GetFontString():SetTextColor(1, 0.8, 0, 1)
			hmMythicBtn:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
		else
			hmHeroicBtn:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
			hmMythicBtn:GetFontString():SetTextColor(1, 0.8, 0, 1)
		end
	end

	hmHeroicBtn:SetScript("OnClick", function()
		heatmapDifficulty = "heroic"
		UpdateHeatmapDiffButtons()
		UpdateHeatmapDisplay()
	end)
	hmMythicBtn:SetScript("OnClick", function()
		heatmapDifficulty = "mythic"
		UpdateHeatmapDiffButtons()
		UpdateHeatmapDisplay()
	end)
	UpdateHeatmapDiffButtons()

	-- Boss selector dropdown row
	local hmBossLabel = hmPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	hmBossLabel:SetPoint("TOPLEFT", 12, -34)
	hmBossLabel:SetText("Boss:")
	hmBossLabel:SetTextColor(0.6, 0.6, 0.7, 1)

	local hmBossButtons = {}
	local bossBtnSpacing = 2
	for i, bossName in ipairs(BOSS_LIST) do
		local btn = CreateTextButton(hmPanel, bossName, 0, 16)
		if i == 1 then
			btn:SetPoint("TOPLEFT", hmBossLabel, "BOTTOMLEFT", 0, -2)
		else
			btn:SetPoint("LEFT", hmBossButtons[i - 1], "RIGHT", bossBtnSpacing, 0)
		end
		btn:GetFontString():SetFont(btn:GetFontString():GetFont(), 8)
		btn:SetWidth(btn:GetFontString():GetStringWidth() + 12)
		btn.bossName = bossName
		btn:SetScript("OnClick", function()
			heatmapBoss = bossName
			for _, b in ipairs(hmBossButtons) do
				if b.bossName == heatmapBoss then
					b:GetFontString():SetTextColor(1, 0.8, 0, 1)
				else
					b:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
				end
			end
			UpdateHeatmapDisplay()
		end)
		if bossName == heatmapBoss then
			btn:GetFontString():SetTextColor(1, 0.8, 0, 1)
		end
		hmBossButtons[i] = btn
	end

	local hmSepY = -34 - 14 - 20

	-- Separator
	local hmSep = hmPanel:CreateTexture(nil, "ARTWORK")
	hmSep:SetHeight(1)
	hmSep:SetPoint("TOPLEFT", 8, hmSepY)
	hmSep:SetPoint("TOPRIGHT", -8, hmSepY)
	hmSep:SetColorTexture(0.4, 0.4, 0.5, 0.3)

	-- Talent tree container
	local hmContainer = CreateFrame("Frame", nil, hmPanel)
	hmContainer:SetPoint("TOPLEFT", 8, hmSepY - 4)
	hmContainer:SetPoint("BOTTOMRIGHT", -8, 24)
	mainFrame.heatmapContainer = hmContainer

	-- Status text (shown when no data)
	local hmStatusText = hmContainer:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	hmStatusText:SetPoint("CENTER", hmContainer, "CENTER", 0, 0)
	hmStatusText:SetText("Select a boss to view heatmap data")
	hmStatusText:SetTextColor(0.6, 0.6, 0.6, 1)
	hmStatusText:SetJustifyH("CENTER")
	mainFrame.heatmapStatusText = hmStatusText

	-- Legend at the bottom-right
	local legendFrame = CreateFrame("Frame", nil, hmPanel)
	legendFrame:SetSize(200, 16)
	legendFrame:SetPoint("BOTTOM", hmPanel, "BOTTOM", 0, 10)

	local legendColors = {
		{ 0.3, 0.3, 0.35, "0%" },
		{ 0.6, 0.25, 0.2, "<20%" },
		{ 1.0, 0.6, 0.2, "20-50%" },
		{ 1.0, 0.9, 0.2, "50-80%" },
		{ 0.2, 1.0, 0.2, "80%+" },
	}
	local prevSwatch = nil
	for _, info in ipairs(legendColors) do
		local swatch = legendFrame:CreateTexture(nil, "ARTWORK")
		swatch:SetSize(8, 8)
		if prevSwatch then
			swatch:SetPoint("LEFT", prevSwatch, "RIGHT", 8, 0)
		else
			swatch:SetPoint("LEFT", 0, 0)
		end
		swatch:SetColorTexture(info[1], info[2], info[3], 1)

		local label = legendFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		label:SetPoint("LEFT", swatch, "RIGHT", 2, 0)
		label:SetText(info[4])
		label:SetTextColor(0.7, 0.7, 0.7, 1)
		prevSwatch = label
	end

	-- ===== INITIALIZE STATE =====
	UpdateTabDisplay()
	if bossButtons[1] then
		bossButtons[1]:GetFontString():SetTextColor(1, 0.8, 0, 1)
	end
	heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1)
	mythicButton:GetFontString():SetTextColor(0.85, 0.85, 0.85, 1)
	mainFrame:Show()
end

-- Get loadout data for a specific boss, difficulty, class, and spec
function ArchonTalents:GetLoadoutData(bossName, difficulty, className, specName)
	if not ArchonTalentsData or not ArchonTalentsData.specData then
		return nil
	end

	local bossData = ArchonTalentsData.specData[bossName]
	if not bossData then
		return nil
	end
	
	local diffData = bossData[difficulty]
	if not diffData then
		return nil
	end
	
	local classData = diffData[className]
	if not classData then
		return nil
	end
	
	local specData = classData[specName]
	if not specData then
		return nil
	end
	
	return specData
end

-- Get player's current class and spec
function ArchonTalents:GetPlayerClassSpec()
	local specIndex = C_SpecializationInfo.GetSpecialization()
	if not specIndex then
		return nil, nil
	end

	local specID, specName = C_SpecializationInfo.GetSpecializationInfo(specIndex)
	local _, className = UnitClass("player")

	-- className from UnitClass arg2 is already the uppercase english token (e.g. "WARRIOR", "DEATHKNIGHT")
	return className, specName
end

-- Register slash command
SLASH_ARCHON1 = "/archon"
SlashCmdList["ARCHON"] = function()
	ArchonTalents:CreateGUI()
end

-- Make the addon object globally accessible
_G["ArchonTalents"] = ArchonTalents

-- Register events
ArchonTalents:SetScript("OnEvent", ArchonTalents.OnEvent)
ArchonTalents:Initialize()

