-- Archon Talents Data File
-- Generated: 2025-09-08 08:06:03 UTC
-- Version: 1757336763
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1757336763
    local lastUpdated = "2025-09-08 08:06:03 UTC"
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
                        usage = 38.2,
                        totalRankings = 30049,
                        source = "Archon.gg Meta Builds (38.2% popularity, 30,049 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 68.1,
                        totalRankings = 8057,
                        source = "Archon.gg Meta Builds (68.1% popularity, 8,057 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.3,
                        totalRankings = 6398,
                        source = "Archon.gg Meta Builds (20.3% popularity, 6,398 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 52.3,
                        totalRankings = 29511,
                        source = "Archon.gg Meta Builds (52.3% popularity, 29,511 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 43.3,
                        totalRankings = 8609,
                        source = "Archon.gg Meta Builds (43.3% popularity, 8,609 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 32.9,
                        totalRankings = 14399,
                        source = "Archon.gg Meta Builds (32.9% popularity, 14,399 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 75.5,
                        totalRankings = 6976,
                        source = "Archon.gg Meta Builds (75.5% popularity, 6,976 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.4,
                        totalRankings = 4441,
                        source = "Archon.gg Meta Builds (30.4% popularity, 4,441 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.3,
                        totalRankings = 18445,
                        source = "Archon.gg Meta Builds (24.3% popularity, 18,445 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 24.2,
                        totalRankings = 11116,
                        source = "Archon.gg Meta Builds (24.2% popularity, 11,116 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.7,
                        totalRankings = 5460,
                        source = "Archon.gg Meta Builds (39.7% popularity, 5,460 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 10.5,
                        totalRankings = 1552,
                        source = "Archon.gg Meta Builds (10.5% popularity, 1,552 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 77.5,
                        totalRankings = 23494,
                        source = "Archon.gg Meta Builds (77.5% popularity, 23,494 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.0,
                        totalRankings = 18401,
                        source = "Archon.gg Meta Builds (71.0% popularity, 18,401 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 65.8,
                        totalRankings = 3034,
                        source = "Archon.gg Meta Builds (65.8% popularity, 3,034 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 56.9,
                        totalRankings = 25158,
                        source = "Archon.gg Meta Builds (56.9% popularity, 25,158 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 45.6,
                        totalRankings = 1982,
                        source = "Archon.gg Meta Builds (45.6% popularity, 1,982 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 32.1,
                        totalRankings = 11573,
                        source = "Archon.gg Meta Builds (32.1% popularity, 11,573 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.6,
                        totalRankings = 7296,
                        source = "Archon.gg Meta Builds (31.6% popularity, 7,296 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 21.3,
                        totalRankings = 8444,
                        source = "Archon.gg Meta Builds (21.3% popularity, 8,444 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 58.3,
                        totalRankings = 9827,
                        source = "Archon.gg Meta Builds (58.3% popularity, 9,827 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.0,
                        totalRankings = 10922,
                        source = "Archon.gg Meta Builds (34.0% popularity, 10,922 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 10.9,
                        totalRankings = 8876,
                        source = "Archon.gg Meta Builds (10.9% popularity, 8,876 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 65.2,
                        totalRankings = 32914,
                        source = "Archon.gg Meta Builds (65.2% popularity, 32,914 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.6,
                        totalRankings = 3805,
                        source = "Archon.gg Meta Builds (9.6% popularity, 3,805 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 36.2,
                        totalRankings = 17975,
                        source = "Archon.gg Meta Builds (36.2% popularity, 17,975 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 37.1,
                        totalRankings = 16317,
                        source = "Archon.gg Meta Builds (37.1% popularity, 16,317 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.0,
                        totalRankings = 11498,
                        source = "Archon.gg Meta Builds (70.0% popularity, 11,498 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 87.8,
                        totalRankings = 2553,
                        source = "Archon.gg Meta Builds (87.8% popularity, 2,553 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.2,
                        totalRankings = 5021,
                        source = "Archon.gg Meta Builds (56.2% popularity, 5,021 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 24.4,
                        totalRankings = 18631,
                        source = "Archon.gg Meta Builds (24.4% popularity, 18,631 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 67.2,
                        totalRankings = 4540,
                        source = "Archon.gg Meta Builds (67.2% popularity, 4,540 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 12.6,
                        totalRankings = 26974,
                        source = "Archon.gg Meta Builds (12.6% popularity, 26,974 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.1,
                        totalRankings = 2802,
                        source = "Archon.gg Meta Builds (17.1% popularity, 2,802 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.6,
                        totalRankings = 11342,
                        source = "Archon.gg Meta Builds (76.6% popularity, 11,342 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 36.8,
                        totalRankings = 22418,
                        source = "Archon.gg Meta Builds (36.8% popularity, 22,418 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 57.5,
                        totalRankings = 4620,
                        source = "Archon.gg Meta Builds (57.5% popularity, 4,620 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 58.7,
                        totalRankings = 18657,
                        source = "Archon.gg Meta Builds (58.7% popularity, 18,657 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 23.0,
                        totalRankings = 11649,
                        source = "Archon.gg Meta Builds (23.0% popularity, 11,649 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 63.3,
                        totalRankings = 7679,
                        source = "Archon.gg Meta Builds (63.3% popularity, 7,679 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.4,
                        totalRankings = 2947,
                        source = "Archon.gg Meta Builds (72.4% popularity, 2,947 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 28.7,
                        totalRankings = 1821,
                        source = "Archon.gg Meta Builds (28.7% popularity, 1,821 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 68.2,
                        totalRankings = 6733,
                        source = "Archon.gg Meta Builds (68.2% popularity, 6,733 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.9,
                        totalRankings = 1719,
                        source = "Archon.gg Meta Builds (38.9% popularity, 1,719 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 36.9,
                        totalRankings = 3383,
                        source = "Archon.gg Meta Builds (36.9% popularity, 3,383 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 84.5,
                        totalRankings = 1627,
                        source = "Archon.gg Meta Builds (84.5% popularity, 1,627 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 17.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.9% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.5,
                        totalRankings = 4702,
                        source = "Archon.gg Meta Builds (23.5% popularity, 4,702 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 30.9,
                        totalRankings = 3335,
                        source = "Archon.gg Meta Builds (30.9% popularity, 3,335 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.0,
                        totalRankings = 2166,
                        source = "Archon.gg Meta Builds (40.0% popularity, 2,166 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.8,
                        totalRankings = 905,
                        source = "Archon.gg Meta Builds (12.8% popularity, 905 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 82.5,
                        totalRankings = 3951,
                        source = "Archon.gg Meta Builds (82.5% popularity, 3,951 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 78.0,
                        totalRankings = 4744,
                        source = "Archon.gg Meta Builds (78.0% popularity, 4,744 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 51.9,
                        totalRankings = 973,
                        source = "Archon.gg Meta Builds (51.9% popularity, 973 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 70.7,
                        totalRankings = 8193,
                        source = "Archon.gg Meta Builds (70.7% popularity, 8,193 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 41.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.0% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 48.8,
                        totalRankings = 1898,
                        source = "Archon.gg Meta Builds (48.8% popularity, 1,898 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.4,
                        totalRankings = 2624,
                        source = "Archon.gg Meta Builds (32.4% popularity, 2,624 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 41.1,
                        totalRankings = 2414,
                        source = "Archon.gg Meta Builds (41.1% popularity, 2,414 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 64.3,
                        totalRankings = 2203,
                        source = "Archon.gg Meta Builds (64.3% popularity, 2,203 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.3,
                        totalRankings = 3029,
                        source = "Archon.gg Meta Builds (38.3% popularity, 3,029 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.8,
                        totalRankings = 2243,
                        source = "Archon.gg Meta Builds (6.8% popularity, 2,243 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 73.8,
                        totalRankings = 5939,
                        source = "Archon.gg Meta Builds (73.8% popularity, 5,939 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 3.9,
                        totalRankings = 617,
                        source = "Archon.gg Meta Builds (3.9% popularity, 617 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 33.7,
                        totalRankings = 5550,
                        source = "Archon.gg Meta Builds (33.7% popularity, 5,550 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 34.2,
                        totalRankings = 4019,
                        source = "Archon.gg Meta Builds (34.2% popularity, 4,019 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 75.2,
                        totalRankings = 3831,
                        source = "Archon.gg Meta Builds (75.2% popularity, 3,831 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 88.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (88.9% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.2,
                        totalRankings = 1193,
                        source = "Archon.gg Meta Builds (55.2% popularity, 1,193 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 40.5,
                        totalRankings = 4523,
                        source = "Archon.gg Meta Builds (40.5% popularity, 4,523 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.3% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 15.5,
                        totalRankings = 6726,
                        source = "Archon.gg Meta Builds (15.5% popularity, 6,726 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 18.0,
                        totalRankings = 856,
                        source = "Archon.gg Meta Builds (18.0% popularity, 856 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 79.1,
                        totalRankings = 2240,
                        source = "Archon.gg Meta Builds (79.1% popularity, 2,240 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.1,
                        totalRankings = 6467,
                        source = "Archon.gg Meta Builds (41.1% popularity, 6,467 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 53.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.3% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMWmxgZWYmZGzwMMz22YMzMLYGzMzYmZWGGeAzMAAAIGbbDsAGwMMBmhNA",
                        usage = 55.9,
                        totalRankings = 4758,
                        source = "Archon.gg Meta Builds (55.9% popularity, 4,758 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMTDLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmNM2wMD",
                        usage = 14.2,
                        totalRankings = 3057,
                        source = "Archon.gg Meta Builds (14.2% popularity, 3,057 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 39.4,
                        totalRankings = 30786,
                        source = "Archon.gg Meta Builds (39.4% popularity, 30,786 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 68.0,
                        totalRankings = 8392,
                        source = "Archon.gg Meta Builds (68.0% popularity, 8,392 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.8,
                        totalRankings = 6496,
                        source = "Archon.gg Meta Builds (20.8% popularity, 6,496 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 49.0,
                        totalRankings = 30113,
                        source = "Archon.gg Meta Builds (49.0% popularity, 30,113 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 40.2,
                        totalRankings = 8692,
                        source = "Archon.gg Meta Builds (40.2% popularity, 8,692 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 33.0,
                        totalRankings = 14913,
                        source = "Archon.gg Meta Builds (33.0% popularity, 14,913 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 75.3,
                        totalRankings = 7119,
                        source = "Archon.gg Meta Builds (75.3% popularity, 7,119 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.1,
                        totalRankings = 4409,
                        source = "Archon.gg Meta Builds (30.1% popularity, 4,409 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 26.0,
                        totalRankings = 18869,
                        source = "Archon.gg Meta Builds (26.0% popularity, 18,869 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 20.3,
                        totalRankings = 11463,
                        source = "Archon.gg Meta Builds (20.3% popularity, 11,463 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.3,
                        totalRankings = 5574,
                        source = "Archon.gg Meta Builds (40.3% popularity, 5,574 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 11.9,
                        totalRankings = 1618,
                        source = "Archon.gg Meta Builds (11.9% popularity, 1,618 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 76.8,
                        totalRankings = 23918,
                        source = "Archon.gg Meta Builds (76.8% popularity, 23,918 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.1,
                        totalRankings = 18347,
                        source = "Archon.gg Meta Builds (71.1% popularity, 18,347 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 67.9,
                        totalRankings = 3070,
                        source = "Archon.gg Meta Builds (67.9% popularity, 3,070 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 57.8,
                        totalRankings = 26336,
                        source = "Archon.gg Meta Builds (57.8% popularity, 26,336 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.6,
                        totalRankings = 2019,
                        source = "Archon.gg Meta Builds (44.6% popularity, 2,019 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 33.3,
                        totalRankings = 11736,
                        source = "Archon.gg Meta Builds (33.3% popularity, 11,736 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.9,
                        totalRankings = 7410,
                        source = "Archon.gg Meta Builds (31.9% popularity, 7,410 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.7,
                        totalRankings = 8694,
                        source = "Archon.gg Meta Builds (24.7% popularity, 8,694 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 60.3,
                        totalRankings = 10080,
                        source = "Archon.gg Meta Builds (60.3% popularity, 10,080 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.4,
                        totalRankings = 11188,
                        source = "Archon.gg Meta Builds (34.4% popularity, 11,188 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 11.9,
                        totalRankings = 8923,
                        source = "Archon.gg Meta Builds (11.9% popularity, 8,923 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 65.4,
                        totalRankings = 33528,
                        source = "Archon.gg Meta Builds (65.4% popularity, 33,528 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.3,
                        totalRankings = 3666,
                        source = "Archon.gg Meta Builds (8.3% popularity, 3,666 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 35.7,
                        totalRankings = 18442,
                        source = "Archon.gg Meta Builds (35.7% popularity, 18,442 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 49.9,
                        totalRankings = 16973,
                        source = "Archon.gg Meta Builds (49.9% popularity, 16,973 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.5,
                        totalRankings = 12043,
                        source = "Archon.gg Meta Builds (70.5% popularity, 12,043 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 88.2,
                        totalRankings = 2624,
                        source = "Archon.gg Meta Builds (88.2% popularity, 2,624 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.8,
                        totalRankings = 5109,
                        source = "Archon.gg Meta Builds (56.8% popularity, 5,109 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 25.2,
                        totalRankings = 19250,
                        source = "Archon.gg Meta Builds (25.2% popularity, 19,250 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 66.2,
                        totalRankings = 4660,
                        source = "Archon.gg Meta Builds (66.2% popularity, 4,660 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 13.5,
                        totalRankings = 27673,
                        source = "Archon.gg Meta Builds (13.5% popularity, 27,673 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.8,
                        totalRankings = 2775,
                        source = "Archon.gg Meta Builds (17.8% popularity, 2,775 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.1,
                        totalRankings = 10668,
                        source = "Archon.gg Meta Builds (77.1% popularity, 10,668 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.4,
                        totalRankings = 23824,
                        source = "Archon.gg Meta Builds (35.4% popularity, 23,824 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 58.4,
                        totalRankings = 4734,
                        source = "Archon.gg Meta Builds (58.4% popularity, 4,734 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 57.3,
                        totalRankings = 19126,
                        source = "Archon.gg Meta Builds (57.3% popularity, 19,126 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 22.7,
                        totalRankings = 11842,
                        source = "Archon.gg Meta Builds (22.7% popularity, 11,842 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 61.2,
                        totalRankings = 1800,
                        source = "Archon.gg Meta Builds (61.2% popularity, 1,800 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 78.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (78.1% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 33.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.6% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 58.2,
                        totalRankings = 2133,
                        source = "Archon.gg Meta Builds (58.2% popularity, 2,133 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 28.0,
                        totalRankings = 744,
                        source = "Archon.gg Meta Builds (28.0% popularity, 744 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUs0MGzMAzyYZmZwwMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 40.6,
                        totalRankings = 1170,
                        source = "Archon.gg Meta Builds (40.6% popularity, 1,170 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 79.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.5% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 15.1,
                        totalRankings = 291,
                        source = "Archon.gg Meta Builds (15.1% popularity, 291 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.1,
                        totalRankings = 1309,
                        source = "Archon.gg Meta Builds (22.1% popularity, 1,309 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 32.9,
                        totalRankings = 1528,
                        source = "Archon.gg Meta Builds (32.9% popularity, 1,528 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 43.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.8% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 17.5,
                        totalRankings = 429,
                        source = "Archon.gg Meta Builds (17.5% popularity, 429 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 87.4,
                        totalRankings = 1314,
                        source = "Archon.gg Meta Builds (87.4% popularity, 1,314 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 75.8,
                        totalRankings = 1642,
                        source = "Archon.gg Meta Builds (75.8% popularity, 1,642 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 50.2,
                        totalRankings = 209,
                        source = "Archon.gg Meta Builds (50.2% popularity, 209 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 69.0,
                        totalRankings = 2839,
                        source = "Archon.gg Meta Builds (69.0% popularity, 2,839 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 43.1,
                        totalRankings = 334,
                        source = "Archon.gg Meta Builds (43.1% popularity, 334 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 51.1,
                        totalRankings = 973,
                        source = "Archon.gg Meta Builds (51.1% popularity, 973 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGmx2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 35.0,
                        totalRankings = 1052,
                        source = "Archon.gg Meta Builds (35.0% popularity, 1,052 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 54.1,
                        totalRankings = 1069,
                        source = "Archon.gg Meta Builds (54.1% popularity, 1,069 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 78.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (78.3% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 40.7,
                        totalRankings = 1223,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,223 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 10.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (10.5% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 84.2,
                        totalRankings = 1419,
                        source = "Archon.gg Meta Builds (84.2% popularity, 1,419 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzYMLMmBjBLbMTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 5.9,
                        totalRankings = 119,
                        source = "Archon.gg Meta Builds (5.9% popularity, 119 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.8,
                        totalRankings = 1845,
                        source = "Archon.gg Meta Builds (40.8% popularity, 1,845 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 64.0,
                        totalRankings = 1713,
                        source = "Archon.gg Meta Builds (64.0% popularity, 1,713 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 78.7,
                        totalRankings = 1421,
                        source = "Archon.gg Meta Builds (78.7% popularity, 1,421 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 92.3,
                        totalRankings = 378,
                        source = "Archon.gg Meta Builds (92.3% popularity, 378 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.5,
                        totalRankings = 897,
                        source = "Archon.gg Meta Builds (57.5% popularity, 897 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 48.6,
                        totalRankings = 1887,
                        source = "Archon.gg Meta Builds (48.6% popularity, 1,887 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 78.0,
                        totalRankings = 624,
                        source = "Archon.gg Meta Builds (78.0% popularity, 624 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.3,
                        totalRankings = 1644,
                        source = "Archon.gg Meta Builds (17.3% popularity, 1,644 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 27.9,
                        totalRankings = 86,
                        source = "Archon.gg Meta Builds (27.9% popularity, 86 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 79.4,
                        totalRankings = 170,
                        source = "Archon.gg Meta Builds (79.4% popularity, 170 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 52.8,
                        totalRankings = 3410,
                        source = "Archon.gg Meta Builds (52.8% popularity, 3,410 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 61.6,
                        totalRankings = 263,
                        source = "Archon.gg Meta Builds (61.6% popularity, 263 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 55.0,
                        totalRankings = 1736,
                        source = "Archon.gg Meta Builds (55.0% popularity, 1,736 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.5,
                        totalRankings = 1032,
                        source = "Archon.gg Meta Builds (23.5% popularity, 1,032 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 61.0,
                        totalRankings = 29675,
                        source = "Archon.gg Meta Builds (61.0% popularity, 29,675 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 22.9,
                        totalRankings = 6577,
                        source = "Archon.gg Meta Builds (22.9% popularity, 6,577 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.6,
                        totalRankings = 6158,
                        source = "Archon.gg Meta Builds (20.6% popularity, 6,158 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 23.9,
                        totalRankings = 28249,
                        source = "Archon.gg Meta Builds (23.9% popularity, 28,249 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 33.0,
                        totalRankings = 8252,
                        source = "Archon.gg Meta Builds (33.0% popularity, 8,252 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 26.9,
                        totalRankings = 14044,
                        source = "Archon.gg Meta Builds (26.9% popularity, 14,044 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 18.0,
                        totalRankings = 6676,
                        source = "Archon.gg Meta Builds (18.0% popularity, 6,676 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 19.2,
                        totalRankings = 4162,
                        source = "Archon.gg Meta Builds (19.2% popularity, 4,162 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.8,
                        totalRankings = 17794,
                        source = "Archon.gg Meta Builds (25.8% popularity, 17,794 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 19.9,
                        totalRankings = 10872,
                        source = "Archon.gg Meta Builds (19.9% popularity, 10,872 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.3,
                        totalRankings = 5292,
                        source = "Archon.gg Meta Builds (40.3% popularity, 5,292 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.1,
                        totalRankings = 1521,
                        source = "Archon.gg Meta Builds (12.1% popularity, 1,521 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 31.2,
                        totalRankings = 22544,
                        source = "Archon.gg Meta Builds (31.2% popularity, 22,544 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                        usage = 23.1,
                        totalRankings = 16853,
                        source = "Archon.gg Meta Builds (23.1% popularity, 16,853 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 30.8,
                        totalRankings = 2977,
                        source = "Archon.gg Meta Builds (30.8% popularity, 2,977 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 52.0,
                        totalRankings = 24474,
                        source = "Archon.gg Meta Builds (52.0% popularity, 24,474 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.6,
                        totalRankings = 1914,
                        source = "Archon.gg Meta Builds (40.6% popularity, 1,914 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 26.1,
                        totalRankings = 11391,
                        source = "Archon.gg Meta Builds (26.1% popularity, 11,391 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.6,
                        totalRankings = 7092,
                        source = "Archon.gg Meta Builds (30.6% popularity, 7,092 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 29.2,
                        totalRankings = 8286,
                        source = "Archon.gg Meta Builds (29.2% popularity, 8,286 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 36.2,
                        totalRankings = 9569,
                        source = "Archon.gg Meta Builds (36.2% popularity, 9,569 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.6,
                        totalRankings = 10452,
                        source = "Archon.gg Meta Builds (34.6% popularity, 10,452 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.9,
                        totalRankings = 8363,
                        source = "Archon.gg Meta Builds (5.9% popularity, 8,363 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 27.4,
                        totalRankings = 31721,
                        source = "Archon.gg Meta Builds (27.4% popularity, 31,721 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.6,
                        totalRankings = 3389,
                        source = "Archon.gg Meta Builds (8.6% popularity, 3,389 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 35.2,
                        totalRankings = 17634,
                        source = "Archon.gg Meta Builds (35.2% popularity, 17,634 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 47.3,
                        totalRankings = 16036,
                        source = "Archon.gg Meta Builds (47.3% popularity, 16,036 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZDWmBAAAAAg22mZGMzYMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 56.6,
                        totalRankings = 10014,
                        source = "Archon.gg Meta Builds (56.6% popularity, 10,014 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 57.8,
                        totalRankings = 2607,
                        source = "Archon.gg Meta Builds (57.8% popularity, 2,607 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.3,
                        totalRankings = 5990,
                        source = "Archon.gg Meta Builds (50.3% popularity, 5,990 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 18.6,
                        totalRankings = 18217,
                        source = "Archon.gg Meta Builds (18.6% popularity, 18,217 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 33.7,
                        totalRankings = 4420,
                        source = "Archon.gg Meta Builds (33.7% popularity, 4,420 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 14.4,
                        totalRankings = 25922,
                        source = "Archon.gg Meta Builds (14.4% popularity, 25,922 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.1,
                        totalRankings = 2452,
                        source = "Archon.gg Meta Builds (17.1% popularity, 2,452 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 28.0,
                        totalRankings = 12431,
                        source = "Archon.gg Meta Builds (28.0% popularity, 12,431 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 31.5,
                        totalRankings = 20465,
                        source = "Archon.gg Meta Builds (31.5% popularity, 20,465 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 18.0,
                        totalRankings = 4307,
                        source = "Archon.gg Meta Builds (18.0% popularity, 4,307 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 37.6,
                        totalRankings = 18210,
                        source = "Archon.gg Meta Builds (37.6% popularity, 18,210 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 14.7,
                        totalRankings = 11112,
                        source = "Archon.gg Meta Builds (14.7% popularity, 11,112 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMDzMjxYZYmZmZGmxIzYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 79.6,
                        totalRankings = 8416,
                        source = "Archon.gg Meta Builds (79.6% popularity, 8,416 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 30.5,
                        totalRankings = 1307,
                        source = "Archon.gg Meta Builds (30.5% popularity, 1,307 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 27.3,
                        totalRankings = 1735,
                        source = "Archon.gg Meta Builds (27.3% popularity, 1,735 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 35.8,
                        totalRankings = 6352,
                        source = "Archon.gg Meta Builds (35.8% popularity, 6,352 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 16.6,
                        totalRankings = 1587,
                        source = "Archon.gg Meta Builds (16.6% popularity, 1,587 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBYWYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALMjBYzYGD",
                        usage = 71.2,
                        totalRankings = 3121,
                        source = "Archon.gg Meta Builds (71.2% popularity, 3,121 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2gxMjaGzyYZmZMmxMAAAAAAwAAAAA0MLzyMz2AAWAzAwCDG",
                        usage = 22.3,
                        totalRankings = 1383,
                        source = "Archon.gg Meta Builds (22.3% popularity, 1,383 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 9.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (9.5% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.6,
                        totalRankings = 4600,
                        source = "Archon.gg Meta Builds (23.6% popularity, 4,600 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGmBMYMTzYmJjxyMzMzwYmtZAzYmtxMzyYGMDMjZgNwCYGmALglhB",
                        usage = 11.7,
                        totalRankings = 3171,
                        source = "Archon.gg Meta Builds (11.7% popularity, 3,171 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.3,
                        totalRankings = 2121,
                        source = "Archon.gg Meta Builds (41.3% popularity, 2,121 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.5,
                        totalRankings = 834,
                        source = "Archon.gg Meta Builds (13.5% popularity, 834 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 35.3,
                        totalRankings = 3511,
                        source = "Archon.gg Meta Builds (35.3% popularity, 3,511 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                        usage = 49.1,
                        totalRankings = 4232,
                        source = "Archon.gg Meta Builds (49.1% popularity, 4,232 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 19.4,
                        totalRankings = 964,
                        source = "Archon.gg Meta Builds (19.4% popularity, 964 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 73.1,
                        totalRankings = 7932,
                        source = "Archon.gg Meta Builds (73.1% popularity, 7,932 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 40.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.2% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 40.1,
                        totalRankings = 1897,
                        source = "Archon.gg Meta Builds (40.1% popularity, 1,897 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.8,
                        totalRankings = 2481,
                        source = "Archon.gg Meta Builds (32.8% popularity, 2,481 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 60.9,
                        totalRankings = 2376,
                        source = "Archon.gg Meta Builds (60.9% popularity, 2,376 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzYWmZMzMDAAAAAAAAAAALLDjYmBmBWWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 30.7,
                        totalRankings = 2016,
                        source = "Archon.gg Meta Builds (30.7% popularity, 2,016 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.7,
                        totalRankings = 2915,
                        source = "Archon.gg Meta Builds (38.7% popularity, 2,915 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 11.0,
                        totalRankings = 2118,
                        source = "Archon.gg Meta Builds (11.0% popularity, 2,118 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 27.4,
                        totalRankings = 5453,
                        source = "Archon.gg Meta Builds (27.4% popularity, 5,453 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmlZZ2GMzMYWYYMGDzyyDYmGilZAmZBLEGzyAM2wCAAA",
                        usage = 4.0,
                        totalRankings = 555,
                        source = "Archon.gg Meta Builds (4.0% popularity, 555 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 35.4,
                        totalRankings = 5355,
                        source = "Archon.gg Meta Builds (35.4% popularity, 5,355 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 49.4,
                        totalRankings = 3915,
                        source = "Archon.gg Meta Builds (49.4% popularity, 3,915 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZZwyMAAAAAA022MzgZGMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 77.5,
                        totalRankings = 2241,
                        source = "Archon.gg Meta Builds (77.5% popularity, 2,241 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 64.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (64.4% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 49.9,
                        totalRankings = 2347,
                        source = "Archon.gg Meta Builds (49.9% popularity, 2,347 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 27.7,
                        totalRankings = 4256,
                        source = "Archon.gg Meta Builds (27.7% popularity, 4,256 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 53.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.1% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 6444,
                        source = "Archon.gg Meta Builds (19.3% popularity, 6,444 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 14.3,
                        totalRankings = 615,
                        source = "Archon.gg Meta Builds (14.3% popularity, 615 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 46.4,
                        totalRankings = 3803,
                        source = "Archon.gg Meta Builds (46.4% popularity, 3,803 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 43.3,
                        totalRankings = 4602,
                        source = "Archon.gg Meta Builds (43.3% popularity, 4,602 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwiZMsBDMDb0AWA",
                        usage = 32.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (32.0% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 30.0,
                        totalRankings = 4375,
                        source = "Archon.gg Meta Builds (30.0% popularity, 4,375 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 24.2,
                        totalRankings = 2887,
                        source = "Archon.gg Meta Builds (24.2% popularity, 2,887 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 63.8,
                        totalRankings = 28495,
                        source = "Archon.gg Meta Builds (63.8% popularity, 28,495 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 23.1,
                        totalRankings = 6130,
                        source = "Archon.gg Meta Builds (23.1% popularity, 6,130 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.0,
                        totalRankings = 5779,
                        source = "Archon.gg Meta Builds (20.0% popularity, 5,779 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 27.3,
                        totalRankings = 26190,
                        source = "Archon.gg Meta Builds (27.3% popularity, 26,190 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.8,
                        totalRankings = 7416,
                        source = "Archon.gg Meta Builds (30.8% popularity, 7,416 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 12.6,
                        totalRankings = 13250,
                        source = "Archon.gg Meta Builds (12.6% popularity, 13,250 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 21.0,
                        totalRankings = 6272,
                        source = "Archon.gg Meta Builds (21.0% popularity, 6,272 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.8,
                        totalRankings = 3584,
                        source = "Archon.gg Meta Builds (20.8% popularity, 3,584 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.1,
                        totalRankings = 16075,
                        source = "Archon.gg Meta Builds (25.1% popularity, 16,075 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 14.7,
                        totalRankings = 10353,
                        source = "Archon.gg Meta Builds (14.7% popularity, 10,353 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.5,
                        totalRankings = 4928,
                        source = "Archon.gg Meta Builds (39.5% popularity, 4,928 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.6,
                        totalRankings = 1473,
                        source = "Archon.gg Meta Builds (12.6% popularity, 1,473 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 38.6,
                        totalRankings = 20679,
                        source = "Archon.gg Meta Builds (38.6% popularity, 20,679 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMjZ0MjxwMDjZMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 14.7,
                        totalRankings = 15433,
                        source = "Archon.gg Meta Builds (14.7% popularity, 15,433 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 27.6,
                        totalRankings = 2762,
                        source = "Archon.gg Meta Builds (27.6% popularity, 2,762 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 52.9,
                        totalRankings = 23209,
                        source = "Archon.gg Meta Builds (52.9% popularity, 23,209 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.5,
                        totalRankings = 1702,
                        source = "Archon.gg Meta Builds (40.5% popularity, 1,702 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 28.1,
                        totalRankings = 10567,
                        source = "Archon.gg Meta Builds (28.1% popularity, 10,567 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.2,
                        totalRankings = 6619,
                        source = "Archon.gg Meta Builds (30.2% popularity, 6,619 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.1,
                        totalRankings = 7593,
                        source = "Archon.gg Meta Builds (27.1% popularity, 7,593 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 32.3,
                        totalRankings = 9069,
                        source = "Archon.gg Meta Builds (32.3% popularity, 9,069 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.4,
                        totalRankings = 9579,
                        source = "Archon.gg Meta Builds (33.4% popularity, 9,579 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.6,
                        totalRankings = 7478,
                        source = "Archon.gg Meta Builds (6.6% popularity, 7,478 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 22.5,
                        totalRankings = 29462,
                        source = "Archon.gg Meta Builds (22.5% popularity, 29,462 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.1,
                        totalRankings = 2785,
                        source = "Archon.gg Meta Builds (9.1% popularity, 2,785 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 35.7,
                        totalRankings = 16301,
                        source = "Archon.gg Meta Builds (35.7% popularity, 16,301 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 46.8,
                        totalRankings = 15359,
                        source = "Archon.gg Meta Builds (46.8% popularity, 15,359 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 46.5,
                        totalRankings = 8953,
                        source = "Archon.gg Meta Builds (46.5% popularity, 8,953 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 58.6,
                        totalRankings = 2373,
                        source = "Archon.gg Meta Builds (58.6% popularity, 2,373 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 45.6,
                        totalRankings = 6328,
                        source = "Archon.gg Meta Builds (45.6% popularity, 6,328 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 26.3,
                        totalRankings = 17357,
                        source = "Archon.gg Meta Builds (26.3% popularity, 17,357 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 36.1,
                        totalRankings = 4178,
                        source = "Archon.gg Meta Builds (36.1% popularity, 4,178 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 13.3,
                        totalRankings = 23545,
                        source = "Archon.gg Meta Builds (13.3% popularity, 23,545 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 27.9,
                        totalRankings = 2228,
                        source = "Archon.gg Meta Builds (27.9% popularity, 2,228 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 32.2,
                        totalRankings = 9530,
                        source = "Archon.gg Meta Builds (32.2% popularity, 9,530 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 21.8,
                        totalRankings = 21111,
                        source = "Archon.gg Meta Builds (21.8% popularity, 21,111 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 15.0,
                        totalRankings = 3790,
                        source = "Archon.gg Meta Builds (15.0% popularity, 3,790 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 29.9,
                        totalRankings = 17113,
                        source = "Archon.gg Meta Builds (29.9% popularity, 17,113 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 14.8,
                        totalRankings = 10182,
                        source = "Archon.gg Meta Builds (14.8% popularity, 10,182 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 88.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (88.2% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGzYAAAAAAAAYmZmNmZMDAY2mhZMbzMzgZAWMLGGYgZjhGLYAmBwA",
                        usage = 38.5,
                        totalRankings = 122,
                        source = "Archon.gg Meta Builds (38.5% popularity, 122 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMMzYmZmZGLzYmZmmhhxwYAAAAgZmZmZmZmZzMzYAAAMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 20.8,
                        totalRankings = 583,
                        source = "Archon.gg Meta Builds (20.8% popularity, 583 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 52.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (52.2% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmZwC",
                        usage = 8.0,
                        totalRankings = 138,
                        source = "Archon.gg Meta Builds (8.0% popularity, 138 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMmZZmtZmlxMjZmFjxwMjNswAMAbbjFMNzsMAAAAYzMjxAbGDD",
                        usage = 57.1,
                        totalRankings = 924,
                        source = "Archon.gg Meta Builds (57.1% popularity, 924 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2MYmZUzYWGLzMjhxMAAAAAAwAAAAA0MLzyMz2AAWAzMAWYwA",
                        usage = 49.9,
                        totalRankings = 359,
                        source = "Archon.gg Meta Builds (49.9% popularity, 359 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 13.5,
                        totalRankings = 74,
                        source = "Archon.gg Meta Builds (13.5% popularity, 74 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZzMmmZAmlxyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.2,
                        totalRankings = 737,
                        source = "Archon.gg Meta Builds (18.2% popularity, 737 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBMGDTDzMZ2GLDmZYMzyMgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 13.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (13.8% popularity, 1,000 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 45.2,
                        totalRankings = 733,
                        source = "Archon.gg Meta Builds (45.2% popularity, 733 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 19.4,
                        totalRankings = 371,
                        source = "Archon.gg Meta Builds (19.4% popularity, 371 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 63.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (63.1% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAAjZMzYmZMjMzMGzMDMDLLzgtxMDz22mZmZMLmZYmZGLbGzyAD",
                        usage = 57.0,
                        totalRankings = 832,
                        source = "Archon.gg Meta Builds (57.0% popularity, 832 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmZMDzwYYmhxMssMD2AAAAAgBAA",
                        usage = 49.0,
                        totalRankings = 49,
                        source = "Archon.gg Meta Builds (49.0% popularity, 49 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbGjZMzMLwYmhx0MjBAAAAAADAYmZaZ22mBAwGAAAAAAbAYMYmlZZGzMGzwMzMzYGzyYA",
                        usage = 77.9,
                        totalRankings = 1181,
                        source = "Archon.gg Meta Builds (77.9% popularity, 1,181 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAALzsNDmxDMzsAzMzw0YmxAAAAAAgBAMzMtMLbzAAsZMDGzMmZMLmlxwMDzsNjtZWGGAAAAAAA",
                        usage = 34.8,
                        totalRankings = 66,
                        source = "Archon.gg Meta Builds (34.8% popularity, 66 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbsZMmhZmFDjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsNLAAAwCAAAAAAmNAAAAAAAA",
                        usage = 61.0,
                        totalRankings = 123,
                        source = "Archon.gg Meta Builds (61.0% popularity, 123 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 33.6,
                        totalRankings = 880,
                        source = "Archon.gg Meta Builds (33.6% popularity, 880 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 49.9,
                        totalRankings = 651,
                        source = "Archon.gg Meta Builds (49.9% popularity, 651 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 33.8,
                        totalRankings = 634,
                        source = "Archon.gg Meta Builds (33.8% popularity, 634 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.4,
                        totalRankings = 850,
                        source = "Archon.gg Meta Builds (38.4% popularity, 850 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMjZmx2MmxMGDDAAwAAAAAAAQbZMLGmZGjxMbtBAMAAzgtBAAAAMzsst02MjFzAAMDzwYA",
                        usage = 10.1,
                        totalRankings = 414,
                        source = "Archon.gg Meta Builds (10.1% popularity, 414 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 39.8,
                        totalRankings = 802,
                        source = "Archon.gg Meta Builds (39.8% popularity, 802 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZYGjxMDzYmtZmZmZMDAAAAAAAAAAmFLz2gZmBzCjZYGDW8Abz0YilBwMLYjwY2GgxGWAAA",
                        usage = 20.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (20.0% popularity, 10 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLbwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.2,
                        totalRankings = 655,
                        source = "Archon.gg Meta Builds (41.2% popularity, 655 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 48.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (48.8% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 75.9,
                        totalRankings = 187,
                        source = "Archon.gg Meta Builds (75.9% popularity, 187 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAgtZmZYmZsALz2AAAAwMzAgxsZYgBmFWoF2MD",
                        usage = 47.4,
                        totalRankings = 78,
                        source = "Archon.gg Meta Builds (47.4% popularity, 78 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2GzMzYbmZmZmZMglZbAAAAYGMAGzmhBGYWYhWsBD",
                        usage = 44.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.8% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmlpZAbMzMNMzMjhlZmZGmthZZMzYmxMzGA",
                        usage = 55.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.5% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZglFzMzMMjZ2mxyMzEsMMmZAAGD",
                        usage = 81.7,
                        totalRankings = 191,
                        source = "Archon.gg Meta Builds (81.7% popularity, 191 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 31.2,
                        totalRankings = 762,
                        source = "Archon.gg Meta Builds (31.2% popularity, 762 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 27.5,
                        totalRankings = 138,
                        source = "Archon.gg Meta Builds (27.5% popularity, 138 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDz2AAAAAAAAAAYeAwYGDLwALDL0wCzMmx2YmtZMzMjxMGmZmZmBmBAAA",
                        usage = 75.0,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (75.0% popularity, 12 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.6,
                        totalRankings = 1283,
                        source = "Archon.gg Meta Builds (55.6% popularity, 1,283 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMMDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 21.7,
                        totalRankings = 60,
                        source = "Archon.gg Meta Builds (21.7% popularity, 60 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsMmhxygZWYmZGzwMMzy2MjZmZDzMzYYmZWGGMjBAAAhB2glFjGzAYWgxCA",
                        usage = 27.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.3% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMmZG2mZGGYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNmxA",
                        usage = 22.3,
                        totalRankings = 807,
                        source = "Archon.gg Meta Builds (22.3% popularity, 807 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 66.4,
                        totalRankings = 28315,
                        source = "Archon.gg Meta Builds (66.4% popularity, 28,315 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYmZ2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 23.8,
                        totalRankings = 5854,
                        source = "Archon.gg Meta Builds (23.8% popularity, 5,854 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 22.4,
                        totalRankings = 5563,
                        source = "Archon.gg Meta Builds (22.4% popularity, 5,563 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 28.3,
                        totalRankings = 26699,
                        source = "Archon.gg Meta Builds (28.3% popularity, 26,699 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 25.5,
                        totalRankings = 7252,
                        source = "Archon.gg Meta Builds (25.5% popularity, 7,252 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 83.4,
                        totalRankings = 13043,
                        source = "Archon.gg Meta Builds (83.4% popularity, 13,043 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 52.5,
                        totalRankings = 5848,
                        source = "Archon.gg Meta Builds (52.5% popularity, 5,848 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 13.7,
                        totalRankings = 3422,
                        source = "Archon.gg Meta Builds (13.7% popularity, 3,422 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 26.0,
                        totalRankings = 16172,
                        source = "Archon.gg Meta Builds (26.0% popularity, 16,172 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGzMmlZGmBMYMTzYmpZ2GLDGGjZWmBMjZ2GzMGzgZgZMDsA2AzwEYBsMMA",
                        usage = 11.3,
                        totalRankings = 10009,
                        source = "Archon.gg Meta Builds (11.3% popularity, 10,009 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.9,
                        totalRankings = 4969,
                        source = "Archon.gg Meta Builds (39.9% popularity, 4,969 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 11.9,
                        totalRankings = 1506,
                        source = "Archon.gg Meta Builds (11.9% popularity, 1,506 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 36.6,
                        totalRankings = 19781,
                        source = "Archon.gg Meta Builds (36.6% popularity, 19,781 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 33.4,
                        totalRankings = 15830,
                        source = "Archon.gg Meta Builds (33.4% popularity, 15,830 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 16.1,
                        totalRankings = 2626,
                        source = "Archon.gg Meta Builds (16.1% popularity, 2,626 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 67.3,
                        totalRankings = 22362,
                        source = "Archon.gg Meta Builds (67.3% popularity, 22,362 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 38.3,
                        totalRankings = 2718,
                        source = "Archon.gg Meta Builds (38.3% popularity, 2,718 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 24.2,
                        totalRankings = 10252,
                        source = "Archon.gg Meta Builds (24.2% popularity, 10,252 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 28.3,
                        totalRankings = 6649,
                        source = "Archon.gg Meta Builds (28.3% popularity, 6,649 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 29.1,
                        totalRankings = 7637,
                        source = "Archon.gg Meta Builds (29.1% popularity, 7,637 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 22.6,
                        totalRankings = 9016,
                        source = "Archon.gg Meta Builds (22.6% popularity, 9,016 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.5,
                        totalRankings = 9720,
                        source = "Archon.gg Meta Builds (34.5% popularity, 9,720 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.9,
                        totalRankings = 7333,
                        source = "Archon.gg Meta Builds (6.9% popularity, 7,333 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                        usage = 26.6,
                        totalRankings = 28774,
                        source = "Archon.gg Meta Builds (26.6% popularity, 28,774 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.8,
                        totalRankings = 2771,
                        source = "Archon.gg Meta Builds (7.8% popularity, 2,771 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 34.9,
                        totalRankings = 16346,
                        source = "Archon.gg Meta Builds (34.9% popularity, 16,346 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 31.2,
                        totalRankings = 14919,
                        source = "Archon.gg Meta Builds (31.2% popularity, 14,919 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 70.0,
                        totalRankings = 9554,
                        source = "Archon.gg Meta Builds (70.0% popularity, 9,554 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 60.5,
                        totalRankings = 2636,
                        source = "Archon.gg Meta Builds (60.5% popularity, 2,636 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 27.9,
                        totalRankings = 5211,
                        source = "Archon.gg Meta Builds (27.9% popularity, 5,211 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 26.7,
                        totalRankings = 16652,
                        source = "Archon.gg Meta Builds (26.7% popularity, 16,652 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 42.7,
                        totalRankings = 3962,
                        source = "Archon.gg Meta Builds (42.7% popularity, 3,962 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 16.7,
                        totalRankings = 23691,
                        source = "Archon.gg Meta Builds (16.7% popularity, 23,691 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 36.0,
                        totalRankings = 3368,
                        source = "Archon.gg Meta Builds (36.0% popularity, 3,368 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 19.9,
                        totalRankings = 6832,
                        source = "Archon.gg Meta Builds (19.9% popularity, 6,832 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 37.3,
                        totalRankings = 22070,
                        source = "Archon.gg Meta Builds (37.3% popularity, 22,070 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 14.3,
                        totalRankings = 4063,
                        source = "Archon.gg Meta Builds (14.3% popularity, 4,063 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsMmhxyYmZWYmZGzghZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                        usage = 29.8,
                        totalRankings = 16773,
                        source = "Archon.gg Meta Builds (29.8% popularity, 16,773 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 16.4,
                        totalRankings = 10162,
                        source = "Archon.gg Meta Builds (16.4% popularity, 10,162 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 72.5,
                        totalRankings = 459,
                        source = "Archon.gg Meta Builds (72.5% popularity, 459 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 88.9,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (88.9% popularity, 9 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzMzMGLzYmZmmZMjxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 33.1,
                        totalRankings = 169,
                        source = "Archon.gg Meta Builds (33.1% popularity, 169 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 54.3,
                        totalRankings = 521,
                        source = "Archon.gg Meta Builds (54.3% popularity, 521 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGLjxMjtZYmZMDmZWmZmNzMmZwAAAAAsMLmxwsw0AzMjxG",
                        usage = 22.2,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (22.2% popularity, 18 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 95.0,
                        totalRankings = 221,
                        source = "Archon.gg Meta Builds (95.0% popularity, 221 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2MMMjaGzyYZmZMmxAAAAAAAGAAAAgmZZWmZ2GAwCYGAWMDG",
                        usage = 72.5,
                        totalRankings = 40,
                        source = "Archon.gg Meta Builds (72.5% popularity, 40 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMYmZMGLeghZmFLDYDGNZamZWMLzMjxMMAAAAAAMMDAAAA0MbzyMzyAAYhZGAWMDG",
                        usage = 15.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (15.0% popularity, 20 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAALGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMzMDwsBaA",
                        usage = 19.4,
                        totalRankings = 402,
                        source = "Archon.gg Meta Builds (19.4% popularity, 402 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMzgBMYMTzYmpZ2GLzwwYMz2MgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 28.7,
                        totalRankings = 481,
                        source = "Archon.gg Meta Builds (28.7% popularity, 481 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.7,
                        totalRankings = 487,
                        source = "Archon.gg Meta Builds (41.7% popularity, 487 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 10.1,
                        totalRankings = 199,
                        source = "Archon.gg Meta Builds (10.1% popularity, 199 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 46.2,
                        totalRankings = 78,
                        source = "Archon.gg Meta Builds (46.2% popularity, 78 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 76.5,
                        totalRankings = 596,
                        source = "Archon.gg Meta Builds (76.5% popularity, 596 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMGWgNYGGawyMzsMzMzMmxYmZmBjxMjZDAAAAAAoZMjZMzMMDGGDzMMmxsYmhNAAAAAYAA",
                        usage = 66.7,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (66.7% popularity, 3 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAMbzMjZMjZBmZmhx0MjBAAAAAADAYmZaZ2WmBAwGAAAAAAAwYwMLzyMmZMmhZmZmxMmlxA",
                        usage = 63.8,
                        totalRankings = 265,
                        source = "Archon.gg Meta Builds (63.8% popularity, 265 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMjZMLwMzMMNmZWGAAAAAAMAgZmplZZZGAgNjZwYmxMjZxsMmxMDzsNDzsgBAAAAAAA",
                        usage = 43.6,
                        totalRankings = 713,
                        source = "Archon.gg Meta Builds (43.6% popularity, 713 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmNDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 43.8,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (43.8% popularity, 16 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 35.5,
                        totalRankings = 352,
                        source = "Archon.gg Meta Builds (35.5% popularity, 352 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 80.3,
                        totalRankings = 254,
                        source = "Archon.gg Meta Builds (80.3% popularity, 254 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 70.3,
                        totalRankings = 91,
                        source = "Archon.gg Meta Builds (70.3% popularity, 91 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 30.9,
                        totalRankings = 433,
                        source = "Archon.gg Meta Builds (30.9% popularity, 433 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMzMzM2mxMzMYYAAAGAAAAAAASmZWMMzMGjxWbAADAgBbDYAAAAzMLbLtNzYxADAzMGGG",
                        usage = 5.6,
                        totalRankings = 108,
                        source = "Archon.gg Meta Builds (5.6% popularity, 108 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 64.6,
                        totalRankings = 144,
                        source = "Archon.gg Meta Builds (64.6% popularity, 144 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZYGjxMDzYmtZmZmZMDAAAAAAAAAAmFLz2gZmBzCjZYGDW8Abz0YilBwMLYjwY2GgxGWAAA",
                        usage = 66.7,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (66.7% popularity, 3 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMMzMjBLbwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 36.1,
                        totalRankings = 460,
                        source = "Archon.gg Meta Builds (36.1% popularity, 460 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 58.8,
                        totalRankings = 534,
                        source = "Archon.gg Meta Builds (58.8% popularity, 534 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 93.5,
                        totalRankings = 107,
                        source = "Archon.gg Meta Builds (93.5% popularity, 107 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 76.3,
                        totalRankings = 59,
                        source = "Archon.gg Meta Builds (76.3% popularity, 59 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGzYbmZmZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
                        usage = 43.8,
                        totalRankings = 338,
                        source = "Archon.gg Meta Builds (43.8% popularity, 338 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmZY2GmlxMjZGzMbA",
                        usage = 56.2,
                        totalRankings = 479,
                        source = "Archon.gg Meta Builds (56.2% popularity, 479 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAz2kZGjllxMzMMjZ2wyMzkFWGGjBAYMA",
                        usage = 75.0,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (75.0% popularity, 12 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNGbzMzMZ2WMzMNmhZ2wyMjBjhZZMAAwA",
                        usage = 27.7,
                        totalRankings = 546,
                        source = "Archon.gg Meta Builds (27.7% popularity, 546 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 67.7,
                        totalRankings = 31,
                        source = "Archon.gg Meta Builds (67.7% popularity, 31 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 44.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.3% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmZmZMbLLjZAAAAGMNMzsMmhxyYmZsZmZwghBAAAAAAgZMbDGwWMgFzYYDGYG2ohhFA",
                        usage = 33.3,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (33.3% popularity, 9 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMaMMmlZmhxyAzCzMzwMjhZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                        usage = 52.8,
                        totalRankings = 231,
                        source = "Archon.gg Meta Builds (52.8% popularity, 231 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzsxMG",
                        usage = 16.3,
                        totalRankings = 369,
                        source = "Archon.gg Meta Builds (16.3% popularity, 369 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 40.4,
                        totalRankings = 24393,
                        source = "Archon.gg Meta Builds (40.4% popularity, 24,393 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.3,
                        totalRankings = 7218,
                        source = "Archon.gg Meta Builds (69.3% popularity, 7,218 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 22.9,
                        totalRankings = 5379,
                        source = "Archon.gg Meta Builds (22.9% popularity, 5,379 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 56.9,
                        totalRankings = 24008,
                        source = "Archon.gg Meta Builds (56.9% popularity, 24,008 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.5,
                        totalRankings = 6851,
                        source = "Archon.gg Meta Builds (38.5% popularity, 6,851 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 31.7,
                        totalRankings = 12152,
                        source = "Archon.gg Meta Builds (31.7% popularity, 12,152 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 76.8,
                        totalRankings = 5631,
                        source = "Archon.gg Meta Builds (76.8% popularity, 5,631 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.3,
                        totalRankings = 3224,
                        source = "Archon.gg Meta Builds (30.3% popularity, 3,224 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 26.1,
                        totalRankings = 14729,
                        source = "Archon.gg Meta Builds (26.1% popularity, 14,729 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 26.7,
                        totalRankings = 9703,
                        source = "Archon.gg Meta Builds (26.7% popularity, 9,703 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 37.2,
                        totalRankings = 4481,
                        source = "Archon.gg Meta Builds (37.2% popularity, 4,481 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.0,
                        totalRankings = 1435,
                        source = "Archon.gg Meta Builds (13.0% popularity, 1,435 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 75.9,
                        totalRankings = 18413,
                        source = "Archon.gg Meta Builds (75.9% popularity, 18,413 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.3,
                        totalRankings = 15198,
                        source = "Archon.gg Meta Builds (71.3% popularity, 15,198 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 64.8,
                        totalRankings = 2417,
                        source = "Archon.gg Meta Builds (64.8% popularity, 2,417 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 62.0,
                        totalRankings = 22211,
                        source = "Archon.gg Meta Builds (62.0% popularity, 22,211 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 43.7,
                        totalRankings = 1537,
                        source = "Archon.gg Meta Builds (43.7% popularity, 1,537 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 35.0,
                        totalRankings = 9237,
                        source = "Archon.gg Meta Builds (35.0% popularity, 9,237 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.5,
                        totalRankings = 6262,
                        source = "Archon.gg Meta Builds (33.5% popularity, 6,262 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 23.6,
                        totalRankings = 6999,
                        source = "Archon.gg Meta Builds (23.6% popularity, 6,999 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 58.0,
                        totalRankings = 8403,
                        source = "Archon.gg Meta Builds (58.0% popularity, 8,403 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.7,
                        totalRankings = 8850,
                        source = "Archon.gg Meta Builds (34.7% popularity, 8,850 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 9.0,
                        totalRankings = 6812,
                        source = "Archon.gg Meta Builds (9.0% popularity, 6,812 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 64.7,
                        totalRankings = 26243,
                        source = "Archon.gg Meta Builds (64.7% popularity, 26,243 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.5,
                        totalRankings = 2468,
                        source = "Archon.gg Meta Builds (9.5% popularity, 2,468 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 35.5,
                        totalRankings = 15216,
                        source = "Archon.gg Meta Builds (35.5% popularity, 15,216 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 40.6,
                        totalRankings = 14292,
                        source = "Archon.gg Meta Builds (40.6% popularity, 14,292 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.6,
                        totalRankings = 10320,
                        source = "Archon.gg Meta Builds (72.6% popularity, 10,320 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 88.7,
                        totalRankings = 2158,
                        source = "Archon.gg Meta Builds (88.7% popularity, 2,158 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.1,
                        totalRankings = 4328,
                        source = "Archon.gg Meta Builds (56.1% popularity, 4,328 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 27.7,
                        totalRankings = 16146,
                        source = "Archon.gg Meta Builds (27.7% popularity, 16,146 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 67.8,
                        totalRankings = 3657,
                        source = "Archon.gg Meta Builds (67.8% popularity, 3,657 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 14.9,
                        totalRankings = 21347,
                        source = "Archon.gg Meta Builds (14.9% popularity, 21,347 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.3,
                        totalRankings = 2143,
                        source = "Archon.gg Meta Builds (19.3% popularity, 2,143 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.2,
                        totalRankings = 8974,
                        source = "Archon.gg Meta Builds (77.2% popularity, 8,974 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.5,
                        totalRankings = 19318,
                        source = "Archon.gg Meta Builds (41.5% popularity, 19,318 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 56.6,
                        totalRankings = 3664,
                        source = "Archon.gg Meta Builds (56.6% popularity, 3,664 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 58.7,
                        totalRankings = 15371,
                        source = "Archon.gg Meta Builds (58.7% popularity, 15,371 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 20.5,
                        totalRankings = 9398,
                        source = "Archon.gg Meta Builds (20.5% popularity, 9,398 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 55.5,
                        totalRankings = 530,
                        source = "Archon.gg Meta Builds (55.5% popularity, 530 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 77.0,
                        totalRankings = 825,
                        source = "Archon.gg Meta Builds (77.0% popularity, 825 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 34.3,
                        totalRankings = 399,
                        source = "Archon.gg Meta Builds (34.3% popularity, 399 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 66.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (66.1% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMjMzMGDjZZmhZsNjZegZMzwYMzMbmZ2mZwAAAAAsMLmxwsx0AzMD2A",
                        usage = 10.4,
                        totalRankings = 77,
                        source = "Archon.gg Meta Builds (10.4% popularity, 77 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 57.6,
                        totalRankings = 443,
                        source = "Archon.gg Meta Builds (57.6% popularity, 443 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 88.8,
                        totalRankings = 331,
                        source = "Archon.gg Meta Builds (88.8% popularity, 331 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 19.6,
                        totalRankings = 56,
                        source = "Archon.gg Meta Builds (19.6% popularity, 56 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.0,
                        totalRankings = 623,
                        source = "Archon.gg Meta Builds (18.0% popularity, 623 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 37.3,
                        totalRankings = 903,
                        source = "Archon.gg Meta Builds (37.3% popularity, 903 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 44.6,
                        totalRankings = 684,
                        source = "Archon.gg Meta Builds (44.6% popularity, 684 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.8,
                        totalRankings = 269,
                        source = "Archon.gg Meta Builds (13.8% popularity, 269 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 87.8,
                        totalRankings = 320,
                        source = "Archon.gg Meta Builds (87.8% popularity, 320 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 73.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (73.3% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 34.4,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (34.4% popularity, 32 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 67.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (67.5% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbGMjHYMLGGzMMNmZMzAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 38.6,
                        totalRankings = 70,
                        source = "Archon.gg Meta Builds (38.6% popularity, 70 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 59.8,
                        totalRankings = 82,
                        source = "Archon.gg Meta Builds (59.8% popularity, 82 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 31.4,
                        totalRankings = 671,
                        source = "Archon.gg Meta Builds (31.4% popularity, 671 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 40.5,
                        totalRankings = 526,
                        source = "Archon.gg Meta Builds (40.5% popularity, 526 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 75.1,
                        totalRankings = 345,
                        source = "Archon.gg Meta Builds (75.1% popularity, 345 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 45.2,
                        totalRankings = 741,
                        source = "Archon.gg Meta Builds (45.2% popularity, 741 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMYWmHYZmZmZmx2MzMmBDDAAwAAAAAAAQyYYwMMGzsFAgBMAzgtBAAAAMzsst02MjFDMAjZGzwYA",
                        usage = 8.7,
                        totalRankings = 264,
                        source = "Archon.gg Meta Builds (8.7% popularity, 264 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 83.3,
                        totalRankings = 545,
                        source = "Archon.gg Meta Builds (83.3% popularity, 545 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDzYMmZYmN2mZmZmZmBAAAAAAAAAAzysMbDmZGMLMmBjBLegtZaMxyAYmFsQYMbDwYDLAAA",
                        usage = 15.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (15.0% popularity, 20 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.4,
                        totalRankings = 805,
                        source = "Archon.gg Meta Builds (41.4% popularity, 805 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 29.5,
                        totalRankings = 809,
                        source = "Archon.gg Meta Builds (29.5% popularity, 809 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 81.9,
                        totalRankings = 830,
                        source = "Archon.gg Meta Builds (81.9% popularity, 830 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 79.7,
                        totalRankings = 64,
                        source = "Archon.gg Meta Builds (79.7% popularity, 64 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMz22MzYmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 60.7,
                        totalRankings = 242,
                        source = "Archon.gg Meta Builds (60.7% popularity, 242 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 55.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.6% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 75.2,
                        totalRankings = 121,
                        source = "Archon.gg Meta Builds (75.2% popularity, 121 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.6,
                        totalRankings = 774,
                        source = "Archon.gg Meta Builds (27.6% popularity, 774 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAgZmZmZmhY2MwsNzMDzyAAAAmZMzCzMPwmZmZhZmZAAzM22GYADYG2CMsNDAAAAAAAAmZmNA",
                        usage = 18.2,
                        totalRankings = 33,
                        source = "Archon.gg Meta Builds (18.2% popularity, 33 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 87.7,
                        totalRankings = 146,
                        source = "Archon.gg Meta Builds (87.7% popularity, 146 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 56.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (56.9% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 60.0,
                        totalRankings = 40,
                        source = "Archon.gg Meta Builds (60.0% popularity, 40 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 58.2,
                        totalRankings = 960,
                        source = "Archon.gg Meta Builds (58.2% popularity, 960 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNMzA",
                        usage = 44.7,
                        totalRankings = 637,
                        source = "Archon.gg Meta Builds (44.7% popularity, 637 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 68.2,
                        totalRankings = 14382,
                        source = "Archon.gg Meta Builds (68.2% popularity, 14,382 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 61.4,
                        totalRankings = 3314,
                        source = "Archon.gg Meta Builds (61.4% popularity, 3,314 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 26.4,
                        totalRankings = 3787,
                        source = "Archon.gg Meta Builds (26.4% popularity, 3,787 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 31.3,
                        totalRankings = 13431,
                        source = "Archon.gg Meta Builds (31.3% popularity, 13,431 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.6,
                        totalRankings = 3524,
                        source = "Archon.gg Meta Builds (32.6% popularity, 3,524 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 30.2,
                        totalRankings = 7059,
                        source = "Archon.gg Meta Builds (30.2% popularity, 7,059 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 33.4,
                        totalRankings = 3221,
                        source = "Archon.gg Meta Builds (33.4% popularity, 3,221 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 21.8,
                        totalRankings = 1550,
                        source = "Archon.gg Meta Builds (21.8% popularity, 1,550 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.8,
                        totalRankings = 7621,
                        source = "Archon.gg Meta Builds (23.8% popularity, 7,621 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 31.0,
                        totalRankings = 6457,
                        source = "Archon.gg Meta Builds (31.0% popularity, 6,457 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.6,
                        totalRankings = 3069,
                        source = "Archon.gg Meta Builds (39.6% popularity, 3,069 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 42.9,
                        totalRankings = 9911,
                        source = "Archon.gg Meta Builds (42.9% popularity, 9,911 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 34.5,
                        totalRankings = 8601,
                        source = "Archon.gg Meta Builds (34.5% popularity, 8,601 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.0,
                        totalRankings = 1192,
                        source = "Archon.gg Meta Builds (57.0% popularity, 1,192 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 50.4,
                        totalRankings = 14553,
                        source = "Archon.gg Meta Builds (50.4% popularity, 14,553 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 41.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 43.5,
                        totalRankings = 4246,
                        source = "Archon.gg Meta Builds (43.5% popularity, 4,246 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.5,
                        totalRankings = 3992,
                        source = "Archon.gg Meta Builds (30.5% popularity, 3,992 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 32.4,
                        totalRankings = 4660,
                        source = "Archon.gg Meta Builds (32.4% popularity, 4,660 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 50.0,
                        totalRankings = 4846,
                        source = "Archon.gg Meta Builds (50.0% popularity, 4,846 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.4,
                        totalRankings = 5182,
                        source = "Archon.gg Meta Builds (37.4% popularity, 5,182 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.0,
                        totalRankings = 3633,
                        source = "Archon.gg Meta Builds (8.0% popularity, 3,633 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 62.1,
                        totalRankings = 14658,
                        source = "Archon.gg Meta Builds (62.1% popularity, 14,658 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 4.7,
                        totalRankings = 1081,
                        source = "Archon.gg Meta Builds (4.7% popularity, 1,081 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 29.5,
                        totalRankings = 9252,
                        source = "Archon.gg Meta Builds (29.5% popularity, 9,252 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 48.6,
                        totalRankings = 8631,
                        source = "Archon.gg Meta Builds (48.6% popularity, 8,631 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.4,
                        totalRankings = 5520,
                        source = "Archon.gg Meta Builds (79.4% popularity, 5,520 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 82.4,
                        totalRankings = 1122,
                        source = "Archon.gg Meta Builds (82.4% popularity, 1,122 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 51.4,
                        totalRankings = 3220,
                        source = "Archon.gg Meta Builds (51.4% popularity, 3,220 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.7,
                        totalRankings = 9732,
                        source = "Archon.gg Meta Builds (32.7% popularity, 9,732 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 40.1,
                        totalRankings = 1990,
                        source = "Archon.gg Meta Builds (40.1% popularity, 1,990 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 17.7,
                        totalRankings = 11054,
                        source = "Archon.gg Meta Builds (17.7% popularity, 11,054 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 30.2,
                        totalRankings = 1064,
                        source = "Archon.gg Meta Builds (30.2% popularity, 1,064 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.1,
                        totalRankings = 4334,
                        source = "Archon.gg Meta Builds (77.1% popularity, 4,334 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.8,
                        totalRankings = 12855,
                        source = "Archon.gg Meta Builds (35.8% popularity, 12,855 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmHY2mlllZGAAAADmmxw2YGLDzwM2MzMYYGGAAAAAAAegxsMzMDYJM22GYBMgZYCMD2A",
                        usage = 32.9,
                        totalRankings = 1867,
                        source = "Archon.gg Meta Builds (32.9% popularity, 1,867 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.5,
                        totalRankings = 9716,
                        source = "Archon.gg Meta Builds (45.5% popularity, 9,716 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 21.1,
                        totalRankings = 5396,
                        source = "Archon.gg Meta Builds (21.1% popularity, 5,396 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 95.9,
                        totalRankings = 98,
                        source = "Archon.gg Meta Builds (95.9% popularity, 98 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxwMmZmpZGDzMmxMAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGglBsBwMYDA",
                        usage = 33.3,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (33.3% popularity, 3 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 75.5,
                        totalRankings = 53,
                        source = "Archon.gg Meta Builds (75.5% popularity, 53 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmBziZmlxYG2mhZGzMGMLzMzmZGzMYAAAAY2mBDjlFmwgZmBLA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmlMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 43.8,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (43.8% popularity, 16 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmBAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 71.4,
                        totalRankings = 28,
                        source = "Archon.gg Meta Builds (71.4% popularity, 28 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWmHYMMDzYxDMMzsYZAgRTmmZmlZWmZGjZYAAAAAAYYGAAAAoZ2mlZmlBAwCjBgFzMM",
                        usage = 33.3,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (33.3% popularity, 3 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsMoZzMmmZMwsMWmZGGmBAAAAAAAMAAAAAgZbmlmlZ2sxMzMADMaA",
                        usage = 37.5,
                        totalRankings = 8,
                        source = "Archon.gg Meta Builds (37.5% popularity, 8 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgBjHYaGzMZMWmZmZGGzsMDwYmtxMzyMzgZgZMDsBWAzwEYBsMMA",
                        usage = 50.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (50.0% popularity, 20 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMDsAWAzwEYD2MMA",
                        usage = 24.5,
                        totalRankings = 49,
                        source = "Archon.gg Meta Builds (24.5% popularity, 49 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZ8AzMLzMzMMDAAAAAAAAMzAeAjxUDzMDAAAAmxMbjZmlxMDMz2MGsALjhx2AYGEbYMA",
                        usage = 26.3,
                        totalRankings = 76,
                        source = "Archon.gg Meta Builds (26.3% popularity, 76 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxYZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 50.7,
                        totalRankings = 67,
                        source = "Archon.gg Meta Builds (50.7% popularity, 67 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 49.2,
                        totalRankings = 122,
                        source = "Archon.gg Meta Builds (49.2% popularity, 122 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgx2wMmxsMjtxMzAAAAAAAwyCGxMjFmhxGD2mZmhZZMzYbWMxsNbzgZ2AAglZbaZ2mZZAAAAYG2A",
                        usage = 35.6,
                        totalRankings = 45,
                        source = "Archon.gg Meta Builds (35.6% popularity, 45 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswQzMzAzwMYw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 85.7,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (85.7% popularity, 7 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMTMzwYGGWGDbzMzwswMDzmJAAWGzMMzw2MAA2AAzys0MzMLAmB",
                        usage = 35.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (35.0% popularity, 20 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 34.0,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (34.0% popularity, 47 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGDzWbAwYgBwMYbAAAAAzMLbLtNzYxADAzwMMG",
                        usage = 37.5,
                        totalRankings = 8,
                        source = "Archon.gg Meta Builds (37.5% popularity, 8 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzMbzgZbYWmtZYYwghlF2AAAgZm2mlZbGAwGwAAzYGmB",
                        usage = 85.7,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (85.7% popularity, 7 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 83.3,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (83.3% popularity, 6 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 50.0,
                        totalRankings = 60,
                        source = "Archon.gg Meta Builds (50.0% popularity, 60 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAA2WmZmhZmxCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM2WmZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 39.7,
                        totalRankings = 63,
                        source = "Archon.gg Meta Builds (39.7% popularity, 63 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsMNzMMbLMmGDzMbDLzMzgxwsMzMjZGzMbA",
                        usage = 77.0,
                        totalRankings = 61,
                        source = "Archon.gg Meta Builds (77.0% popularity, 61 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAAbTzMDzyCzMzYGmZhZZmZCMMLzMAAjB",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmB2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzsglZMDGDzyYAAgB",
                        usage = 31.1,
                        totalRankings = 45,
                        source = "Archon.gg Meta Builds (31.1% popularity, 45 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAgZmZmZmhY2MwsNzMDzyAAAAmZMziZmx2MzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 57.5,
                        totalRankings = 87,
                        source = "Archon.gg Meta Builds (57.5% popularity, 87 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmtZmhhBzswMzMMMDzstNzYmZWwMmZmxMjlhBzMDAAAix22ALgBMDTgZYDA",
                        usage = 42.3,
                        totalRankings = 26,
                        source = "Archon.gg Meta Builds (42.3% popularity, 26 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwYmxMzMjZmNjZZwYMTDLzMDzsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDshZG",
                        usage = 14.9,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (14.9% popularity, 47 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZYGzMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 51.1,
                        totalRankings = 9574,
                        source = "Archon.gg Meta Builds (51.1% popularity, 9,574 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 56.9,
                        totalRankings = 2597,
                        source = "Archon.gg Meta Builds (56.9% popularity, 2,597 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGjxYZGzMz0MjZMzYGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 29.4,
                        totalRankings = 3009,
                        source = "Archon.gg Meta Builds (29.4% popularity, 3,009 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 33.9,
                        totalRankings = 9431,
                        source = "Archon.gg Meta Builds (33.9% popularity, 9,431 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 33.7,
                        totalRankings = 2208,
                        source = "Archon.gg Meta Builds (33.7% popularity, 2,208 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 32.1,
                        totalRankings = 4708,
                        source = "Archon.gg Meta Builds (32.1% popularity, 4,708 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 79.2,
                        totalRankings = 2032,
                        source = "Archon.gg Meta Builds (79.2% popularity, 2,032 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 19.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (19.7% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 19.9,
                        totalRankings = 5171,
                        source = "Archon.gg Meta Builds (19.9% popularity, 5,171 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 33.7,
                        totalRankings = 4608,
                        source = "Archon.gg Meta Builds (33.7% popularity, 4,608 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 38.6,
                        totalRankings = 2417,
                        source = "Archon.gg Meta Builds (38.6% popularity, 2,417 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (13.3% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 38.2,
                        totalRankings = 6554,
                        source = "Archon.gg Meta Builds (38.2% popularity, 6,554 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.2,
                        totalRankings = 5981,
                        source = "Archon.gg Meta Builds (70.2% popularity, 5,981 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 59.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (59.2% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 53.6,
                        totalRankings = 10196,
                        source = "Archon.gg Meta Builds (53.6% popularity, 10,196 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 46.1,
                        totalRankings = 2603,
                        source = "Archon.gg Meta Builds (46.1% popularity, 2,603 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 28.5,
                        totalRankings = 2745,
                        source = "Archon.gg Meta Builds (28.5% popularity, 2,745 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 37.4,
                        totalRankings = 3479,
                        source = "Archon.gg Meta Builds (37.4% popularity, 3,479 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 40.7,
                        totalRankings = 3198,
                        source = "Archon.gg Meta Builds (40.7% popularity, 3,198 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 40.0,
                        totalRankings = 3521,
                        source = "Archon.gg Meta Builds (40.0% popularity, 3,521 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.2,
                        totalRankings = 2305,
                        source = "Archon.gg Meta Builds (7.2% popularity, 2,305 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 69.3,
                        totalRankings = 9849,
                        source = "Archon.gg Meta Builds (69.3% popularity, 9,849 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZMGjZmZGzsx2MzMzMDAAAAAAAAAAYWsMbYbmZwswwgZGmllxMNmYZgZGAIAz2stBGb2AAA",
                        usage = 6.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (6.9% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 32.4,
                        totalRankings = 6801,
                        source = "Archon.gg Meta Builds (32.4% popularity, 6,801 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 52.2,
                        totalRankings = 5636,
                        source = "Archon.gg Meta Builds (52.2% popularity, 5,636 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 81.8,
                        totalRankings = 4040,
                        source = "Archon.gg Meta Builds (81.8% popularity, 4,040 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 85.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (85.1% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 51.9,
                        totalRankings = 2157,
                        source = "Archon.gg Meta Builds (51.9% popularity, 2,157 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNDMbYmphZmZ2GzyMzMYWGmlxMjZGzMbA",
                        usage = 37.9,
                        totalRankings = 6683,
                        source = "Archon.gg Meta Builds (37.9% popularity, 6,683 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 41.2,
                        totalRankings = 1203,
                        source = "Archon.gg Meta Builds (41.2% popularity, 1,203 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 19.6,
                        totalRankings = 7564,
                        source = "Archon.gg Meta Builds (19.6% popularity, 7,564 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 38.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (38.5% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 81.9,
                        totalRankings = 1693,
                        source = "Archon.gg Meta Builds (81.9% popularity, 1,693 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 50.4,
                        totalRankings = 9774,
                        source = "Archon.gg Meta Builds (50.4% popularity, 9,774 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmHY2mlllZGAAAADmmxw2YGLDzwM2MzMYYGGAAAAAAAegxsMzMDYJM22GYBMgZYCMD2A",
                        usage = 32.4,
                        totalRankings = 1425,
                        source = "Archon.gg Meta Builds (32.4% popularity, 1,425 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.5,
                        totalRankings = 6935,
                        source = "Archon.gg Meta Builds (40.5% popularity, 6,935 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZmZYsMww2Mzgx8ADDAAAAAAsMAAzYDwAbwyiRjZAMbwsxMzA",
                        usage = 23.1,
                        totalRankings = 3573,
                        source = "Archon.gg Meta Builds (23.1% popularity, 3,573 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 90.9,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (90.9% popularity, 11 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMzMxMPwAAAAAAAmtxMLzAjlxMbYZGzYmxwyGsMbmxwsx0YMzMzgN",
                        usage = 50.0,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (50.0% popularity, 6 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGjhZYGLmhZmFLDghRTmMzsMz2MzYMDDAAAAAADzAAAAANz2sMzsMAAWYmBgFzgB",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsMoZzMmmZMwsMWmZGGmBAAAAAAAMAAAAAgZbmlmlZ2sxMzMADMaA",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmlZAzYmtxMzyMzgZgZMDsAWAzwEYBsMMA",
                        usage = 36.4,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (36.4% popularity, 11 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMDsA2AzwEYD2MMA",
                        usage = 33.3,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (33.3% popularity, 6 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZYmZZmZmhZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZGzMMjmZMGmZghZZZmhlxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 75.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (75.0% popularity, 4 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 66.7,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (66.7% popularity, 12 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGzMmxsMjNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMb2GDziJAAAAAAgFLzyysNzMBAALA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 50.0,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (50.0% popularity, 6 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY0kZxwMjtZwsNMLz2MMMYwwyCbAAAwMTbzysNDAYDYAwMjZYGA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYGbzMDzYMmZmx2MjZAAAAwsYZWG2mZGMLMmhZMMbbwMmaWAYmFsQYMbDwYBWYxsMAA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZAAAAAAAAAAAAYM2gZmZZbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 60.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (60.0% popularity, 5 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.0,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (50.0% popularity, 6 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGMbLMz0wYmZZYZmxYzYYWGzMmZMzsBA",
                        usage = 83.3,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (83.3% popularity, 12 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmB2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzsglZGDGDzyYAAgB",
                        usage = 75.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (75.0% popularity, 4 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjY2MwsZmZY2mFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 58.3,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (58.3% popularity, 12 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZMYmFmZmxMMDzstNzYmZWgxMzMmZsM8AMzMDAAAix22ALgBMDTgZYDA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwYmxMzMjxsZmZZwYMTDLzMDzsMYG2mZGMMDDAAAAAAsMGAYmtNADsBLLGNmBwsB2gZA",
                        usage = 20.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (20.0% popularity, 5 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 13.6,
                    totalRankings = 34220,
                    source = "Archon.gg Mythic+ Meta Builds (13.6% popularity, 34,220 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMDGzMGGzMzMzMMzMamxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 31.9,
                    totalRankings = 179205,
                    source = "Archon.gg Mythic+ Meta Builds (31.9% popularity, 179,205 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 58.4,
                    totalRankings = 25751,
                    source = "Archon.gg Mythic+ Meta Builds (58.4% popularity, 25,751 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 41.4,
                    totalRankings = 125986,
                    source = "Archon.gg Mythic+ Meta Builds (41.4% popularity, 125,986 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 44.1,
                    totalRankings = 99992,
                    source = "Archon.gg Mythic+ Meta Builds (44.1% popularity, 99,992 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 73.8,
                    totalRankings = 52968,
                    source = "Archon.gg Mythic+ Meta Builds (73.8% popularity, 52,968 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 59.8,
                    totalRankings = 29321,
                    source = "Archon.gg Mythic+ Meta Builds (59.8% popularity, 29,321 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 28.8,
                    totalRankings = 45457,
                    source = "Archon.gg Mythic+ Meta Builds (28.8% popularity, 45,457 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 10.9,
                    totalRankings = 104647,
                    source = "Archon.gg Mythic+ Meta Builds (10.9% popularity, 104,647 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmpZ2GLDGGjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 21.3,
                    totalRankings = 41120,
                    source = "Archon.gg Mythic+ Meta Builds (21.3% popularity, 41,120 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDYAAwMjZMzMGmJGzAAAAbzMzkx2MjxYGAAGzmFWgBmhhGMWgB",
                    usage = 35.2,
                    totalRankings = 19296,
                    source = "Archon.gg Mythic+ Meta Builds (35.2% popularity, 19,296 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMLjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 28.7,
                    totalRankings = 7076,
                    source = "Archon.gg Mythic+ Meta Builds (28.7% popularity, 7,076 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjZeALzMDzMGsMjZmxYmZmMjZMjZmhZGzwYYMMLDz2yMYDAAAAAAmB",
                    usage = 57.2,
                    totalRankings = 73427,
                    source = "Archon.gg Mythic+ Meta Builds (57.2% popularity, 73,427 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                    usage = 38.3,
                    totalRankings = 85659,
                    source = "Archon.gg Mythic+ Meta Builds (38.3% popularity, 85,659 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 21.2,
                    totalRankings = 19255,
                    source = "Archon.gg Mythic+ Meta Builds (21.2% popularity, 19,255 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMLmtZwMjZmF4BMzwYamxMAAAAAAMAgZmplZbbGAAbAAAAAAsBgxgZWmlZMzYMDzMzMjZMLjB",
                    usage = 48.6,
                    totalRankings = 125936,
                    source = "Archon.gg Mythic+ Meta Builds (48.6% popularity, 125,936 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzgZGzMLAzMjpxMjZGAAAAAADAYmZaZW2mBAYzMzgxMDzYWMLjhZmNzsNjlZWwAAAAAAAA",
                    usage = 20.9,
                    totalRankings = 7902,
                    source = "Archon.gg Mythic+ Meta Builds (20.9% popularity, 7,902 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhZmFPAMzoxYmZZmZGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAY2AAAAAAAAA",
                    usage = 39.7,
                    totalRankings = 45644,
                    source = "Archon.gg Mythic+ Meta Builds (39.7% popularity, 45,644 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 36.2,
                    totalRankings = 61126,
                    source = "Archon.gg Mythic+ Meta Builds (36.2% popularity, 61,126 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 15.6,
                    totalRankings = 27614,
                    source = "Archon.gg Mythic+ Meta Builds (15.6% popularity, 27,614 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 34.2,
                    totalRankings = 30313,
                    source = "Archon.gg Mythic+ Meta Builds (34.2% popularity, 30,313 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLmxMLz2Mzs0AAAAsAYwmZghhB",
                    usage = 28.3,
                    totalRankings = 40616,
                    source = "Archon.gg Mythic+ Meta Builds (28.3% popularity, 40,616 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZGzsNmxAAAMAAAAAAA0WzMzihZGGD2aDAGDMAAbDAAAAYmZZbptZGLMYAYwMbYA",
                    usage = 7.8,
                    totalRankings = 112329,
                    source = "Archon.gg Mythic+ Meta Builds (7.8% popularity, 112,329 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 32.0,
                    totalRankings = 129194,
                    source = "Archon.gg Mythic+ Meta Builds (32.0% popularity, 129,194 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLsNTzMxyAzMAQAmtZbDM2sBAA",
                    usage = 11.8,
                    totalRankings = 77868,
                    source = "Archon.gg Mythic+ Meta Builds (11.8% popularity, 77,868 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 18.5,
                    totalRankings = 19132,
                    source = "Archon.gg Mythic+ Meta Builds (18.5% popularity, 19,132 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 30.6,
                    totalRankings = 53392,
                    source = "Archon.gg Mythic+ Meta Builds (30.6% popularity, 53,392 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 78.9,
                    totalRankings = 40510,
                    source = "Archon.gg Mythic+ Meta Builds (78.9% popularity, 40,510 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw2yMzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 60.7,
                    totalRankings = 14802,
                    source = "Archon.gg Mythic+ Meta Builds (60.7% popularity, 14,802 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 42.0,
                    totalRankings = 28908,
                    source = "Archon.gg Mythic+ Meta Builds (42.0% popularity, 28,908 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsMNDYDmphZmZ2GWmxMziZZYWmZMYYmtBA",
                    usage = 20.0,
                    totalRankings = 67656,
                    source = "Archon.gg Mythic+ Meta Builds (20.0% popularity, 67,656 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                    usage = 49.5,
                    totalRankings = 20207,
                    source = "Archon.gg Mythic+ Meta Builds (49.5% popularity, 20,207 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 26.3,
                    totalRankings = 181966,
                    source = "Archon.gg Mythic+ Meta Builds (26.3% popularity, 181,966 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMLglZAAAAAAAAwMsA",
                    usage = 25.7,
                    totalRankings = 9223,
                    source = "Archon.gg Mythic+ Meta Builds (25.7% popularity, 9,223 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 22.2,
                    totalRankings = 52698,
                    source = "Archon.gg Mythic+ Meta Builds (22.2% popularity, 52,698 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 13.7,
                    totalRankings = 71321,
                    source = "Archon.gg Mythic+ Meta Builds (13.7% popularity, 71,321 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMzystsMmBAAAYw0wMzyYGGLjZmxiZmhZwwAAAAAAAwMmtBDYLGwmZMsADMDb0AWA",
                    usage = 27.4,
                    totalRankings = 18654,
                    source = "Archon.gg Mythic+ Meta Builds (27.4% popularity, 18,654 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMaMwsMmhxyAzCzMzMzMjhZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                    usage = 31.4,
                    totalRankings = 55577,
                    source = "Archon.gg Mythic+ Meta Builds (31.4% popularity, 55,577 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAAkBAAAgxMMzMzMzMbmZWGMGjGzyYGGLjZmhtZmxMwwAAAAAAALDAwM2AMwGssY0YGAzCMbMjZA",
                    usage = 11.7,
                    totalRankings = 118363,
                    source = "Archon.gg Mythic+ Meta Builds (11.7% popularity, 118,363 parses)"
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
