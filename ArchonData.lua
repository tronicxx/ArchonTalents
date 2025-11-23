-- Archon Talents Data File
-- Generated: 2025-11-23 08:08:42 UTC
-- Version: 1763906922
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1763906922
    local lastUpdated = "2025-11-23 08:08:42 UTC"
    local forceRefresh = false

    -- Check if we need to update
    if ArchonTalentsDB and ArchonTalentsDB.version and ArchonTalentsDB.version >= dataVersion and not forceRefresh then
        return -- Data is up to date
    end

    -- Enhanced version checking with Mythic+ data validation
    local needsUpdate = false
    if not ArchonTalentsDB then
        needsUpdate = true
    elseif not ArchonTalentsDB.version or ArchonTalentsDB.version < dataVersion then
        needsUpdate = true
    elseif not ArchonTalentsDB.specData then
        needsUpdate = true
    elseif not ArchonTalentsDB.specData["Mythic+"] then
        needsUpdate = true
    else
        -- Check for presence of key Mythic+ data
        local mythicData = ArchonTalentsDB.specData["Mythic+"]
        if not mythicData.DEATHKNIGHT or not mythicData.MAGE or not mythicData.WARRIOR then
            needsUpdate = true
        end
    end

    if not needsUpdate and not forceRefresh then
        return
    end

    -- Initialize database structure
    if not ArchonTalentsDB then
        ArchonTalentsDB = {}
    end

    ArchonTalentsDB.version = dataVersion
    ArchonTalentsDB.lastUpdated = lastUpdated
    ArchonTalentsDB.dataSource = "bundled"

    ArchonTalentsDB.specData = {
        ["Plexus Sentinel"] = {
        },
        ["Loom'ithar"] = {
        },
        ["Soulbinder Naazindhri"] = {
        },
        ["Forgeweaver Araz"] = {
        },
        ["The Soul Hunters"] = {
        },
        ["Fractillus"] = {
        },
        ["Nexus-King Salhadaar"] = {
        },
        ["Dimensius"] = {
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
            },
            ["DEMONHUNTER"] = {
            },
            ["DRUID"] = {
            },
            ["EVOKER"] = {
            },
            ["HUNTER"] = {
            },
            ["MAGE"] = {
            },
            ["MONK"] = {
            },
            ["PALADIN"] = {
            },
            ["PRIEST"] = {
            },
            ["ROGUE"] = {
            },
            ["SHAMAN"] = {
            },
            ["WARLOCK"] = {
            },
            ["WARRIOR"] = {
            },
        }
    }

    -- Schedule a delayed refresh to handle loading conflicts
    C_Timer.After(1, function()
        if ArchonTalents and ArchonTalents.UpdateDisplay then
            ArchonTalents:UpdateDisplay()
        end
    end)
end

-- Execute the update
UpdateSpecData()
