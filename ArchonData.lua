-- Archon Talents Data File
-- Generated: 2025-09-04 08:05:51 UTC
-- Version: 1756991151
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1756991151
    local lastUpdated = "2025-09-04 08:05:51 UTC"
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
                        usage = 29.8,
                        totalRankings = 26743,
                        source = "Archon.gg Meta Builds (29.8% popularity, 26,743 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 66.3,
                        totalRankings = 8142,
                        source = "Archon.gg Meta Builds (66.3% popularity, 8,142 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.8,
                        totalRankings = 6154,
                        source = "Archon.gg Meta Builds (19.8% popularity, 6,154 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 45.5,
                        totalRankings = 26603,
                        source = "Archon.gg Meta Builds (45.5% popularity, 26,603 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 42.5,
                        totalRankings = 8279,
                        source = "Archon.gg Meta Builds (42.5% popularity, 8,279 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 29.4,
                        totalRankings = 14025,
                        source = "Archon.gg Meta Builds (29.4% popularity, 14,025 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 74.2,
                        totalRankings = 6383,
                        source = "Archon.gg Meta Builds (74.2% popularity, 6,383 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.5,
                        totalRankings = 3963,
                        source = "Archon.gg Meta Builds (30.5% popularity, 3,963 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.3,
                        totalRankings = 17293,
                        source = "Archon.gg Meta Builds (23.3% popularity, 17,293 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 23.0,
                        totalRankings = 11009,
                        source = "Archon.gg Meta Builds (23.0% popularity, 11,009 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.3,
                        totalRankings = 5099,
                        source = "Archon.gg Meta Builds (39.3% popularity, 5,099 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 8.3,
                        totalRankings = 1365,
                        source = "Archon.gg Meta Builds (8.3% popularity, 1,365 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 78.2,
                        totalRankings = 22756,
                        source = "Archon.gg Meta Builds (78.2% popularity, 22,756 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.6,
                        totalRankings = 16084,
                        source = "Archon.gg Meta Builds (71.6% popularity, 16,084 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 66.3,
                        totalRankings = 2608,
                        source = "Archon.gg Meta Builds (66.3% popularity, 2,608 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 49.1,
                        totalRankings = 23600,
                        source = "Archon.gg Meta Builds (49.1% popularity, 23,600 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.0,
                        totalRankings = 1783,
                        source = "Archon.gg Meta Builds (46.0% popularity, 1,783 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 29.3,
                        totalRankings = 11244,
                        source = "Archon.gg Meta Builds (29.3% popularity, 11,244 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.1,
                        totalRankings = 6836,
                        source = "Archon.gg Meta Builds (30.1% popularity, 6,836 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 22.5,
                        totalRankings = 8346,
                        source = "Archon.gg Meta Builds (22.5% popularity, 8,346 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.9,
                        totalRankings = 9369,
                        source = "Archon.gg Meta Builds (53.9% popularity, 9,369 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.7,
                        totalRankings = 10300,
                        source = "Archon.gg Meta Builds (33.7% popularity, 10,300 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 12.3,
                        totalRankings = 8210,
                        source = "Archon.gg Meta Builds (12.3% popularity, 8,210 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 61.8,
                        totalRankings = 29421,
                        source = "Archon.gg Meta Builds (61.8% popularity, 29,421 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.8,
                        totalRankings = 3883,
                        source = "Archon.gg Meta Builds (9.8% popularity, 3,883 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 37.9,
                        totalRankings = 17245,
                        source = "Archon.gg Meta Builds (37.9% popularity, 17,245 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 40.8,
                        totalRankings = 15958,
                        source = "Archon.gg Meta Builds (40.8% popularity, 15,958 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.3,
                        totalRankings = 12236,
                        source = "Archon.gg Meta Builds (69.3% popularity, 12,236 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 86.9,
                        totalRankings = 2512,
                        source = "Archon.gg Meta Builds (86.9% popularity, 2,512 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.2,
                        totalRankings = 3742,
                        source = "Archon.gg Meta Builds (55.2% popularity, 3,742 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 21.3,
                        totalRankings = 17316,
                        source = "Archon.gg Meta Builds (21.3% popularity, 17,316 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 65.9,
                        totalRankings = 4470,
                        source = "Archon.gg Meta Builds (65.9% popularity, 4,470 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 12.2,
                        totalRankings = 24773,
                        source = "Archon.gg Meta Builds (12.2% popularity, 24,773 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 18.0,
                        totalRankings = 3300,
                        source = "Archon.gg Meta Builds (18.0% popularity, 3,300 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.5,
                        totalRankings = 12237,
                        source = "Archon.gg Meta Builds (76.5% popularity, 12,237 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 36.7,
                        totalRankings = 18441,
                        source = "Archon.gg Meta Builds (36.7% popularity, 18,441 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 53.0,
                        totalRankings = 4158,
                        source = "Archon.gg Meta Builds (53.0% popularity, 4,158 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 59.7,
                        totalRankings = 16904,
                        source = "Archon.gg Meta Builds (59.7% popularity, 16,904 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 24.7,
                        totalRankings = 10488,
                        source = "Archon.gg Meta Builds (24.7% popularity, 10,488 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 58.5,
                        totalRankings = 4817,
                        source = "Archon.gg Meta Builds (58.5% popularity, 4,817 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 73.3,
                        totalRankings = 2161,
                        source = "Archon.gg Meta Builds (73.3% popularity, 2,161 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 29.7,
                        totalRankings = 1375,
                        source = "Archon.gg Meta Builds (29.7% popularity, 1,375 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 66.6,
                        totalRankings = 4637,
                        source = "Archon.gg Meta Builds (66.6% popularity, 4,637 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 39.0,
                        totalRankings = 1145,
                        source = "Archon.gg Meta Builds (39.0% popularity, 1,145 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 33.6,
                        totalRankings = 2485,
                        source = "Archon.gg Meta Builds (33.6% popularity, 2,485 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 85.2,
                        totalRankings = 1176,
                        source = "Archon.gg Meta Builds (85.2% popularity, 1,176 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 14.7,
                        totalRankings = 789,
                        source = "Archon.gg Meta Builds (14.7% popularity, 789 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.0,
                        totalRankings = 3162,
                        source = "Archon.gg Meta Builds (24.0% popularity, 3,162 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 29.7,
                        totalRankings = 2655,
                        source = "Archon.gg Meta Builds (29.7% popularity, 2,655 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.9,
                        totalRankings = 1626,
                        source = "Archon.gg Meta Builds (40.9% popularity, 1,626 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAwMDwMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 10.7,
                        totalRankings = 634,
                        source = "Archon.gg Meta Builds (10.7% popularity, 634 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 83.6,
                        totalRankings = 2945,
                        source = "Archon.gg Meta Builds (83.6% popularity, 2,945 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 77.5,
                        totalRankings = 3125,
                        source = "Archon.gg Meta Builds (77.5% popularity, 3,125 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.3,
                        totalRankings = 609,
                        source = "Archon.gg Meta Builds (57.3% popularity, 609 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 68.1,
                        totalRankings = 5707,
                        source = "Archon.gg Meta Builds (68.1% popularity, 5,707 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.0,
                        totalRankings = 953,
                        source = "Archon.gg Meta Builds (44.0% popularity, 953 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 47.4,
                        totalRankings = 1251,
                        source = "Archon.gg Meta Builds (47.4% popularity, 1,251 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.6,
                        totalRankings = 1907,
                        source = "Archon.gg Meta Builds (32.6% popularity, 1,907 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 38.4,
                        totalRankings = 1859,
                        source = "Archon.gg Meta Builds (38.4% popularity, 1,859 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 60.5,
                        totalRankings = 1664,
                        source = "Archon.gg Meta Builds (60.5% popularity, 1,664 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 40.8,
                        totalRankings = 2192,
                        source = "Archon.gg Meta Builds (40.8% popularity, 2,192 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.0,
                        totalRankings = 1587,
                        source = "Archon.gg Meta Builds (8.0% popularity, 1,587 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 72.5,
                        totalRankings = 3830,
                        source = "Archon.gg Meta Builds (72.5% popularity, 3,830 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMbDwYDLAAA",
                        usage = 4.7,
                        totalRankings = 472,
                        source = "Archon.gg Meta Builds (4.7% popularity, 472 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 32.6,
                        totalRankings = 3939,
                        source = "Archon.gg Meta Builds (32.6% popularity, 3,939 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 39.6,
                        totalRankings = 3025,
                        source = "Archon.gg Meta Builds (39.6% popularity, 3,025 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 76.5,
                        totalRankings = 2955,
                        source = "Archon.gg Meta Builds (76.5% popularity, 2,955 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 90.0,
                        totalRankings = 767,
                        source = "Archon.gg Meta Builds (90.0% popularity, 767 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.2% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 39.4,
                        totalRankings = 3307,
                        source = "Archon.gg Meta Builds (39.4% popularity, 3,307 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.9% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 14.9,
                        totalRankings = 4360,
                        source = "Archon.gg Meta Builds (14.9% popularity, 4,360 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.0,
                        totalRankings = 663,
                        source = "Archon.gg Meta Builds (19.0% popularity, 663 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.7,
                        totalRankings = 1884,
                        source = "Archon.gg Meta Builds (80.7% popularity, 1,884 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.4,
                        totalRankings = 4277,
                        source = "Archon.gg Meta Builds (41.4% popularity, 4,277 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 52.3,
                        totalRankings = 940,
                        source = "Archon.gg Meta Builds (52.3% popularity, 940 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMWmxgZWYmZGzwMMz22YMzMLYGzMzYmZWGGeAzMAAAIGbbDsAGwMMBmhNA",
                        usage = 59.2,
                        totalRankings = 3381,
                        source = "Archon.gg Meta Builds (59.2% popularity, 3,381 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMTDLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmNM2wMD",
                        usage = 16.0,
                        totalRankings = 2081,
                        source = "Archon.gg Meta Builds (16.0% popularity, 2,081 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 31.6,
                        totalRankings = 26906,
                        source = "Archon.gg Meta Builds (31.6% popularity, 26,906 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 66.7,
                        totalRankings = 8375,
                        source = "Archon.gg Meta Builds (66.7% popularity, 8,375 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.4,
                        totalRankings = 6130,
                        source = "Archon.gg Meta Builds (20.4% popularity, 6,130 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 41.7,
                        totalRankings = 26657,
                        source = "Archon.gg Meta Builds (41.7% popularity, 26,657 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 39.2,
                        totalRankings = 8210,
                        source = "Archon.gg Meta Builds (39.2% popularity, 8,210 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 29.8,
                        totalRankings = 14195,
                        source = "Archon.gg Meta Builds (29.8% popularity, 14,195 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 73.8,
                        totalRankings = 6394,
                        source = "Archon.gg Meta Builds (73.8% popularity, 6,394 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.1,
                        totalRankings = 3860,
                        source = "Archon.gg Meta Builds (30.1% popularity, 3,860 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.5,
                        totalRankings = 17369,
                        source = "Archon.gg Meta Builds (25.5% popularity, 17,369 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 20.3,
                        totalRankings = 11087,
                        source = "Archon.gg Meta Builds (20.3% popularity, 11,087 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.8,
                        totalRankings = 5144,
                        source = "Archon.gg Meta Builds (39.8% popularity, 5,144 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 9.1,
                        totalRankings = 1405,
                        source = "Archon.gg Meta Builds (9.1% popularity, 1,405 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 77.7,
                        totalRankings = 22703,
                        source = "Archon.gg Meta Builds (77.7% popularity, 22,703 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.3,
                        totalRankings = 15750,
                        source = "Archon.gg Meta Builds (71.3% popularity, 15,750 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 68.7,
                        totalRankings = 2584,
                        source = "Archon.gg Meta Builds (68.7% popularity, 2,584 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 51.2,
                        totalRankings = 24248,
                        source = "Archon.gg Meta Builds (51.2% popularity, 24,248 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.1,
                        totalRankings = 1773,
                        source = "Archon.gg Meta Builds (44.1% popularity, 1,773 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 30.3,
                        totalRankings = 11135,
                        source = "Archon.gg Meta Builds (30.3% popularity, 11,135 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.6,
                        totalRankings = 6871,
                        source = "Archon.gg Meta Builds (30.6% popularity, 6,871 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.9,
                        totalRankings = 8404,
                        source = "Archon.gg Meta Builds (24.9% popularity, 8,404 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 55.0,
                        totalRankings = 9365,
                        source = "Archon.gg Meta Builds (55.0% popularity, 9,365 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.0,
                        totalRankings = 10332,
                        source = "Archon.gg Meta Builds (34.0% popularity, 10,332 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 12.6,
                        totalRankings = 8102,
                        source = "Archon.gg Meta Builds (12.6% popularity, 8,102 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 61.9,
                        totalRankings = 29371,
                        source = "Archon.gg Meta Builds (61.9% popularity, 29,371 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.7,
                        totalRankings = 3649,
                        source = "Archon.gg Meta Builds (8.7% popularity, 3,649 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 37.3,
                        totalRankings = 17453,
                        source = "Archon.gg Meta Builds (37.3% popularity, 17,453 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 51.8,
                        totalRankings = 16181,
                        source = "Archon.gg Meta Builds (51.8% popularity, 16,181 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.9,
                        totalRankings = 12618,
                        source = "Archon.gg Meta Builds (69.9% popularity, 12,618 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 86.6,
                        totalRankings = 2509,
                        source = "Archon.gg Meta Builds (86.6% popularity, 2,509 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.9,
                        totalRankings = 3723,
                        source = "Archon.gg Meta Builds (55.9% popularity, 3,723 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 22.3,
                        totalRankings = 17451,
                        source = "Archon.gg Meta Builds (22.3% popularity, 17,451 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 64.9,
                        totalRankings = 4494,
                        source = "Archon.gg Meta Builds (64.9% popularity, 4,494 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 13.4,
                        totalRankings = 24966,
                        source = "Archon.gg Meta Builds (13.4% popularity, 24,966 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.5,
                        totalRankings = 3148,
                        source = "Archon.gg Meta Builds (19.5% popularity, 3,148 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.2,
                        totalRankings = 11009,
                        source = "Archon.gg Meta Builds (77.2% popularity, 11,009 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 34.3,
                        totalRankings = 19938,
                        source = "Archon.gg Meta Builds (34.3% popularity, 19,938 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 54.7,
                        totalRankings = 4160,
                        source = "Archon.gg Meta Builds (54.7% popularity, 4,160 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 58.5,
                        totalRankings = 16983,
                        source = "Archon.gg Meta Builds (58.5% popularity, 16,983 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 24.5,
                        totalRankings = 10483,
                        source = "Archon.gg Meta Builds (24.5% popularity, 10,483 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 54.4,
                        totalRankings = 1113,
                        source = "Archon.gg Meta Builds (54.4% popularity, 1,113 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 76.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (76.5% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 30.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (30.7% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 53.0,
                        totalRankings = 1420,
                        source = "Archon.gg Meta Builds (53.0% popularity, 1,420 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 26.5,
                        totalRankings = 437,
                        source = "Archon.gg Meta Builds (26.5% popularity, 437 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUs0MGzMAzyYZmZwwMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 41.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.0% popularity, 1,000 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 82.0,
                        totalRankings = 668,
                        source = "Archon.gg Meta Builds (82.0% popularity, 668 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 15.5,
                        totalRankings = 181,
                        source = "Archon.gg Meta Builds (15.5% popularity, 181 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (23.2% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 32.5,
                        totalRankings = 1112,
                        source = "Archon.gg Meta Builds (32.5% popularity, 1,112 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 44.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.7% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.8,
                        totalRankings = 290,
                        source = "Archon.gg Meta Builds (14.8% popularity, 290 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 87.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (87.6% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 72.6,
                        totalRankings = 1053,
                        source = "Archon.gg Meta Builds (72.6% popularity, 1,053 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 58.7,
                        totalRankings = 126,
                        source = "Archon.gg Meta Builds (58.7% popularity, 126 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 67.6,
                        totalRankings = 1888,
                        source = "Archon.gg Meta Builds (67.6% popularity, 1,888 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 43.8,
                        totalRankings = 233,
                        source = "Archon.gg Meta Builds (43.8% popularity, 233 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 50.0,
                        totalRankings = 654,
                        source = "Archon.gg Meta Builds (50.0% popularity, 654 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 33.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.8% popularity, 1,000 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 54.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (54.5% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 77.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (77.4% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 42.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.7% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAAarZmZxwMDjZGbtBAjBAYgtBAAAAMzsst02MjFDMAMGGGD",
                        usage = 8.4,
                        totalRankings = 956,
                        source = "Archon.gg Meta Builds (8.4% popularity, 956 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 82.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (82.2% popularity, 1,000 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzsN2mZmxMzMAAAAAAAAAAYWmlZbwMzgZhhhZMMLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 4.9,
                        totalRankings = 82,
                        source = "Archon.gg Meta Builds (4.9% popularity, 82 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 38.3,
                        totalRankings = 1242,
                        source = "Archon.gg Meta Builds (38.3% popularity, 1,242 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 68.6,
                        totalRankings = 1199,
                        source = "Archon.gg Meta Builds (68.6% popularity, 1,199 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 80.7,
                        totalRankings = 1029,
                        source = "Archon.gg Meta Builds (80.7% popularity, 1,029 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 97.4,
                        totalRankings = 233,
                        source = "Archon.gg Meta Builds (97.4% popularity, 233 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.6,
                        totalRankings = 507,
                        source = "Archon.gg Meta Builds (56.6% popularity, 507 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 48.1,
                        totalRankings = 1304,
                        source = "Archon.gg Meta Builds (48.1% popularity, 1,304 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 80.1,
                        totalRankings = 418,
                        source = "Archon.gg Meta Builds (80.1% popularity, 418 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.2,
                        totalRankings = 1040,
                        source = "Archon.gg Meta Builds (17.2% popularity, 1,040 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 35.1,
                        totalRankings = 37,
                        source = "Archon.gg Meta Builds (35.1% popularity, 37 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.2,
                        totalRankings = 91,
                        source = "Archon.gg Meta Builds (80.2% popularity, 91 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 51.7,
                        totalRankings = 2352,
                        source = "Archon.gg Meta Builds (51.7% popularity, 2,352 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 60.2,
                        totalRankings = 171,
                        source = "Archon.gg Meta Builds (60.2% popularity, 171 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 57.3,
                        totalRankings = 1163,
                        source = "Archon.gg Meta Builds (57.3% popularity, 1,163 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 21.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.6% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 50.9,
                        totalRankings = 25832,
                        source = "Archon.gg Meta Builds (50.9% popularity, 25,832 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYGz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 21.5,
                        totalRankings = 6589,
                        source = "Archon.gg Meta Builds (21.5% popularity, 6,589 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.1,
                        totalRankings = 5734,
                        source = "Archon.gg Meta Builds (20.1% popularity, 5,734 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 26.4,
                        totalRankings = 24850,
                        source = "Archon.gg Meta Builds (26.4% popularity, 24,850 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.7,
                        totalRankings = 7668,
                        source = "Archon.gg Meta Builds (31.7% popularity, 7,668 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzyYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALmZMAbGGD",
                        usage = 26.8,
                        totalRankings = 13245,
                        source = "Archon.gg Meta Builds (26.8% popularity, 13,245 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 15.6,
                        totalRankings = 5909,
                        source = "Archon.gg Meta Builds (15.6% popularity, 5,909 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 17.7,
                        totalRankings = 3584,
                        source = "Archon.gg Meta Builds (17.7% popularity, 3,584 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.2,
                        totalRankings = 16264,
                        source = "Archon.gg Meta Builds (25.2% popularity, 16,264 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 19.9,
                        totalRankings = 10431,
                        source = "Archon.gg Meta Builds (19.9% popularity, 10,431 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.0,
                        totalRankings = 4893,
                        source = "Archon.gg Meta Builds (40.0% popularity, 4,893 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 9.2,
                        totalRankings = 1295,
                        source = "Archon.gg Meta Builds (9.2% popularity, 1,295 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 30.8,
                        totalRankings = 21010,
                        source = "Archon.gg Meta Builds (30.8% popularity, 21,010 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                        usage = 29.3,
                        totalRankings = 14493,
                        source = "Archon.gg Meta Builds (29.3% popularity, 14,493 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 31.8,
                        totalRankings = 2433,
                        source = "Archon.gg Meta Builds (31.8% popularity, 2,433 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 49.9,
                        totalRankings = 22344,
                        source = "Archon.gg Meta Builds (49.9% popularity, 22,344 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.0,
                        totalRankings = 1697,
                        source = "Archon.gg Meta Builds (40.0% popularity, 1,697 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 25.9,
                        totalRankings = 10787,
                        source = "Archon.gg Meta Builds (25.9% popularity, 10,787 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 29.4,
                        totalRankings = 6523,
                        source = "Archon.gg Meta Builds (29.4% popularity, 6,523 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.5,
                        totalRankings = 7973,
                        source = "Archon.gg Meta Builds (27.5% popularity, 7,973 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 35.1,
                        totalRankings = 8805,
                        source = "Archon.gg Meta Builds (35.1% popularity, 8,805 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.4,
                        totalRankings = 9555,
                        source = "Archon.gg Meta Builds (34.4% popularity, 9,555 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.9,
                        totalRankings = 7451,
                        source = "Archon.gg Meta Builds (6.9% popularity, 7,451 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 24.5,
                        totalRankings = 27468,
                        source = "Archon.gg Meta Builds (24.5% popularity, 27,468 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.6,
                        totalRankings = 3324,
                        source = "Archon.gg Meta Builds (7.6% popularity, 3,324 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 37.0,
                        totalRankings = 16600,
                        source = "Archon.gg Meta Builds (37.0% popularity, 16,600 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 49.4,
                        totalRankings = 15181,
                        source = "Archon.gg Meta Builds (49.4% popularity, 15,181 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZDWmBAAAAAg22mZGMzYMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 61.4,
                        totalRankings = 10723,
                        source = "Archon.gg Meta Builds (61.4% popularity, 10,723 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 55.0,
                        totalRankings = 2484,
                        source = "Archon.gg Meta Builds (55.0% popularity, 2,484 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.6,
                        totalRankings = 4392,
                        source = "Archon.gg Meta Builds (48.6% popularity, 4,392 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 17.3,
                        totalRankings = 16332,
                        source = "Archon.gg Meta Builds (17.3% popularity, 16,332 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 35.7,
                        totalRankings = 4210,
                        source = "Archon.gg Meta Builds (35.7% popularity, 4,210 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 14.5,
                        totalRankings = 23224,
                        source = "Archon.gg Meta Builds (14.5% popularity, 23,224 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.8,
                        totalRankings = 2747,
                        source = "Archon.gg Meta Builds (17.8% popularity, 2,747 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 29.8,
                        totalRankings = 12596,
                        source = "Archon.gg Meta Builds (29.8% popularity, 12,596 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.1,
                        totalRankings = 16719,
                        source = "Archon.gg Meta Builds (30.1% popularity, 16,719 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 15.4,
                        totalRankings = 3679,
                        source = "Archon.gg Meta Builds (15.4% popularity, 3,679 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 39.9,
                        totalRankings = 16116,
                        source = "Archon.gg Meta Builds (39.9% popularity, 16,116 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 13.4,
                        totalRankings = 9701,
                        source = "Archon.gg Meta Builds (13.4% popularity, 9,701 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMDzMjxYZYmZmZGmxIzYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 76.2,
                        totalRankings = 5290,
                        source = "Archon.gg Meta Builds (76.2% popularity, 5,290 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 25.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.0% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 26.8,
                        totalRankings = 1282,
                        source = "Archon.gg Meta Builds (26.8% popularity, 1,282 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 40.3,
                        totalRankings = 4294,
                        source = "Archon.gg Meta Builds (40.3% popularity, 4,294 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 15.1,
                        totalRankings = 1032,
                        source = "Archon.gg Meta Builds (15.1% popularity, 1,032 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBYWYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALMjBYzYGD",
                        usage = 69.9,
                        totalRankings = 2215,
                        source = "Archon.gg Meta Builds (69.9% popularity, 2,215 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbjZmFmZmZ2sxYbmZmxMDAAAAAwSwsZgZG1MmFWmZGjZmZAAAAAAAAAAAANzysMzsNAgFYmZAswgB",
                        usage = 21.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.1% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 8.7,
                        totalRankings = 732,
                        source = "Archon.gg Meta Builds (8.7% popularity, 732 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.6,
                        totalRankings = 3072,
                        source = "Archon.gg Meta Builds (24.6% popularity, 3,072 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGzMmlZGmBmBjZaGzMNz2YZwwYMzyMgZM2YmZZmZwMgxMwGYBMDTgFwywA",
                        usage = 14.9,
                        totalRankings = 2466,
                        source = "Archon.gg Meta Builds (14.9% popularity, 2,466 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.2,
                        totalRankings = 1610,
                        source = "Archon.gg Meta Builds (41.2% popularity, 1,610 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.0,
                        totalRankings = 576,
                        source = "Archon.gg Meta Builds (13.0% popularity, 576 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 34.2,
                        totalRankings = 2563,
                        source = "Archon.gg Meta Builds (34.2% popularity, 2,563 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                        usage = 58.6,
                        totalRankings = 2733,
                        source = "Archon.gg Meta Builds (58.6% popularity, 2,733 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 24.4,
                        totalRankings = 574,
                        source = "Archon.gg Meta Builds (24.4% popularity, 574 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 73.0,
                        totalRankings = 5395,
                        source = "Archon.gg Meta Builds (73.0% popularity, 5,395 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 39.4,
                        totalRankings = 769,
                        source = "Archon.gg Meta Builds (39.4% popularity, 769 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 42.7,
                        totalRankings = 1237,
                        source = "Archon.gg Meta Builds (42.7% popularity, 1,237 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.3,
                        totalRankings = 1782,
                        source = "Archon.gg Meta Builds (33.3% popularity, 1,782 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 62.8,
                        totalRankings = 1808,
                        source = "Archon.gg Meta Builds (62.8% popularity, 1,808 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzYWmZMzMDAAAAAAAAAAALLDjYmBmBWWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 38.0,
                        totalRankings = 1485,
                        source = "Archon.gg Meta Builds (38.0% popularity, 1,485 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 41.1,
                        totalRankings = 2102,
                        source = "Archon.gg Meta Builds (41.1% popularity, 2,102 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 12.8,
                        totalRankings = 1458,
                        source = "Archon.gg Meta Builds (12.8% popularity, 1,458 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 31.2,
                        totalRankings = 3432,
                        source = "Archon.gg Meta Builds (31.2% popularity, 3,432 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzsx2MzMzMzMAAAAAAAAAAwysMbDmZGMLMmxMjBLsNTjJWmBYmFsQYMbDwYDLAAA",
                        usage = 3.3,
                        totalRankings = 421,
                        source = "Archon.gg Meta Builds (3.3% popularity, 421 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 34.5,
                        totalRankings = 3807,
                        source = "Archon.gg Meta Builds (34.5% popularity, 3,807 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 52.1,
                        totalRankings = 2859,
                        source = "Archon.gg Meta Builds (52.1% popularity, 2,859 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZZwyMAAAAAA022MzgZGMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 81.5,
                        totalRankings = 1782,
                        source = "Archon.gg Meta Builds (81.5% popularity, 1,782 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 63.3,
                        totalRankings = 809,
                        source = "Archon.gg Meta Builds (63.3% popularity, 809 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.7,
                        totalRankings = 1531,
                        source = "Archon.gg Meta Builds (48.7% popularity, 1,531 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 26.1,
                        totalRankings = 3039,
                        source = "Archon.gg Meta Builds (26.1% popularity, 3,039 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 50.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.9% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.5,
                        totalRankings = 4144,
                        source = "Archon.gg Meta Builds (18.5% popularity, 4,144 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 15.9,
                        totalRankings = 452,
                        source = "Archon.gg Meta Builds (15.9% popularity, 452 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 48.0,
                        totalRankings = 2862,
                        source = "Archon.gg Meta Builds (48.0% popularity, 2,862 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 44.2,
                        totalRankings = 3002,
                        source = "Archon.gg Meta Builds (44.2% popularity, 3,002 parses)"
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
                        usage = 30.7,
                        totalRankings = 3017,
                        source = "Archon.gg Meta Builds (30.7% popularity, 3,017 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 24.7,
                        totalRankings = 1933,
                        source = "Archon.gg Meta Builds (24.7% popularity, 1,933 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 56.6,
                        totalRankings = 23478,
                        source = "Archon.gg Meta Builds (56.6% popularity, 23,478 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 21.0,
                        totalRankings = 5765,
                        source = "Archon.gg Meta Builds (21.0% popularity, 5,765 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.3,
                        totalRankings = 5104,
                        source = "Archon.gg Meta Builds (19.3% popularity, 5,104 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 30.7,
                        totalRankings = 21804,
                        source = "Archon.gg Meta Builds (30.7% popularity, 21,804 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 28.6,
                        totalRankings = 6409,
                        source = "Archon.gg Meta Builds (28.6% popularity, 6,409 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 11.8,
                        totalRankings = 11839,
                        source = "Archon.gg Meta Builds (11.8% popularity, 11,839 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 24.1,
                        totalRankings = 5212,
                        source = "Archon.gg Meta Builds (24.1% popularity, 5,212 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.0,
                        totalRankings = 2796,
                        source = "Archon.gg Meta Builds (20.0% popularity, 2,796 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.9,
                        totalRankings = 13624,
                        source = "Archon.gg Meta Builds (24.9% popularity, 13,624 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 15.5,
                        totalRankings = 9499,
                        source = "Archon.gg Meta Builds (15.5% popularity, 9,499 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.8,
                        totalRankings = 4266,
                        source = "Archon.gg Meta Builds (39.8% popularity, 4,266 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 9.8,
                        totalRankings = 1174,
                        source = "Archon.gg Meta Builds (9.8% popularity, 1,174 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 40.1,
                        totalRankings = 18170,
                        source = "Archon.gg Meta Builds (40.1% popularity, 18,170 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 18.2,
                        totalRankings = 12446,
                        source = "Archon.gg Meta Builds (18.2% popularity, 12,446 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 29.3,
                        totalRankings = 2103,
                        source = "Archon.gg Meta Builds (29.3% popularity, 2,103 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 50.7,
                        totalRankings = 20313,
                        source = "Archon.gg Meta Builds (50.7% popularity, 20,313 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.7,
                        totalRankings = 1389,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,389 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 29.3,
                        totalRankings = 9236,
                        source = "Archon.gg Meta Builds (29.3% popularity, 9,236 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 29.5,
                        totalRankings = 5709,
                        source = "Archon.gg Meta Builds (29.5% popularity, 5,709 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 26.5,
                        totalRankings = 6868,
                        source = "Archon.gg Meta Builds (26.5% popularity, 6,868 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 31.1,
                        totalRankings = 7902,
                        source = "Archon.gg Meta Builds (31.1% popularity, 7,902 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 32.8,
                        totalRankings = 8228,
                        source = "Archon.gg Meta Builds (32.8% popularity, 8,228 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.8,
                        totalRankings = 6201,
                        source = "Archon.gg Meta Builds (6.8% popularity, 6,201 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 20.1,
                        totalRankings = 23926,
                        source = "Archon.gg Meta Builds (20.1% popularity, 23,926 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.5,
                        totalRankings = 2480,
                        source = "Archon.gg Meta Builds (7.5% popularity, 2,480 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 36.6,
                        totalRankings = 14430,
                        source = "Archon.gg Meta Builds (36.6% popularity, 14,430 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 49.7,
                        totalRankings = 13841,
                        source = "Archon.gg Meta Builds (49.7% popularity, 13,841 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZDWmBAAAAAg22mZGMzYMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 41.5,
                        totalRankings = 8899,
                        source = "Archon.gg Meta Builds (41.5% popularity, 8,899 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 56.4,
                        totalRankings = 2098,
                        source = "Archon.gg Meta Builds (56.4% popularity, 2,098 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 44.6,
                        totalRankings = 4737,
                        source = "Archon.gg Meta Builds (44.6% popularity, 4,737 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 24.5,
                        totalRankings = 14762,
                        source = "Archon.gg Meta Builds (24.5% popularity, 14,762 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 38.1,
                        totalRankings = 3691,
                        source = "Archon.gg Meta Builds (38.1% popularity, 3,691 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 13.7,
                        totalRankings = 19760,
                        source = "Archon.gg Meta Builds (13.7% popularity, 19,760 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 33.5,
                        totalRankings = 2395,
                        source = "Archon.gg Meta Builds (33.5% popularity, 2,395 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 32.5,
                        totalRankings = 8961,
                        source = "Archon.gg Meta Builds (32.5% popularity, 8,961 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 22.7,
                        totalRankings = 16839,
                        source = "Archon.gg Meta Builds (22.7% popularity, 16,839 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 13.3,
                        totalRankings = 3037,
                        source = "Archon.gg Meta Builds (13.3% popularity, 3,037 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 31.6,
                        totalRankings = 14256,
                        source = "Archon.gg Meta Builds (31.6% popularity, 14,256 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 13.2,
                        totalRankings = 8356,
                        source = "Archon.gg Meta Builds (13.2% popularity, 8,356 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 86.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (86.3% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGzYAAAAAAAAYmZmNmZMDAY2mhZMbzMzgZAWMLGGYgZjhGLYAmBwA",
                        usage = 45.0,
                        totalRankings = 60,
                        source = "Archon.gg Meta Builds (45.0% popularity, 60 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMMzYmZmZGLzYmZmmhhxwYAAAAgZmZmZmZmZzMzYAAAMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 23.4,
                        totalRankings = 320,
                        source = "Archon.gg Meta Builds (23.4% popularity, 320 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 53.5,
                        totalRankings = 893,
                        source = "Archon.gg Meta Builds (53.5% popularity, 893 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                        usage = 9.7,
                        totalRankings = 62,
                        source = "Archon.gg Meta Builds (9.7% popularity, 62 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMmZZmtZmlxMjZmFjxwMjNswAMAbbjFMNzsMAAAAYzMjxAbGDD",
                        usage = 59.3,
                        totalRankings = 514,
                        source = "Archon.gg Meta Builds (59.3% popularity, 514 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2MYmZUzYWGLzMjhxMAAAAAAwAAAAA0MLzyMz2AAWAzMAWYwA",
                        usage = 52.2,
                        totalRankings = 209,
                        source = "Archon.gg Meta Builds (52.2% popularity, 209 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 19.4,
                        totalRankings = 36,
                        source = "Archon.gg Meta Builds (19.4% popularity, 36 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZzMmmZAmlxyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.8,
                        totalRankings = 425,
                        source = "Archon.gg Meta Builds (18.8% popularity, 425 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBMGDTDzMZ2GLDmZYMzyMgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 13.9,
                        totalRankings = 968,
                        source = "Archon.gg Meta Builds (13.9% popularity, 968 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 43.2,
                        totalRankings = 458,
                        source = "Archon.gg Meta Builds (43.2% popularity, 458 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 17.2,
                        totalRankings = 215,
                        source = "Archon.gg Meta Builds (17.2% popularity, 215 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 62.1,
                        totalRankings = 739,
                        source = "Archon.gg Meta Builds (62.1% popularity, 739 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZGzMjZkZMGzMDMDLLzgtxMDz22mZmZMLmZYmZGLbGzyAD",
                        usage = 50.1,
                        totalRankings = 393,
                        source = "Archon.gg Meta Builds (50.1% popularity, 393 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmZMDzwYYmhxMssMD2AAAAAgBAA",
                        usage = 38.5,
                        totalRankings = 26,
                        source = "Archon.gg Meta Builds (38.5% popularity, 26 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbGjZMzMLwYmhx0MjBAAAAAADAYmZaZ22mBAwGAAAAAAbAYMYmlZZGzMGzwMzMzYGzyYA",
                        usage = 79.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.5% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMjZmZBGzMMNmZWGAAAAAAMAgZmplZZbGAgNjZwYmxMjZxsMGmZYmtZsNzywAAAAAAAA",
                        usage = 43.2,
                        totalRankings = 37,
                        source = "Archon.gg Meta Builds (43.2% popularity, 37 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbsZMmhZmFDjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsNLAAAwCAAAAAAmNAAAAAAAA",
                        usage = 69.7,
                        totalRankings = 66,
                        source = "Archon.gg Meta Builds (69.7% popularity, 66 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 32.8,
                        totalRankings = 522,
                        source = "Archon.gg Meta Builds (32.8% popularity, 522 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 52.8,
                        totalRankings = 381,
                        source = "Archon.gg Meta Builds (52.8% popularity, 381 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 32.2,
                        totalRankings = 379,
                        source = "Archon.gg Meta Builds (32.2% popularity, 379 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 39.3,
                        totalRankings = 517,
                        source = "Archon.gg Meta Builds (39.3% popularity, 517 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMjZmx2MmxMGDDAAwAAAAAAAQbZMLGmZGjxMbtBAMAAzgtBAAAAMzsst02MjFzAAMDzwYA",
                        usage = 12.1,
                        totalRankings = 257,
                        source = "Archon.gg Meta Builds (12.1% popularity, 257 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 29.8,
                        totalRankings = 393,
                        source = "Archon.gg Meta Builds (29.8% popularity, 393 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZYGjxMDzYmtZmZmZMDAAAAAAAAAAmFLz2gZmBzCjZYGDW8Abz0YilBwMLYjwY2GgxGWAAA",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLbwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 38.7,
                        totalRankings = 344,
                        source = "Archon.gg Meta Builds (38.7% popularity, 344 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 45.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.5% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.1,
                        totalRankings = 86,
                        source = "Archon.gg Meta Builds (79.1% popularity, 86 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMDAGzmhBGYWYhWYzMA",
                        usage = 54.8,
                        totalRankings = 42,
                        source = "Archon.gg Meta Builds (54.8% popularity, 42 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2GzMjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 45.2,
                        totalRankings = 761,
                        source = "Archon.gg Meta Builds (45.2% popularity, 761 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmlpZAbMzMNMzMjhlZmZGmthZZMzYmxMzGA",
                        usage = 52.1,
                        totalRankings = 886,
                        source = "Archon.gg Meta Builds (52.1% popularity, 886 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZglFzMzMMjZ2mxyMzEsMMmZAAGD",
                        usage = 83.0,
                        totalRankings = 100,
                        source = "Archon.gg Meta Builds (83.0% popularity, 100 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 32.9,
                        totalRankings = 417,
                        source = "Archon.gg Meta Builds (32.9% popularity, 417 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 32.5,
                        totalRankings = 83,
                        source = "Archon.gg Meta Builds (32.5% popularity, 83 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 50.0,
                        totalRankings = 8,
                        source = "Archon.gg Meta Builds (50.0% popularity, 8 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.7% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMmZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 21.9,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (21.9% popularity, 32 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsMmhxygZWYmZGzwMMzy2MjZmZDzMzYYmZWGGMjBAAAhB2glFjGzAYWgxCA",
                        usage = 32.8,
                        totalRankings = 687,
                        source = "Archon.gg Meta Builds (32.8% popularity, 687 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMmZG2mZGGYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNmxA",
                        usage = 19.0,
                        totalRankings = 490,
                        source = "Archon.gg Meta Builds (19.0% popularity, 490 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 59.6,
                        totalRankings = 22897,
                        source = "Archon.gg Meta Builds (59.6% popularity, 22,897 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYmZ2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 27.0,
                        totalRankings = 5375,
                        source = "Archon.gg Meta Builds (27.0% popularity, 5,375 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 21.7,
                        totalRankings = 4830,
                        source = "Archon.gg Meta Builds (21.7% popularity, 4,830 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 31.2,
                        totalRankings = 21770,
                        source = "Archon.gg Meta Builds (31.2% popularity, 21,770 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 23.7,
                        totalRankings = 6151,
                        source = "Archon.gg Meta Builds (23.7% popularity, 6,151 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 83.3,
                        totalRankings = 11450,
                        source = "Archon.gg Meta Builds (83.3% popularity, 11,450 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2M8AmZUzYWGLzMjxMmBAAAAAAGAAAAgmZZWmZ2GAwCYGAWYwA",
                        usage = 52.9,
                        totalRankings = 4769,
                        source = "Archon.gg Meta Builds (52.9% popularity, 4,769 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 12.5,
                        totalRankings = 2624,
                        source = "Archon.gg Meta Builds (12.5% popularity, 2,624 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.8,
                        totalRankings = 13418,
                        source = "Archon.gg Meta Builds (25.8% popularity, 13,418 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGzMmlZGmBMYMTzYmpZ2GLDGGjZWmBMjZ2GzMGzgZgZMDsA2AzwEYBsMMA",
                        usage = 11.7,
                        totalRankings = 8998,
                        source = "Archon.gg Meta Builds (11.7% popularity, 8,998 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.6,
                        totalRankings = 4283,
                        source = "Archon.gg Meta Builds (40.6% popularity, 4,283 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 9.3,
                        totalRankings = 1205,
                        source = "Archon.gg Meta Builds (9.3% popularity, 1,205 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 38.3,
                        totalRankings = 17055,
                        source = "Archon.gg Meta Builds (38.3% popularity, 17,055 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 24.5,
                        totalRankings = 12646,
                        source = "Archon.gg Meta Builds (24.5% popularity, 12,646 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 12.9,
                        totalRankings = 1950,
                        source = "Archon.gg Meta Builds (12.9% popularity, 1,950 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 66.0,
                        totalRankings = 19136,
                        source = "Archon.gg Meta Builds (66.0% popularity, 19,136 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 39.7,
                        totalRankings = 2309,
                        source = "Archon.gg Meta Builds (39.7% popularity, 2,309 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 23.7,
                        totalRankings = 8710,
                        source = "Archon.gg Meta Builds (23.7% popularity, 8,710 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 27.3,
                        totalRankings = 5640,
                        source = "Archon.gg Meta Builds (27.3% popularity, 5,640 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 31.3,
                        totalRankings = 6764,
                        source = "Archon.gg Meta Builds (31.3% popularity, 6,764 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 23.2,
                        totalRankings = 7645,
                        source = "Archon.gg Meta Builds (23.2% popularity, 7,645 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.2,
                        totalRankings = 8175,
                        source = "Archon.gg Meta Builds (34.2% popularity, 8,175 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.4,
                        totalRankings = 5972,
                        source = "Archon.gg Meta Builds (7.4% popularity, 5,972 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                        usage = 29.5,
                        totalRankings = 22904,
                        source = "Archon.gg Meta Builds (29.5% popularity, 22,904 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.5,
                        totalRankings = 2416,
                        source = "Archon.gg Meta Builds (6.5% popularity, 2,416 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 36.2,
                        totalRankings = 14229,
                        source = "Archon.gg Meta Builds (36.2% popularity, 14,229 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 32.2,
                        totalRankings = 13244,
                        source = "Archon.gg Meta Builds (32.2% popularity, 13,244 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 69.9,
                        totalRankings = 9350,
                        source = "Archon.gg Meta Builds (69.9% popularity, 9,350 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 59.1,
                        totalRankings = 2236,
                        source = "Archon.gg Meta Builds (59.1% popularity, 2,236 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 29.1,
                        totalRankings = 3632,
                        source = "Archon.gg Meta Builds (29.1% popularity, 3,632 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 25.0,
                        totalRankings = 13907,
                        source = "Archon.gg Meta Builds (25.0% popularity, 13,907 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 44.1,
                        totalRankings = 3427,
                        source = "Archon.gg Meta Builds (44.1% popularity, 3,427 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 17.5,
                        totalRankings = 19444,
                        source = "Archon.gg Meta Builds (17.5% popularity, 19,444 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 40.7,
                        totalRankings = 3703,
                        source = "Archon.gg Meta Builds (40.7% popularity, 3,703 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 16.4,
                        totalRankings = 5762,
                        source = "Archon.gg Meta Builds (16.4% popularity, 5,762 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 39.7,
                        totalRankings = 17763,
                        source = "Archon.gg Meta Builds (39.7% popularity, 17,763 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMmZwwAAAAAAAwMmtBDYLGwmZMsADMDb0AWA",
                        usage = 12.9,
                        totalRankings = 3199,
                        source = "Archon.gg Meta Builds (12.9% popularity, 3,199 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsMmhxyYmZWYmZGzghZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                        usage = 35.3,
                        totalRankings = 13677,
                        source = "Archon.gg Meta Builds (35.3% popularity, 13,677 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 15.3,
                        totalRankings = 8182,
                        source = "Archon.gg Meta Builds (15.3% popularity, 8,182 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 75.7,
                        totalRankings = 239,
                        source = "Archon.gg Meta Builds (75.7% popularity, 239 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 66.7,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (66.7% popularity, 3 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzMzMGLzYmZmmZMjxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 30.8,
                        totalRankings = 78,
                        source = "Archon.gg Meta Builds (30.8% popularity, 78 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 56.6,
                        totalRankings = 281,
                        source = "Archon.gg Meta Builds (56.6% popularity, 281 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGLjxMjtZYmZMDmZWmZmNzMmZwAAAAAsMLmxwsw0AzMjxG",
                        usage = 30.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (30.0% popularity, 10 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 95.0,
                        totalRankings = 119,
                        source = "Archon.gg Meta Builds (95.0% popularity, 119 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzyYZmZMmxMAAAAAAwAAAAA0MLzyMz2AAWAzAwCzwA",
                        usage = 65.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (65.0% popularity, 20 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMYmZMGLeghZmFLDYDGNZamZWMLzMjxMMAAAAAAMMDAAAA0MbzyMzyAAYhZGAWMDG",
                        usage = 30.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (30.0% popularity, 10 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 19.4,
                        totalRankings = 222,
                        source = "Archon.gg Meta Builds (19.4% popularity, 222 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMzgBMYMTzYmpZ2GLzwwYMz2MgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 23.7,
                        totalRankings = 279,
                        source = "Archon.gg Meta Builds (23.7% popularity, 279 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.3,
                        totalRankings = 276,
                        source = "Archon.gg Meta Builds (41.3% popularity, 276 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWmBzsMzMzMmBAAAAAYAAwMDAGTNjZmBAAAAzYmtxMzyYmBmxMwYWswCMwMM0ALYMA",
                        usage = 15.5,
                        totalRankings = 110,
                        source = "Archon.gg Meta Builds (15.5% popularity, 110 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 48.7,
                        totalRankings = 39,
                        source = "Archon.gg Meta Builds (48.7% popularity, 39 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 77.6,
                        totalRankings = 317,
                        source = "Archon.gg Meta Builds (77.6% popularity, 317 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMGWgNYGGawyMzsMzMzMmxYmZmBjxMjZDAAAAAAoZMDjZmZMDzwYYmhxwssND2AAAAAgBAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAMbzMjZMjZxwYmhx0MjBAAAAAADAYmZaZ2WmBAwGAAAAAAAwYwMLzyMmZMmhZmZmxMmlxA",
                        usage = 67.3,
                        totalRankings = 107,
                        source = "Archon.gg Meta Builds (67.3% popularity, 107 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMjZMLwMzMMNmZWGAAAAAAMAgZmplZZZGAgNjZwYmxMjZxsMmxMDzsNDzsgBAAAAAAA",
                        usage = 44.4,
                        totalRankings = 430,
                        source = "Archon.gg Meta Builds (44.4% popularity, 430 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZmpxYMmZMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwsBAAAAAAAA",
                        usage = 55.6,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (55.6% popularity, 9 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwoxMjNmhxGD2mZmhZZMzYziJmtZbmZY2AAglZbaZ2mZZAAAAYG2A",
                        usage = 34.0,
                        totalRankings = 191,
                        source = "Archon.gg Meta Builds (34.0% popularity, 191 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 82.2,
                        totalRankings = 135,
                        source = "Archon.gg Meta Builds (82.2% popularity, 135 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 65.9,
                        totalRankings = 44,
                        source = "Archon.gg Meta Builds (65.9% popularity, 44 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 32.2,
                        totalRankings = 236,
                        source = "Archon.gg Meta Builds (32.2% popularity, 236 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzDMzMzM2mZmZMbMMAAADAAAAAAAJzMLGmZGjxMbtBAMAAGsNAAAAgZmltl2mZsYgBgZYGGD",
                        usage = 4.6,
                        totalRankings = 65,
                        source = "Archon.gg Meta Builds (4.6% popularity, 65 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 56.9,
                        totalRankings = 72,
                        source = "Archon.gg Meta Builds (56.9% popularity, 72 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZYGjxMDzYmtZmZmZMDAAAAAAAAAAmFLz2gZmBzCjZYGDW8Abz0YilBwMLYjwY2GgxGWAAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMMzMjBLbwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 31.7,
                        totalRankings = 246,
                        source = "Archon.gg Meta Builds (31.7% popularity, 246 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 57.8,
                        totalRankings = 308,
                        source = "Archon.gg Meta Builds (57.8% popularity, 308 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 91.8,
                        totalRankings = 61,
                        source = "Archon.gg Meta Builds (91.8% popularity, 61 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 79.4,
                        totalRankings = 34,
                        source = "Archon.gg Meta Builds (79.4% popularity, 34 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 46.5,
                        totalRankings = 187,
                        source = "Archon.gg Meta Builds (46.5% popularity, 187 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmZY2GmlxMjZGzMbA",
                        usage = 59.1,
                        totalRankings = 259,
                        source = "Archon.gg Meta Builds (59.1% popularity, 259 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwssYGjxYMzGWmZmmNWGLjZGAgxA",
                        usage = 80.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (80.0% popularity, 5 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 28.2,
                        totalRankings = 294,
                        source = "Archon.gg Meta Builds (28.2% popularity, 294 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAgZmZmZmhY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 62.5,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (62.5% popularity, 16 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZMzMjxMGmZmZmBzMAAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 47.2,
                        totalRankings = 608,
                        source = "Archon.gg Meta Builds (47.2% popularity, 608 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmZmZMbLLjZAAAAGMNMzsMmhxyYmZsZmZYGMMAAAAAAAMjZbwA2iBsZGDbwAzwGNgFA",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMaMMmlZmhxyAzCzMzwMjhZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                        usage = 74.3,
                        totalRankings = 105,
                        source = "Archon.gg Meta Builds (74.3% popularity, 105 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzsxMG",
                        usage = 15.7,
                        totalRankings = 210,
                        source = "Archon.gg Meta Builds (15.7% popularity, 210 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 33.3,
                        totalRankings = 19496,
                        source = "Archon.gg Meta Builds (33.3% popularity, 19,496 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 68.4,
                        totalRankings = 6624,
                        source = "Archon.gg Meta Builds (68.4% popularity, 6,624 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 22.8,
                        totalRankings = 4663,
                        source = "Archon.gg Meta Builds (22.8% popularity, 4,663 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 52.2,
                        totalRankings = 19508,
                        source = "Archon.gg Meta Builds (52.2% popularity, 19,508 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 37.3,
                        totalRankings = 5787,
                        source = "Archon.gg Meta Builds (37.3% popularity, 5,787 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 28.3,
                        totalRankings = 10743,
                        source = "Archon.gg Meta Builds (28.3% popularity, 10,743 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 76.7,
                        totalRankings = 4610,
                        source = "Archon.gg Meta Builds (76.7% popularity, 4,610 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.2,
                        totalRankings = 2453,
                        source = "Archon.gg Meta Builds (30.2% popularity, 2,453 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 26.2,
                        totalRankings = 12134,
                        source = "Archon.gg Meta Builds (26.2% popularity, 12,134 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 27.0,
                        totalRankings = 8768,
                        source = "Archon.gg Meta Builds (27.0% popularity, 8,768 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 37.5,
                        totalRankings = 3832,
                        source = "Archon.gg Meta Builds (37.5% popularity, 3,832 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 9.9,
                        totalRankings = 1137,
                        source = "Archon.gg Meta Builds (9.9% popularity, 1,137 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 77.1,
                        totalRankings = 15784,
                        source = "Archon.gg Meta Builds (77.1% popularity, 15,784 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.2,
                        totalRankings = 12085,
                        source = "Archon.gg Meta Builds (70.2% popularity, 12,085 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 66.1,
                        totalRankings = 1800,
                        source = "Archon.gg Meta Builds (66.1% popularity, 1,800 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 56.4,
                        totalRankings = 19131,
                        source = "Archon.gg Meta Builds (56.4% popularity, 19,131 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 43.0,
                        totalRankings = 1204,
                        source = "Archon.gg Meta Builds (43.0% popularity, 1,204 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 33.4,
                        totalRankings = 7790,
                        source = "Archon.gg Meta Builds (33.4% popularity, 7,790 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.6,
                        totalRankings = 5296,
                        source = "Archon.gg Meta Builds (32.6% popularity, 5,296 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.5,
                        totalRankings = 6201,
                        source = "Archon.gg Meta Builds (25.5% popularity, 6,201 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.7,
                        totalRankings = 7159,
                        source = "Archon.gg Meta Builds (53.7% popularity, 7,159 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.5,
                        totalRankings = 7436,
                        source = "Archon.gg Meta Builds (34.5% popularity, 7,436 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 9.4,
                        totalRankings = 5534,
                        source = "Archon.gg Meta Builds (9.4% popularity, 5,534 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 61.8,
                        totalRankings = 20891,
                        source = "Archon.gg Meta Builds (61.8% popularity, 20,891 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.7,
                        totalRankings = 2136,
                        source = "Archon.gg Meta Builds (8.7% popularity, 2,136 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 37.0,
                        totalRankings = 13175,
                        source = "Archon.gg Meta Builds (37.0% popularity, 13,175 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 41.6,
                        totalRankings = 12701,
                        source = "Archon.gg Meta Builds (41.6% popularity, 12,701 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 73.5,
                        totalRankings = 9842,
                        source = "Archon.gg Meta Builds (73.5% popularity, 9,842 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 89.6,
                        totalRankings = 1853,
                        source = "Archon.gg Meta Builds (89.6% popularity, 1,853 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.1,
                        totalRankings = 2987,
                        source = "Archon.gg Meta Builds (55.1% popularity, 2,987 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 25.5,
                        totalRankings = 13514,
                        source = "Archon.gg Meta Builds (25.5% popularity, 13,514 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 68.5,
                        totalRankings = 3158,
                        source = "Archon.gg Meta Builds (68.5% popularity, 3,158 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 15.5,
                        totalRankings = 17422,
                        source = "Archon.gg Meta Builds (15.5% popularity, 17,422 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.3,
                        totalRankings = 2139,
                        source = "Archon.gg Meta Builds (19.3% popularity, 2,139 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.3,
                        totalRankings = 8592,
                        source = "Archon.gg Meta Builds (77.3% popularity, 8,592 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.6,
                        totalRankings = 14901,
                        source = "Archon.gg Meta Builds (41.6% popularity, 14,901 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 51.5,
                        totalRankings = 2938,
                        source = "Archon.gg Meta Builds (51.5% popularity, 2,938 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 60.4,
                        totalRankings = 12593,
                        source = "Archon.gg Meta Builds (60.4% popularity, 12,593 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 21.5,
                        totalRankings = 7548,
                        source = "Archon.gg Meta Builds (21.5% popularity, 7,548 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 47.9,
                        totalRankings = 286,
                        source = "Archon.gg Meta Builds (47.9% popularity, 286 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 75.5,
                        totalRankings = 518,
                        source = "Archon.gg Meta Builds (75.5% popularity, 518 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 31.5,
                        totalRankings = 219,
                        source = "Archon.gg Meta Builds (31.5% popularity, 219 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 66.3,
                        totalRankings = 624,
                        source = "Archon.gg Meta Builds (66.3% popularity, 624 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMjMzMGDjZZmhZsNjZegZMzwYMzMbmZ2mZwAAAAAsMLmxwsx0AzMD2A",
                        usage = 11.4,
                        totalRankings = 35,
                        source = "Archon.gg Meta Builds (11.4% popularity, 35 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 54.6,
                        totalRankings = 249,
                        source = "Archon.gg Meta Builds (54.6% popularity, 249 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 91.0,
                        totalRankings = 200,
                        source = "Archon.gg Meta Builds (91.0% popularity, 200 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 22.6,
                        totalRankings = 31,
                        source = "Archon.gg Meta Builds (22.6% popularity, 31 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 19.7,
                        totalRankings = 355,
                        source = "Archon.gg Meta Builds (19.7% popularity, 355 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 34.1,
                        totalRankings = 560,
                        source = "Archon.gg Meta Builds (34.1% popularity, 560 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.5,
                        totalRankings = 421,
                        source = "Archon.gg Meta Builds (42.5% popularity, 421 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZbMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.9,
                        totalRankings = 147,
                        source = "Archon.gg Meta Builds (12.9% popularity, 147 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 86.2,
                        totalRankings = 174,
                        source = "Archon.gg Meta Builds (86.2% popularity, 174 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 72.6,
                        totalRankings = 679,
                        source = "Archon.gg Meta Builds (72.6% popularity, 679 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMjZYGGDzMMGmNzgNAAAAAYAA",
                        usage = 42.9,
                        totalRankings = 21,
                        source = "Archon.gg Meta Builds (42.9% popularity, 21 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 63.5,
                        totalRankings = 988,
                        source = "Archon.gg Meta Builds (63.5% popularity, 988 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbGMjHYMLGGzMMNmZMzAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 32.5,
                        totalRankings = 40,
                        source = "Archon.gg Meta Builds (32.5% popularity, 40 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 62.7,
                        totalRankings = 51,
                        source = "Archon.gg Meta Builds (62.7% popularity, 51 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 29.8,
                        totalRankings = 403,
                        source = "Archon.gg Meta Builds (29.8% popularity, 403 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 44.4,
                        totalRankings = 306,
                        source = "Archon.gg Meta Builds (44.4% popularity, 306 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 71.3,
                        totalRankings = 202,
                        source = "Archon.gg Meta Builds (71.3% popularity, 202 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 45.2,
                        totalRankings = 436,
                        source = "Archon.gg Meta Builds (45.2% popularity, 436 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMYWmHYZmZmZmx2MzMmBDDAAwAAAAAAAQyYYwMMGzsFAgBMAzgtBAAAAMzsst02MjFDMAjZGzwYA",
                        usage = 7.1,
                        totalRankings = 155,
                        source = "Archon.gg Meta Builds (7.1% popularity, 155 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 82.0,
                        totalRankings = 300,
                        source = "Archon.gg Meta Builds (82.0% popularity, 300 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDzYMmZYmN2mZmZmZmBAAAAAAAAAAzysMbDmZGMLMmBjBLegtZaMxyAYmFsQYMbDwYDLAAA",
                        usage = 25.0,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (25.0% popularity, 16 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.3,
                        totalRankings = 464,
                        source = "Archon.gg Meta Builds (40.3% popularity, 464 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 31.1,
                        totalRankings = 479,
                        source = "Archon.gg Meta Builds (31.1% popularity, 479 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 83.5,
                        totalRankings = 527,
                        source = "Archon.gg Meta Builds (83.5% popularity, 527 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 84.6,
                        totalRankings = 39,
                        source = "Archon.gg Meta Builds (84.6% popularity, 39 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 108.4,
                        totalRankings = 95,
                        source = "Archon.gg Meta Builds (108.4% popularity, 95 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 55.6,
                        totalRankings = 675,
                        source = "Archon.gg Meta Builds (55.6% popularity, 675 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 74.6,
                        totalRankings = 71,
                        source = "Archon.gg Meta Builds (74.6% popularity, 71 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 26.3,
                        totalRankings = 441,
                        source = "Archon.gg Meta Builds (26.3% popularity, 441 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 23.5,
                        totalRankings = 17,
                        source = "Archon.gg Meta Builds (23.5% popularity, 17 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 89.5,
                        totalRankings = 86,
                        source = "Archon.gg Meta Builds (89.5% popularity, 86 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 57.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.0% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 52.6,
                        totalRankings = 19,
                        source = "Archon.gg Meta Builds (52.6% popularity, 19 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 59.5,
                        totalRankings = 565,
                        source = "Archon.gg Meta Builds (59.5% popularity, 565 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNMzA",
                        usage = 44.2,
                        totalRankings = 387,
                        source = "Archon.gg Meta Builds (44.2% popularity, 387 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 65.4,
                        totalRankings = 11456,
                        source = "Archon.gg Meta Builds (65.4% popularity, 11,456 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 59.4,
                        totalRankings = 2896,
                        source = "Archon.gg Meta Builds (59.4% popularity, 2,896 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 27.0,
                        totalRankings = 3210,
                        source = "Archon.gg Meta Builds (27.0% popularity, 3,210 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 32.2,
                        totalRankings = 10972,
                        source = "Archon.gg Meta Builds (32.2% popularity, 10,972 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.9,
                        totalRankings = 2761,
                        source = "Archon.gg Meta Builds (30.9% popularity, 2,761 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 26.6,
                        totalRankings = 6093,
                        source = "Archon.gg Meta Builds (26.6% popularity, 6,093 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 30.7,
                        totalRankings = 2625,
                        source = "Archon.gg Meta Builds (30.7% popularity, 2,625 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.6,
                        totalRankings = 1098,
                        source = "Archon.gg Meta Builds (20.6% popularity, 1,098 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.2,
                        totalRankings = 6156,
                        source = "Archon.gg Meta Builds (23.2% popularity, 6,156 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 33.2,
                        totalRankings = 5805,
                        source = "Archon.gg Meta Builds (33.2% popularity, 5,805 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.6,
                        totalRankings = 2647,
                        source = "Archon.gg Meta Builds (39.6% popularity, 2,647 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 10.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (10.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 45.2,
                        totalRankings = 8285,
                        source = "Archon.gg Meta Builds (45.2% popularity, 8,285 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 43.2,
                        totalRankings = 6922,
                        source = "Archon.gg Meta Builds (43.2% popularity, 6,922 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 58.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.5% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 49.2,
                        totalRankings = 12429,
                        source = "Archon.gg Meta Builds (49.2% popularity, 12,429 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 43.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.1% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 43.0,
                        totalRankings = 3290,
                        source = "Archon.gg Meta Builds (43.0% popularity, 3,290 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 29.9,
                        totalRankings = 3312,
                        source = "Archon.gg Meta Builds (29.9% popularity, 3,312 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 34.2,
                        totalRankings = 4176,
                        source = "Archon.gg Meta Builds (34.2% popularity, 4,176 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 47.0,
                        totalRankings = 4019,
                        source = "Archon.gg Meta Builds (47.0% popularity, 4,019 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.9,
                        totalRankings = 4249,
                        source = "Archon.gg Meta Builds (36.9% popularity, 4,249 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 9.2,
                        totalRankings = 2931,
                        source = "Archon.gg Meta Builds (9.2% popularity, 2,931 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 58.8,
                        totalRankings = 11453,
                        source = "Archon.gg Meta Builds (58.8% popularity, 11,453 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 5.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.0% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 29.7,
                        totalRankings = 7846,
                        source = "Archon.gg Meta Builds (29.7% popularity, 7,846 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 51.8,
                        totalRankings = 7433,
                        source = "Archon.gg Meta Builds (51.8% popularity, 7,433 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 80.1,
                        totalRankings = 5253,
                        source = "Archon.gg Meta Builds (80.1% popularity, 5,253 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 83.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (83.6% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.0,
                        totalRankings = 2325,
                        source = "Archon.gg Meta Builds (52.0% popularity, 2,325 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.3,
                        totalRankings = 7968,
                        source = "Archon.gg Meta Builds (31.3% popularity, 7,968 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 42.4,
                        totalRankings = 1664,
                        source = "Archon.gg Meta Builds (42.4% popularity, 1,664 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 18.1,
                        totalRankings = 8738,
                        source = "Archon.gg Meta Builds (18.1% popularity, 8,738 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 31.2,
                        totalRankings = 1016,
                        source = "Archon.gg Meta Builds (31.2% popularity, 1,016 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.8,
                        totalRankings = 3944,
                        source = "Archon.gg Meta Builds (77.8% popularity, 3,944 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 33.9,
                        totalRankings = 10197,
                        source = "Archon.gg Meta Builds (33.9% popularity, 10,197 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmHY2mlllZGAAAADmmxw2YGLDzwM2MzMYYGGAAAAAAAegxsMzMDYJM22GYBMgZYCMD2A",
                        usage = 30.7,
                        totalRankings = 1472,
                        source = "Archon.gg Meta Builds (30.7% popularity, 1,472 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 48.9,
                        totalRankings = 8013,
                        source = "Archon.gg Meta Builds (48.9% popularity, 8,013 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 18.7,
                        totalRankings = 4297,
                        source = "Archon.gg Meta Builds (18.7% popularity, 4,297 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 97.4,
                        totalRankings = 39,
                        source = "Archon.gg Meta Builds (97.4% popularity, 39 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 90.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (90.0% popularity, 20 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmBziZmlxYG2mhZGzMGMLzMzmZGzMYAAAAY2mBDjlFmwgZmBLA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmlZMzYmZshFGgBYbbshpZmlBAAAAbmZmBYzAD",
                        usage = 50.0,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (50.0% popularity, 6 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBjZG1MmlxyMzYMjBAAAAAAMAAAAANzysMzsNAgFYmBgFGM",
                        usage = 75.0,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (75.0% popularity, 12 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWmHYMMDzYxDMMzsYZAgRTmmZmlZWmZGjZYAAAAAAYYGAAAAoZ2mlZmlBAwCjBgFzMM",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsNoZzMmmZMwsMzyMzwwMDAAAAAAAMAAAAAgZbmlmlZ2sxMzAYAaA",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 71.4,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (71.4% popularity, 7 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMjZMwYGhZAAAAmZmJmtZmHYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 15.8,
                        totalRankings = 19,
                        source = "Archon.gg Meta Builds (15.8% popularity, 19 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZ8AzMLzMzMMDAAAAAAAAMzAeAjxUDzMDAAAAmxMbjZmlxMDMz2MGsALjhx2AYGEbYMA",
                        usage = 40.6,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (40.6% popularity, 32 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 56.0,
                        totalRankings = 25,
                        source = "Archon.gg Meta Builds (56.0% popularity, 25 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 56.3,
                        totalRankings = 48,
                        source = "Archon.gg Meta Builds (56.3% popularity, 48 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgx2wMmxsMjtxMzAAAAAAAwyCGxMjFmhxGD2mZmhZZMzYbWMxsNbzgZ2AAglZbaZ2mZZAAAAYG2A",
                        usage = 44.4,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (44.4% popularity, 18 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswQzMzAzwMYw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 100.0,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (100.0% popularity, 3 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzYWmZMzMDAAAAAAAAAAALLDjYmBmhhFmx2MzMMbMzwsMTAAsMmZYmhtZAAsBAmlZpZmZWAMD",
                        usage = 44.4,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (44.4% popularity, 9 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 35.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (35.0% popularity, 20 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGDzWbAwYgBwMYbAAAAAzMLbLtNzYxADAzwMMG",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzMbzgZbYWmtZYYwghlF2AAAgZm2mlZbGAwGwAAzYGmB",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsMLz2gZmBzCDDzYYWWgZM1sMAmZBLEGzyAMWgFWMLDA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 50.0,
                        totalRankings = 24,
                        source = "Archon.gg Meta Builds (50.0% popularity, 24 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMjlZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 38.5,
                        totalRankings = 26,
                        source = "Archon.gg Meta Builds (38.5% popularity, 26 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsMNzMYbjZmGGzMLDLzMzgxwsMzMjZGzMbA",
                        usage = 75.0,
                        totalRankings = 24,
                        source = "Archon.gg Meta Builds (75.0% popularity, 24 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmB2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 33.3,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (33.3% popularity, 18 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAgZmZmZmhY2MwsNzMDzyAAAAmZMziZmx2MzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 60.6,
                        totalRankings = 33,
                        source = "Archon.gg Meta Builds (60.6% popularity, 33 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZsZmhZMYmFmZmxMMDzstNzYmZWwMmZmxMjlhHgHYmZAAAQM22GYBMgZYCMDbA",
                        usage = 57.1,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (57.1% popularity, 7 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhZmNjZZwYMTDLzMDDDmhtZmBDzwAAAAAAALjBAmxGgB2glFjGzAY2wMbYmB",
                        usage = 15.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (15.0% popularity, 20 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZYGzMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 51.8,
                        totalRankings = 7686,
                        source = "Archon.gg Meta Builds (51.8% popularity, 7,686 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 55.6,
                        totalRankings = 2356,
                        source = "Archon.gg Meta Builds (55.6% popularity, 2,356 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGjxYZGzMz0MjZMzYGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 30.8,
                        totalRankings = 2609,
                        source = "Archon.gg Meta Builds (30.8% popularity, 2,609 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 36.4,
                        totalRankings = 7824,
                        source = "Archon.gg Meta Builds (36.4% popularity, 7,824 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
                        usage = 30.9,
                        totalRankings = 1743,
                        source = "Archon.gg Meta Builds (30.9% popularity, 1,743 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 29.5,
                        totalRankings = 4137,
                        source = "Archon.gg Meta Builds (29.5% popularity, 4,137 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 78.6,
                        totalRankings = 1665,
                        source = "Archon.gg Meta Builds (78.6% popularity, 1,665 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 15.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.3% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 19.0,
                        totalRankings = 4320,
                        source = "Archon.gg Meta Builds (19.0% popularity, 4,320 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 34.8,
                        totalRankings = 4135,
                        source = "Archon.gg Meta Builds (34.8% popularity, 4,135 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.7,
                        totalRankings = 2153,
                        source = "Archon.gg Meta Builds (39.7% popularity, 2,153 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 9.8,
                        totalRankings = 866,
                        source = "Archon.gg Meta Builds (9.8% popularity, 866 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 36.9,
                        totalRankings = 5611,
                        source = "Archon.gg Meta Builds (36.9% popularity, 5,611 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 68.6,
                        totalRankings = 4873,
                        source = "Archon.gg Meta Builds (68.6% popularity, 4,873 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 54.2,
                        totalRankings = 924,
                        source = "Archon.gg Meta Builds (54.2% popularity, 924 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 53.4,
                        totalRankings = 8712,
                        source = "Archon.gg Meta Builds (53.4% popularity, 8,712 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.3,
                        totalRankings = 921,
                        source = "Archon.gg Meta Builds (42.3% popularity, 921 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 43.0,
                        totalRankings = 2033,
                        source = "Archon.gg Meta Builds (43.0% popularity, 2,033 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 27.9,
                        totalRankings = 2319,
                        source = "Archon.gg Meta Builds (27.9% popularity, 2,319 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 35.8,
                        totalRankings = 3172,
                        source = "Archon.gg Meta Builds (35.8% popularity, 3,172 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 36.2,
                        totalRankings = 2694,
                        source = "Archon.gg Meta Builds (36.2% popularity, 2,694 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 40.4,
                        totalRankings = 2921,
                        source = "Archon.gg Meta Builds (40.4% popularity, 2,921 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.3,
                        totalRankings = 1909,
                        source = "Archon.gg Meta Builds (8.3% popularity, 1,909 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 65.6,
                        totalRankings = 7886,
                        source = "Archon.gg Meta Builds (65.6% popularity, 7,886 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 5.3,
                        totalRankings = 1010,
                        source = "Archon.gg Meta Builds (5.3% popularity, 1,010 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.8,
                        totalRankings = 5943,
                        source = "Archon.gg Meta Builds (30.8% popularity, 5,943 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 56.1,
                        totalRankings = 4799,
                        source = "Archon.gg Meta Builds (56.1% popularity, 4,799 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 82.9,
                        totalRankings = 3905,
                        source = "Archon.gg Meta Builds (82.9% popularity, 3,905 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 84.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (84.3% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.2,
                        totalRankings = 1549,
                        source = "Archon.gg Meta Builds (53.2% popularity, 1,549 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNDMbYmphZmZ2GzyMzMYWGmlxMjZGzMbA",
                        usage = 36.2,
                        totalRankings = 5532,
                        source = "Archon.gg Meta Builds (36.2% popularity, 5,532 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 42.3,
                        totalRankings = 1020,
                        source = "Archon.gg Meta Builds (42.3% popularity, 1,020 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 19.9,
                        totalRankings = 6051,
                        source = "Archon.gg Meta Builds (19.9% popularity, 6,051 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 46.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.5% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.3,
                        totalRankings = 1343,
                        source = "Archon.gg Meta Builds (80.3% popularity, 1,343 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 50.2,
                        totalRankings = 8156,
                        source = "Archon.gg Meta Builds (50.2% popularity, 8,156 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmHY2mlllZGAAAADmmxw2YGLDzwM2MzMYYGGAAAAAAAegxsMzMDYJM22GYBMgZYCMD2A",
                        usage = 29.3,
                        totalRankings = 1173,
                        source = "Archon.gg Meta Builds (29.3% popularity, 1,173 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 42.9,
                        totalRankings = 5749,
                        source = "Archon.gg Meta Builds (42.9% popularity, 5,749 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZmZYsMww2Mzgx8ADDAAAAAAsMAAzYDwAbwyiRjZAMbwsxMzA",
                        usage = 19.9,
                        totalRankings = 2893,
                        source = "Archon.gg Meta Builds (19.9% popularity, 2,893 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["ROGUE"] = {
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 14.1,
                    totalRankings = 36635,
                    source = "Archon.gg Mythic+ Meta Builds (14.1% popularity, 36,635 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGjZGGmZmZmhxMamxMjhxAmZmZmZmZmBAAAAAAAAAAAgNzihBGY2YohNMzMjZGYYA",
                    usage = 29.7,
                    totalRankings = 180283,
                    source = "Archon.gg Mythic+ Meta Builds (29.7% popularity, 180,283 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 57.2,
                    totalRankings = 30931,
                    source = "Archon.gg Mythic+ Meta Builds (57.2% popularity, 30,931 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 40.5,
                    totalRankings = 123741,
                    source = "Archon.gg Mythic+ Meta Builds (40.5% popularity, 123,741 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 43.7,
                    totalRankings = 113944,
                    source = "Archon.gg Mythic+ Meta Builds (43.7% popularity, 113,944 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 73.1,
                    totalRankings = 59514,
                    source = "Archon.gg Mythic+ Meta Builds (73.1% popularity, 59,514 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 57.6,
                    totalRankings = 30505,
                    source = "Archon.gg Mythic+ Meta Builds (57.6% popularity, 30,505 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 30.1,
                    totalRankings = 47427,
                    source = "Archon.gg Mythic+ Meta Builds (30.1% popularity, 47,427 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 11.7,
                    totalRankings = 113151,
                    source = "Archon.gg Mythic+ Meta Builds (11.7% popularity, 113,151 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmpZ2GLDGGjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 21.5,
                    totalRankings = 45990,
                    source = "Archon.gg Mythic+ Meta Builds (21.5% popularity, 45,990 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDYAAwMjZMzMGmJGzAAAAbzMzkx2MjxYGAAGzmFWgBmhhGMWgB",
                    usage = 34.9,
                    totalRankings = 19999,
                    source = "Archon.gg Mythic+ Meta Builds (34.9% popularity, 19,999 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMLjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 27.2,
                    totalRankings = 7291,
                    source = "Archon.gg Mythic+ Meta Builds (27.2% popularity, 7,291 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjZeALzMDzMGsMjZmxYmZmMjZMjZmhZGzwYYMMLDz2yMYDAAAAAAmB",
                    usage = 60.2,
                    totalRankings = 80527,
                    source = "Archon.gg Mythic+ Meta Builds (60.2% popularity, 80,527 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                    usage = 43.0,
                    totalRankings = 87002,
                    source = "Archon.gg Mythic+ Meta Builds (43.0% popularity, 87,002 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 20.1,
                    totalRankings = 18277,
                    source = "Archon.gg Mythic+ Meta Builds (20.1% popularity, 18,277 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMLmtZwMjZmF4BMzwYamxMAAAAAAMAgZmplZbbGAAbAAAAAAsBgxgZWmlZMzYMDzMzMjZMLjB",
                    usage = 50.5,
                    totalRankings = 131922,
                    source = "Archon.gg Mythic+ Meta Builds (50.5% popularity, 131,922 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzgZGzMLAzMjpxMjZGAAAAAADAYmZaZW2mBAYzMzgxMDzYWMLjhZmNzsNjlZWwAAAAAAAA",
                    usage = 22.7,
                    totalRankings = 8324,
                    source = "Archon.gg Mythic+ Meta Builds (22.7% popularity, 8,324 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhZmFPAMzoxYmZZmZGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAY2AAAAAAAAA",
                    usage = 40.2,
                    totalRankings = 52503,
                    source = "Archon.gg Mythic+ Meta Builds (40.2% popularity, 52,503 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 33.8,
                    totalRankings = 65442,
                    source = "Archon.gg Mythic+ Meta Builds (33.8% popularity, 65,442 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 16.1,
                    totalRankings = 29546,
                    source = "Archon.gg Mythic+ Meta Builds (16.1% popularity, 29,546 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 34.9,
                    totalRankings = 32087,
                    source = "Archon.gg Mythic+ Meta Builds (34.9% popularity, 32,087 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLmxMLz2Mzs0AAAAsAYwmZghhB",
                    usage = 31.6,
                    totalRankings = 42205,
                    source = "Archon.gg Mythic+ Meta Builds (31.6% popularity, 42,205 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZGzsNmxAAAMAAAAAAA0WzMzihZGGD2aDAGDMAAbDAAAAYmZZbptZGLMYAYwMbYA",
                    usage = 7.7,
                    totalRankings = 112064,
                    source = "Archon.gg Mythic+ Meta Builds (7.7% popularity, 112,064 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 32.6,
                    totalRankings = 131270,
                    source = "Archon.gg Mythic+ Meta Builds (32.6% popularity, 131,270 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAglZmZwYMmBzsZ2mZmZmZmBAAAAAAAAAAWsMbDmZGMLMmxYMYxsNTzMxiBYmNsQYMLDwYDLAAA",
                    usage = 10.4,
                    totalRankings = 86465,
                    source = "Archon.gg Mythic+ Meta Builds (10.4% popularity, 86,465 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 18.1,
                    totalRankings = 20065,
                    source = "Archon.gg Mythic+ Meta Builds (18.1% popularity, 20,065 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 29.6,
                    totalRankings = 60957,
                    source = "Archon.gg Mythic+ Meta Builds (29.6% popularity, 60,957 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 78.1,
                    totalRankings = 53316,
                    source = "Archon.gg Mythic+ Meta Builds (78.1% popularity, 53,316 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 55.9,
                    totalRankings = 16388,
                    source = "Archon.gg Mythic+ Meta Builds (55.9% popularity, 16,388 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 39.3,
                    totalRankings = 25162,
                    source = "Archon.gg Mythic+ Meta Builds (39.3% popularity, 25,162 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsNNDYDzMNMzMz2MWmxMYWGLWmZMYYmtBA",
                    usage = 16.3,
                    totalRankings = 71909,
                    source = "Archon.gg Mythic+ Meta Builds (16.3% popularity, 71,909 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                    usage = 49.4,
                    totalRankings = 22384,
                    source = "Archon.gg Mythic+ Meta Builds (49.4% popularity, 22,384 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 25.1,
                    totalRankings = 183583,
                    source = "Archon.gg Mythic+ Meta Builds (25.1% popularity, 183,583 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMLglZAAAAAAAAwMsA",
                    usage = 29.0,
                    totalRankings = 12447,
                    source = "Archon.gg Mythic+ Meta Builds (29.0% popularity, 12,447 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 17.8,
                    totalRankings = 61064,
                    source = "Archon.gg Mythic+ Meta Builds (17.8% popularity, 61,064 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 13.4,
                    totalRankings = 68724,
                    source = "Archon.gg Mythic+ Meta Builds (13.4% popularity, 68,724 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMzystsMmBAAAYw0wMzyYGGLjZmxiZmhZwwAAAAAAAwMmtBDYLGwmZMsADMDb0AWA",
                    usage = 29.9,
                    totalRankings = 18689,
                    source = "Archon.gg Mythic+ Meta Builds (29.9% popularity, 18,689 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMaMwsMmhxyAzCzMzMzMjhZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                    usage = 41.8,
                    totalRankings = 52358,
                    source = "Archon.gg Mythic+ Meta Builds (41.8% popularity, 52,358 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAAkBAAAgxMMzMzMzMbmZWGMGjGzyYGGLjZmhtZmxMwwAAAAAAALDAwM2AMwGssY0YGAzCMbMjZA",
                    usage = 12.1,
                    totalRankings = 119881,
                    source = "Archon.gg Mythic+ Meta Builds (12.1% popularity, 119,881 parses)"
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
