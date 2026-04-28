-- Archon Talents — In-tree heatmap overlay
-- Hooks Blizzard's talent buttons to draw a pick-rate badge per node, and
-- pins boss + difficulty dropdowns inside the talent panel so the user can
-- swap fights without leaving the tree.

local addonName, addon = ...

local Heatmap = {}
addon.Heatmap = Heatmap

-- ===== CONSTANTS =====

local BOSS_LIST = {
	"Imperator",
	"Vorasius",
	"Salhadaar",
	"Vaelgor & Ezzorak",
	"Vanguard",
	"Crown",
	"Chimaerus",
	"Belo'ren",
	"Midnight Falls",
}

local DIFFICULTIES = { "heroic", "mythic" }
local DIFFICULTY_LABELS = { heroic = "Heroic", mythic = "Mythic" }

-- WoW class tokens differ from WCLTalentHeatmap's keys (camelcase, no underscore)
local CLASS_TOKEN_TO_WCL = {
	DEATHKNIGHT = "DeathKnight", DEMONHUNTER = "DemonHunter",
	DRUID = "Druid", EVOKER = "Evoker", HUNTER = "Hunter",
	MAGE = "Mage", MONK = "Monk", PALADIN = "Paladin",
	PRIEST = "Priest", ROGUE = "Rogue", SHAMAN = "Shaman",
	WARLOCK = "Warlock", WARRIOR = "Warrior",
}

local BADGE_WIDTH = 42
local BADGE_HEIGHT = 16
local BADGE_FONT_SIZE = 13
local BADGE_TOP_OFFSET = 11
local BADGE_TEXT_X = 1
local BADGE_SHADOW_WIDTH = 73
local BADGE_SHADOW_HEIGHT = 42
local BADGE_SHADOW_ALPHA = 0.95
local BADGE_LEVEL_OFFSET = 2

local DROPDOWN_WIDTH = 150
local DROPDOWN_GAP = 15

-- Bottom-left WCL.png toggle badge
local WCL_BADGE_SIZE = 30
local WCL_BADGE_X = 32
local WCL_BADGE_Y = 112
local WCL_BADGE_LEVEL = 9900
local WCL_DISABLED_ALPHA = 0.35
local WCL_DISABLED_COLOR = 0.4
local WCL_BADGE_TEXTURE = "Interface\\AddOns\\ArchonTalents\\WCL.png"

-- Pick-rate tier colors (input is 0-100). Reads cleanly in the dim talent panel.
local function TierColor(pct)
	if pct >= 100 then return 0.898, 0.800, 0.502 end -- gold
	if pct >= 99  then return 0.886, 0.408, 0.659 end -- pink
	if pct >= 95  then return 1.000, 0.502, 0.000 end -- orange
	if pct >= 75  then return 0.639, 0.208, 0.933 end -- purple
	if pct >= 50  then return 0.000, 0.439, 1.000 end -- blue
	if pct >= 25  then return 0.118, 1.000, 0.000 end -- green
	return 0.400, 0.400, 0.400                          -- gray
end

-- ===== STATE =====

local BADGE_KEY = "_archonTalentsBadge"

-- entryID -> 0-1 pct, rebuilt on selection change
local cachedRates = {}
local cacheKey = nil
local hooked = false
local selectorBuilt = false

-- ===== DATA LOOKUP =====

local function GetPlayerKeys()
	local _, classToken = UnitClass("player")
	local specIndex = C_SpecializationInfo.GetSpecialization()
	if not specIndex then return nil end
	local _, specName = C_SpecializationInfo.GetSpecializationInfo(specIndex)
	local wclClass = CLASS_TOKEN_TO_WCL[classToken]
	if not wclClass or not specName then return nil end
	return wclClass, specName
end

local function CurrentBoss()
	return ArchonTalentsDB.heatmap and ArchonTalentsDB.heatmap.boss or BOSS_LIST[1]
end

local function CurrentDifficulty()
	return ArchonTalentsDB.heatmap and ArchonTalentsDB.heatmap.difficulty or "heroic"
end

local function IsEnabled()
	return ArchonTalentsDB.heatmap and ArchonTalentsDB.heatmap.enabled == true
end

local function RebuildCache()
	local class, spec = GetPlayerKeys()
	local boss = CurrentBoss()
	local diff = CurrentDifficulty()
	if not class or not spec or not boss then
		wipe(cachedRates)
		cacheKey = nil
		return
	end
	local key = diff .. "_" .. class .. "_" .. spec .. "_" .. boss
	if cacheKey == key then return end
	cacheKey = key
	wipe(cachedRates)
	local d = WCLTalentHeatmap and WCLTalentHeatmap[diff]
		and WCLTalentHeatmap[diff][class]
		and WCLTalentHeatmap[diff][class][spec]
		and WCLTalentHeatmap[diff][class][spec][boss]
	if not d or not d.n then return end
	for pair in d.n:gmatch("[^;]+") do
		local id, pct = pair:match("^(%d+):([%d%.]+)$")
		if id and pct then
			cachedRates[tonumber(id)] = tonumber(pct)
		end
	end
end

local function InvalidateCache()
	cacheKey = nil
end

-- Called by ApplyHeatmap; entryID is the active or first selected entry.
local function LookupPickRate(entryID)
	if not cacheKey then RebuildCache() end
	return cachedRates[entryID]
end

-- ===== OVERLAY =====

local function IsInspectingTalents()
	return PlayerSpellsFrame and PlayerSpellsFrame.IsInspecting and PlayerSpellsFrame:IsInspecting()
end

local function CreateBadge(button)
	local badge = CreateFrame("Frame", nil, button)
	badge:SetFrameLevel(math.max(1, button:GetFrameLevel() + BADGE_LEVEL_OFFSET))
	badge:SetSize(BADGE_WIDTH, BADGE_HEIGHT)
	badge:SetPoint("TOP", button, "BOTTOM", 0, BADGE_TOP_OFFSET)
	local bg = badge:CreateTexture(nil, "BACKGROUND")
	bg:SetPoint("CENTER")
	bg:SetSize(BADGE_SHADOW_WIDTH, BADGE_SHADOW_HEIGHT)
	bg:SetAtlas("PetJournal-BattleSlot-Shadow")
	bg:SetVertexColor(0, 0, 0, BADGE_SHADOW_ALPHA)
	local fs = badge:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmallOutline")
	fs:SetFont("Fonts\\FRIZQT__.TTF", BADGE_FONT_SIZE, "OUTLINE")
	fs:SetPoint("CENTER", badge, "CENTER", BADGE_TEXT_X, 0)
	fs:SetTextColor(1, 1, 1)
	badge.text = fs
	button[BADGE_KEY] = badge
	return badge
end

-- For choice nodes (multiple entryIDs) the active button.GetEntryID returns one;
-- for nodes the player hasn't selected yet we want the highest sibling rate so
-- the badge reflects the meta pick.
local function ResolvePickRate(button, info)
	local entry = (button.GetSelectedEntryID and button:GetSelectedEntryID())
		or (button.GetEntryID and button:GetEntryID())
	if entry then
		local r = LookupPickRate(entry)
		if r then return r end
	end
	if info and info.entryIDs then
		local best
		for _, eID in ipairs(info.entryIDs) do
			local r = LookupPickRate(eID)
			if r and (not best or r > best) then best = r end
		end
		return best
	end
	return nil
end

local function ApplyHeatmap(button)
	if IsInspectingTalents() or not IsEnabled() then
		if button[BADGE_KEY] then button[BADGE_KEY]:Hide() end
		if addon.Apply then addon.Apply.RenderGlow(button, nil) end
		return
	end
	local talentsFrame = PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame
	if not (talentsFrame and talentsFrame:IsShown()) then return end

	local nID = button.GetNodeID and button:GetNodeID()
	local cfg = C_ClassTalents.GetActiveConfigID()
	local info = nID and cfg and C_Traits.GetNodeInfo(cfg, nID)

	local rate = ResolvePickRate(button, info)
	if not rate then
		if button[BADGE_KEY] then button[BADGE_KEY]:Hide() end
	else
		local pct = rate * 100
		local badge = button[BADGE_KEY] or CreateBadge(button)
		local r, g, b = TierColor(pct)
		badge.text:SetText(math.floor(pct) .. "%")
		badge.text:SetTextColor(r, g, b, 1)
		badge:Show()
	end

	if addon.Apply then addon.Apply.RenderGlow(button, info, cfg, nID) end
end

local function RefreshAllBadges()
	if not (PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame and PlayerSpellsFrame.TalentsFrame:IsShown()) then
		return
	end
	for button in PlayerSpellsFrame.TalentsFrame:EnumerateAllTalentButtons() do
		ApplyHeatmap(button)
	end
end

local function OnSelectionChanged()
	InvalidateCache()
	if addon.Apply and addon.Apply.OnSelectionChanged then
		addon.Apply.OnSelectionChanged()
	end
	RefreshAllBadges()
end

-- ===== SELECTOR =====

local bossDropdown
local diffDropdown
local wclBadge

local function CreateWCLBadge(talentsFrame)
	if wclBadge then return end
	local badge = CreateFrame("Button", "ArchonTalentsWCLBadge", talentsFrame)
	badge:SetSize(WCL_BADGE_SIZE, WCL_BADGE_SIZE)
	badge:SetPoint("BOTTOMLEFT", talentsFrame, "BOTTOMLEFT", WCL_BADGE_X, WCL_BADGE_Y)
	badge:SetFrameStrata("HIGH")
	badge:SetFrameLevel(WCL_BADGE_LEVEL)
	badge:RegisterForClicks("AnyUp")

	local icon = badge:CreateTexture(nil, "OVERLAY")
	icon:SetAllPoints()
	icon:SetTexture(WCL_BADGE_TEXTURE)
	badge.icon = icon

	local function ApplyState()
		local enabled = IsEnabled()
		icon:SetDesaturated(not enabled)
		if enabled then
			icon:SetVertexColor(1, 1, 1, 1)
		else
			icon:SetVertexColor(WCL_DISABLED_COLOR, WCL_DISABLED_COLOR, WCL_DISABLED_COLOR, WCL_DISABLED_ALPHA)
		end
	end
	badge.ApplyState = ApplyState
	ApplyState()

	badge:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
		GameTooltip:SetText("Toggle Heatmap", 1, 1, 1)
		GameTooltip:Show()
	end)
	badge:SetScript("OnLeave", function() GameTooltip:Hide() end)
	badge:SetScript("OnClick", function()
		ArchonTalentsDB.heatmap = ArchonTalentsDB.heatmap or {}
		ArchonTalentsDB.heatmap.enabled = not IsEnabled()
		ApplyState()
		OnSelectionChanged()
	end)

	wclBadge = badge
end

local function BuildBossDropdown()
	bossDropdown:SetupMenu(function(_, root)
		root:CreateTitle("Raid Boss")
		for _, boss in ipairs(BOSS_LIST) do
			root:CreateRadio(boss,
				function() return CurrentBoss() == boss end,
				function()
					ArchonTalentsDB.heatmap = ArchonTalentsDB.heatmap or {}
					ArchonTalentsDB.heatmap.boss = boss
					OnSelectionChanged()
				end)
		end
	end)
end

local function BuildDiffDropdown()
	diffDropdown:SetupMenu(function(_, root)
		for _, d in ipairs(DIFFICULTIES) do
			local label = DIFFICULTY_LABELS[d]
			root:CreateRadio(label,
				function() return CurrentDifficulty() == d end,
				function()
					ArchonTalentsDB.heatmap = ArchonTalentsDB.heatmap or {}
					ArchonTalentsDB.heatmap.difficulty = d
					OnSelectionChanged()
				end)
		end
	end)
end

local function SetupSelector()
	if selectorBuilt then return end
	local talentsFrame = PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame
	if not (talentsFrame and talentsFrame.LoadSystem) then return end
	selectorBuilt = true

	-- Anchor between the SearchBox (left) and the ApplyButton (right). Falls back
	-- to LoadSystem if SearchBox is unavailable on this client build.
	local anchorTo = talentsFrame.SearchBox or talentsFrame.LoadSystem

	bossDropdown = CreateFrame("DropdownButton", "ArchonTalentsBossDropdown",
		talentsFrame, "WowStyle1DropdownTemplate")
	bossDropdown:SetPoint("LEFT", anchorTo, "RIGHT", DROPDOWN_GAP, 0)
	bossDropdown:SetWidth(DROPDOWN_WIDTH)
	bossDropdown:SetMenuAnchor(AnchorUtil.CreateAnchor("BOTTOMLEFT", bossDropdown, "TOPLEFT", 0, 0))

	diffDropdown = CreateFrame("DropdownButton", "ArchonTalentsDiffDropdown",
		talentsFrame, "WowStyle1DropdownTemplate")
	-- Stacked above the boss dropdown to save horizontal room next to ApplyChanges.
	diffDropdown:SetPoint("BOTTOM", bossDropdown, "TOP", 0, 4)
	diffDropdown:SetWidth(DROPDOWN_WIDTH)
	diffDropdown:SetMenuAnchor(AnchorUtil.CreateAnchor("BOTTOMLEFT", diffDropdown, "TOPLEFT", 0, 0))

	BuildBossDropdown()
	BuildDiffDropdown()

	CreateWCLBadge(talentsFrame)

	local applyBtn
	if addon.Apply and addon.Apply.CreateButton then
		applyBtn = addon.Apply.CreateButton(talentsFrame, bossDropdown)
	end

	-- Inspect reuses the same TalentsFrame; hide our additions on another player's tree.
	local function SyncInspectVisibility()
		local hidden = IsInspectingTalents()
		if hidden then
			bossDropdown:Hide(); diffDropdown:Hide(); wclBadge:Hide()
			if applyBtn then applyBtn:Hide() end
		else
			bossDropdown:Show(); diffDropdown:Show(); wclBadge:Show()
			if applyBtn then applyBtn:Show() end
		end
	end
	hooksecurefunc(PlayerSpellsFrame, "SetInspecting", SyncInspectVisibility)
	PlayerSpellsFrame:HookScript("OnShow", SyncInspectVisibility)
	SyncInspectVisibility()
end

-- ===== HOOK =====

local function HookTalentTree()
	if hooked then return end
	EventUtil.ContinueOnAddOnLoaded("Blizzard_PlayerSpells", function()
		if hooked then return end
		hooked = true
		hooksecurefunc(TalentButtonArtMixin, "UpdateStateBorder", ApplyHeatmap)
		SetupSelector()
		-- After Apply/learn, Blizzard fires a burst of currency updates that re-skin
		-- buttons; coalesce them into one redraw per frame.
		if PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame then
			local queued = false
			hooksecurefunc(PlayerSpellsFrame.TalentsFrame, "UpdateTreeCurrencyInfo", function()
				if queued then return end
				queued = true
				C_Timer.After(0, function()
					queued = false
					RefreshAllBadges()
				end)
			end)
		end
	end)
end

-- ===== INIT =====

local specWatcher = CreateFrame("Frame")
specWatcher:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
specWatcher:SetScript("OnEvent", function(_, _, unit)
	if unit == "player" then OnSelectionChanged() end
end)

local loader = CreateFrame("Frame")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function(self)
	self:UnregisterAllEvents()
	ArchonTalentsDB = ArchonTalentsDB or {}
	if not ArchonTalentsDB.heatmap then
		ArchonTalentsDB.heatmap = { boss = BOSS_LIST[1], difficulty = "heroic", enabled = false }
	elseif ArchonTalentsDB.heatmap.enabled == nil then
		ArchonTalentsDB.heatmap.enabled = false
	end
	HookTalentTree()
end)

Heatmap.Refresh = OnSelectionChanged
Heatmap.LookupPickRate = LookupPickRate
Heatmap.IsEnabled = IsEnabled

-- Returns (specData, key) for the active spec/boss/diff combination. specData
-- maps entryID -> 0..1 pick rate. Key changes whenever any selection changes,
-- so consumers can cache derived state against it.
function Heatmap.GetSpecData()
	if not cacheKey then RebuildCache() end
	if not cacheKey or not next(cachedRates) then return nil, nil end
	return cachedRates, cacheKey
end

function Heatmap.HasData()
	if not cacheKey then RebuildCache() end
	return cacheKey ~= nil and next(cachedRates) ~= nil
end
