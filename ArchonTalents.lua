-- Archon Talents Addon
-- Displays the most popular talent builds from Archon.gg meta data

local addonName, addon = ...
local ArchonTalents = CreateFrame("Frame")

-- Database - Only initialize if ArchonData.lua hasn't already loaded it
if not ArchonTalentsDB then
	ArchonTalentsDB = {
		lastUpdate = 0,
		specData = {},
		bossData = {},
		dataVersion = nil,
		source = "bundled"
	}
	print("|cFF888888[Archon Talents]|r Initialized empty database (ArchonData.lua will populate it)")
else
	print("|cFF888888[Archon Talents]|r Using existing database (loaded by ArchonData.lua)")
end

-- Boss list for Manaforge Omega
local BOSS_LIST = {
	"Plexus Sentinel",
	"Loom'ithar", 
	"Soulbinder Naazindhri",
	"Forgeweaver Araz",
	"The Soul Hunters",
	"Fractillus",
	"Nexus-King Salhadaar",
	"Dimensius"
}

-- Expose constants for UI file
ArchonTalents.CLASS_SPECS = CLASS_SPECS
ArchonTalents.BOSS_LIST = BOSS_LIST

-- Initialize addon
function ArchonTalents:Initialize()
	self:RegisterEvent("ADDON_LOADED")
	self:RegisterEvent("PLAYER_LOGIN")
	
	-- Create update timer
	self.updateTimer = 0
	
	-- Create minimap button
	self:CreateMinimapButton()
	
	print("|cFF00FF00[Archon Talents]|r Loaded! Use minimap button or type /archon to open.")
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
		text = "WCL",
		icon = "Interface\\Icons\\Ability_hunter_focusedaim",
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
	elseif event == "PLAYER_LOGIN" then
		self:OnPlayerLogin()
	end
end

function ArchonTalents:OnAddonLoaded()
	-- Initialize saved variables
	if not ArchonTalentsDB.specData then
		ArchonTalentsDB.specData = {}
	end
	if not ArchonTalentsDB.bossData then
		ArchonTalentsDB.bossData = {}
	end
	
	-- Do not auto-update if bundled data exists
	local hasBundledData = next(ArchonTalentsDB.specData) ~= nil
	if not hasBundledData then
		-- No bundled data, but we'll let ArchonData.lua handle it
	end
end

function ArchonTalents:OnPlayerLogin()
	-- Initialize UI (if UI file is loaded)
	if self.InitializeUI then
		self:InitializeUI()
	end
end



-- Update spec data from bundled data
function ArchonTalents:UpdateSpecData()
	if self.isUpdating then return end
	
	self.isUpdating = true

	
	-- Check if bundled data exists and import it
	if next(ArchonTalentsDB.specData) ~= nil then

		
		-- Import all specs from bundled data
		self:ImportAllSpecsFromBundledData()
		
		self.isUpdating = false
		self.updateScheduled = false
		return
	end
	
	-- Fallback to mock data when no bundled data present (DISABLED - using WCLData.lua)
	-- self:MockUpdateSpecData()

	
	self.isUpdating = false
	self.updateScheduled = false
	ArchonTalentsDB.lastUpdate = GetTime()
end

-- Import all specs from bundled data
function ArchonTalents:ImportAllSpecsFromBundledData()
	local importedCount = 0
	local totalBosses = 0
	
	for bossName, bossData in pairs(ArchonTalentsDB.specData) do
		totalBosses = totalBosses + 1
		
		-- Handle both difficulties (Heroic and Mythic)
		for difficulty, difficultyData in pairs(bossData) do
			if type(difficultyData) == "table" then
				for className, classData in pairs(difficultyData) do
					if type(classData) == "table" and classData.spec then
						importedCount = importedCount + 1
					end
				end
			end
		end
	end
	

end

-- Mock update function (used only when no bundled data)
function ArchonTalents:MockUpdateSpecData()
	local currentSpecs = {}
	
	-- Simulate fetching data for each boss
	for _, bossName in ipairs(BOSS_LIST) do
		currentSpecs[bossName] = {}
		
		-- Generate mock popular specs for each class
		for className, specs in pairs(CLASS_SPECS) do
			local randomSpec = specs[math.random(1, #specs)]
			currentSpecs[bossName][className] = {
				spec = randomSpec,
				popularity = math.random(50, 100),
				sampleSize = math.random(100, 1000)
			}
		end
	end
	
	ArchonTalentsDB.specData = currentSpecs
	ArchonTalentsDB.source = "mock"
	ArchonTalentsDB.dataVersion = date("%Y-%m-%d %H:%M:%S")

end

-- Get most popular spec for a class on a specific boss and difficulty
function ArchonTalents:GetMostPopularSpec(className, bossName, difficulty)
	if not ArchonTalentsDB.specData[bossName] then
		return nil
	end
	
	-- Try to get data for the specified difficulty
	local difficultyData = ArchonTalentsDB.specData[bossName][difficulty]
	if difficultyData and difficultyData[className] then
		return difficultyData[className].spec
	end
	
	-- Fallback: try to get data from any available difficulty
	for diff, diffData in pairs(ArchonTalentsDB.specData[bossName]) do
		if type(diffData) == "table" and diffData[className] then
			return diffData[className].spec
		end
	end
	
	return nil
end

-- Get most popular loadout for a class/spec on a specific boss and difficulty
function ArchonTalents:GetMostPopularLoadout(className, specName, bossName, difficulty)
	if not ArchonTalentsDB.specData[bossName] then
		return nil
	end
	
	-- Try to get data for the specified difficulty
	local difficultyData = ArchonTalentsDB.specData[bossName][difficulty]
	if difficultyData and difficultyData[className] and difficultyData[className][specName] then
		return difficultyData[className][specName].loadoutCode
	end
	
	-- Fallback: try to get data from any available difficulty
	for diff, diffData in pairs(ArchonTalentsDB.specData[bossName]) do
		if type(diffData) == "table" and diffData[className] and diffData[className][specName] then
			return diffData[className][specName].loadoutCode
		end
	end
	
	return nil
end

-- Get most popular loadout for current player's class/spec
function ArchonTalents:GetCurrentClassLoadout(specName, bossName, difficulty)
	local _, className = UnitClass("player")
	if not className then return nil end
	
	return self:GetMostPopularLoadout(className, specName or "Any", bossName or "All Bosses", difficulty)
end

-- Import a loadout code directly
function ArchonTalents:ImportLoadoutCode(loadoutCode)
	if not loadoutCode then return false end
	
	-- Check if we can use loadouts
	if C_ClassTalents and C_ClassTalents.CanUseLoadout then
		-- Try to import the loadout code
		local success = C_ClassTalents.ImportLoadout(loadoutCode)
		if success then
			-- Loadout imported successfully
			return true
		else
			-- Failed to import loadout code
			return false
		end
	else
		-- Loadout system not available
		return false
	end
end

-- Auto-import most popular loadout for current boss
function ArchonTalents:AutoImportLoadout(specName, difficulty)
	local currentBoss = self:GetCurrentBossName()
	if not currentBoss then
		-- Could not determine current boss
		return false
	end
	
	local loadoutCode = self:GetCurrentClassLoadout(specName, currentBoss, difficulty)
	if not loadoutCode then
		-- No loadout data available for current boss/class/spec
		return false
	end
	
	return self:ImportLoadoutCode(loadoutCode)
end

-- Get current boss name (simplified - you might want to enhance this)
function ArchonTalents:GetCurrentBossName()
	local zoneName = GetZoneText()
	if zoneName == "Manaforge Omega" then
		-- Try to get boss name from combat log or other sources
		-- For now, return a default
		return "All Bosses"
	end
	
	return nil
end

-- GUI variables
local mainFrame = nil
local isUIShown = false
local selectedBoss = "Plexus Sentinel"
local selectedDifficulty = "Heroic"
local selectedTab = "Raid" -- "Raid" or "Mythic+"



-- Get loadout data for a specific boss, difficulty, class, and spec
function ArchonTalents:GetLoadoutData(bossName, difficulty, className, specName)
	if not ArchonTalentsDB.specData then return nil end
	
	local bossData = ArchonTalentsDB.specData[bossName]
	if not bossData then return nil end
	
	local diffData = bossData[difficulty]
	if not diffData then return nil end
	
	local classData = diffData[className]
	if not classData then return nil end
	
	return classData[specName]
end

-- Update the mythic+ display
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
	
	-- Update class/spec display
	mainFrame.mpSpecText:SetText(className .. " - " .. specName)
	
	-- Get Mythic+ data for this class/spec
	local mythicPlusData = ArchonTalentsDB and ArchonTalentsDB.specData and ArchonTalentsDB.specData["Mythic+"]
	if not mythicPlusData then
		mainFrame.mpUsageText:SetText("No Mythic+ data available")
		mainFrame.mpCodeBox:SetText("No loadout available")
		mainFrame.mpCodeBox.originalText = "No loadout available"
		return
	end
	
	local classData = mythicPlusData[className]
	if not classData then
		mainFrame.mpUsageText:SetText("No M+ data for " .. className)
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
	
	-- Display the Mythic+ build data
	local usageText = string.format("%.1f%% popularity", specData.usage or 0)
	if specData.totalRankings then
		usageText = usageText .. string.format(" (%s parses)", tostring(specData.totalRankings))
	end
	
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
	
	local className, specName = ArchonTalents:GetPlayerClassSpec()
	if not className or not specName then
		mainFrame.specText:SetText("No class/spec detected")
		mainFrame.usageText:SetText("Please select a specialization")
		mainFrame.codeBox:SetText("No loadout available")
		mainFrame.codeBox.originalText = "No loadout available"
		return
	end
	
	-- Update class/spec display
	mainFrame.specText:SetText(className .. " - " .. specName)
	
	local loadoutData = ArchonTalents:GetLoadoutData(bossName, selectedDifficulty, className, specName)
	if loadoutData then
		local usageText = string.format("%.1f%% popularity", loadoutData.usage)
		mainFrame.usageText:SetText(usageText)
		mainFrame.codeBox:SetText(loadoutData.loadoutCode)
		mainFrame.codeBox.originalText = loadoutData.loadoutCode
		mainFrame.codeBox:SetCursorPosition(0)
	else
		mainFrame.usageText:SetText("No loadout available for this combination")
		mainFrame.codeBox:SetText("No loadout available")
		mainFrame.codeBox.originalText = "No loadout available"
	end
	
	-- Update difficulty button text colors
	if mainFrame.heroicButton and mainFrame.mythicButton then
		if selectedDifficulty == "Heroic" then
			mainFrame.heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected
			mainFrame.mythicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for normal
		else
			mainFrame.heroicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for normal
			mainFrame.mythicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected mythic
		end
	end
end

-- Update tab display visibility
local function UpdateTabDisplay()
	if not mainFrame then return end
	
	-- Update tab button colors
	if mainFrame.raidTabButton and mainFrame.mythicPlusTabButton then
		if selectedTab == "Raid" then
			mainFrame.raidTabButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected
			mainFrame.mythicPlusTabButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for unselected
		else
			mainFrame.raidTabButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for unselected
			mainFrame.mythicPlusTabButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected
		end
	end
	
	-- Show/hide content based on selected tab
	if mainFrame.raidContent then
		if selectedTab == "Raid" then
			mainFrame.raidContent:Show()
		else
			mainFrame.raidContent:Hide()
		end
	end
	
	if mainFrame.mythicPlusContent then
		if selectedTab == "Mythic+" then
			mainFrame.mythicPlusContent:Show()
		else
			mainFrame.mythicPlusContent:Hide()
		end
	end
	
	-- Update content based on selected tab
	if selectedTab == "Raid" then
		UpdateRaidDisplay()
	else
		UpdateMythicPlusDisplay()
	end
end

-- Update the mythic+ display
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
	
	-- Update class/spec display
	mainFrame.mpSpecText:SetText(className .. " - " .. specName)
	
	-- Get Mythic+ data for this class/spec
	local mythicPlusData = ArchonTalentsDB and ArchonTalentsDB.specData and ArchonTalentsDB.specData["Mythic+"]
	if not mythicPlusData then
		mainFrame.mpUsageText:SetText("No Mythic+ data available")
		mainFrame.mpCodeBox:SetText("No loadout available")
		mainFrame.mpCodeBox.originalText = "No loadout available"
		return
	end
	
	local classData = mythicPlusData[className]
	if not classData then
		mainFrame.mpUsageText:SetText("No M+ data for " .. className)
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
	
	-- Display the Mythic+ build data
	local usageText = string.format("%.1f%% popularity", specData.usage or 0)
	if specData.totalRankings then
		usageText = usageText .. string.format(" (%s parses)", tostring(specData.totalRankings))
	end
	
	mainFrame.mpUsageText:SetText(usageText)
	mainFrame.mpCodeBox:SetText(specData.loadoutCode or "No loadout available")
	mainFrame.mpCodeBox.originalText = specData.loadoutCode or "No loadout available"
	mainFrame.mpCodeBox:SetCursorPosition(0)
end

-- Update the raid display with current boss data (renamed from UpdateBossDisplay)
local function UpdateRaidDisplay()
	if not mainFrame then return end
	
	local bossName = BOSS_LIST[selectedBoss]
	if not bossName then return end
	
	local className, specName = ArchonTalents:GetPlayerClassSpec()
	if not className or not specName then
		-- Show message if no class/spec detected
		mainFrame.bossText:SetText(bossName .. " (" .. selectedDifficulty .. ")")
		mainFrame.specText:SetText("No class/spec detected")
		mainFrame.usageText:SetText("Please select a specialization")
		mainFrame.codeBox:SetText("No loadout available")
		mainFrame.codeBox.originalText = "No loadout available"
		return
	end
	
	local loadoutData = ArchonTalents:GetLoadoutData(bossName, selectedDifficulty, className, specName)
	
	-- Update all the display elements
	mainFrame.bossText:SetText(bossName .. " (" .. selectedDifficulty .. ")")
	mainFrame.specText:SetText(className .. " - " .. specName)
	
	if loadoutData then
		mainFrame.usageText:SetText((loadoutData.usage or "Unknown") .. "% of top 100 players")
		mainFrame.codeBox:SetText(loadoutData.loadoutCode or "No code available")
		mainFrame.codeBox.originalText = loadoutData.loadoutCode or "No code available"
	else
		mainFrame.usageText:SetText("No data available")
		mainFrame.codeBox:SetText("No loadout available for this combination")
		mainFrame.codeBox.originalText = "No loadout available for this combination"
	end
	
	mainFrame.codeBox:SetCursorPosition(0) -- Reset cursor to beginning
	
	-- Update difficulty button text colors
	if mainFrame.heroicButton and mainFrame.mythicButton then
		if selectedDifficulty == "Heroic" then
			mainFrame.heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected
			mainFrame.mythicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for normal
		else
			mainFrame.heroicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for normal
			mainFrame.mythicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected mythic
		end
	end
end

-- Legacy function for backward compatibility  
local function UpdateBossDisplay()
	UpdateTabDisplay()
end

-- Create the beautiful GUI window
function ArchonTalents:CreateGUI()
	if mainFrame then
		-- If GUI already exists, just show/hide it
		if mainFrame:IsShown() then
			mainFrame:Hide()
			isUIShown = false
		else
			mainFrame:Show()
			isUIShown = true
			UpdateBossDisplay()
		end
		return
	end

	-- Create main frame (larger to fit boss list)
	mainFrame = CreateFrame("Frame", "ArchonTalentsGUI", UIParent, "BackdropTemplate")
	mainFrame:SetSize(600, 400)
	mainFrame:SetPoint("CENTER")
	mainFrame:SetBackdrop({
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
		tile = true, tileSize = 32, edgeSize = 32,
		insets = { left = 8, right = 8, top = 8, bottom = 8 }
	})
	mainFrame:SetBackdropColor(0, 0, 0, 0.8)
	mainFrame:EnableMouse(true)
	mainFrame:SetMovable(true)
	mainFrame:RegisterForDrag("LeftButton")
	mainFrame:SetScript("OnDragStart", mainFrame.StartMoving)
	mainFrame:SetScript("OnDragStop", mainFrame.StopMovingOrSizing)
	
	-- Register with WoW's ESC key handler
	tinsert(UISpecialFrames, "ArchonTalentsGUI")
	
	-- Update our state when frame is hidden by ESC key
	mainFrame:SetScript("OnHide", function()
		isUIShown = false
	end)

	-- Title bar
	local titleBar = CreateFrame("Frame", nil, mainFrame, "BackdropTemplate")
	titleBar:SetHeight(30)
	titleBar:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 8, -8)
	titleBar:SetPoint("TOPRIGHT", mainFrame, "TOPRIGHT", -8, -8)
	titleBar:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }
	})
	titleBar:SetBackdropColor(0.1, 0.1, 0.2, 1)

	-- Title text
	local titleText = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	titleText:SetPoint("CENTER", titleBar, "CENTER")
	titleText:SetText("Archon Talents - Meta Builds")
	titleText:SetTextColor(1, 0.8, 0, 1)

	-- Close button
	local closeButton = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
	closeButton:SetPoint("TOPRIGHT", titleBar, "TOPRIGHT", -2, -2)
	closeButton:SetScript("OnClick", function()
		mainFrame:Hide()
		isUIShown = false
	end)

	-- Tab buttons
	local raidTabButton = CreateFrame("Button", nil, mainFrame, "GameMenuButtonTemplate")
	raidTabButton:SetSize(80, 25)
	raidTabButton:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 10, -5)
	raidTabButton:SetText("Raid")
	raidTabButton:SetScript("OnClick", function()
		selectedTab = "Raid"
		UpdateTabDisplay()
	end)
	mainFrame.raidTabButton = raidTabButton

	local mythicPlusTabButton = CreateFrame("Button", nil, mainFrame, "GameMenuButtonTemplate")
	mythicPlusTabButton:SetSize(80, 25)
	mythicPlusTabButton:SetPoint("LEFT", raidTabButton, "RIGHT", 5, 0)
	mythicPlusTabButton:SetText("Mythic+")
	mythicPlusTabButton:SetScript("OnClick", function()
		selectedTab = "Mythic+"
		UpdateTabDisplay()
	end)
	mainFrame.mythicPlusTabButton = mythicPlusTabButton

	-- Create content containers
	local raidContent = CreateFrame("Frame", nil, mainFrame)
	raidContent:SetPoint("TOPLEFT", raidTabButton, "BOTTOMLEFT", 0, -10)
	raidContent:SetPoint("BOTTOMRIGHT", mainFrame, "BOTTOMRIGHT", -10, 10)
	mainFrame.raidContent = raidContent

	local mythicPlusContent = CreateFrame("Frame", nil, mainFrame)
	mythicPlusContent:SetPoint("TOPLEFT", raidTabButton, "BOTTOMLEFT", 0, -10)
	mythicPlusContent:SetPoint("BOTTOMRIGHT", mainFrame, "BOTTOMRIGHT", -10, 10)
	mythicPlusContent:Hide() -- Hidden by default
	mainFrame.mythicPlusContent = mythicPlusContent

	-- RAID CONTENT - Move existing boss selection to raid content
	-- Left side: Boss selection
	local bossListLabel = raidContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	bossListLabel:SetPoint("TOPLEFT", raidContent, "TOPLEFT", 10, -10)
	bossListLabel:SetText("Select Boss:")
	bossListLabel:SetTextColor(1, 0.8, 0, 1)

	-- Boss buttons
	local bossButtons = {}
	for i, bossName in ipairs(BOSS_LIST) do
		local button = CreateFrame("Button", nil, raidContent, "GameMenuButtonTemplate")
		button:SetSize(180, 25)
		button:SetPoint("TOPLEFT", bossListLabel, "BOTTOMLEFT", 0, -5 - (i-1) * 30)
		button:SetText(bossName)
		button:SetScript("OnClick", function()
			selectedBoss = bossName
			UpdateBossDisplay()
			-- Update button text colors
			for j, btn in ipairs(bossButtons) do
				if j == i then
					btn:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected boss
				else
					btn:GetFontString():SetTextColor(1, 1, 1, 1) -- White for normal
				end
			end
		end)
		bossButtons[i] = button
	end

	-- Right side: Boss details
	local detailsLabel = raidContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	detailsLabel:SetPoint("TOPLEFT", raidContent, "TOPLEFT", 210, -10)
	detailsLabel:SetText("Talent Build Details:")
	detailsLabel:SetTextColor(1, 0.8, 0, 1)

	-- Difficulty selector
	local difficultyLabel = raidContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	difficultyLabel:SetPoint("TOPLEFT", detailsLabel, "BOTTOMLEFT", 0, -15)
	difficultyLabel:SetText("Difficulty:")
	difficultyLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	-- Heroic button
	local heroicButton = CreateFrame("Button", nil, raidContent, "GameMenuButtonTemplate")
	heroicButton:SetSize(80, 25)
	heroicButton:SetPoint("LEFT", difficultyLabel, "RIGHT", 10, 0)
	heroicButton:SetText("Heroic")
	mainFrame.heroicButton = heroicButton

	-- Mythic button
	local mythicButton = CreateFrame("Button", nil, raidContent, "GameMenuButtonTemplate")
	mythicButton:SetSize(80, 25)
	mythicButton:SetPoint("LEFT", heroicButton, "RIGHT", 5, 0)
	mythicButton:SetText("Mythic")
	mainFrame.mythicButton = mythicButton
	
	-- Set up click handlers after both buttons are created
	heroicButton:SetScript("OnClick", function()
		selectedDifficulty = "Heroic"
		-- Update button colors
		heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected
		mythicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for unselected
		UpdateBossDisplay()
	end)
	
	mythicButton:SetScript("OnClick", function()
		selectedDifficulty = "Mythic"
		-- Update button colors
		mythicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected
		heroicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for unselected
		UpdateBossDisplay()
	end)

	-- Class/Spec info
	local specLabel = raidContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	specLabel:SetPoint("TOPLEFT", difficultyLabel, "BOTTOMLEFT", 0, -20)
	specLabel:SetText("Class/Spec:")
	specLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	local specText = raidContent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	specText:SetPoint("LEFT", specLabel, "RIGHT", 10, 0)
	specText:SetText("Unknown - Unknown")
	specText:SetTextColor(0.8, 0.4, 1, 1)
	mainFrame.specText = specText

	-- Usage info
	local usageLabel = raidContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	usageLabel:SetPoint("TOPLEFT", specLabel, "BOTTOMLEFT", 0, -15)
	usageLabel:SetText("Usage:")
	usageLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	local usageText = raidContent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	usageText:SetPoint("LEFT", usageLabel, "RIGHT", 10, 0)
	usageText:SetText("83% of top 100 players")
	usageText:SetTextColor(0, 1, 0, 1)
	mainFrame.usageText = usageText

	-- Loadout code display
	local codeLabel = raidContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	codeLabel:SetPoint("TOPLEFT", usageLabel, "BOTTOMLEFT", 0, -25)
	codeLabel:SetText("Talent Loadout Code (click to select):")
	codeLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	-- Code text box (clickable to select all)
	local codeBox = CreateFrame("EditBox", nil, raidContent, "InputBoxTemplate")
	codeBox:SetSize(350, 20)
	codeBox:SetPoint("TOPLEFT", codeLabel, "BOTTOMLEFT", 0, -5)
	codeBox:SetText("No loadout available")
	codeBox:SetAutoFocus(false)
	codeBox:SetCursorPosition(0)
	codeBox:EnableMouse(true)
	codeBox:SetScript("OnEscapePressed", function() codeBox:ClearFocus() end)
	codeBox:SetScript("OnEnterPressed", function() codeBox:ClearFocus() end)
	-- Make it read-only
	codeBox:SetScript("OnChar", function() end)
	codeBox:SetScript("OnKeyDown", function(self, key) 
		if key == "ESCAPE" then
			codeBox:ClearFocus()
		end
	end)
	-- Prevent text changes by restoring original text
	codeBox:SetScript("OnTextChanged", function(self, userInput)
		if userInput and self.originalText then
			self:SetText(self.originalText)
			self:SetCursorPosition(0)
			self:HighlightText(0, -1)
		end
	end)
	codeBox.originalText = "No loadout available"
	-- Auto-select all text on any interaction
	codeBox:SetScript("OnMouseDown", function()
		codeBox:SetFocus()
		C_Timer.After(0.01, function()
			codeBox:SetCursorPosition(0)
			codeBox:HighlightText(0, -1)
		end)
	end)
	codeBox:SetScript("OnEditFocusGained", function()
		C_Timer.After(0.01, function()
			codeBox:SetCursorPosition(0)
			codeBox:HighlightText(0, -1)
		end)
	end)
	codeBox:SetScript("OnCursorChanged", function()
		if not codeBox.isSelecting then
			codeBox.isSelecting = true
			C_Timer.After(0.01, function()
				codeBox:SetCursorPosition(0)
				codeBox:HighlightText(0, -1)
				codeBox.isSelecting = false
			end)
		end
	end)
	mainFrame.codeBox = codeBox

	-- MYTHIC+ CONTENT (Simple centered layout)
	-- M+ Title
	local mpTitleLabel = mythicPlusContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	mpTitleLabel:SetPoint("CENTER", mythicPlusContent, "CENTER", 0, 150)
	mpTitleLabel:SetText("Mythic+ Talent Builds")
	mpTitleLabel:SetTextColor(1, 0.8, 0, 1)

	-- M+ Class/Spec info
	local mpSpecLabel = mythicPlusContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	mpSpecLabel:SetPoint("CENTER", mythicPlusContent, "CENTER", -60, 125)
	mpSpecLabel:SetText("Class/Spec:")
	mpSpecLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	local mpSpecText = mythicPlusContent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	mpSpecText:SetPoint("LEFT", mpSpecLabel, "RIGHT", 10, 0)
	mpSpecText:SetText("Unknown - Unknown")
	mpSpecText:SetTextColor(0.8, 0.4, 1, 1)
	mainFrame.mpSpecText = mpSpecText

	-- M+ Usage info
	local mpUsageLabel = mythicPlusContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	mpUsageLabel:SetPoint("CENTER", mythicPlusContent, "CENTER", -80, 100)
	mpUsageLabel:SetText("Usage:")
	mpUsageLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	local mpUsageText = mythicPlusContent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	mpUsageText:SetPoint("LEFT", mpUsageLabel, "RIGHT", 10, 0)
	mpUsageText:SetText("M+ data coming soon...")
	mpUsageText:SetTextColor(0, 1, 0, 1)
	mainFrame.mpUsageText = mpUsageText

	-- M+ Loadout code display
	local mpCodeLabel = mythicPlusContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	mpCodeLabel:SetPoint("CENTER", mythicPlusContent, "CENTER", 0, 75)
	mpCodeLabel:SetText("Talent Loadout Code (click to select):")
	mpCodeLabel:SetTextColor(0.8, 0.8, 0.8, 1)

	-- M+ Code text box
	local mpCodeBox = CreateFrame("EditBox", nil, mythicPlusContent, "InputBoxTemplate")
	mpCodeBox:SetSize(450, 20)
	mpCodeBox:SetPoint("CENTER", mythicPlusContent, "CENTER", 0, 50)
	mpCodeBox:SetText("M+ talent builds will be available here")
	mpCodeBox:SetAutoFocus(false)
	mpCodeBox:SetCursorPosition(0)
	mpCodeBox:EnableMouse(true)
	mpCodeBox:SetScript("OnEscapePressed", function() mpCodeBox:ClearFocus() end)
	mpCodeBox:SetScript("OnEnterPressed", function() mpCodeBox:ClearFocus() end)
	-- Make it read-only (for now)
	mpCodeBox:SetScript("OnChar", function() end)
	mpCodeBox:SetScript("OnKeyDown", function(self, key) 
		if key == "ESCAPE" then
			mpCodeBox:ClearFocus()
		end
	end)
	mpCodeBox:SetScript("OnTextChanged", function()
		if mpCodeBox.originalText and mpCodeBox:GetText() ~= mpCodeBox.originalText then
			mpCodeBox:SetText(mpCodeBox.originalText)
		end
	end)
	-- Auto-select on click
	mpCodeBox:SetScript("OnMouseDown", function()
		if not mpCodeBox.isSelecting then
			mpCodeBox.isSelecting = true
			C_Timer.After(0.01, function()
				mpCodeBox:SetCursorPosition(0)
				mpCodeBox:HighlightText(0, -1)
				mpCodeBox.isSelecting = false
			end)
		end
	end)
	mainFrame.mpCodeBox = mpCodeBox

	-- Initialize tab display
	UpdateTabDisplay()
	
	-- Set initial boss button selection
	if bossButtons[1] then
		bossButtons[1]:GetFontString():SetTextColor(1, 0.8, 0, 1)
	end
	
	-- Set initial difficulty button selection (Heroic is default)
	heroicButton:GetFontString():SetTextColor(1, 0.8, 0, 1) -- Gold for selected Heroic
	mythicButton:GetFontString():SetTextColor(1, 1, 1, 1) -- White for unselected Mythic
	
	mainFrame:Show()
	isUIShown = true
end







-- Get loadout data for a specific boss, difficulty, class, and spec
function ArchonTalents:GetLoadoutData(bossName, difficulty, className, specName)
	if not ArchonTalentsDB or not ArchonTalentsDB.specData then
		return nil
	end
	
	local bossData = ArchonTalentsDB.specData[bossName]
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
	local specIndex = GetSpecialization()
	if not specIndex then
		return nil, nil
	end
	
	local specID, specName = GetSpecializationInfo(specIndex)
	local className = UnitClass("player")
	
	-- Convert class name to match data file format (uppercase, no spaces)
	local classKey = string.upper(string.gsub(className, " ", ""))
	
	return classKey, specName
end

-- Register slash commands
SLASH_ARCHON1 = "/archon"
SlashCmdList["ARCHON"] = function(msg)
	local command = string.lower(msg or "")
	
	if command == "hide" then
		ArchonTalents:HideGUI()
	elseif command == "hide minimap" then
		ArchonTalents:HideMinimapButton()
	elseif command == "show minimap" then
		ArchonTalents:ShowMinimapButton()
	elseif command == "help" then
		ArchonTalents:ShowHelp()
	else
		ArchonTalents:CreateGUI()
	end
end

-- Hide GUI function
function ArchonTalents:HideGUI()
	if mainFrame then
		mainFrame:Hide()
		isUIShown = false
	end
end

-- Hide minimap button
function ArchonTalents:HideMinimapButton()
	if not self.LibDBIcon then
		return
	end
	
	if not ArchonTalentsDB.minimapButton then
		ArchonTalentsDB.minimapButton = { hide = false }
	end
	
	self.LibDBIcon:Hide("Archon Talents")
	ArchonTalentsDB.minimapButton.hide = true
end

-- Show minimap button
function ArchonTalents:ShowMinimapButton()
	if not self.LibDBIcon then
		return
	end
	
	if not ArchonTalentsDB.minimapButton then
		ArchonTalentsDB.minimapButton = { hide = false }
	end
	
	self.LibDBIcon:Show("Archon Talents")
	ArchonTalentsDB.minimapButton.hide = false
end

-- Show help
function ArchonTalents:ShowHelp()
	print("|cFF00FF00[Archon Talents]|r Commands:")
	print("  /archon         - Show the talent GUI")
	print("  /archon hide    - Hide the talent GUI")
	print("  /archon hide minimap - Hide the minimap button")
	print("  /archon show minimap - Show the minimap button")
	print("  /archon help    - Show this help message")
end

-- Make the addon object globally accessible
_G["ArchonTalents"] = ArchonTalents

-- Register events
ArchonTalents:SetScript("OnEvent", ArchonTalents.OnEvent)
ArchonTalents:Initialize()

