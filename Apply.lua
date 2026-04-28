-- Apply button + glow indicators.
-- The Apply button imports the optimal loadout for the current spec/boss/diff
-- via C_ClassTalents.ImportLoadout. Glow indicators (green = should pick,
-- red = picked but shouldn't) render around talent buttons whenever the
-- heatmap is enabled and a meta build is computed.

local _, addon = ...

local Apply = {}
addon.Apply = Apply

local CONFIG_NAME = "Archon Loadout"
local MIN_APPLY_LEVEL = 81
local STATE_DEBOUNCE = 0.1

-- Glow rendering
local GLOW_INSET = 14
local GLOW_SUBLEVEL = -3
local GLOW_CIRCLE_ATLAS = "talents-node-circle-greenglow"
local GLOW_CHOICE_ATLAS = "talents-node-choice-greenglow"
local GLOW_SQUARE_ATLAS = "talents-node-square-greenglow"
local GLOW_PULSE_MIN_ALPHA = 0.35
local GLOW_PULSE_HALF_DURATION = 0.6
local GLOW_KEY = "_archonTalentsGlow"

-- ===== STATE =====

local applyButton
local lastMatchState

-- ===== GLOW =====

local function UpdateGlow(button, glowType)
	if not glowType then
		if button[GLOW_KEY] then button[GLOW_KEY]:Hide() end
		return
	end
	local glow = button[GLOW_KEY]
	if not glow then
		glow = button:CreateTexture(nil, "BACKGROUND", nil, GLOW_SUBLEVEL)
		glow:SetBlendMode("ADD")
		glow:SetPoint("CENTER", button, "CENTER")
		local ag = glow:CreateAnimationGroup()
		local fade = ag:CreateAnimation("Alpha")
		fade:SetFromAlpha(1.0); fade:SetToAlpha(GLOW_PULSE_MIN_ALPHA)
		fade:SetDuration(GLOW_PULSE_HALF_DURATION); fade:SetOrder(1)
		local rise = ag:CreateAnimation("Alpha")
		rise:SetFromAlpha(GLOW_PULSE_MIN_ALPHA); rise:SetToAlpha(1.0)
		rise:SetDuration(GLOW_PULSE_HALF_DURATION); rise:SetOrder(2)
		ag:SetLooping("REPEAT")
		glow.pulse = ag
		button[GLOW_KEY] = glow
	end
	local atlas = GLOW_CIRCLE_ATLAS
	local refAtlas = (button.StateBorder and button.StateBorder:GetAtlas()) or (button.Border and button.Border:GetAtlas())
	if refAtlas then
		if string.find(refAtlas, "choice", 1, true) then atlas = GLOW_CHOICE_ATLAS
		elseif string.find(refAtlas, "square", 1, true) then atlas = GLOW_SQUARE_ATLAS end
	end
	glow:SetAtlas(atlas)
	glow:ClearAllPoints()
	local anchor = button.StateBorder or button
	glow:SetPoint("TOPLEFT", anchor, "TOPLEFT", -GLOW_INSET, GLOW_INSET)
	glow:SetPoint("BOTTOMRIGHT", anchor, "BOTTOMRIGHT", GLOW_INSET, -GLOW_INSET)
	glow:SetDesaturation(1)
	if glowType == "RED" then
		glow:SetVertexColor(1, 0, 0, 1)
	else
		glow:SetVertexColor(0, 1, 0, 1)
	end
	glow:Show()
	if not glow.pulse:IsPlaying() then glow.pulse:Play() end
end

local function IsLegallyPurchasable(cfg, nid, eid, itype, avail)
	if itype == Enum.TraitNodeType.Tiered then return avail end
	return C_Traits.CanPurchaseRank(cfg, nid, eid)
end

local function DecideGlow(button, info, metaSet, isSelected, isChoiceNode, activeRank, configID, nID)
	if not (metaSet and info) then return nil end
	local buttonEntry = button.GetEntryID and button:GetEntryID()
	if isChoiceNode then
		if not buttonEntry then return nil end
		local activeEntry = info.activeEntry and info.activeEntry.entryID
		local isThisPicked = isSelected and activeEntry == buttonEntry
		if isThisPicked then
			if metaSet[buttonEntry] then return nil end
			-- Only flag RED when the optimizer explicitly chose the other side;
			-- if neither entry is in metaSet we have no opinion on this node.
			if info.entryIDs then
				for _, eID in ipairs(info.entryIDs) do
					if eID ~= buttonEntry and metaSet[eID] then return "RED" end
				end
			end
			return nil
		end
		if not metaSet[buttonEntry] then return nil end
		if isSelected then return "GREEN" end
		if IsLegallyPurchasable(configID, nID, buttonEntry, info.type, info.isAvailable) then
			return "GREEN"
		end
		return nil
	end
	if isSelected then
		local pickedEntryID = (info.activeEntry and info.activeEntry.entryID) or buttonEntry
		local isMetaPath = pickedEntryID and metaSet[pickedEntryID]
		if not isMetaPath and info.entryIDs then
			for _, eID in ipairs(info.entryIDs) do
				if metaSet[eID] then isMetaPath = true; break end
			end
		end
		if not isMetaPath then return "RED" end
		if activeRank < (info.maxRanks or 1) and info.entryIDs then
			for _, eID in ipairs(info.entryIDs) do
				if IsLegallyPurchasable(configID, nID, eID, info.type, info.isAvailable) then
					return "GREEN"
				end
			end
		end
		return nil
	end
	if info.entryIDs then
		for _, eID in ipairs(info.entryIDs) do
			if metaSet[eID] and IsLegallyPurchasable(configID, nID, eID, info.type, info.isAvailable) then
				return "GREEN"
			end
		end
	end
	return nil
end

-- Called from Heatmap.lua's ApplyHeatmap hook for each talent button.
function Apply.RenderGlow(button, info, configID, nID)
	if not (addon.Heatmap and addon.Heatmap.IsEnabled and addon.Heatmap.IsEnabled()) then
		if button[GLOW_KEY] then button[GLOW_KEY]:Hide() end
		return
	end
	if not info then
		if button[GLOW_KEY] then button[GLOW_KEY]:Hide() end
		return
	end
	local metaSet = addon.Build and addon.Build.GetMetaSet()
	if not metaSet then
		if button[GLOW_KEY] then button[GLOW_KEY]:Hide() end
		return
	end
	local activeRank = info.activeRank or 0
	if button.nodeInfo and button.nodeInfo.ranksPurchased then
		activeRank = button.nodeInfo.ranksPurchased
	end
	local isSelected = activeRank > 0
	local isChoiceNode = info.type == Enum.TraitNodeType.Selection or info.type == Enum.TraitNodeType.SubTreeSelection
	local glowType = DecideGlow(button, info, metaSet, isSelected, isChoiceNode, activeRank, configID, nID)
	UpdateGlow(button, glowType)
end

function Apply.HideAllGlows()
	if not (PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame) then return end
	for button in PlayerSpellsFrame.TalentsFrame:EnumerateAllTalentButtons() do
		if button[GLOW_KEY] then button[GLOW_KEY]:Hide() end
	end
end

-- ===== APPLY ACTION =====

local function IsInspecting()
	return PlayerSpellsFrame and PlayerSpellsFrame.IsInspecting and PlayerSpellsFrame:IsInspecting()
end

function Apply.ApplyMetaBuild()
	if UnitLevel("player") < MIN_APPLY_LEVEL then
		print(("|cffff0000[Archon Talents]|r Apply Loadout requires level %d+."):format(MIN_APPLY_LEVEL))
		return
	end
	if not (addon.Heatmap and addon.Heatmap.HasData()) then
		print("|cffff0000[Archon Talents]|r No data available for this spec/boss/difficulty.")
		return
	end

	local talentsFrame = PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame
	if not talentsFrame then return end
	local configID = talentsFrame:GetConfigID()
	local treeInfo = talentsFrame:GetTreeInfo()
	if not configID or not treeInfo then return end

	local entries = addon.Build.Compute()
	if not entries or #entries == 0 then
		print("|cffff0000[Archon Talents]|r No matching nodes found for this build.")
		return
	end

	local specID = PlayerUtil.GetCurrentSpecID()
	local oldIDs, oldSet = {}, {}
	local existing = C_ClassTalents.GetConfigIDsBySpecID(specID)
	if existing then
		for _, id in ipairs(existing) do
			local cInfo = C_Traits.GetConfigInfo(id)
			if cInfo and cInfo.name == CONFIG_NAME then
				oldIDs[#oldIDs + 1] = id
				oldSet[id] = true
			end
		end
	end

	local success, errorString = C_ClassTalents.ImportLoadout(configID, entries, CONFIG_NAME)
	if not success then
		print(("|cffff0000[Archon Talents]|r Import failed: %s"):format(tostring(errorString)))
		return
	end

	talentsFrame:OnTraitConfigCreateStarted(true)
	local newIDs = C_ClassTalents.GetConfigIDsBySpecID(specID)
	if newIDs then
		for _, id in ipairs(newIDs) do
			local cInfo = C_Traits.GetConfigInfo(id)
			if cInfo and cInfo.name == CONFIG_NAME and not oldSet[id] then
				C_ClassTalents.SetUsesSharedActionBars(id, true)
				talentsFrame:SetSelectedSavedConfigID(id, true)
				break
			end
		end
	end
	for _, oldID in ipairs(oldIDs) do
		C_ClassTalents.DeleteConfig(oldID)
	end
	print("|cff00ff00[Archon Talents]|r Loadout applied.")
end

-- ===== APPLY BUTTON STATE =====

local function EvaluateMatch(configID, metaNodes)
	for nodeID, desc in pairs(metaNodes) do
		local nodeInfo = C_Traits.GetNodeInfo(configID, nodeID)
		if not nodeInfo then return false end
		if desc.tiered then
			if (nodeInfo.activeRank or 0) < (desc.ranks or 1) then return false end
		else
			local activeEntry = nodeInfo.activeEntry
			if not activeEntry or activeEntry.entryID ~= desc.entryID then return false end
			if (nodeInfo.activeRank or 0) < 1 then return false end
		end
	end
	return true
end

function Apply.UpdateButtonState()
	if IsInspecting() then return end
	local btn = applyButton
	if not btn then return end

	if UnitLevel("player") < MIN_APPLY_LEVEL then
		if btn._belowLevel then return end
		btn._belowLevel = true
		btn._isApplied = false
		btn._noData = false
		lastMatchState = nil
		btn:Disable()
		return
	end
	if btn._belowLevel then
		btn._belowLevel = false
		lastMatchState = nil
		btn:Enable()
	end

	local talentsFrame = PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame
	if not talentsFrame then return end
	local configID = talentsFrame:GetConfigID()
	local treeInfo = talentsFrame:GetTreeInfo()
	if not configID or not treeInfo then return end

	if not (addon.Heatmap and addon.Heatmap.HasData()) then
		if not btn._noData then
			btn._noData = true
			btn._isApplied = false
			lastMatchState = nil
			btn:Disable()
		end
		return
	end
	if btn._noData then
		btn._noData = false
		lastMatchState = nil
		btn:Enable()
	end

	local metaNodes = addon.Build.GetMetaNodes()
	if not metaNodes or not next(metaNodes) then return end
	local allMatch = EvaluateMatch(configID, metaNodes)
	if lastMatchState == allMatch then return end
	lastMatchState = allMatch
	btn._isApplied = allMatch
	if allMatch then btn:Disable() else btn:Enable() end
end

-- Heatmap.lua calls this when the user changes boss/diff/spec/toggle.
function Apply.OnSelectionChanged()
	addon.Build.Invalidate()
	lastMatchState = nil
	Apply.UpdateButtonState()
end

-- ===== APPLY BUTTON FRAME =====

function Apply.CreateButton(parent, anchorTo)
	if applyButton then return applyButton end
	local btn = CreateFrame("Button", "ArchonTalentsApplyButton", parent, "UIPanelButtonTemplate")
	btn:SetSize(80, 22)
	btn:SetPoint("LEFT", anchorTo, "RIGHT", 12, 0)
	btn:SetText("Apply")
	btn:SetFrameStrata("HIGH")

	btn:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		if self._belowLevel then
			GameTooltip:SetText(("Apply Loadout (Level %d+)"):format(MIN_APPLY_LEVEL), 0.5, 0.5, 0.5)
		elseif self._noData then
			GameTooltip:SetText("No Data", 1, 0.4, 0.4)
			GameTooltip:AddLine("No WCL data for this spec at the selected boss/difficulty. Try another combination.", 1, 1, 1, true)
		elseif self._isApplied then
			GameTooltip:SetText("Loadout Already Active", 0.5, 0.5, 0.5)
		else
			GameTooltip:SetText("Apply Archon Loadout", 1, 1, 1)
		end
		GameTooltip:Show()
	end)
	btn:SetScript("OnLeave", function() GameTooltip:Hide() end)
	btn:SetScript("OnClick", function(self)
		if self._belowLevel or self._noData or self._isApplied then return end
		Apply.ApplyMetaBuild()
	end)

	applyButton = btn
	Apply.UpdateButtonState()
	return btn
end

function Apply.HideButton()
	if applyButton then applyButton:Hide() end
end

function Apply.ShowButton()
	if applyButton then applyButton:Show() end
end

-- ===== EVENT WATCHER =====

local pendingUpdate = false
local watcher = CreateFrame("Frame")
watcher:RegisterEvent("TRAIT_CONFIG_CREATED")
watcher:RegisterEvent("TRAIT_CONFIG_DELETED")
watcher:RegisterEvent("TRAIT_CONFIG_UPDATED")
watcher:RegisterEvent("SELECTED_LOADOUT_CHANGED")
watcher:RegisterEvent("TRAIT_CONFIG_LIST_UPDATED")
watcher:RegisterEvent("PLAYER_LEVEL_UP")
watcher:SetScript("OnEvent", function()
	if pendingUpdate then return end
	pendingUpdate = true
	C_Timer.After(STATE_DEBOUNCE, function()
		pendingUpdate = false
		Apply.UpdateButtonState()
	end)
end)
