-- Archon Talents Data File
-- Generated: 2025-09-25 08:05:56 UTC
-- Version: 1758805556
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1758805556
    local lastUpdated = "2025-09-25 08:05:56 UTC"
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
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 45.6,
                        totalRankings = 34991,
                        source = "Archon.gg Meta Builds (45.6% popularity, 34,991 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.9,
                        totalRankings = 5982,
                        source = "Archon.gg Meta Builds (69.9% popularity, 5,982 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 17.9,
                        totalRankings = 6489,
                        source = "Archon.gg Meta Builds (17.9% popularity, 6,489 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 61.9,
                        totalRankings = 30377,
                        source = "Archon.gg Meta Builds (61.9% popularity, 30,377 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 43.6,
                        totalRankings = 7882,
                        source = "Archon.gg Meta Builds (43.6% popularity, 7,882 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 44.8,
                        totalRankings = 14309,
                        source = "Archon.gg Meta Builds (44.8% popularity, 14,309 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 76.7,
                        totalRankings = 6515,
                        source = "Archon.gg Meta Builds (76.7% popularity, 6,515 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 29.5,
                        totalRankings = 4931,
                        source = "Archon.gg Meta Builds (29.5% popularity, 4,931 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.4,
                        totalRankings = 18881,
                        source = "Archon.gg Meta Builds (23.4% popularity, 18,881 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 22.3,
                        totalRankings = 9326,
                        source = "Archon.gg Meta Builds (22.3% popularity, 9,326 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.7,
                        totalRankings = 5584,
                        source = "Archon.gg Meta Builds (40.7% popularity, 5,584 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.1,
                        totalRankings = 1862,
                        source = "Archon.gg Meta Builds (13.1% popularity, 1,862 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 45.1,
                        totalRankings = 36174,
                        source = "Archon.gg Meta Builds (45.1% popularity, 36,174 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.1,
                        totalRankings = 15533,
                        source = "Archon.gg Meta Builds (70.1% popularity, 15,533 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 62.5,
                        totalRankings = 2865,
                        source = "Archon.gg Meta Builds (62.5% popularity, 2,865 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 68.0,
                        totalRankings = 24655,
                        source = "Archon.gg Meta Builds (68.0% popularity, 24,655 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.8,
                        totalRankings = 1990,
                        source = "Archon.gg Meta Builds (44.8% popularity, 1,990 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 36.1,
                        totalRankings = 10416,
                        source = "Archon.gg Meta Builds (36.1% popularity, 10,416 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.5,
                        totalRankings = 6696,
                        source = "Archon.gg Meta Builds (35.5% popularity, 6,696 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.2,
                        totalRankings = 7792,
                        source = "Archon.gg Meta Builds (24.2% popularity, 7,792 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 64.0,
                        totalRankings = 9323,
                        source = "Archon.gg Meta Builds (64.0% popularity, 9,323 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.8,
                        totalRankings = 10551,
                        source = "Archon.gg Meta Builds (35.8% popularity, 10,551 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.8,
                        totalRankings = 9898,
                        source = "Archon.gg Meta Builds (8.8% popularity, 9,898 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.1,
                        totalRankings = 35155,
                        source = "Archon.gg Meta Builds (71.1% popularity, 35,155 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 10.4,
                        totalRankings = 3552,
                        source = "Archon.gg Meta Builds (10.4% popularity, 3,552 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 29.5,
                        totalRankings = 16957,
                        source = "Archon.gg Meta Builds (29.5% popularity, 16,957 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 29.7,
                        totalRankings = 13742,
                        source = "Archon.gg Meta Builds (29.7% popularity, 13,742 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.5,
                        totalRankings = 7921,
                        source = "Archon.gg Meta Builds (70.5% popularity, 7,921 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 67.4,
                        totalRankings = 2210,
                        source = "Archon.gg Meta Builds (67.4% popularity, 2,210 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.2,
                        totalRankings = 5897,
                        source = "Archon.gg Meta Builds (57.2% popularity, 5,897 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 27.3,
                        totalRankings = 18557,
                        source = "Archon.gg Meta Builds (27.3% popularity, 18,557 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 64.6,
                        totalRankings = 3928,
                        source = "Archon.gg Meta Builds (64.6% popularity, 3,928 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 16.8,
                        totalRankings = 28682,
                        source = "Archon.gg Meta Builds (16.8% popularity, 28,682 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.2,
                        totalRankings = 2411,
                        source = "Archon.gg Meta Builds (20.2% popularity, 2,411 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.1,
                        totalRankings = 9049,
                        source = "Archon.gg Meta Builds (76.1% popularity, 9,049 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.9,
                        totalRankings = 24748,
                        source = "Archon.gg Meta Builds (35.9% popularity, 24,748 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.4,
                        totalRankings = 3448,
                        source = "Archon.gg Meta Builds (62.4% popularity, 3,448 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 52.2,
                        totalRankings = 24660,
                        source = "Archon.gg Meta Builds (52.2% popularity, 24,660 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 19.0,
                        totalRankings = 12896,
                        source = "Archon.gg Meta Builds (19.0% popularity, 12,896 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 61.6,
                        totalRankings = 16942,
                        source = "Archon.gg Meta Builds (61.6% popularity, 16,942 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.0,
                        totalRankings = 3212,
                        source = "Archon.gg Meta Builds (72.0% popularity, 3,212 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 24.9,
                        totalRankings = 2816,
                        source = "Archon.gg Meta Builds (24.9% popularity, 2,816 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 72.8,
                        totalRankings = 12167,
                        source = "Archon.gg Meta Builds (72.8% popularity, 12,167 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 40.9,
                        totalRankings = 3131,
                        source = "Archon.gg Meta Builds (40.9% popularity, 3,131 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 48.1,
                        totalRankings = 5312,
                        source = "Archon.gg Meta Builds (48.1% popularity, 5,312 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 81.1,
                        totalRankings = 2423,
                        source = "Archon.gg Meta Builds (81.1% popularity, 2,423 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.9,
                        totalRankings = 1349,
                        source = "Archon.gg Meta Builds (23.9% popularity, 1,349 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.2,
                        totalRankings = 8837,
                        source = "Archon.gg Meta Builds (22.2% popularity, 8,837 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 26.7,
                        totalRankings = 4205,
                        source = "Archon.gg Meta Builds (26.7% popularity, 4,205 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.7,
                        totalRankings = 3215,
                        source = "Archon.gg Meta Builds (41.7% popularity, 3,215 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.0,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (13.0% popularity, 1,001 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 57.2,
                        totalRankings = 12147,
                        source = "Archon.gg Meta Builds (57.2% popularity, 12,147 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 82.0,
                        totalRankings = 5784,
                        source = "Archon.gg Meta Builds (82.0% popularity, 5,784 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 49.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (49.2% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 76.8,
                        totalRankings = 13563,
                        source = "Archon.gg Meta Builds (76.8% popularity, 13,563 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.6% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 50.8,
                        totalRankings = 3200,
                        source = "Archon.gg Meta Builds (50.8% popularity, 3,200 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.0,
                        totalRankings = 3817,
                        source = "Archon.gg Meta Builds (34.0% popularity, 3,817 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 40.4,
                        totalRankings = 3434,
                        source = "Archon.gg Meta Builds (40.4% popularity, 3,434 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 71.8,
                        totalRankings = 3316,
                        source = "Archon.gg Meta Builds (71.8% popularity, 3,316 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.3,
                        totalRankings = 4882,
                        source = "Archon.gg Meta Builds (37.3% popularity, 4,882 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MmxMYYAAAGAAAAAAAarZmZzwMYMjZrNAgBAYGsNAAAAgZmtllWmZsYGMAAzwYA",
                        usage = 6.4,
                        totalRankings = 3912,
                        source = "Archon.gg Meta Builds (6.4% popularity, 3,912 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 77.0,
                        totalRankings = 11819,
                        source = "Archon.gg Meta Builds (77.0% popularity, 11,819 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (6.3% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.5,
                        totalRankings = 8849,
                        source = "Archon.gg Meta Builds (40.5% popularity, 8,849 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 26.7,
                        totalRankings = 5488,
                        source = "Archon.gg Meta Builds (26.7% popularity, 5,488 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 74.7,
                        totalRankings = 4305,
                        source = "Archon.gg Meta Builds (74.7% popularity, 4,305 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 57.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.7% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.6,
                        totalRankings = 2392,
                        source = "Archon.gg Meta Builds (58.6% popularity, 2,392 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 40.6,
                        totalRankings = 7223,
                        source = "Archon.gg Meta Builds (40.6% popularity, 7,223 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.9,
                        totalRankings = 1248,
                        source = "Archon.gg Meta Builds (71.9% popularity, 1,248 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.9,
                        totalRankings = 13337,
                        source = "Archon.gg Meta Builds (18.9% popularity, 13,337 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (23.1% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.2,
                        totalRankings = 2959,
                        source = "Archon.gg Meta Builds (77.2% popularity, 2,959 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 38.6,
                        totalRankings = 11249,
                        source = "Archon.gg Meta Builds (38.6% popularity, 11,249 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 59.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (59.7% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.9,
                        totalRankings = 9529,
                        source = "Archon.gg Meta Builds (45.9% popularity, 9,529 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 16.4,
                        totalRankings = 5737,
                        source = "Archon.gg Meta Builds (16.4% popularity, 5,737 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 45.9,
                        totalRankings = 36625,
                        source = "Archon.gg Meta Builds (45.9% popularity, 36,625 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.8,
                        totalRankings = 6373,
                        source = "Archon.gg Meta Builds (69.8% popularity, 6,373 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 19.5,
                        totalRankings = 6707,
                        source = "Archon.gg Meta Builds (19.5% popularity, 6,707 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 59.9,
                        totalRankings = 31867,
                        source = "Archon.gg Meta Builds (59.9% popularity, 31,867 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 40.3,
                        totalRankings = 8098,
                        source = "Archon.gg Meta Builds (40.3% popularity, 8,098 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 45.3,
                        totalRankings = 15209,
                        source = "Archon.gg Meta Builds (45.3% popularity, 15,209 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 77.4,
                        totalRankings = 6878,
                        source = "Archon.gg Meta Builds (77.4% popularity, 6,878 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.6,
                        totalRankings = 4985,
                        source = "Archon.gg Meta Builds (30.6% popularity, 4,985 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.3,
                        totalRankings = 19766,
                        source = "Archon.gg Meta Builds (24.3% popularity, 19,766 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 17.5,
                        totalRankings = 9826,
                        source = "Archon.gg Meta Builds (17.5% popularity, 9,826 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.8,
                        totalRankings = 5781,
                        source = "Archon.gg Meta Builds (41.8% popularity, 5,781 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.6,
                        totalRankings = 2032,
                        source = "Archon.gg Meta Builds (14.6% popularity, 2,032 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 44.7,
                        totalRankings = 37753,
                        source = "Archon.gg Meta Builds (44.7% popularity, 37,753 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.2,
                        totalRankings = 15843,
                        source = "Archon.gg Meta Builds (70.2% popularity, 15,843 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 65.1,
                        totalRankings = 2991,
                        source = "Archon.gg Meta Builds (65.1% popularity, 2,991 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 67.8,
                        totalRankings = 26309,
                        source = "Archon.gg Meta Builds (67.8% popularity, 26,309 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 41.6,
                        totalRankings = 2041,
                        source = "Archon.gg Meta Builds (41.6% popularity, 2,041 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 36.8,
                        totalRankings = 10860,
                        source = "Archon.gg Meta Builds (36.8% popularity, 10,860 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.9,
                        totalRankings = 6918,
                        source = "Archon.gg Meta Builds (35.9% popularity, 6,918 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.2,
                        totalRankings = 8096,
                        source = "Archon.gg Meta Builds (27.2% popularity, 8,096 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 65.6,
                        totalRankings = 9875,
                        source = "Archon.gg Meta Builds (65.6% popularity, 9,875 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.9,
                        totalRankings = 10952,
                        source = "Archon.gg Meta Builds (35.9% popularity, 10,952 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 9.8,
                        totalRankings = 10217,
                        source = "Archon.gg Meta Builds (9.8% popularity, 10,217 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.7,
                        totalRankings = 36806,
                        source = "Archon.gg Meta Builds (71.7% popularity, 36,806 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.6,
                        totalRankings = 3577,
                        source = "Archon.gg Meta Builds (9.6% popularity, 3,577 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.6,
                        totalRankings = 17750,
                        source = "Archon.gg Meta Builds (30.6% popularity, 17,750 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 45.4,
                        totalRankings = 14700,
                        source = "Archon.gg Meta Builds (45.4% popularity, 14,700 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.4,
                        totalRankings = 8342,
                        source = "Archon.gg Meta Builds (70.4% popularity, 8,342 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 67.1,
                        totalRankings = 2304,
                        source = "Archon.gg Meta Builds (67.1% popularity, 2,304 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.7,
                        totalRankings = 6239,
                        source = "Archon.gg Meta Builds (57.7% popularity, 6,239 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 28.0,
                        totalRankings = 19783,
                        source = "Archon.gg Meta Builds (28.0% popularity, 19,783 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 63.4,
                        totalRankings = 4104,
                        source = "Archon.gg Meta Builds (63.4% popularity, 4,104 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.8,
                        totalRankings = 30164,
                        source = "Archon.gg Meta Builds (17.8% popularity, 30,164 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.6,
                        totalRankings = 2459,
                        source = "Archon.gg Meta Builds (20.6% popularity, 2,459 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.0,
                        totalRankings = 9045,
                        source = "Archon.gg Meta Builds (76.0% popularity, 9,045 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.2,
                        totalRankings = 26485,
                        source = "Archon.gg Meta Builds (35.2% popularity, 26,485 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.7,
                        totalRankings = 3594,
                        source = "Archon.gg Meta Builds (62.7% popularity, 3,594 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 51.7,
                        totalRankings = 25783,
                        source = "Archon.gg Meta Builds (51.7% popularity, 25,783 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 18.0,
                        totalRankings = 13409,
                        source = "Archon.gg Meta Builds (18.0% popularity, 13,409 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 66.2,
                        totalRankings = 4855,
                        source = "Archon.gg Meta Builds (66.2% popularity, 4,855 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 79.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.0% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 31.4,
                        totalRankings = 1449,
                        source = "Archon.gg Meta Builds (31.4% popularity, 1,449 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 70.4,
                        totalRankings = 4147,
                        source = "Archon.gg Meta Builds (70.4% popularity, 4,147 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 38.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (38.4% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 51.9,
                        totalRankings = 2293,
                        source = "Archon.gg Meta Builds (51.9% popularity, 2,293 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 79.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.6% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.7,
                        totalRankings = 743,
                        source = "Archon.gg Meta Builds (18.7% popularity, 743 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 19.6,
                        totalRankings = 2756,
                        source = "Archon.gg Meta Builds (19.6% popularity, 2,756 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 24.4,
                        totalRankings = 2263,
                        source = "Archon.gg Meta Builds (24.4% popularity, 2,263 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.6,
                        totalRankings = 1671,
                        source = "Archon.gg Meta Builds (42.6% popularity, 1,671 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.9% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 56.8,
                        totalRankings = 4427,
                        source = "Archon.gg Meta Builds (56.8% popularity, 4,427 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 83.7,
                        totalRankings = 2016,
                        source = "Archon.gg Meta Builds (83.7% popularity, 2,016 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 43.1,
                        totalRankings = 427,
                        source = "Archon.gg Meta Builds (43.1% popularity, 427 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 75.7,
                        totalRankings = 5612,
                        source = "Archon.gg Meta Builds (75.7% popularity, 5,612 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 38.2,
                        totalRankings = 631,
                        source = "Archon.gg Meta Builds (38.2% popularity, 631 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 58.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.8% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 34.6,
                        totalRankings = 1949,
                        source = "Archon.gg Meta Builds (34.6% popularity, 1,949 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 48.0,
                        totalRankings = 1717,
                        source = "Archon.gg Meta Builds (48.0% popularity, 1,717 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 81.7,
                        totalRankings = 1428,
                        source = "Archon.gg Meta Builds (81.7% popularity, 1,428 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.9,
                        totalRankings = 2167,
                        source = "Archon.gg Meta Builds (35.9% popularity, 2,167 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 9.3,
                        totalRankings = 1238,
                        source = "Archon.gg Meta Builds (9.3% popularity, 1,238 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 84.0,
                        totalRankings = 3359,
                        source = "Archon.gg Meta Builds (84.0% popularity, 3,359 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADswMjZmZMmZGzYsNzMjZGAAAAAAAAAAglZZ2GMzMYWYYYGDzCbz0YilBmZAgAMbz2GYsZDAA",
                        usage = 3.4,
                        totalRankings = 268,
                        source = "Archon.gg Meta Builds (3.4% popularity, 268 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 46.5,
                        totalRankings = 3492,
                        source = "Archon.gg Meta Builds (46.5% popularity, 3,492 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 54.7,
                        totalRankings = 2823,
                        source = "Archon.gg Meta Builds (54.7% popularity, 2,823 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 78.6,
                        totalRankings = 2041,
                        source = "Archon.gg Meta Builds (78.6% popularity, 2,041 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 52.8,
                        totalRankings = 623,
                        source = "Archon.gg Meta Builds (52.8% popularity, 623 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.2,
                        totalRankings = 1152,
                        source = "Archon.gg Meta Builds (55.2% popularity, 1,152 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 47.2,
                        totalRankings = 3558,
                        source = "Archon.gg Meta Builds (47.2% popularity, 3,558 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 73.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (73.0% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.7,
                        totalRankings = 3791,
                        source = "Archon.gg Meta Builds (19.7% popularity, 3,791 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.5,
                        totalRankings = 303,
                        source = "Archon.gg Meta Builds (21.5% popularity, 303 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 83.5,
                        totalRankings = 540,
                        source = "Archon.gg Meta Builds (83.5% popularity, 540 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 53.5,
                        totalRankings = 6133,
                        source = "Archon.gg Meta Builds (53.5% popularity, 6,133 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.8,
                        totalRankings = 406,
                        source = "Archon.gg Meta Builds (63.8% popularity, 406 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 48.9,
                        totalRankings = 3537,
                        source = "Archon.gg Meta Builds (48.9% popularity, 3,537 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 28.8,
                        totalRankings = 2031,
                        source = "Archon.gg Meta Builds (28.8% popularity, 2,031 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 75.8,
                        totalRankings = 34615,
                        source = "Archon.gg Meta Builds (75.8% popularity, 34,615 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 26.1,
                        totalRankings = 5268,
                        source = "Archon.gg Meta Builds (26.1% popularity, 5,268 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 19.4,
                        totalRankings = 6434,
                        source = "Archon.gg Meta Builds (19.4% popularity, 6,434 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 22.7,
                        totalRankings = 29564,
                        source = "Archon.gg Meta Builds (22.7% popularity, 29,564 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 34.1,
                        totalRankings = 7698,
                        source = "Archon.gg Meta Builds (34.1% popularity, 7,698 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 28.1,
                        totalRankings = 14296,
                        source = "Archon.gg Meta Builds (28.1% popularity, 14,296 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 18.6,
                        totalRankings = 6422,
                        source = "Archon.gg Meta Builds (18.6% popularity, 6,422 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.0,
                        totalRankings = 4803,
                        source = "Archon.gg Meta Builds (20.0% popularity, 4,803 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.8,
                        totalRankings = 18502,
                        source = "Archon.gg Meta Builds (23.8% popularity, 18,502 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 17.2,
                        totalRankings = 9288,
                        source = "Archon.gg Meta Builds (17.2% popularity, 9,288 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.4,
                        totalRankings = 5467,
                        source = "Archon.gg Meta Builds (42.4% popularity, 5,467 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.5,
                        totalRankings = 1924,
                        source = "Archon.gg Meta Builds (14.5% popularity, 1,924 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 34.8,
                        totalRankings = 35298,
                        source = "Archon.gg Meta Builds (34.8% popularity, 35,298 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjmZMGzMDjhZxMDbDzMmttNzMzYWMzwYmxyGsMMzA",
                        usage = 24.5,
                        totalRankings = 14735,
                        source = "Archon.gg Meta Builds (24.5% popularity, 14,735 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 28.8,
                        totalRankings = 2868,
                        source = "Archon.gg Meta Builds (28.8% popularity, 2,868 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.4,
                        totalRankings = 24285,
                        source = "Archon.gg Meta Builds (55.4% popularity, 24,285 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 38.3,
                        totalRankings = 1948,
                        source = "Archon.gg Meta Builds (38.3% popularity, 1,948 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 24.2,
                        totalRankings = 10581,
                        source = "Archon.gg Meta Builds (24.2% popularity, 10,581 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.5,
                        totalRankings = 6600,
                        source = "Archon.gg Meta Builds (33.5% popularity, 6,600 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 30.4,
                        totalRankings = 7650,
                        source = "Archon.gg Meta Builds (30.4% popularity, 7,650 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 36.8,
                        totalRankings = 9348,
                        source = "Archon.gg Meta Builds (36.8% popularity, 9,348 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.7,
                        totalRankings = 10260,
                        source = "Archon.gg Meta Builds (35.7% popularity, 10,260 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.5,
                        totalRankings = 9656,
                        source = "Archon.gg Meta Builds (6.5% popularity, 9,656 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 32.2,
                        totalRankings = 34742,
                        source = "Archon.gg Meta Builds (32.2% popularity, 34,742 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.0,
                        totalRankings = 3298,
                        source = "Archon.gg Meta Builds (9.0% popularity, 3,298 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.6,
                        totalRankings = 16930,
                        source = "Archon.gg Meta Builds (30.6% popularity, 16,930 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 42.6,
                        totalRankings = 13814,
                        source = "Archon.gg Meta Builds (42.6% popularity, 13,814 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZDWmBAAAAAg22mZGMzYMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 46.0,
                        totalRankings = 6851,
                        source = "Archon.gg Meta Builds (46.0% popularity, 6,851 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 48.5,
                        totalRankings = 2272,
                        source = "Archon.gg Meta Builds (48.5% popularity, 2,272 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.5,
                        totalRankings = 6812,
                        source = "Archon.gg Meta Builds (50.5% popularity, 6,812 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 20.3,
                        totalRankings = 18625,
                        source = "Archon.gg Meta Builds (20.3% popularity, 18,625 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 30.2,
                        totalRankings = 3925,
                        source = "Archon.gg Meta Builds (30.2% popularity, 3,925 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.6,
                        totalRankings = 27657,
                        source = "Archon.gg Meta Builds (18.6% popularity, 27,657 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.1,
                        totalRankings = 2237,
                        source = "Archon.gg Meta Builds (19.1% popularity, 2,237 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 29.5,
                        totalRankings = 10029,
                        source = "Archon.gg Meta Builds (29.5% popularity, 10,029 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.8,
                        totalRankings = 23623,
                        source = "Archon.gg Meta Builds (30.8% popularity, 23,623 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 25.6,
                        totalRankings = 3296,
                        source = "Archon.gg Meta Builds (25.6% popularity, 3,296 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZMYmFmZmxMMDzstNzYmZWAmZmxMjlhhZmZAAAQM22GYBMgZYCMDbA",
                        usage = 23.6,
                        totalRankings = 24345,
                        source = "Archon.gg Meta Builds (23.6% popularity, 24,345 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 20.6,
                        totalRankings = 12689,
                        source = "Archon.gg Meta Builds (20.6% popularity, 12,689 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 85.7,
                        totalRankings = 17577,
                        source = "Archon.gg Meta Builds (85.7% popularity, 17,577 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 36.4,
                        totalRankings = 1907,
                        source = "Archon.gg Meta Builds (36.4% popularity, 1,907 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 25.3,
                        totalRankings = 2773,
                        source = "Archon.gg Meta Builds (25.3% popularity, 2,773 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 25.4,
                        totalRankings = 11885,
                        source = "Archon.gg Meta Builds (25.4% popularity, 11,885 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 20.0,
                        totalRankings = 3088,
                        source = "Archon.gg Meta Builds (20.0% popularity, 3,088 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBYWYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALMjBYzYGD",
                        usage = 35.0,
                        totalRankings = 5105,
                        source = "Archon.gg Meta Builds (35.0% popularity, 5,105 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2gxMjaGzyYZmZMmxMAAAAAAwAAAAA0MLzyMz2AAWAzAwCDG",
                        usage = 25.0,
                        totalRankings = 2295,
                        source = "Archon.gg Meta Builds (25.0% popularity, 2,295 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 13.9,
                        totalRankings = 1312,
                        source = "Archon.gg Meta Builds (13.9% popularity, 1,312 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 21.7,
                        totalRankings = 8775,
                        source = "Archon.gg Meta Builds (21.7% popularity, 8,775 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZWmBMjZ2GzMLzMDmBmxMwGYBMDTgFwywA",
                        usage = 13.8,
                        totalRankings = 4158,
                        source = "Archon.gg Meta Builds (13.8% popularity, 4,158 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 43.1,
                        totalRankings = 3212,
                        source = "Archon.gg Meta Builds (43.1% popularity, 3,212 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.1% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 52.3,
                        totalRankings = 11497,
                        source = "Archon.gg Meta Builds (52.3% popularity, 11,497 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 43.1,
                        totalRankings = 5754,
                        source = "Archon.gg Meta Builds (43.1% popularity, 5,754 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 16.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.3% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 71.9,
                        totalRankings = 13549,
                        source = "Archon.gg Meta Builds (71.9% popularity, 13,549 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 35.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (35.8% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 38.7,
                        totalRankings = 3311,
                        source = "Archon.gg Meta Builds (38.7% popularity, 3,311 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.7,
                        totalRankings = 3754,
                        source = "Archon.gg Meta Builds (32.7% popularity, 3,754 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 53.7,
                        totalRankings = 3428,
                        source = "Archon.gg Meta Builds (53.7% popularity, 3,428 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 18.2,
                        totalRankings = 3192,
                        source = "Archon.gg Meta Builds (18.2% popularity, 3,192 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.5,
                        totalRankings = 4800,
                        source = "Archon.gg Meta Builds (37.5% popularity, 4,800 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.8,
                        totalRankings = 3805,
                        source = "Archon.gg Meta Builds (6.8% popularity, 3,805 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 18.6,
                        totalRankings = 11483,
                        source = "Archon.gg Meta Builds (18.6% popularity, 11,483 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 5.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.2% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.9,
                        totalRankings = 8705,
                        source = "Archon.gg Meta Builds (41.9% popularity, 8,705 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 42.3,
                        totalRankings = 5457,
                        source = "Archon.gg Meta Builds (42.3% popularity, 5,457 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZZwyMAAAAAA022MzgZGMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 69.4,
                        totalRankings = 2656,
                        source = "Archon.gg Meta Builds (69.4% popularity, 2,656 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 48.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (48.5% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.3,
                        totalRankings = 3728,
                        source = "Archon.gg Meta Builds (50.3% popularity, 3,728 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 27.7,
                        totalRankings = 7116,
                        source = "Archon.gg Meta Builds (27.7% popularity, 7,116 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 53.6,
                        totalRankings = 1216,
                        source = "Archon.gg Meta Builds (53.6% popularity, 1,216 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.1,
                        totalRankings = 13165,
                        source = "Archon.gg Meta Builds (22.1% popularity, 13,165 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.9,
                        totalRankings = 947,
                        source = "Archon.gg Meta Builds (20.9% popularity, 947 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 48.0,
                        totalRankings = 4498,
                        source = "Archon.gg Meta Builds (48.0% popularity, 4,498 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 39.3,
                        totalRankings = 9667,
                        source = "Archon.gg Meta Builds (39.3% popularity, 9,667 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 26.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.7% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 22.7,
                        totalRankings = 9361,
                        source = "Archon.gg Meta Builds (22.7% popularity, 9,361 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 26.4,
                        totalRankings = 5632,
                        source = "Archon.gg Meta Builds (26.4% popularity, 5,632 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 75.7,
                        totalRankings = 35009,
                        source = "Archon.gg Meta Builds (75.7% popularity, 35,009 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.8,
                        totalRankings = 5211,
                        source = "Archon.gg Meta Builds (28.8% popularity, 5,211 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 17.8,
                        totalRankings = 6379,
                        source = "Archon.gg Meta Builds (17.8% popularity, 6,379 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 20.0,
                        totalRankings = 29409,
                        source = "Archon.gg Meta Builds (20.0% popularity, 29,409 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.3,
                        totalRankings = 7497,
                        source = "Archon.gg Meta Builds (32.3% popularity, 7,497 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 23.6,
                        totalRankings = 14420,
                        source = "Archon.gg Meta Builds (23.6% popularity, 14,420 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 17.3,
                        totalRankings = 6513,
                        source = "Archon.gg Meta Builds (17.3% popularity, 6,513 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 21.8,
                        totalRankings = 4623,
                        source = "Archon.gg Meta Builds (21.8% popularity, 4,623 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.2,
                        totalRankings = 17916,
                        source = "Archon.gg Meta Builds (23.2% popularity, 17,916 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 11.8,
                        totalRankings = 9432,
                        source = "Archon.gg Meta Builds (11.8% popularity, 9,432 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.8,
                        totalRankings = 5399,
                        source = "Archon.gg Meta Builds (41.8% popularity, 5,399 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.4,
                        totalRankings = 1996,
                        source = "Archon.gg Meta Builds (14.4% popularity, 1,996 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 31.4,
                        totalRankings = 34782,
                        source = "Archon.gg Meta Builds (31.4% popularity, 34,782 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMjZ0MjxwMDjZMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 22.1,
                        totalRankings = 14364,
                        source = "Archon.gg Meta Builds (22.1% popularity, 14,364 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 26.1,
                        totalRankings = 2873,
                        source = "Archon.gg Meta Builds (26.1% popularity, 2,873 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.9,
                        totalRankings = 23934,
                        source = "Archon.gg Meta Builds (55.9% popularity, 23,934 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 37.4,
                        totalRankings = 1899,
                        source = "Archon.gg Meta Builds (37.4% popularity, 1,899 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 25.0,
                        totalRankings = 10463,
                        source = "Archon.gg Meta Builds (25.0% popularity, 10,463 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.2,
                        totalRankings = 6595,
                        source = "Archon.gg Meta Builds (33.2% popularity, 6,595 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.7,
                        totalRankings = 7505,
                        source = "Archon.gg Meta Builds (27.7% popularity, 7,505 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 33.9,
                        totalRankings = 9438,
                        source = "Archon.gg Meta Builds (33.9% popularity, 9,438 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.1,
                        totalRankings = 10158,
                        source = "Archon.gg Meta Builds (35.1% popularity, 10,158 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 9320,
                        source = "Archon.gg Meta Builds (5.6% popularity, 9,320 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 28.1,
                        totalRankings = 34517,
                        source = "Archon.gg Meta Builds (28.1% popularity, 34,517 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.7,
                        totalRankings = 3077,
                        source = "Archon.gg Meta Builds (9.7% popularity, 3,077 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.4,
                        totalRankings = 16681,
                        source = "Archon.gg Meta Builds (30.4% popularity, 16,681 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 41.7,
                        totalRankings = 13958,
                        source = "Archon.gg Meta Builds (41.7% popularity, 13,958 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 59.5,
                        totalRankings = 6712,
                        source = "Archon.gg Meta Builds (59.5% popularity, 6,712 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 47.2,
                        totalRankings = 2199,
                        source = "Archon.gg Meta Builds (47.2% popularity, 2,199 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 45.9,
                        totalRankings = 7278,
                        source = "Archon.gg Meta Builds (45.9% popularity, 7,278 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 28.2,
                        totalRankings = 18933,
                        source = "Archon.gg Meta Builds (28.2% popularity, 18,933 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 31.1,
                        totalRankings = 3959,
                        source = "Archon.gg Meta Builds (31.1% popularity, 3,959 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.5,
                        totalRankings = 26884,
                        source = "Archon.gg Meta Builds (17.5% popularity, 26,884 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.6,
                        totalRankings = 2243,
                        source = "Archon.gg Meta Builds (23.6% popularity, 2,243 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 33.4,
                        totalRankings = 8735,
                        source = "Archon.gg Meta Builds (33.4% popularity, 8,735 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 25.1,
                        totalRankings = 24729,
                        source = "Archon.gg Meta Builds (25.1% popularity, 24,729 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 23.5,
                        totalRankings = 3219,
                        source = "Archon.gg Meta Builds (23.5% popularity, 3,219 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 23.3,
                        totalRankings = 24102,
                        source = "Archon.gg Meta Builds (23.3% popularity, 24,102 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 20.8,
                        totalRankings = 12483,
                        source = "Archon.gg Meta Builds (20.8% popularity, 12,483 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 92.6,
                        totalRankings = 3036,
                        source = "Archon.gg Meta Builds (92.6% popularity, 3,036 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGGDAAAAAAAAzMzsxMjZAAz2MMjZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 41.5,
                        totalRankings = 448,
                        source = "Archon.gg Meta Builds (41.5% popularity, 448 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.1% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 47.5,
                        totalRankings = 2336,
                        source = "Archon.gg Meta Builds (47.5% popularity, 2,336 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                        usage = 6.3,
                        totalRankings = 776,
                        source = "Archon.gg Meta Builds (6.3% popularity, 776 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDYmhZZmtZmlxMzMzsYMGmZshFGgBYbbsgpZmlBAAAAbMjxAbbDM",
                        usage = 35.2,
                        totalRankings = 1590,
                        source = "Archon.gg Meta Builds (35.2% popularity, 1,590 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2MMMjaGzyYZmZMmxAAAAAAAGAAAAgmZZWmZ2GAwCYGAWMDG",
                        usage = 25.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.3% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 7.9,
                        totalRankings = 330,
                        source = "Archon.gg Meta Builds (7.9% popularity, 330 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2MjpZGDMLzsMzMMMzAAAAAAAADAAAAAY2mZrZZmNbMmZAGgG",
                        usage = 22.1,
                        totalRankings = 1197,
                        source = "Archon.gg Meta Builds (22.1% popularity, 1,197 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZ2mBMjZ2GzMLzMDmBmxMwGYBMDTgFwywA",
                        usage = 17.8,
                        totalRankings = 1665,
                        source = "Archon.gg Meta Builds (17.8% popularity, 1,665 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 45.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.1% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.9% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 41.7,
                        totalRankings = 2302,
                        source = "Archon.gg Meta Builds (41.7% popularity, 2,302 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAAjZMzYmZMjMzMGzMDMDLLzgtxMDz22mZmZMLmZYmZGLbGzyAD",
                        usage = 55.2,
                        totalRankings = 1201,
                        source = "Archon.gg Meta Builds (55.2% popularity, 1,201 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmhZwwYMzMMmxssMD2AAAAAgBAA",
                        usage = 42.5,
                        totalRankings = 214,
                        source = "Archon.gg Meta Builds (42.5% popularity, 214 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbGjZMzMLwYmhx0MjBAAAAAADAYmZaZ22mBAwGAAAAAAbAYMYmlZZGzMGzwMzMzYGzyYA",
                        usage = 64.3,
                        totalRankings = 3447,
                        source = "Archon.gg Meta Builds (64.3% popularity, 3,447 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZ8AjZxwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 32.3,
                        totalRankings = 288,
                        source = "Archon.gg Meta Builds (32.3% popularity, 288 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbsZMmhZmFDjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsNLAAAwCAAAAAAmNAAAAAAAA",
                        usage = 61.7,
                        totalRankings = 694,
                        source = "Archon.gg Meta Builds (61.7% popularity, 694 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 34.1,
                        totalRankings = 1227,
                        source = "Archon.gg Meta Builds (34.1% popularity, 1,227 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 45.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.3% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 28.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (28.8% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.2,
                        totalRankings = 1089,
                        source = "Archon.gg Meta Builds (37.2% popularity, 1,089 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MmhxYYAAAGAAAAAAASmZWMMDGjZ2aDAYADwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.3% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 64.5,
                        totalRankings = 1714,
                        source = "Archon.gg Meta Builds (64.5% popularity, 1,714 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 5.1,
                        totalRankings = 78,
                        source = "Archon.gg Meta Builds (5.1% popularity, 78 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 55.0,
                        totalRankings = 1323,
                        source = "Archon.gg Meta Builds (55.0% popularity, 1,323 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 43.5,
                        totalRankings = 2241,
                        source = "Archon.gg Meta Builds (43.5% popularity, 2,241 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 78.6,
                        totalRankings = 866,
                        source = "Archon.gg Meta Builds (78.6% popularity, 866 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 49.3,
                        totalRankings = 341,
                        source = "Archon.gg Meta Builds (49.3% popularity, 341 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2GzMjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 34.9,
                        totalRankings = 1450,
                        source = "Archon.gg Meta Builds (34.9% popularity, 1,450 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.1,
                        totalRankings = 2250,
                        source = "Archon.gg Meta Builds (49.1% popularity, 2,250 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 69.7,
                        totalRankings = 544,
                        source = "Archon.gg Meta Builds (69.7% popularity, 544 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.2,
                        totalRankings = 1523,
                        source = "Archon.gg Meta Builds (27.2% popularity, 1,523 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMzyMjxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 49.0,
                        totalRankings = 576,
                        source = "Archon.gg Meta Builds (49.0% popularity, 576 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDz2AAAAAAAAAAYeAwYGDLwALDL0wCzMmx2YmtZMzMjxMGmZmZmBmBAAA",
                        usage = 63.7,
                        totalRankings = 171,
                        source = "Archon.gg Meta Builds (63.7% popularity, 171 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 53.1,
                        totalRankings = 3610,
                        source = "Archon.gg Meta Builds (53.1% popularity, 3,610 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYGmGGzyYGGLDmxmZmhZMGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 30.4,
                        totalRankings = 148,
                        source = "Archon.gg Meta Builds (30.4% popularity, 148 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 25.4,
                        totalRankings = 2049,
                        source = "Archon.gg Meta Builds (25.4% popularity, 2,049 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGmx8ADDAAAAAAsMAAzYDwAbwyiRjZAMbwsxMzA",
                        usage = 25.2,
                        totalRankings = 1145,
                        source = "Archon.gg Meta Builds (25.2% popularity, 1,145 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 77.2,
                        totalRankings = 36226,
                        source = "Archon.gg Meta Builds (77.2% popularity, 36,226 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 22.4,
                        totalRankings = 5265,
                        source = "Archon.gg Meta Builds (22.4% popularity, 5,265 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.7,
                        totalRankings = 6413,
                        source = "Archon.gg Meta Builds (19.7% popularity, 6,413 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 21.3,
                        totalRankings = 31635,
                        source = "Archon.gg Meta Builds (21.3% popularity, 31,635 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 26.5,
                        totalRankings = 7670,
                        source = "Archon.gg Meta Builds (26.5% popularity, 7,670 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 81.7,
                        totalRankings = 14768,
                        source = "Archon.gg Meta Builds (81.7% popularity, 14,768 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 58.1,
                        totalRankings = 6417,
                        source = "Archon.gg Meta Builds (58.1% popularity, 6,417 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 15.2,
                        totalRankings = 4632,
                        source = "Archon.gg Meta Builds (15.2% popularity, 4,632 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.3,
                        totalRankings = 19099,
                        source = "Archon.gg Meta Builds (24.3% popularity, 19,099 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZWmZGYAGsALjRjtBwMAshB",
                        usage = 9.8,
                        totalRankings = 9522,
                        source = "Archon.gg Meta Builds (9.8% popularity, 9,522 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.6,
                        totalRankings = 5739,
                        source = "Archon.gg Meta Builds (42.6% popularity, 5,739 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.9,
                        totalRankings = 2045,
                        source = "Archon.gg Meta Builds (12.9% popularity, 2,045 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 24.2,
                        totalRankings = 34428,
                        source = "Archon.gg Meta Builds (24.2% popularity, 34,428 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 43.7,
                        totalRankings = 15928,
                        source = "Archon.gg Meta Builds (43.7% popularity, 15,928 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 18.1,
                        totalRankings = 2864,
                        source = "Archon.gg Meta Builds (18.1% popularity, 2,864 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 68.6,
                        totalRankings = 24574,
                        source = "Archon.gg Meta Builds (68.6% popularity, 24,574 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 39.0,
                        totalRankings = 2677,
                        source = "Archon.gg Meta Builds (39.0% popularity, 2,677 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 25.1,
                        totalRankings = 10565,
                        source = "Archon.gg Meta Builds (25.1% popularity, 10,565 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.7,
                        totalRankings = 6933,
                        source = "Archon.gg Meta Builds (30.7% popularity, 6,933 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.8,
                        totalRankings = 8047,
                        source = "Archon.gg Meta Builds (27.8% popularity, 8,047 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 21.8,
                        totalRankings = 9995,
                        source = "Archon.gg Meta Builds (21.8% popularity, 9,995 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.0,
                        totalRankings = 10900,
                        source = "Archon.gg Meta Builds (36.0% popularity, 10,900 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 4.6,
                        totalRankings = 9575,
                        source = "Archon.gg Meta Builds (4.6% popularity, 9,575 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 26.2,
                        totalRankings = 35410,
                        source = "Archon.gg Meta Builds (26.2% popularity, 35,410 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.2,
                        totalRankings = 3204,
                        source = "Archon.gg Meta Builds (8.2% popularity, 3,204 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 31.7,
                        totalRankings = 17474,
                        source = "Archon.gg Meta Builds (31.7% popularity, 17,474 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 29.9,
                        totalRankings = 14035,
                        source = "Archon.gg Meta Builds (29.9% popularity, 14,035 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 70.4,
                        totalRankings = 7257,
                        source = "Archon.gg Meta Builds (70.4% popularity, 7,257 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 44.5,
                        totalRankings = 2598,
                        source = "Archon.gg Meta Builds (44.5% popularity, 2,598 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 23.3,
                        totalRankings = 6840,
                        source = "Archon.gg Meta Builds (23.3% popularity, 6,840 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 28.9,
                        totalRankings = 18688,
                        source = "Archon.gg Meta Builds (28.9% popularity, 18,688 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 38.6,
                        totalRankings = 3903,
                        source = "Archon.gg Meta Builds (38.6% popularity, 3,903 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.9,
                        totalRankings = 28318,
                        source = "Archon.gg Meta Builds (19.9% popularity, 28,318 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 30.2,
                        totalRankings = 3080,
                        source = "Archon.gg Meta Builds (30.2% popularity, 3,080 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 32.9,
                        totalRankings = 7239,
                        source = "Archon.gg Meta Builds (32.9% popularity, 7,239 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 33.4,
                        totalRankings = 26105,
                        source = "Archon.gg Meta Builds (33.4% popularity, 26,105 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 18.8,
                        totalRankings = 3495,
                        source = "Archon.gg Meta Builds (18.8% popularity, 3,495 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 27.5,
                        totalRankings = 25157,
                        source = "Archon.gg Meta Builds (27.5% popularity, 25,157 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.9,
                        totalRankings = 12993,
                        source = "Archon.gg Meta Builds (19.9% popularity, 12,993 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 69.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (69.9% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxYZGzMzMNMzMGGzAAAAAAAAYmZmNMjZAAz2MMzMbzMzgZAWMLGGYgZjhGLYAmBwA",
                        usage = 55.7,
                        totalRankings = 70,
                        source = "Archon.gg Meta Builds (55.7% popularity, 70 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzMzMGLzYmZmmZMjxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 31.4,
                        totalRankings = 770,
                        source = "Archon.gg Meta Builds (31.4% popularity, 770 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 42.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.2% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMjMzMGDzMLzMMjtZMzDMjZwYMzMbmZ2mZwAAAAAsMLmxwsx0AzMD2A",
                        usage = 6.8,
                        totalRankings = 190,
                        source = "Archon.gg Meta Builds (6.8% popularity, 190 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 92.2,
                        totalRankings = 875,
                        source = "Archon.gg Meta Builds (92.2% popularity, 875 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2MMMjaGzyYZmZMmxAAAAAAAGAAAAgmZZWmZ2GAwCYGAWMDG",
                        usage = 74.5,
                        totalRankings = 165,
                        source = "Archon.gg Meta Builds (74.5% popularity, 165 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZYMjZGLegZGmFLDMbwoJamZWmZbmZMmxAAAAAAghxAW2mZDjZbAMBAAAsZMDALGYA",
                        usage = 9.5,
                        totalRankings = 74,
                        source = "Archon.gg Meta Builds (9.5% popularity, 74 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2YMNzYgZZmlZmhhZGAAAAAAAYAAAAAAz2MbNLzsZjZmZAGgG",
                        usage = 26.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.0% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMzgBMYMTzYmpZ2GLzwwYMz2MgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 22.8,
                        totalRankings = 979,
                        source = "Archon.gg Meta Builds (22.8% popularity, 979 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 45.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.2% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 9.6,
                        totalRankings = 502,
                        source = "Archon.gg Meta Builds (9.6% popularity, 502 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzYMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                        usage = 37.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (37.2% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjmZmxwMDMMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 77.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (77.7% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 35.3,
                        totalRankings = 17,
                        source = "Archon.gg Meta Builds (35.3% popularity, 17 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAMbzMjZMjZBmZmhx0MjBAAAAAADAYmZaZ2WmBAwGAAAAAAAwYwMLzyMmZMmhZmZmxMmlxA",
                        usage = 69.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (69.4% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMzMzMLeAGzMMNmZMAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 47.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (47.0% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmFDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 65.8,
                        totalRankings = 158,
                        source = "Archon.gg Meta Builds (65.8% popularity, 158 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 28.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (28.2% popularity, 1,000 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 82.3,
                        totalRankings = 866,
                        source = "Archon.gg Meta Builds (82.3% popularity, 866 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 67.8,
                        totalRankings = 379,
                        source = "Archon.gg Meta Builds (67.8% popularity, 379 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 32.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (32.8% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMzMzM2mZmZmBDDAAAAAAAAAASmZYYmZMGmt2AAGAgZw2AAAAAmZW2WabmxiBGAmZMDjB",
                        usage = 5.9,
                        totalRankings = 388,
                        source = "Archon.gg Meta Builds (5.9% popularity, 388 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 75.7,
                        totalRankings = 798,
                        source = "Archon.gg Meta Builds (75.7% popularity, 798 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMmZMzYMmZGzwsNzMzMzDAAAAAAAAAAAsMLz2gZmBzCDDzYYWYbmGTsMwMDAEgZb22AjNbAAA",
                        usage = 8.6,
                        totalRankings = 58,
                        source = "Archon.gg Meta Builds (8.6% popularity, 58 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (56.3% popularity, 1,000 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 54.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (54.8% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 88.0,
                        totalRankings = 316,
                        source = "Archon.gg Meta Builds (88.0% popularity, 316 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 47.2,
                        totalRankings = 180,
                        source = "Archon.gg Meta Builds (47.2% popularity, 180 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 39.0,
                        totalRankings = 947,
                        source = "Archon.gg Meta Builds (39.0% popularity, 947 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmBzywsMzMjZGzMbA",
                        usage = 51.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.8% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZglFGzMYMz2MWmZmmFWGLjZGAgxA",
                        usage = 65.4,
                        totalRankings = 81,
                        source = "Archon.gg Meta Builds (65.4% popularity, 81 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.6% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZMzGAAAwMzMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 29.9,
                        totalRankings = 211,
                        source = "Archon.gg Meta Builds (29.9% popularity, 211 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 73.3,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (73.3% popularity, 15 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 45.9,
                        totalRankings = 1530,
                        source = "Archon.gg Meta Builds (45.9% popularity, 1,530 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmZmZMbLLjZAAAAGMNMzsMmhxyYmZsZmZwghBAAAAAAgZMbDGwWMgFzYYDGYG2ohhFA",
                        usage = 39.0,
                        totalRankings = 41,
                        source = "Archon.gg Meta Builds (39.0% popularity, 41 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 43.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.5% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzsxMG",
                        usage = 21.9,
                        totalRankings = 930,
                        source = "Archon.gg Meta Builds (21.9% popularity, 930 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 45.3,
                        totalRankings = 32388,
                        source = "Archon.gg Meta Builds (45.3% popularity, 32,388 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.5,
                        totalRankings = 5922,
                        source = "Archon.gg Meta Builds (69.5% popularity, 5,922 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.3,
                        totalRankings = 6223,
                        source = "Archon.gg Meta Builds (20.3% popularity, 6,223 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 63.1,
                        totalRankings = 27676,
                        source = "Archon.gg Meta Builds (63.1% popularity, 27,676 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.9,
                        totalRankings = 7204,
                        source = "Archon.gg Meta Builds (38.9% popularity, 7,204 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 45.7,
                        totalRankings = 13347,
                        source = "Archon.gg Meta Builds (45.7% popularity, 13,347 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 77.6,
                        totalRankings = 5966,
                        source = "Archon.gg Meta Builds (77.6% popularity, 5,966 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.7,
                        totalRankings = 4398,
                        source = "Archon.gg Meta Builds (30.7% popularity, 4,398 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.2,
                        totalRankings = 17272,
                        source = "Archon.gg Meta Builds (24.2% popularity, 17,272 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 23.4,
                        totalRankings = 8890,
                        source = "Archon.gg Meta Builds (23.4% popularity, 8,890 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.1,
                        totalRankings = 5206,
                        source = "Archon.gg Meta Builds (39.1% popularity, 5,206 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.0,
                        totalRankings = 1965,
                        source = "Archon.gg Meta Builds (14.0% popularity, 1,965 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 43.8,
                        totalRankings = 33836,
                        source = "Archon.gg Meta Builds (43.8% popularity, 33,836 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.9,
                        totalRankings = 14406,
                        source = "Archon.gg Meta Builds (70.9% popularity, 14,406 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 60.4,
                        totalRankings = 2579,
                        source = "Archon.gg Meta Builds (60.4% popularity, 2,579 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 69.7,
                        totalRankings = 23720,
                        source = "Archon.gg Meta Builds (69.7% popularity, 23,720 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.7,
                        totalRankings = 1808,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,808 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 38.2,
                        totalRankings = 9684,
                        source = "Archon.gg Meta Builds (38.2% popularity, 9,684 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.5,
                        totalRankings = 6442,
                        source = "Archon.gg Meta Builds (36.5% popularity, 6,442 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 22.0,
                        totalRankings = 7353,
                        source = "Archon.gg Meta Builds (22.0% popularity, 7,353 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 63.4,
                        totalRankings = 9082,
                        source = "Archon.gg Meta Builds (63.4% popularity, 9,082 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.5,
                        totalRankings = 9723,
                        source = "Archon.gg Meta Builds (36.5% popularity, 9,723 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.0,
                        totalRankings = 8871,
                        source = "Archon.gg Meta Builds (8.0% popularity, 8,871 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 70.8,
                        totalRankings = 31755,
                        source = "Archon.gg Meta Builds (70.8% popularity, 31,755 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 10.7,
                        totalRankings = 2891,
                        source = "Archon.gg Meta Builds (10.7% popularity, 2,891 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.3,
                        totalRankings = 16201,
                        source = "Archon.gg Meta Builds (30.3% popularity, 16,201 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 34.2,
                        totalRankings = 13071,
                        source = "Archon.gg Meta Builds (34.2% popularity, 13,071 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.2,
                        totalRankings = 7845,
                        source = "Archon.gg Meta Builds (72.2% popularity, 7,845 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 64.2,
                        totalRankings = 2052,
                        source = "Archon.gg Meta Builds (64.2% popularity, 2,052 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.6,
                        totalRankings = 5895,
                        source = "Archon.gg Meta Builds (55.6% popularity, 5,895 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.0,
                        totalRankings = 17674,
                        source = "Archon.gg Meta Builds (29.0% popularity, 17,674 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 64.2,
                        totalRankings = 3629,
                        source = "Archon.gg Meta Builds (64.2% popularity, 3,629 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.4,
                        totalRankings = 25310,
                        source = "Archon.gg Meta Builds (18.4% popularity, 25,310 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.2,
                        totalRankings = 2259,
                        source = "Archon.gg Meta Builds (20.2% popularity, 2,259 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 75.6,
                        totalRankings = 8284,
                        source = "Archon.gg Meta Builds (75.6% popularity, 8,284 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 42.2,
                        totalRankings = 23419,
                        source = "Archon.gg Meta Builds (42.2% popularity, 23,419 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.3,
                        totalRankings = 3075,
                        source = "Archon.gg Meta Builds (63.3% popularity, 3,075 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 51.5,
                        totalRankings = 22180,
                        source = "Archon.gg Meta Builds (51.5% popularity, 22,180 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 17.6,
                        totalRankings = 11886,
                        source = "Archon.gg Meta Builds (17.6% popularity, 11,886 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 69.3,
                        totalRankings = 1742,
                        source = "Archon.gg Meta Builds (69.3% popularity, 1,742 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 73.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (73.5% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 34.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (34.1% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 72.7,
                        totalRankings = 1904,
                        source = "Archon.gg Meta Builds (72.7% popularity, 1,904 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 11.9,
                        totalRankings = 607,
                        source = "Archon.gg Meta Builds (11.9% popularity, 607 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 72.3,
                        totalRankings = 1139,
                        source = "Archon.gg Meta Builds (72.3% popularity, 1,139 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 83.4,
                        totalRankings = 905,
                        source = "Archon.gg Meta Builds (83.4% popularity, 905 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 12.1,
                        totalRankings = 248,
                        source = "Archon.gg Meta Builds (12.1% popularity, 248 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 20.9,
                        totalRankings = 1195,
                        source = "Archon.gg Meta Builds (20.9% popularity, 1,195 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 32.3,
                        totalRankings = 1151,
                        source = "Archon.gg Meta Builds (32.3% popularity, 1,151 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.8% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 15.1,
                        totalRankings = 912,
                        source = "Archon.gg Meta Builds (15.1% popularity, 912 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 50.9,
                        totalRankings = 2111,
                        source = "Archon.gg Meta Builds (50.9% popularity, 2,111 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 85.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (85.3% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 49.3,
                        totalRankings = 134,
                        source = "Archon.gg Meta Builds (49.3% popularity, 134 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 76.8,
                        totalRankings = 2865,
                        source = "Archon.gg Meta Builds (76.8% popularity, 2,865 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 36.4,
                        totalRankings = 332,
                        source = "Archon.gg Meta Builds (36.4% popularity, 332 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 60.0,
                        totalRankings = 542,
                        source = "Archon.gg Meta Builds (60.0% popularity, 542 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 34.9,
                        totalRankings = 1040,
                        source = "Archon.gg Meta Builds (34.9% popularity, 1,040 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 41.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 81.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (81.3% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 39.8,
                        totalRankings = 1095,
                        source = "Archon.gg Meta Builds (39.8% popularity, 1,095 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBDDAAwAAAAAAAQyMzihZGGjZ2CAwAAMD2GAAAAwMzy2SbzMWMwAwMMDjB",
                        usage = 7.8,
                        totalRankings = 999,
                        source = "Archon.gg Meta Builds (7.8% popularity, 999 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 88.3,
                        totalRankings = 1257,
                        source = "Archon.gg Meta Builds (88.3% popularity, 1,257 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZYGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMbDwYDLAAA",
                        usage = 5.5,
                        totalRankings = 110,
                        source = "Archon.gg Meta Builds (5.5% popularity, 110 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 54.3,
                        totalRankings = 1588,
                        source = "Archon.gg Meta Builds (54.3% popularity, 1,588 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 20.3,
                        totalRankings = 1361,
                        source = "Archon.gg Meta Builds (20.3% popularity, 1,361 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 79.5,
                        totalRankings = 1058,
                        source = "Archon.gg Meta Builds (79.5% popularity, 1,058 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 59.1,
                        totalRankings = 279,
                        source = "Archon.gg Meta Builds (59.1% popularity, 279 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 60.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (60.1% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 52.7,
                        totalRankings = 1840,
                        source = "Archon.gg Meta Builds (52.7% popularity, 1,840 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 79.3,
                        totalRankings = 429,
                        source = "Archon.gg Meta Builds (79.3% popularity, 429 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.8,
                        totalRankings = 1578,
                        source = "Archon.gg Meta Builds (27.8% popularity, 1,578 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMbGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 20.7,
                        totalRankings = 266,
                        source = "Archon.gg Meta Builds (20.7% popularity, 266 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 82.8,
                        totalRankings = 723,
                        source = "Archon.gg Meta Builds (82.8% popularity, 723 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 56.4,
                        totalRankings = 2726,
                        source = "Archon.gg Meta Builds (56.4% popularity, 2,726 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.7,
                        totalRankings = 118,
                        source = "Archon.gg Meta Builds (62.7% popularity, 118 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.6,
                        totalRankings = 1679,
                        source = "Archon.gg Meta Builds (45.6% popularity, 1,679 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNMzA",
                        usage = 41.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.6% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 73.8,
                        totalRankings = 16622,
                        source = "Archon.gg Meta Builds (73.8% popularity, 16,622 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 61.3,
                        totalRankings = 3029,
                        source = "Archon.gg Meta Builds (61.3% popularity, 3,029 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.4,
                        totalRankings = 4519,
                        source = "Archon.gg Meta Builds (19.4% popularity, 4,519 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 41.0,
                        totalRankings = 14713,
                        source = "Archon.gg Meta Builds (41.0% popularity, 14,713 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.6,
                        totalRankings = 4053,
                        source = "Archon.gg Meta Builds (32.6% popularity, 4,053 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 45.5,
                        totalRankings = 7672,
                        source = "Archon.gg Meta Builds (45.5% popularity, 7,672 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 46.8,
                        totalRankings = 3501,
                        source = "Archon.gg Meta Builds (46.8% popularity, 3,501 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 25.1,
                        totalRankings = 2472,
                        source = "Archon.gg Meta Builds (25.1% popularity, 2,472 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.1,
                        totalRankings = 8672,
                        source = "Archon.gg Meta Builds (24.1% popularity, 8,672 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 23.5,
                        totalRankings = 5956,
                        source = "Archon.gg Meta Builds (23.5% popularity, 5,956 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.3,
                        totalRankings = 3420,
                        source = "Archon.gg Meta Builds (41.3% popularity, 3,420 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.3,
                        totalRankings = 1316,
                        source = "Archon.gg Meta Builds (14.3% popularity, 1,316 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 39.2,
                        totalRankings = 17265,
                        source = "Archon.gg Meta Builds (39.2% popularity, 17,265 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 22.4,
                        totalRankings = 6868,
                        source = "Archon.gg Meta Builds (22.4% popularity, 6,868 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 54.7,
                        totalRankings = 1361,
                        source = "Archon.gg Meta Builds (54.7% popularity, 1,361 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 47.1,
                        totalRankings = 14292,
                        source = "Archon.gg Meta Builds (47.1% popularity, 14,292 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.5% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 44.4,
                        totalRankings = 4890,
                        source = "Archon.gg Meta Builds (44.4% popularity, 4,890 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.1,
                        totalRankings = 4193,
                        source = "Archon.gg Meta Builds (35.1% popularity, 4,193 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 33.5,
                        totalRankings = 4749,
                        source = "Archon.gg Meta Builds (33.5% popularity, 4,749 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.3,
                        totalRankings = 5378,
                        source = "Archon.gg Meta Builds (53.3% popularity, 5,378 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.3,
                        totalRankings = 5746,
                        source = "Archon.gg Meta Builds (38.3% popularity, 5,746 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 4752,
                        source = "Archon.gg Meta Builds (5.6% popularity, 4,752 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 68.0,
                        totalRankings = 17344,
                        source = "Archon.gg Meta Builds (68.0% popularity, 17,344 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.1,
                        totalRankings = 1262,
                        source = "Archon.gg Meta Builds (8.1% popularity, 1,262 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 33.4,
                        totalRankings = 9956,
                        source = "Archon.gg Meta Builds (33.4% popularity, 9,956 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 42.2,
                        totalRankings = 7953,
                        source = "Archon.gg Meta Builds (42.2% popularity, 7,953 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 77.7,
                        totalRankings = 4196,
                        source = "Archon.gg Meta Builds (77.7% popularity, 4,196 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 55.8,
                        totalRankings = 1080,
                        source = "Archon.gg Meta Builds (55.8% popularity, 1,080 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.1,
                        totalRankings = 3621,
                        source = "Archon.gg Meta Builds (52.1% popularity, 3,621 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLMz0wYmZZYZmZGMGmlxMjZGzMbA",
                        usage = 33.9,
                        totalRankings = 10573,
                        source = "Archon.gg Meta Builds (33.9% popularity, 10,573 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 33.7,
                        totalRankings = 2173,
                        source = "Archon.gg Meta Builds (33.7% popularity, 2,173 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.1,
                        totalRankings = 12681,
                        source = "Archon.gg Meta Builds (19.1% popularity, 12,681 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 30.6,
                        totalRankings = 1213,
                        source = "Archon.gg Meta Builds (30.6% popularity, 1,213 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.4,
                        totalRankings = 4146,
                        source = "Archon.gg Meta Builds (76.4% popularity, 4,146 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 38.3,
                        totalRankings = 14483,
                        source = "Archon.gg Meta Builds (38.3% popularity, 14,483 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 35.9,
                        totalRankings = 1649,
                        source = "Archon.gg Meta Builds (35.9% popularity, 1,649 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 23.1,
                        totalRankings = 12689,
                        source = "Archon.gg Meta Builds (23.1% popularity, 12,689 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.5,
                        totalRankings = 6654,
                        source = "Archon.gg Meta Builds (23.5% popularity, 6,654 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 96.7,
                        totalRankings = 521,
                        source = "Archon.gg Meta Builds (96.7% popularity, 521 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMGLzYmZmphZmZGzYAAAAAAAAYmZmFmZMDAY2mxMjZbmZGMDwiZxwADMbM0YBAmBwA",
                        usage = 30.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (30.0% popularity, 10 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMGzYAAAAgZmZmZmZmZzMzYAAAjZmZGAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 22.3,
                        totalRankings = 94,
                        source = "Archon.gg Meta Builds (22.3% popularity, 94 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 62.9,
                        totalRankings = 356,
                        source = "Archon.gg Meta Builds (62.9% popularity, 356 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmBziZmlxYG2mhZGzMGMLzMzmZGzMYAAAAY2mBDjlFmwgZmBLA",
                        usage = 23.1,
                        totalRankings = 13,
                        source = "Archon.gg Meta Builds (23.1% popularity, 13 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 60.2,
                        totalRankings = 161,
                        source = "Archon.gg Meta Builds (60.2% popularity, 161 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 84.2,
                        totalRankings = 95,
                        source = "Archon.gg Meta Builds (84.2% popularity, 95 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGDjZYGLmhZmFLDAMay0MzsMzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCjBgFzgB",
                        usage = 20.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (20.0% popularity, 10 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLjlZmhhZAAAAAADAYAAAAAAz2MbNLzsZjZmZGwAjG",
                        usage = 24.2,
                        totalRankings = 120,
                        source = "Archon.gg Meta Builds (24.2% popularity, 120 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMzyMzgZgZMDsBWAzwEYBsMMA",
                        usage = 38.8,
                        totalRankings = 188,
                        source = "Archon.gg Meta Builds (38.8% popularity, 188 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMDsAWAzwEYD2MMA",
                        usage = 33.8,
                        totalRankings = 237,
                        source = "Archon.gg Meta Builds (33.8% popularity, 237 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZYmZZmZmhZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 22.3,
                        totalRankings = 273,
                        source = "Archon.gg Meta Builds (22.3% popularity, 273 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 80.2,
                        totalRankings = 378,
                        source = "Archon.gg Meta Builds (80.2% popularity, 378 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 80.0,
                        totalRankings = 75,
                        source = "Archon.gg Meta Builds (80.0% popularity, 75 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZYmZMDzwYYmhxwssND2AAAAAgBAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 57.2,
                        totalRankings = 629,
                        source = "Archon.gg Meta Builds (57.2% popularity, 629 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 50.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (50.0% popularity, 10 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 71.4,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (71.4% popularity, 7 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgx2wMmxsMjtxMzAAAAAAAwyCGxMjFmhxGD2mZmhZZMzYbWMxsNbzgZ2AAglZbaZ2mZZAAAAYG2A",
                        usage = 21.2,
                        totalRankings = 241,
                        source = "Archon.gg Meta Builds (21.2% popularity, 241 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 73.2,
                        totalRankings = 97,
                        source = "Archon.gg Meta Builds (73.2% popularity, 97 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYmhZG2mBAwGAYWmlmZmZBwM",
                        usage = 58.4,
                        totalRankings = 89,
                        source = "Archon.gg Meta Builds (58.4% popularity, 89 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 30.5,
                        totalRankings = 239,
                        source = "Archon.gg Meta Builds (30.5% popularity, 239 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGDzWbAwYAAmBbDAAAAYmZZbptZGLGYAYmxMMG",
                        usage = 28.6,
                        totalRankings = 63,
                        source = "Archon.gg Meta Builds (28.6% popularity, 63 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.5,
                        totalRankings = 145,
                        source = "Archon.gg Meta Builds (85.5% popularity, 145 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMbDwYDLAAA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 57.1,
                        totalRankings = 91,
                        source = "Archon.gg Meta Builds (57.1% popularity, 91 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 46.8,
                        totalRankings = 312,
                        source = "Archon.gg Meta Builds (46.8% popularity, 312 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 85.7,
                        totalRankings = 21,
                        source = "Archon.gg Meta Builds (85.7% popularity, 21 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAz22MzgZmxCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 100.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (100.0% popularity, 4 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMz22MzYmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 38.4,
                        totalRankings = 354,
                        source = "Archon.gg Meta Builds (38.4% popularity, 354 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsMNzMYbhZmGGzMbDLzMzgxwsMzMjZGzMbA",
                        usage = 60.9,
                        totalRankings = 381,
                        source = "Archon.gg Meta Builds (60.9% popularity, 381 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 75.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (75.0% popularity, 20 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 35.9,
                        totalRankings = 220,
                        source = "Archon.gg Meta Builds (35.9% popularity, 220 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (20.0% popularity, 5 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZ0Y2MwsZmZYWGAAAAAAAAAAzAGzYYBGYbYhGWYGzM2mZmlZMzMjxMGmZGjBzMAAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 56.5,
                        totalRankings = 581,
                        source = "Archon.gg Meta Builds (56.5% popularity, 581 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 31.0,
                        totalRankings = 245,
                        source = "Archon.gg Meta Builds (31.0% popularity, 245 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmBzsZMLDGjZaYZmZYsMYG2mZGMMDDAAAAAAsMGAYmtNADsBLLGNmBwsBzGmZA",
                        usage = 10.4,
                        totalRankings = 231,
                        source = "Archon.gg Meta Builds (10.4% popularity, 231 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 45.8,
                        totalRankings = 12018,
                        source = "Archon.gg Meta Builds (45.8% popularity, 12,018 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 54.8,
                        totalRankings = 2397,
                        source = "Archon.gg Meta Builds (54.8% popularity, 2,397 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 22.3,
                        totalRankings = 3575,
                        source = "Archon.gg Meta Builds (22.3% popularity, 3,575 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 51.8,
                        totalRankings = 10711,
                        source = "Archon.gg Meta Builds (51.8% popularity, 10,711 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 33.2,
                        totalRankings = 2794,
                        source = "Archon.gg Meta Builds (33.2% popularity, 2,794 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 45.8,
                        totalRankings = 5273,
                        source = "Archon.gg Meta Builds (45.8% popularity, 5,273 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 77.5,
                        totalRankings = 2364,
                        source = "Archon.gg Meta Builds (77.5% popularity, 2,364 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 24.0,
                        totalRankings = 1577,
                        source = "Archon.gg Meta Builds (24.0% popularity, 1,577 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.8,
                        totalRankings = 6343,
                        source = "Archon.gg Meta Builds (22.8% popularity, 6,343 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 28.9,
                        totalRankings = 4312,
                        source = "Archon.gg Meta Builds (28.9% popularity, 4,312 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.2,
                        totalRankings = 2608,
                        source = "Archon.gg Meta Builds (39.2% popularity, 2,608 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (13.2% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 34.8,
                        totalRankings = 12516,
                        source = "Archon.gg Meta Builds (34.8% popularity, 12,516 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 69.3,
                        totalRankings = 4939,
                        source = "Archon.gg Meta Builds (69.3% popularity, 4,939 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.9% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 51.9,
                        totalRankings = 10567,
                        source = "Archon.gg Meta Builds (51.9% popularity, 10,567 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.1% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 46.0,
                        totalRankings = 3297,
                        source = "Archon.gg Meta Builds (46.0% popularity, 3,297 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.0,
                        totalRankings = 3085,
                        source = "Archon.gg Meta Builds (33.0% popularity, 3,085 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzstwMaMzAzwMYw2MmhZb2GDziJAAAAAAgFLzyysNzMBAALA",
                        usage = 39.5,
                        totalRankings = 3530,
                        source = "Archon.gg Meta Builds (39.5% popularity, 3,530 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 58.1,
                        totalRankings = 3681,
                        source = "Archon.gg Meta Builds (58.1% popularity, 3,681 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 41.4,
                        totalRankings = 4109,
                        source = "Archon.gg Meta Builds (41.4% popularity, 4,109 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 7.5,
                        totalRankings = 3082,
                        source = "Archon.gg Meta Builds (7.5% popularity, 3,082 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 76.3,
                        totalRankings = 12133,
                        source = "Archon.gg Meta Builds (76.3% popularity, 12,133 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (9.9% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 36.4,
                        totalRankings = 7519,
                        source = "Archon.gg Meta Builds (36.4% popularity, 7,519 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 40.1,
                        totalRankings = 5429,
                        source = "Archon.gg Meta Builds (40.1% popularity, 5,429 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 81.6,
                        totalRankings = 3161,
                        source = "Archon.gg Meta Builds (81.6% popularity, 3,161 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 61.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (61.3% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.8,
                        totalRankings = 2597,
                        source = "Archon.gg Meta Builds (55.8% popularity, 2,597 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLMz0wYmZZYZmZGMGmlxMjZGzMbA",
                        usage = 38.5,
                        totalRankings = 7554,
                        source = "Archon.gg Meta Builds (38.5% popularity, 7,554 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 39.2,
                        totalRankings = 1394,
                        source = "Archon.gg Meta Builds (39.2% popularity, 1,394 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.3,
                        totalRankings = 9499,
                        source = "Archon.gg Meta Builds (18.3% popularity, 9,499 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 32.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (32.8% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.5,
                        totalRankings = 2278,
                        source = "Archon.gg Meta Builds (80.5% popularity, 2,278 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 49.4,
                        totalRankings = 10798,
                        source = "Archon.gg Meta Builds (49.4% popularity, 10,798 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 46.5,
                        totalRankings = 1188,
                        source = "Archon.gg Meta Builds (46.5% popularity, 1,188 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 19.1,
                        totalRankings = 9539,
                        source = "Archon.gg Meta Builds (19.1% popularity, 9,539 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 26.8,
                        totalRankings = 4630,
                        source = "Archon.gg Meta Builds (26.8% popularity, 4,630 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 98.8,
                        totalRankings = 171,
                        source = "Archon.gg Meta Builds (98.8% popularity, 171 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMjZGzYmxYZGzMz0MjhxwYGAAAAYmZmZmZmZjZGAAgZMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 9.7,
                        totalRankings = 31,
                        source = "Archon.gg Meta Builds (9.7% popularity, 31 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMzMxMzAAAAAAAmtxMmBGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 74.2,
                        totalRankings = 93,
                        source = "Archon.gg Meta Builds (74.2% popularity, 93 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMmZkZmBDDLzMmZsNMzMjZwMzyMzsZmxMDGAAAAglZxMGmFmGYmZwG",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 70.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (70.0% popularity, 20 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwwAzMqZMLjlZmxYmZAAAAAAADAAAAQzsMLzMbDAYBmZGALMYA",
                        usage = 93.3,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (93.3% popularity, 15 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsNoZzMmmZMwsMzyMzwwMAAAAAAAgBAAAAAMbzs1sMzmNmZGADMaA",
                        usage = 15.9,
                        totalRankings = 63,
                        source = "Archon.gg Meta Builds (15.9% popularity, 63 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmtZAzYmtxMzyMzgZgZMDsAWAzwEYBsMMA",
                        usage = 20.5,
                        totalRankings = 132,
                        source = "Archon.gg Meta Builds (20.5% popularity, 132 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMjZMMGzIMDAAAwMzMxsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 36.5,
                        totalRankings = 115,
                        source = "Archon.gg Meta Builds (36.5% popularity, 115 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZYmZZmZmhZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 29.2,
                        totalRankings = 24,
                        source = "Archon.gg Meta Builds (29.2% popularity, 24 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 50.7,
                        totalRankings = 67,
                        source = "Archon.gg Meta Builds (50.7% popularity, 67 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDjhZxMjxYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 56.5,
                        totalRankings = 23,
                        source = "Archon.gg Meta Builds (56.5% popularity, 23 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 62.8,
                        totalRankings = 164,
                        source = "Archon.gg Meta Builds (62.8% popularity, 164 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZ4BegZGNGzMmZMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsZGsNzMDzyYmx2sYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 33.8,
                        totalRankings = 74,
                        source = "Archon.gg Meta Builds (33.8% popularity, 74 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMbMzwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 73.7,
                        totalRankings = 19,
                        source = "Archon.gg Meta Builds (73.7% popularity, 19 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBjZYWmZGzMAAAAAAAAAAAYZZY0MzMwMMsww2MzMMbMzws8ATAAsMmZYGmtZAAssMLLz2MzEAAGA",
                        usage = 38.1,
                        totalRankings = 21,
                        source = "Archon.gg Meta Builds (38.1% popularity, 21 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 47.6,
                        totalRankings = 84,
                        source = "Archon.gg Meta Builds (47.6% popularity, 84 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMzMzM2mZmZmZbMMAAADAAAAAAAtlxsYYmZMGzs1GAwAAMD2GAAAAwMzyySbzMWAAwMYMjB",
                        usage = 33.3,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (33.3% popularity, 6 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDGMsswGAAAMz02sMbzAA2AGAjxYGmB",
                        usage = 91.3,
                        totalRankings = 23,
                        source = "Archon.gg Meta Builds (91.3% popularity, 23 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwYWmlhtZmBzCjZYGDzyGMjpmFAmZBLEGz2AMWgFWMLDA",
                        usage = 23.3,
                        totalRankings = 30,
                        source = "Archon.gg Meta Builds (23.3% popularity, 30 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDzMDAAAAAAAAAAAAjxGMzMLbbjZGzMzMLDmNmZmZMbMAjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 55.7,
                        totalRankings = 79,
                        source = "Archon.gg Meta Builds (55.7% popularity, 79 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 100.0,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (100.0% popularity, 7 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 51.1,
                        totalRankings = 92,
                        source = "Archon.gg Meta Builds (51.1% popularity, 92 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGYbhZmGGzMLDLzMzYzYYWGzMmZMzsBA",
                        usage = 70.6,
                        totalRankings = 153,
                        source = "Archon.gg Meta Builds (70.6% popularity, 153 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzy0MDsxMzMDjZmthlZmJbYYWmZAAGD",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmB2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDmFsMzYsZMMLjBAAG",
                        usage = 30.3,
                        totalRankings = 66,
                        source = "Archon.gg Meta Builds (30.3% popularity, 66 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDzyAAAAmZMziZmxyMzMbGmZAAzYDGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 64.2,
                        totalRankings = 190,
                        source = "Archon.gg Meta Builds (64.2% popularity, 190 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 71.1,
                        totalRankings = 38,
                        source = "Archon.gg Meta Builds (71.1% popularity, 38 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwYmxMzMjxsZmZZwYMTDLzMDzsMYG2mZGgZYAAAAAAglxAAzstBYgNYZxoxMAmNY2gZA",
                        usage = 12.3,
                        totalRankings = 73,
                        source = "Archon.gg Meta Builds (12.3% popularity, 73 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 13.0,
                    totalRankings = 36690,
                    source = "Archon.gg Mythic+ Meta Builds (13.0% popularity, 36,690 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMDGzMGGzMzMzMMzMamxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 62.3,
                    totalRankings = 179598,
                    source = "Archon.gg Mythic+ Meta Builds (62.3% popularity, 179,598 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 58.5,
                    totalRankings = 16932,
                    source = "Archon.gg Mythic+ Meta Builds (58.5% popularity, 16,932 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 46.1,
                    totalRankings = 121030,
                    source = "Archon.gg Mythic+ Meta Builds (46.1% popularity, 121,030 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 44.4,
                    totalRankings = 70701,
                    source = "Archon.gg Mythic+ Meta Builds (44.4% popularity, 70,701 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 72.0,
                    totalRankings = 46233,
                    source = "Archon.gg Mythic+ Meta Builds (72.0% popularity, 46,233 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 63.0,
                    totalRankings = 23871,
                    source = "Archon.gg Mythic+ Meta Builds (63.0% popularity, 23,871 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDMbGGNRmZWmZbmZWGzAAAAAAAGzYALbzshxsMAmAAAA2gBgFjhB",
                    usage = 26.6,
                    totalRankings = 43342,
                    source = "Archon.gg Mythic+ Meta Builds (26.6% popularity, 43,342 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 9.0,
                    totalRankings = 96971,
                    source = "Archon.gg Mythic+ Meta Builds (9.0% popularity, 96,971 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmpZ2GLDGGjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 19.7,
                    totalRankings = 32778,
                    source = "Archon.gg Mythic+ Meta Builds (19.7% popularity, 32,778 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDAAAmZYMjxwMxYGAAAYbmZmmxyMzMGzAAwY2swCMwMM0gxCMA",
                    usage = 37.9,
                    totalRankings = 19252,
                    source = "Archon.gg Mythic+ Meta Builds (37.9% popularity, 19,252 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMLjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 25.5,
                    totalRankings = 6973,
                    source = "Archon.gg Mythic+ Meta Builds (25.5% popularity, 6,973 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjZeALzMDzMGsMjZmxYmZmMjZMjZmhZGzwYYMMLDz2yMYDAAAAAAmB",
                    usage = 20.0,
                    totalRankings = 145234,
                    source = "Archon.gg Mythic+ Meta Builds (20.0% popularity, 145,234 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjMjxwMDzywssMD2GmxYZbzMzMmFzMMmZmlNDLDzM",
                    usage = 44.4,
                    totalRankings = 62509,
                    source = "Archon.gg Mythic+ Meta Builds (44.4% popularity, 62,509 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 26.5,
                    totalRankings = 14195,
                    source = "Archon.gg Mythic+ Meta Builds (26.5% popularity, 14,195 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZYmZBGzMMmmZWmBAAAAAgBAMzMtMbLzAAYDAAAAAgNAMGMzysMjZGjZYmZmZMjZZM",
                    usage = 45.5,
                    totalRankings = 110223,
                    source = "Archon.gg Mythic+ Meta Builds (45.5% popularity, 110,223 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzgZGzMLAzMjpxMjZGAAAAAADAYmZaZW2mBAYzMzgxMDzYWMLjhZmNzsNjlZWwAAAAAAAA",
                    usage = 17.4,
                    totalRankings = 6899,
                    source = "Archon.gg Mythic+ Meta Builds (17.4% popularity, 6,899 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsMLAAAwCAAAAAAmNAAAAAAAA",
                    usage = 38.5,
                    totalRankings = 30936,
                    source = "Archon.gg Mythic+ Meta Builds (38.5% popularity, 30,936 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 39.2,
                    totalRankings = 49527,
                    source = "Archon.gg Mythic+ Meta Builds (39.2% popularity, 49,527 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 14.4,
                    totalRankings = 25034,
                    source = "Archon.gg Mythic+ Meta Builds (14.4% popularity, 25,034 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 34.9,
                    totalRankings = 25232,
                    source = "Archon.gg Mythic+ Meta Builds (34.9% popularity, 25,232 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLmxMLz2Mzs0AAAAsAYwmZghhB",
                    usage = 21.3,
                    totalRankings = 36022,
                    source = "Archon.gg Mythic+ Meta Builds (21.3% popularity, 36,022 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZGzsNmxAAAMAAAAAAA0WzMzihZGGD2aDAGDMAAbDAAAAYmZZbptZGLMYAYwMbYA",
                    usage = 9.8,
                    totalRankings = 116887,
                    source = "Archon.gg Mythic+ Meta Builds (9.8% popularity, 116,887 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 33.4,
                    totalRankings = 116243,
                    source = "Archon.gg Mythic+ Meta Builds (33.4% popularity, 116,243 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                    usage = 16.6,
                    totalRankings = 63869,
                    source = "Archon.gg Mythic+ Meta Builds (16.6% popularity, 63,869 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 18.6,
                    totalRankings = 20252,
                    source = "Archon.gg Mythic+ Meta Builds (18.6% popularity, 20,252 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 31.3,
                    totalRankings = 36387,
                    source = "Archon.gg Mythic+ Meta Builds (31.3% popularity, 36,387 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 80.0,
                    totalRankings = 19644,
                    source = "Archon.gg Mythic+ Meta Builds (80.0% popularity, 19,644 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw2yMzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 51.1,
                    totalRankings = 11168,
                    source = "Archon.gg Mythic+ Meta Builds (51.1% popularity, 11,168 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 45.1,
                    totalRankings = 27185,
                    source = "Archon.gg Mythic+ Meta Builds (45.1% popularity, 27,185 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsNNDYbhZmGmZmxMWmxMWMLjFLmxghZ2GA",
                    usage = 32.8,
                    totalRankings = 62967,
                    source = "Archon.gg Mythic+ Meta Builds (32.8% popularity, 62,967 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBswMzMDzYmtZsMzMZhlxyYmBAYMA",
                    usage = 47.1,
                    totalRankings = 14927,
                    source = "Archon.gg Mythic+ Meta Builds (47.1% popularity, 14,927 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 26.4,
                    totalRankings = 178356,
                    source = "Archon.gg Mythic+ Meta Builds (26.4% popularity, 178,356 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMbglZAAAAAAAAwMsA",
                    usage = 26.9,
                    totalRankings = 6507,
                    source = "Archon.gg Mythic+ Meta Builds (26.9% popularity, 6,507 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 37.5,
                    totalRankings = 37745,
                    source = "Archon.gg Mythic+ Meta Builds (37.5% popularity, 37,745 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 12.2,
                    totalRankings = 70127,
                    source = "Archon.gg Mythic+ Meta Builds (12.2% popularity, 70,127 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                    usage = 25.2,
                    totalRankings = 7799,
                    source = "Archon.gg Mythic+ Meta Builds (25.2% popularity, 7,799 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                    usage = 41.2,
                    totalRankings = 83580,
                    source = "Archon.gg Mythic+ Meta Builds (41.2% popularity, 83,580 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAAwYGzMzMzMmNjZZwYMaMLjZYsMmZG2mZGzADDAAAAAAsMGAYGbAGYDWWMaMDgZBmNYmB",
                    usage = 10.9,
                    totalRankings = 122944,
                    source = "Archon.gg Mythic+ Meta Builds (10.9% popularity, 122,944 parses)"
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
