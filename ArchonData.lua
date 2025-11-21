-- Archon Talents Data File
-- Generated: 2025-11-21 08:08:29 UTC
-- Version: 1763734109
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1763734109
    local lastUpdated = "2025-11-21 08:08:29 UTC"
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
            ["Heroic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGYmZmZMzstMjx2MzMmZGAAAAWCGYmZmRNjZZMzMzyYGAAAAAAAYAAAAAAmtZWa2mZZDGDgFmhBAAAAAA",
                        usage = 0.1,
                        totalRankings = 1518,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,518 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZMzwMzYGMMmBjZiZmJjxyYmZGmHYmZGAmZGzMLjZwMwMmB2ALgZYCsAWGGAAAA",
                        usage = 0.1,
                        totalRankings = 2167,
                        source = "Archon.gg Meta Builds (0.1% popularity, 2,167 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2WGzMjZwsYYGzyMGAAYMzYGjZmRwAAAAMzMyMmZmxYGAMwYGLsADMDDNMsADAAAA",
                        usage = 0.1,
                        totalRankings = 1461,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,461 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.8% popularity, 1,000 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbNjxMDwsNmZmhZAPwsMz2MmxMzyMLzYmxMjNMMADw22YDTzMLDAAAA2MmHYAbGDDAAAAAA",
                        usage = 0.0,
                        totalRankings = 4278,
                        source = "Archon.gg Meta Builds (0.0% popularity, 4,278 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMmZMzsZYsNzMjZmBAAAglgZDGzMqZMLjZmZMmBAAAAAAMwAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 1114,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,114 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzwMDMGjZiZmJjxyYmZGmHYmZGAzMzYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.3,
                        totalRankings = 2310,
                        source = "Archon.gg Meta Builds (0.3% popularity, 2,310 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.1% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzAzMzMjZmtlZM2mxMmZGAAAAWCmNDMzomxsMmZmxYGDAAAAAAGYAAAAAAmtZWaWmZZDMDgFzMMAAAAAA",
                        usage = 0.1,
                        totalRankings = 1579,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,579 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMYMTzYmJjxyMzMzwYmZGwMmxYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.1,
                        totalRankings = 2187,
                        source = "Archon.gg Meta Builds (0.1% popularity, 2,187 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2WGzMjZwsYYGzyMGAAYMzYGjZmRwAAAAMzMyMmZmxYGAMwYGLsADMDDNMsADAAAA",
                        usage = 0.1,
                        totalRankings = 1461,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,461 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.9% popularity, 1,000 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbNjxMDwsNmZmhZAPwsMz2MmxMzyMLzYmxMjNMMADw22YDTzMLDAAAA2MmHYAbGDDAAAAAA",
                        usage = 0.0,
                        totalRankings = 3192,
                        source = "Archon.gg Meta Builds (0.0% popularity, 3,192 parses)"
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
                        totalRankings = 1773,
                        source = "Archon.gg Meta Builds (0.5% popularity, 1,773 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.2% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.2,
                        totalRankings = 478,
                        source = "Archon.gg Meta Builds (0.2% popularity, 478 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMYMTzYmJjxyMzMzwYmZGwMmxYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.1,
                        totalRankings = 2129,
                        source = "Archon.gg Meta Builds (0.1% popularity, 2,129 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2WGzMjZwsYYGzyMGAAYMzYGjZmRwAAAAMzMyMmZmxYGAMwYGLsADMDDNMsADAAAA",
                        usage = 0.1,
                        totalRankings = 1425,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,425 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.9% popularity, 1,000 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzwMzMzsYYsNzMzMzMAAAAsEMbwYmRNjZZMzMjxMAAAAAAgBAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 1110,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,110 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzMmZgBjZaMzMZMWmZmZGGzMzAMzMYmZbMDmBMmB2ALgZYCsAWGmBAAA",
                        usage = 0.1,
                        totalRankings = 2291,
                        source = "Archon.gg Meta Builds (0.1% popularity, 2,291 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMz2yMzYMjZAMmlZMAAYmxMmHwYYmYMDAAAwMzkZMzYWGzAgBGzYhFYgZYohhFYAAAA",
                        usage = 0.1,
                        totalRankings = 1975,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,975 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.4% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.1,
                        totalRankings = 695,
                        source = "Archon.gg Meta Builds (0.1% popularity, 695 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoMbZMmZAmFmZmZhxDMzmZZmtZWmZmZWmZxsMGD2wAgxy2MbYMbDgJAAAALmZMGsZYMAAAAAA",
                        usage = 0.0,
                        totalRankings = 4037,
                        source = "Archon.gg Meta Builds (0.0% popularity, 4,037 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZmZWmZGzMzMDwsMzMzYmBAAAgtgZDmBqZMLzMzMz2MzwAAAAAAwAAAAAAAmtZWaWmZZDYAswMMAAAAAA",
                        usage = 0.1,
                        totalRankings = 1468,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,468 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzwMgxYMTDzMZMWGzMzw8AzMzAmxMzYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.0,
                        totalRankings = 2065,
                        source = "Archon.gg Meta Builds (0.0% popularity, 2,065 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2WGzMjZwsYYGzyMGAAYMzYGjZmRwAAAAMzMyMmZmxYGAMwYGLsADMDDNMsADAAAA",
                        usage = 0.1,
                        totalRankings = 1371,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,371 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.8,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (0.8% popularity, 1,001 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoMbNjxMD8AmlxMzMADmlZ2mZZGzMLzsYMzYmxGGGgBYbbshpZmlBAAAAbMzDMGsZMMAAAAAA",
                        usage = 0.1,
                        totalRankings = 3132,
                        source = "Archon.gg Meta Builds (0.1% popularity, 3,132 parses)"
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
                        totalRankings = 1689,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,689 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 2.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.1% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.2,
                        totalRankings = 522,
                        source = "Archon.gg Meta Builds (0.2% popularity, 522 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbZMmZgHwswMzMAzsYWmZZmFzMzsMzyMLzMGshhBYssNzGGzyAYCAAAwiZmHYAbGDDAAAAAA",
                        usage = 0.0,
                        totalRankings = 3921,
                        source = "Archon.gg Meta Builds (0.0% popularity, 3,921 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDMDzwMDMYMTzYmJjZWmZmZmZGzMzAmxMGzMLjZgBGDWglxox2AYGA2wAAAA",
                        usage = 0.1,
                        totalRankings = 1986,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,986 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2WGzMjZwsYYGzyMGAAYMzYGjZmRwAAAAMzMyMmZmxYGAMwYGLsADMDDNMsADAAAA",
                        usage = 0.1,
                        totalRankings = 1380,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,380 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.9% popularity, 1,000 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMaGjZG4BMLMzMDwMLmlZWmZxMzMLzsMzyMjBbYYAGLbzshxsMAmAAAAsYm5BGwmxwAAAAAA",
                        usage = 0.1,
                        totalRankings = 1605,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,605 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZGjZGmZmZmNDsNzMzMzMAAAAsEMbwYmRNjZZMzMjxMAAAAAAgBAAAAAAMbzs1sMzyGMmHAYhZYAAAAAA",
                        usage = 0.1,
                        totalRankings = 679,
                        source = "Archon.gg Meta Builds (0.1% popularity, 679 parses)"
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
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 1.4,
                        totalRankings = 998,
                        source = "Archon.gg Meta Builds (1.4% popularity, 998 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                        usage = 0.1,
                        totalRankings = 751,
                        source = "Archon.gg Meta Builds (0.1% popularity, 751 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzAzMzMjZmtlZM2mxMmZGAAAAWCmNDMzomxsMmZmxYGDAAAAAAGYAAAAAAmtZWaWmZZDMDgFzMMAAAAAA",
                        usage = 0.1,
                        totalRankings = 1292,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,292 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMGjZaYmJjxyYmZGmHYmZGwMmxYmZbMDmBmxMwGYBMDTgFwywAAAA",
                        usage = 0.1,
                        totalRankings = 1800,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,800 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.9,
                        totalRankings = 1020,
                        source = "Archon.gg Meta Builds (0.9% popularity, 1,020 parses)"
                    },
                },
            },
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
                        totalRankings = 1412,
                        source = "Archon.gg Meta Builds (0.4% popularity, 1,412 parses)"
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
                        totalRankings = 528,
                        source = "Archon.gg Meta Builds (0.2% popularity, 528 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMGjZaYmJjxyMzMzwYmZGwMmxYmZbMDmBmxMwGYDMDTgFwywAAAA",
                        usage = 0.3,
                        totalRankings = 1370,
                        source = "Archon.gg Meta Builds (0.3% popularity, 1,370 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 0.7,
                        totalRankings = 712,
                        source = "Archon.gg Meta Builds (0.7% popularity, 712 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DRUID"] = {
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAwYGYmZmZMzstMjx2MmxDMzAAAAwWwsBjZG1MmNmZmxYmHAAAAAAAGYAAAAAAmtZWaWmZZDmZAsYGMAAAAAA",
                        usage = 0.2,
                        totalRankings = 409,
                        source = "Archon.gg Meta Builds (0.2% popularity, 409 parses)"
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
                        usage = 2.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (2.8% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGmZGzYmBMGjZaYmJjxyMzMzwYmZGgxMGzMLjZwMwMmB2ALgZYCsAWGmBAAA",
                        usage = 0.1,
                        totalRankings = 1138,
                        source = "Archon.gg Meta Builds (0.1% popularity, 1,138 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAYmBMGjpGmZGAAAAMjZMmZ2GzMwMbzYwCsMGGbDgZQshxAAAA",
                        usage = 1.0,
                        totalRankings = 513,
                        source = "Archon.gg Meta Builds (1.0% popularity, 513 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZMzwMzYGzMgxYYaYmJjxyMzMzwYmZGwMmZGzMbjZwMwMmB2ALgZYCsAWGGAAAA",
                        usage = 0.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (0.8% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzghHYmZZmZmZMDAAAAAAAAmZAjxYqhZmBAAAAzYGjZmtxMDMz2MGsALjhx2AYGEbYMAAAA",
                        usage = 7.6,
                        totalRankings = 593,
                        source = "Archon.gg Meta Builds (7.6% popularity, 593 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    usage = 0.0,
                    totalRankings = 51720,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 51,720 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    usage = 0.0,
                    totalRankings = 39829,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 39,829 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2oMbZMmZAmlxMzMLMegxiZZmlZWMzMziZbmlxMzwGGAMW2mZDjZZAMBAAAYhZegBsZMMAAAAAA",
                    usage = 0.0,
                    totalRankings = 11910,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 11,910 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZMzYmZGzMwYGjZaYmJjxyMMzwYmZGgZmxYmxYGMDMjZgFwGYGmALglhZAAAA",
                    usage = 0.1,
                    totalRankings = 7298,
                    source = "Archon.gg Mythic+ Meta Builds (0.1% popularity, 7,298 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZMzMmZDAAAAAAAAzAGjxUDzMDAAAAmZmZGzMGzMwMbzYwCsMGGbDgZQshxAAAA",
                    usage = 0.1,
                    totalRankings = 1906,
                    source = "Archon.gg Mythic+ Meta Builds (0.1% popularity, 1,906 parses)"
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
                    totalRankings = 6781,
                    source = "Archon.gg Mythic+ Meta Builds (0.1% popularity, 6,781 parses)"
                },
            },
            ["PALADIN"] = {
            },
            ["PRIEST"] = {
            },
            ["ROGUE"] = {
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAQAAAAAAAAAAAAA",
                    usage = 0.0,
                    totalRankings = 22546,
                    source = "Archon.gg Mythic+ Meta Builds (0.0% popularity, 22,546 parses)"
                },
            },
            ["WARLOCK"] = {
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAACAAAAAAAAAAAAAAAA",
                    usage = 0.2,
                    totalRankings = 1938,
                    source = "Archon.gg Mythic+ Meta Builds (0.2% popularity, 1,938 parses)"
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
