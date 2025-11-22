-- Archon Talents Data File
-- Generated: 2025-11-22 08:08:29 UTC
-- Version: 1763820509
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1763820509
    local lastUpdated = "2025-11-22 08:08:29 UTC"
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
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbNjxMDwsNmZmhZAPwsMz2MmxMzyMLzYmxMjNMMADw22YDTzMLDAAAA2MmHYAbGDDAAAAAA",
                        usage = 0.0,
                        totalRankings = 4113,
                        source = "Archon.gg Meta Builds (0.0% popularity, 4,113 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMmZMzsZYsNzMjZmBAAAglgZDGzMqZMLjZmZMmBAAAAAAMwAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 1059,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,059 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMGjZaYmJjxyYmZGmHYmZGwMmxYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.3,
                        totalRankings = 2215,
                        source = "Archon.gg Meta Builds (0.3% popularity, 2,215 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.6% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbNjxMDwsNmZmhZAPwsMz2MmxMzyMLzYmxMjNMMADw22YDTzMLDAAAA2MmHYAbGDDAAAAAA",
                        usage = 0.0,
                        totalRankings = 3069,
                        source = "Archon.gg Meta Builds (0.0% popularity, 3,069 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMmZMzsZYsNzMjZmBAAAglgZDGzMqZMLjZmZMmBAAAAAAMwAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMYMTjZmJjxyMzMzwYmZGwMmxYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.5,
                        totalRankings = 1703,
                        source = "Archon.gg Meta Builds (0.5% popularity, 1,703 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.8% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.2,
                        totalRankings = 459,
                        source = "Archon.gg Meta Builds (0.2% popularity, 459 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzwMzMzsYYsNzMzMzMAAAAsEMbwYmRNjZZMzMjxMAAAAAAgBAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 1049,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,049 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzMmZgBjZaMzMZMWmZmZGGzMzAMzMYmZbMDmBMmB2ALgZYCsAWGmBAAA",
                        usage = 0.1,
                        totalRankings = 2205,
                        source = "Archon.gg Meta Builds (0.1% popularity, 2,205 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMz2yMzYMjZAMmlZMAAYmxMmHwYYmYMDAAAwMzkZMzYWGzAgBGzYhFYgZYohhFYAAAA",
                        usage = 0.1,
                        totalRankings = 1859,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,859 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.6% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.1,
                        totalRankings = 670,
                        source = "Archon.gg Meta Builds (0.1% popularity, 670 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoMbNjxMD8AmlxMzMADmlZ2mZZGzMLzsYMzYmxGGGgBYbbshpZmlBAAAAbMzDMGsZMMAAAAAA",
                        usage = 0.1,
                        totalRankings = 3010,
                        source = "Archon.gg Meta Builds (0.1% popularity, 3,010 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzwMzMzsYYsNzMzMzMAAAAsEMbwYmRNjZZMzMjxMAAAAAAgBAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzMmZgBjZaMzMZMWmZmZGGzMzAMzMYmZbMDmBMmB2ALgZYCsAWGmBAAA",
                        usage = 0.1,
                        totalRankings = 1619,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,619 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMz2yMzYmZMDgxsMMAAwMmxMGjZEmBAAAwMzkZYmHY2GzDAgBGzYhFYgZYohhFYAAAA",
                        usage = 0.1,
                        totalRankings = 1182,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,182 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZGYMGTNMzMAAAAwYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.2% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.2,
                        totalRankings = 492,
                        source = "Archon.gg Meta Builds (0.2% popularity, 492 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMaGjZG4BMLMzMDwMLmlZWmZxMzMLzsMzyMjBbYYAGLbzshxsMAmAAAAsYm5BGwmxwAAAAAA",
                        usage = 0.1,
                        totalRankings = 1569,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,569 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZGjZGmZmZmNDsNzMzMzMAAAAsEMbwYmRNjZZMzMjxMAAAAAAgBAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.2,
                        totalRankings = 643,
                        source = "Archon.gg Meta Builds (0.2% popularity, 643 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDMjHYGMwMGjZaYmJDzyMzMzMzYmZGAzMzYmZbMDMwYwCsMGN2GAzAwGmBAAA",
                        usage = 0.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZGYMGTNMzMAAAAwYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 1.4,
                        totalRankings = 960,
                        source = "Archon.gg Meta Builds (1.4% popularity, 960 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.1,
                        totalRankings = 740,
                        source = "Archon.gg Meta Builds (0.1% popularity, 740 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAwYGjZGmZMzsYYsNzMjZmBAAAglgBMmZUzYWGzMzYMDAAAAAAYgBAAAAAY2mZrZZmlNYMPAwiZGGAAAAAA",
                        usage = 0.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMYMTzYmJjxyYmZGmHYmZGgxMzYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.4,
                        totalRankings = 1371,
                        source = "Archon.gg Meta Builds (0.4% popularity, 1,371 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.3% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.2,
                        totalRankings = 509,
                        source = "Archon.gg Meta Builds (0.2% popularity, 509 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAwYGYmZmZMzstMjx2MmxDMzAAAAwWwsBjZG1MmNmZmxYmHAAAAAAAGYAAAAAAmtZWaWmZZDmZAsYGMAAAAAA",
                        usage = 0.3,
                        totalRankings = 398,
                        source = "Archon.gg Meta Builds (0.3% popularity, 398 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzwMgBjZaMzMZMWmZmZGGzMzAmxMzYmZZMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.6% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 3.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (3.7% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Mythic"] = {
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZMzwMzYGmBMYMTzYmJjxyMzMzwYmZGwMmxYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.8% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 8.5,
                        totalRankings = 615,
                        source = "Archon.gg Meta Builds (8.5% popularity, 615 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    usage = 0.0,
                    totalRankings = 49963,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 49,963 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    usage = 0.0,
                    totalRankings = 38702,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 38,702 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbZMmZAmlxMzMLMegxiZZmlZWMzMziZbmlxMzwGGAMW2mZDjZZAMBAAAYhZegBsZMMAAAAAA",
                    usage = 0.0,
                    totalRankings = 11556,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 11,556 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZmZ2egZGzMzMzyyAmZmZMzAAAAwSwsZgZG1MmlxMzMLjZeADAAAAAAAAAAAAAz2MbNbzssBzMAWYwAAAAAA",
                    usage = 0.0,
                    totalRankings = 5047,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 5,047 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZMzYmZGzMwYGjZaYmJjxyMMzwYmZGgZmxYmxYGMDMjZgFwGYGmALglhZAAAA",
                    usage = 0.1,
                    totalRankings = 7112,
                    source = "Archon.gg Mythic+ Meta Builds (0.1% popularity, 7,112 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZmZmZegBAYGAAYmxMzMDGzMBzAAAAmZmJYmZmtxAAgxMWYDGYGGawYBmBAAA",
                    usage = 0.0,
                    totalRankings = 4732,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 4,732 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZMzMmZDAAAAAAAAzAGjxUDzMDAAAAmZmZGzMGzMwMbzYwCsMGGbDgZQshxAAAA",
                    usage = 0.1,
                    totalRankings = 1880,
                    source = "Archon.gg Mythic+ Meta Builds (0.1% popularity, 1,880 parses)"
                },
            },
            ["HUNTER"] = {
            },
            ["MAGE"] = {
            },
            ["MONK"] = {
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAgAAAAAAAAAAAAAAAAAAA",
                    usage = 0.1,
                    totalRankings = 6644,
                    source = "Archon.gg Mythic+ Meta Builds (0.1% popularity, 6,644 parses)"
                },
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
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAACAAAAAAAAAAAAAAAA",
                    usage = 0.2,
                    totalRankings = 1957,
                    source = "Archon.gg Mythic+ Meta Builds (0.2% popularity, 1,957 parses)"
                },
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
