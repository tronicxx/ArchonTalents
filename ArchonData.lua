-- Archon Talents Data File
-- Generated: 2025-09-23 08:05:58 UTC
-- Version: 1758632758
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1758632758
    local lastUpdated = "2025-09-23 08:05:58 UTC"
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
                        usage = 45.4,
                        totalRankings = 35073,
                        source = "Archon.gg Meta Builds (45.4% popularity, 35,073 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.2,
                        totalRankings = 6240,
                        source = "Archon.gg Meta Builds (70.2% popularity, 6,240 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.8,
                        totalRankings = 6616,
                        source = "Archon.gg Meta Builds (17.8% popularity, 6,616 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 61.2,
                        totalRankings = 30867,
                        source = "Archon.gg Meta Builds (61.2% popularity, 30,867 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 44.0,
                        totalRankings = 8046,
                        source = "Archon.gg Meta Builds (44.0% popularity, 8,046 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 43.0,
                        totalRankings = 14487,
                        source = "Archon.gg Meta Builds (43.0% popularity, 14,487 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 76.7,
                        totalRankings = 6675,
                        source = "Archon.gg Meta Builds (76.7% popularity, 6,675 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 29.7,
                        totalRankings = 4953,
                        source = "Archon.gg Meta Builds (29.7% popularity, 4,953 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.7,
                        totalRankings = 19017,
                        source = "Archon.gg Meta Builds (23.7% popularity, 19,017 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 22.2,
                        totalRankings = 9671,
                        source = "Archon.gg Meta Builds (22.2% popularity, 9,671 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.3,
                        totalRankings = 5671,
                        source = "Archon.gg Meta Builds (40.3% popularity, 5,671 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.0,
                        totalRankings = 1875,
                        source = "Archon.gg Meta Builds (13.0% popularity, 1,875 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 46.9,
                        totalRankings = 35011,
                        source = "Archon.gg Meta Builds (46.9% popularity, 35,011 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.1,
                        totalRankings = 16221,
                        source = "Archon.gg Meta Builds (70.1% popularity, 16,221 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 62.2,
                        totalRankings = 2916,
                        source = "Archon.gg Meta Builds (62.2% popularity, 2,916 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 67.6,
                        totalRankings = 25133,
                        source = "Archon.gg Meta Builds (67.6% popularity, 25,133 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.5,
                        totalRankings = 2006,
                        source = "Archon.gg Meta Builds (44.5% popularity, 2,006 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 35.9,
                        totalRankings = 10634,
                        source = "Archon.gg Meta Builds (35.9% popularity, 10,634 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.1,
                        totalRankings = 6878,
                        source = "Archon.gg Meta Builds (35.1% popularity, 6,878 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.3,
                        totalRankings = 7983,
                        source = "Archon.gg Meta Builds (24.3% popularity, 7,983 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 63.6,
                        totalRankings = 9473,
                        source = "Archon.gg Meta Builds (63.6% popularity, 9,473 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.3,
                        totalRankings = 10744,
                        source = "Archon.gg Meta Builds (35.3% popularity, 10,744 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 9.1,
                        totalRankings = 9941,
                        source = "Archon.gg Meta Builds (9.1% popularity, 9,941 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 70.9,
                        totalRankings = 35625,
                        source = "Archon.gg Meta Builds (70.9% popularity, 35,625 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 10.6,
                        totalRankings = 3592,
                        source = "Archon.gg Meta Builds (10.6% popularity, 3,592 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 29.7,
                        totalRankings = 17314,
                        source = "Archon.gg Meta Builds (29.7% popularity, 17,314 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 30.4,
                        totalRankings = 14215,
                        source = "Archon.gg Meta Builds (30.4% popularity, 14,215 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.6,
                        totalRankings = 8382,
                        source = "Archon.gg Meta Builds (70.6% popularity, 8,382 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 69.2,
                        totalRankings = 2282,
                        source = "Archon.gg Meta Builds (69.2% popularity, 2,282 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.5,
                        totalRankings = 6026,
                        source = "Archon.gg Meta Builds (56.5% popularity, 6,026 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 26.9,
                        totalRankings = 18783,
                        source = "Archon.gg Meta Builds (26.9% popularity, 18,783 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 64.6,
                        totalRankings = 4046,
                        source = "Archon.gg Meta Builds (64.6% popularity, 4,046 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 16.4,
                        totalRankings = 28985,
                        source = "Archon.gg Meta Builds (16.4% popularity, 28,985 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.5,
                        totalRankings = 2459,
                        source = "Archon.gg Meta Builds (19.5% popularity, 2,459 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.2,
                        totalRankings = 9297,
                        source = "Archon.gg Meta Builds (76.2% popularity, 9,297 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 36.1,
                        totalRankings = 25021,
                        source = "Archon.gg Meta Builds (36.1% popularity, 25,021 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 61.5,
                        totalRankings = 3594,
                        source = "Archon.gg Meta Builds (61.5% popularity, 3,594 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 52.1,
                        totalRankings = 24628,
                        source = "Archon.gg Meta Builds (52.1% popularity, 24,628 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 19.6,
                        totalRankings = 13001,
                        source = "Archon.gg Meta Builds (19.6% popularity, 13,001 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 61.7,
                        totalRankings = 16189,
                        source = "Archon.gg Meta Builds (61.7% popularity, 16,189 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 71.7,
                        totalRankings = 3287,
                        source = "Archon.gg Meta Builds (71.7% popularity, 3,287 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 24.9,
                        totalRankings = 2737,
                        source = "Archon.gg Meta Builds (24.9% popularity, 2,737 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 72.3,
                        totalRankings = 11735,
                        source = "Archon.gg Meta Builds (72.3% popularity, 11,735 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 40.5,
                        totalRankings = 3020,
                        source = "Archon.gg Meta Builds (40.5% popularity, 3,020 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 46.1,
                        totalRankings = 5126,
                        source = "Archon.gg Meta Builds (46.1% popularity, 5,126 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 81.5,
                        totalRankings = 2390,
                        source = "Archon.gg Meta Builds (81.5% popularity, 2,390 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.8,
                        totalRankings = 1291,
                        source = "Archon.gg Meta Builds (23.8% popularity, 1,291 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.5,
                        totalRankings = 8474,
                        source = "Archon.gg Meta Builds (22.5% popularity, 8,474 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 27.1,
                        totalRankings = 4145,
                        source = "Archon.gg Meta Builds (27.1% popularity, 4,145 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.3,
                        totalRankings = 3120,
                        source = "Archon.gg Meta Builds (41.3% popularity, 3,120 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.5,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (13.5% popularity, 1,001 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 60.7,
                        totalRankings = 11044,
                        source = "Archon.gg Meta Builds (60.7% popularity, 11,044 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 81.7,
                        totalRankings = 5871,
                        source = "Archon.gg Meta Builds (81.7% popularity, 5,871 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 48.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (48.1% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 76.2,
                        totalRankings = 13134,
                        source = "Archon.gg Meta Builds (76.2% popularity, 13,134 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.8% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 50.0,
                        totalRankings = 3120,
                        source = "Archon.gg Meta Builds (50.0% popularity, 3,120 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.9,
                        totalRankings = 3738,
                        source = "Archon.gg Meta Builds (33.9% popularity, 3,738 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 40.6,
                        totalRankings = 3368,
                        source = "Archon.gg Meta Builds (40.6% popularity, 3,368 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 70.8,
                        totalRankings = 3216,
                        source = "Archon.gg Meta Builds (70.8% popularity, 3,216 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.6,
                        totalRankings = 4743,
                        source = "Archon.gg Meta Builds (37.6% popularity, 4,743 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MmxMYYAAAGAAAAAAAarZmZzwMYMjZrNAgBAYGsNAAAAgZmtllWmZsYGMAAzwYA",
                        usage = 6.3,
                        totalRankings = 3755,
                        source = "Archon.gg Meta Builds (6.3% popularity, 3,755 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 76.3,
                        totalRankings = 11391,
                        source = "Archon.gg Meta Builds (76.3% popularity, 11,391 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (6.2% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.9,
                        totalRankings = 8649,
                        source = "Archon.gg Meta Builds (39.9% popularity, 8,649 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 26.7,
                        totalRankings = 5392,
                        source = "Archon.gg Meta Builds (26.7% popularity, 5,392 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 74.3,
                        totalRankings = 4314,
                        source = "Archon.gg Meta Builds (74.3% popularity, 4,314 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 60.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (60.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.0,
                        totalRankings = 2297,
                        source = "Archon.gg Meta Builds (58.0% popularity, 2,297 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 41.0,
                        totalRankings = 6985,
                        source = "Archon.gg Meta Builds (41.0% popularity, 6,985 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 72.7,
                        totalRankings = 1186,
                        source = "Archon.gg Meta Builds (72.7% popularity, 1,186 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.7,
                        totalRankings = 12835,
                        source = "Archon.gg Meta Builds (18.7% popularity, 12,835 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.9% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.9,
                        totalRankings = 2922,
                        source = "Archon.gg Meta Builds (76.9% popularity, 2,922 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 38.6,
                        totalRankings = 10905,
                        source = "Archon.gg Meta Builds (38.6% popularity, 10,905 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 59.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (59.0% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.4,
                        totalRankings = 9117,
                        source = "Archon.gg Meta Builds (45.4% popularity, 9,117 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 15.0,
                        totalRankings = 5530,
                        source = "Archon.gg Meta Builds (15.0% popularity, 5,530 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 45.5,
                        totalRankings = 36643,
                        source = "Archon.gg Meta Builds (45.5% popularity, 36,643 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.0,
                        totalRankings = 6649,
                        source = "Archon.gg Meta Builds (70.0% popularity, 6,649 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 19.3,
                        totalRankings = 6833,
                        source = "Archon.gg Meta Builds (19.3% popularity, 6,833 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 59.3,
                        totalRankings = 32328,
                        source = "Archon.gg Meta Builds (59.3% popularity, 32,328 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 40.4,
                        totalRankings = 8268,
                        source = "Archon.gg Meta Builds (40.4% popularity, 8,268 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 43.9,
                        totalRankings = 15362,
                        source = "Archon.gg Meta Builds (43.9% popularity, 15,362 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 77.2,
                        totalRankings = 7072,
                        source = "Archon.gg Meta Builds (77.2% popularity, 7,072 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.6,
                        totalRankings = 5006,
                        source = "Archon.gg Meta Builds (30.6% popularity, 5,006 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.6,
                        totalRankings = 19899,
                        source = "Archon.gg Meta Builds (24.6% popularity, 19,899 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 17.7,
                        totalRankings = 10157,
                        source = "Archon.gg Meta Builds (17.7% popularity, 10,157 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.6,
                        totalRankings = 5867,
                        source = "Archon.gg Meta Builds (41.6% popularity, 5,867 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.4,
                        totalRankings = 2046,
                        source = "Archon.gg Meta Builds (14.4% popularity, 2,046 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 46.3,
                        totalRankings = 36548,
                        source = "Archon.gg Meta Builds (46.3% popularity, 36,548 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.5,
                        totalRankings = 16523,
                        source = "Archon.gg Meta Builds (70.5% popularity, 16,523 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 64.5,
                        totalRankings = 3048,
                        source = "Archon.gg Meta Builds (64.5% popularity, 3,048 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 67.2,
                        totalRankings = 26792,
                        source = "Archon.gg Meta Builds (67.2% popularity, 26,792 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 41.4,
                        totalRankings = 2061,
                        source = "Archon.gg Meta Builds (41.4% popularity, 2,061 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 36.5,
                        totalRankings = 11103,
                        source = "Archon.gg Meta Builds (36.5% popularity, 11,103 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.6,
                        totalRankings = 7114,
                        source = "Archon.gg Meta Builds (35.6% popularity, 7,114 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.3,
                        totalRankings = 8283,
                        source = "Archon.gg Meta Builds (27.3% popularity, 8,283 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 65.4,
                        totalRankings = 10031,
                        source = "Archon.gg Meta Builds (65.4% popularity, 10,031 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.6,
                        totalRankings = 11152,
                        source = "Archon.gg Meta Builds (35.6% popularity, 11,152 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 10.2,
                        totalRankings = 10228,
                        source = "Archon.gg Meta Builds (10.2% popularity, 10,228 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.5,
                        totalRankings = 37206,
                        source = "Archon.gg Meta Builds (71.5% popularity, 37,206 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.7,
                        totalRankings = 3605,
                        source = "Archon.gg Meta Builds (9.7% popularity, 3,605 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 29.4,
                        totalRankings = 18104,
                        source = "Archon.gg Meta Builds (29.4% popularity, 18,104 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 45.7,
                        totalRankings = 15160,
                        source = "Archon.gg Meta Builds (45.7% popularity, 15,160 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.5,
                        totalRankings = 8826,
                        source = "Archon.gg Meta Builds (70.5% popularity, 8,826 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 69.2,
                        totalRankings = 2393,
                        source = "Archon.gg Meta Builds (69.2% popularity, 2,393 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.3,
                        totalRankings = 6336,
                        source = "Archon.gg Meta Builds (57.3% popularity, 6,336 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 27.7,
                        totalRankings = 20002,
                        source = "Archon.gg Meta Builds (27.7% popularity, 20,002 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 63.6,
                        totalRankings = 4197,
                        source = "Archon.gg Meta Builds (63.6% popularity, 4,197 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.2,
                        totalRankings = 30460,
                        source = "Archon.gg Meta Builds (17.2% popularity, 30,460 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.5,
                        totalRankings = 2493,
                        source = "Archon.gg Meta Builds (19.5% popularity, 2,493 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.5,
                        totalRankings = 9240,
                        source = "Archon.gg Meta Builds (76.5% popularity, 9,240 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.0,
                        totalRankings = 26797,
                        source = "Archon.gg Meta Builds (35.0% popularity, 26,797 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.4,
                        totalRankings = 3741,
                        source = "Archon.gg Meta Builds (62.4% popularity, 3,741 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 51.6,
                        totalRankings = 25719,
                        source = "Archon.gg Meta Builds (51.6% popularity, 25,719 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 18.5,
                        totalRankings = 13495,
                        source = "Archon.gg Meta Builds (18.5% popularity, 13,495 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 66.4,
                        totalRankings = 4574,
                        source = "Archon.gg Meta Builds (66.4% popularity, 4,574 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 78.3,
                        totalRankings = 1007,
                        source = "Archon.gg Meta Builds (78.3% popularity, 1,007 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 32.1,
                        totalRankings = 1406,
                        source = "Archon.gg Meta Builds (32.1% popularity, 1,406 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 69.8,
                        totalRankings = 3986,
                        source = "Archon.gg Meta Builds (69.8% popularity, 3,986 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 37.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (37.8% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 50.0,
                        totalRankings = 2206,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2,206 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 79.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.1% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 19.7,
                        totalRankings = 689,
                        source = "Archon.gg Meta Builds (19.7% popularity, 689 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 20.2,
                        totalRankings = 2645,
                        source = "Archon.gg Meta Builds (20.2% popularity, 2,645 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 25.0,
                        totalRankings = 2235,
                        source = "Archon.gg Meta Builds (25.0% popularity, 2,235 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.9,
                        totalRankings = 1602,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,602 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 15.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 60.6,
                        totalRankings = 4096,
                        source = "Archon.gg Meta Builds (60.6% popularity, 4,096 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 83.0,
                        totalRankings = 2009,
                        source = "Archon.gg Meta Builds (83.0% popularity, 2,009 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 44.1,
                        totalRankings = 408,
                        source = "Archon.gg Meta Builds (44.1% popularity, 408 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 74.9,
                        totalRankings = 5433,
                        source = "Archon.gg Meta Builds (74.9% popularity, 5,433 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 39.4,
                        totalRankings = 612,
                        source = "Archon.gg Meta Builds (39.4% popularity, 612 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 58.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.7% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 33.5,
                        totalRankings = 1890,
                        source = "Archon.gg Meta Builds (33.5% popularity, 1,890 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 48.7,
                        totalRankings = 1685,
                        source = "Archon.gg Meta Builds (48.7% popularity, 1,685 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 81.3,
                        totalRankings = 1376,
                        source = "Archon.gg Meta Builds (81.3% popularity, 1,376 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.3,
                        totalRankings = 2090,
                        source = "Archon.gg Meta Builds (36.3% popularity, 2,090 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 9.1,
                        totalRankings = 1191,
                        source = "Archon.gg Meta Builds (9.1% popularity, 1,191 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 83.6,
                        totalRankings = 3204,
                        source = "Archon.gg Meta Builds (83.6% popularity, 3,204 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 3.0,
                        totalRankings = 270,
                        source = "Archon.gg Meta Builds (3.0% popularity, 270 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 45.9,
                        totalRankings = 3367,
                        source = "Archon.gg Meta Builds (45.9% popularity, 3,367 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 54.8,
                        totalRankings = 2773,
                        source = "Archon.gg Meta Builds (54.8% popularity, 2,773 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 78.0,
                        totalRankings = 2033,
                        source = "Archon.gg Meta Builds (78.0% popularity, 2,033 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 55.4,
                        totalRankings = 617,
                        source = "Archon.gg Meta Builds (55.4% popularity, 617 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 54.4,
                        totalRankings = 1098,
                        source = "Archon.gg Meta Builds (54.4% popularity, 1,098 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 47.6,
                        totalRankings = 3423,
                        source = "Archon.gg Meta Builds (47.6% popularity, 3,423 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 74.1,
                        totalRankings = 955,
                        source = "Archon.gg Meta Builds (74.1% popularity, 955 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 3632,
                        source = "Archon.gg Meta Builds (19.3% popularity, 3,632 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.3,
                        totalRankings = 272,
                        source = "Archon.gg Meta Builds (21.3% popularity, 272 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 83.2,
                        totalRankings = 501,
                        source = "Archon.gg Meta Builds (83.2% popularity, 501 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 53.1,
                        totalRankings = 5958,
                        source = "Archon.gg Meta Builds (53.1% popularity, 5,958 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 65.1,
                        totalRankings = 390,
                        source = "Archon.gg Meta Builds (65.1% popularity, 390 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 48.4,
                        totalRankings = 3376,
                        source = "Archon.gg Meta Builds (48.4% popularity, 3,376 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 27.0,
                        totalRankings = 1966,
                        source = "Archon.gg Meta Builds (27.0% popularity, 1,966 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 75.4,
                        totalRankings = 34676,
                        source = "Archon.gg Meta Builds (75.4% popularity, 34,676 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 26.2,
                        totalRankings = 5466,
                        source = "Archon.gg Meta Builds (26.2% popularity, 5,466 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 19.4,
                        totalRankings = 6518,
                        source = "Archon.gg Meta Builds (19.4% popularity, 6,518 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 21.8,
                        totalRankings = 29939,
                        source = "Archon.gg Meta Builds (21.8% popularity, 29,939 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 34.0,
                        totalRankings = 7865,
                        source = "Archon.gg Meta Builds (34.0% popularity, 7,865 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 26.6,
                        totalRankings = 14415,
                        source = "Archon.gg Meta Builds (26.6% popularity, 14,415 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 17.9,
                        totalRankings = 6595,
                        source = "Archon.gg Meta Builds (17.9% popularity, 6,595 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.3,
                        totalRankings = 4826,
                        source = "Archon.gg Meta Builds (20.3% popularity, 4,826 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.1,
                        totalRankings = 18630,
                        source = "Archon.gg Meta Builds (24.1% popularity, 18,630 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 17.6,
                        totalRankings = 9608,
                        source = "Archon.gg Meta Builds (17.6% popularity, 9,608 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.3,
                        totalRankings = 5552,
                        source = "Archon.gg Meta Builds (42.3% popularity, 5,552 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.9,
                        totalRankings = 1931,
                        source = "Archon.gg Meta Builds (13.9% popularity, 1,931 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 32.3,
                        totalRankings = 34136,
                        source = "Archon.gg Meta Builds (32.3% popularity, 34,136 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjmZMGzMDjhZxMDbDzMmttNzMzYWMzwYmxyGsMMzA",
                        usage = 23.9,
                        totalRankings = 15373,
                        source = "Archon.gg Meta Builds (23.9% popularity, 15,373 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 28.7,
                        totalRankings = 2924,
                        source = "Archon.gg Meta Builds (28.7% popularity, 2,924 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.1,
                        totalRankings = 24743,
                        source = "Archon.gg Meta Builds (55.1% popularity, 24,743 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 38.2,
                        totalRankings = 1962,
                        source = "Archon.gg Meta Builds (38.2% popularity, 1,962 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 24.5,
                        totalRankings = 10809,
                        source = "Archon.gg Meta Builds (24.5% popularity, 10,809 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.2,
                        totalRankings = 6787,
                        source = "Archon.gg Meta Builds (33.2% popularity, 6,787 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 30.6,
                        totalRankings = 7819,
                        source = "Archon.gg Meta Builds (30.6% popularity, 7,819 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 37.3,
                        totalRankings = 9507,
                        source = "Archon.gg Meta Builds (37.3% popularity, 9,507 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.8,
                        totalRankings = 10416,
                        source = "Archon.gg Meta Builds (35.8% popularity, 10,416 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.3,
                        totalRankings = 9661,
                        source = "Archon.gg Meta Builds (6.3% popularity, 9,661 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 32.1,
                        totalRankings = 35163,
                        source = "Archon.gg Meta Builds (32.1% popularity, 35,163 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.2,
                        totalRankings = 3322,
                        source = "Archon.gg Meta Builds (9.2% popularity, 3,322 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 29.5,
                        totalRankings = 17269,
                        source = "Archon.gg Meta Builds (29.5% popularity, 17,269 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 43.2,
                        totalRankings = 14256,
                        source = "Archon.gg Meta Builds (43.2% popularity, 14,256 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZDWmBAAAAAg22mZGMzYMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 46.8,
                        totalRankings = 7200,
                        source = "Archon.gg Meta Builds (46.8% popularity, 7,200 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 49.7,
                        totalRankings = 2343,
                        source = "Archon.gg Meta Builds (49.7% popularity, 2,343 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.4,
                        totalRankings = 6957,
                        source = "Archon.gg Meta Builds (50.4% popularity, 6,957 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 20.3,
                        totalRankings = 18834,
                        source = "Archon.gg Meta Builds (20.3% popularity, 18,834 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 30.3,
                        totalRankings = 4024,
                        source = "Archon.gg Meta Builds (30.3% popularity, 4,024 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.1,
                        totalRankings = 27968,
                        source = "Archon.gg Meta Builds (18.1% popularity, 27,968 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.8,
                        totalRankings = 2272,
                        source = "Archon.gg Meta Builds (17.8% popularity, 2,272 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 29.4,
                        totalRankings = 10323,
                        source = "Archon.gg Meta Builds (29.4% popularity, 10,323 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.9,
                        totalRankings = 23826,
                        source = "Archon.gg Meta Builds (30.9% popularity, 23,826 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 24.7,
                        totalRankings = 3429,
                        source = "Archon.gg Meta Builds (24.7% popularity, 3,429 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 23.7,
                        totalRankings = 24349,
                        source = "Archon.gg Meta Builds (23.7% popularity, 24,349 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.8,
                        totalRankings = 12769,
                        source = "Archon.gg Meta Builds (19.8% popularity, 12,769 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 85.4,
                        totalRankings = 16877,
                        source = "Archon.gg Meta Builds (85.4% popularity, 16,877 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 34.8,
                        totalRankings = 1906,
                        source = "Archon.gg Meta Builds (34.8% popularity, 1,906 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 25.4,
                        totalRankings = 2700,
                        source = "Archon.gg Meta Builds (25.4% popularity, 2,700 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 25.7,
                        totalRankings = 11472,
                        source = "Archon.gg Meta Builds (25.7% popularity, 11,472 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 19.5,
                        totalRankings = 2961,
                        source = "Archon.gg Meta Builds (19.5% popularity, 2,961 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBYWYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALMjBYzYGD",
                        usage = 38.0,
                        totalRankings = 4911,
                        source = "Archon.gg Meta Builds (38.0% popularity, 4,911 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2gxMjaGzyYZmZMmxMAAAAAAwAAAAA0MLzyMz2AAWAzAwCDG",
                        usage = 26.6,
                        totalRankings = 2264,
                        source = "Archon.gg Meta Builds (26.6% popularity, 2,264 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 14.0,
                        totalRankings = 1254,
                        source = "Archon.gg Meta Builds (14.0% popularity, 1,254 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.1,
                        totalRankings = 8407,
                        source = "Archon.gg Meta Builds (22.1% popularity, 8,407 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZWmBMjZ2GzMLzMDmBmxMwGYBMDTgFwywA",
                        usage = 14.1,
                        totalRankings = 4096,
                        source = "Archon.gg Meta Builds (14.1% popularity, 4,096 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.2,
                        totalRankings = 3106,
                        source = "Archon.gg Meta Builds (42.2% popularity, 3,106 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (13.8% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 50.5,
                        totalRankings = 10376,
                        source = "Archon.gg Meta Builds (50.5% popularity, 10,376 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 42.0,
                        totalRankings = 5826,
                        source = "Archon.gg Meta Builds (42.0% popularity, 5,826 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 15.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.7% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 71.8,
                        totalRankings = 13127,
                        source = "Archon.gg Meta Builds (71.8% popularity, 13,127 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 36.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (36.6% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 37.4,
                        totalRankings = 3243,
                        source = "Archon.gg Meta Builds (37.4% popularity, 3,243 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.1,
                        totalRankings = 3668,
                        source = "Archon.gg Meta Builds (32.1% popularity, 3,668 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 54.2,
                        totalRankings = 3355,
                        source = "Archon.gg Meta Builds (54.2% popularity, 3,355 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 17.8,
                        totalRankings = 3093,
                        source = "Archon.gg Meta Builds (17.8% popularity, 3,093 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.3,
                        totalRankings = 4659,
                        source = "Archon.gg Meta Builds (37.3% popularity, 4,659 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.8,
                        totalRankings = 3644,
                        source = "Archon.gg Meta Builds (6.8% popularity, 3,644 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 19.1,
                        totalRankings = 11057,
                        source = "Archon.gg Meta Builds (19.1% popularity, 11,057 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 5.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.3% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.7,
                        totalRankings = 8502,
                        source = "Archon.gg Meta Builds (41.7% popularity, 8,502 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 43.2,
                        totalRankings = 5365,
                        source = "Archon.gg Meta Builds (43.2% popularity, 5,365 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZZwyMAAAAAA022MzgZGMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 69.1,
                        totalRankings = 2648,
                        source = "Archon.gg Meta Builds (69.1% popularity, 2,648 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 51.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.1% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 49.0,
                        totalRankings = 3659,
                        source = "Archon.gg Meta Builds (49.0% popularity, 3,659 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 28.0,
                        totalRankings = 6898,
                        source = "Archon.gg Meta Builds (28.0% popularity, 6,898 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 52.9,
                        totalRankings = 1164,
                        source = "Archon.gg Meta Builds (52.9% popularity, 1,164 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.1,
                        totalRankings = 12671,
                        source = "Archon.gg Meta Builds (22.1% popularity, 12,671 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.5,
                        totalRankings = 928,
                        source = "Archon.gg Meta Builds (19.5% popularity, 928 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 47.2,
                        totalRankings = 4552,
                        source = "Archon.gg Meta Builds (47.2% popularity, 4,552 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 39.2,
                        totalRankings = 9214,
                        source = "Archon.gg Meta Builds (39.2% popularity, 9,214 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 26.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.3% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 21.4,
                        totalRankings = 8926,
                        source = "Archon.gg Meta Builds (21.4% popularity, 8,926 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.3,
                        totalRankings = 5434,
                        source = "Archon.gg Meta Builds (25.3% popularity, 5,434 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 75.4,
                        totalRankings = 35037,
                        source = "Archon.gg Meta Builds (75.4% popularity, 35,037 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.7,
                        totalRankings = 5400,
                        source = "Archon.gg Meta Builds (28.7% popularity, 5,400 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 17.6,
                        totalRankings = 6476,
                        source = "Archon.gg Meta Builds (17.6% popularity, 6,476 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 20.7,
                        totalRankings = 29707,
                        source = "Archon.gg Meta Builds (20.7% popularity, 29,707 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.2,
                        totalRankings = 7648,
                        source = "Archon.gg Meta Builds (32.2% popularity, 7,648 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 22.2,
                        totalRankings = 14523,
                        source = "Archon.gg Meta Builds (22.2% popularity, 14,523 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 17.7,
                        totalRankings = 6695,
                        source = "Archon.gg Meta Builds (17.7% popularity, 6,695 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 22.0,
                        totalRankings = 4623,
                        source = "Archon.gg Meta Builds (22.0% popularity, 4,623 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.7,
                        totalRankings = 17999,
                        source = "Archon.gg Meta Builds (23.7% popularity, 17,999 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 12.0,
                        totalRankings = 9741,
                        source = "Archon.gg Meta Builds (12.0% popularity, 9,741 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.6,
                        totalRankings = 5479,
                        source = "Archon.gg Meta Builds (41.6% popularity, 5,479 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.7,
                        totalRankings = 2009,
                        source = "Archon.gg Meta Builds (13.7% popularity, 2,009 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 29.0,
                        totalRankings = 33543,
                        source = "Archon.gg Meta Builds (29.0% popularity, 33,543 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMjZ0MjxwMDjZMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 22.0,
                        totalRankings = 14920,
                        source = "Archon.gg Meta Builds (22.0% popularity, 14,920 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 25.6,
                        totalRankings = 2930,
                        source = "Archon.gg Meta Builds (25.6% popularity, 2,930 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.6,
                        totalRankings = 24362,
                        source = "Archon.gg Meta Builds (55.6% popularity, 24,362 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 37.5,
                        totalRankings = 1913,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,913 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 25.5,
                        totalRankings = 10678,
                        source = "Archon.gg Meta Builds (25.5% popularity, 10,678 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.3,
                        totalRankings = 6769,
                        source = "Archon.gg Meta Builds (33.3% popularity, 6,769 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 28.1,
                        totalRankings = 7674,
                        source = "Archon.gg Meta Builds (28.1% popularity, 7,674 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 34.4,
                        totalRankings = 9580,
                        source = "Archon.gg Meta Builds (34.4% popularity, 9,580 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.7,
                        totalRankings = 10291,
                        source = "Archon.gg Meta Builds (34.7% popularity, 10,291 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 9311,
                        source = "Archon.gg Meta Builds (5.6% popularity, 9,311 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 27.9,
                        totalRankings = 34802,
                        source = "Archon.gg Meta Builds (27.9% popularity, 34,802 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.8,
                        totalRankings = 3086,
                        source = "Archon.gg Meta Builds (9.8% popularity, 3,086 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 29.2,
                        totalRankings = 17031,
                        source = "Archon.gg Meta Builds (29.2% popularity, 17,031 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 41.8,
                        totalRankings = 14411,
                        source = "Archon.gg Meta Builds (41.8% popularity, 14,411 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 58.7,
                        totalRankings = 7038,
                        source = "Archon.gg Meta Builds (58.7% popularity, 7,038 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 49.0,
                        totalRankings = 2288,
                        source = "Archon.gg Meta Builds (49.0% popularity, 2,288 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 45.6,
                        totalRankings = 7433,
                        source = "Archon.gg Meta Builds (45.6% popularity, 7,433 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 28.0,
                        totalRankings = 19143,
                        source = "Archon.gg Meta Builds (28.0% popularity, 19,143 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 31.7,
                        totalRankings = 4045,
                        source = "Archon.gg Meta Builds (31.7% popularity, 4,045 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.0,
                        totalRankings = 27096,
                        source = "Archon.gg Meta Builds (17.0% popularity, 27,096 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.0,
                        totalRankings = 2278,
                        source = "Archon.gg Meta Builds (23.0% popularity, 2,278 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 33.5,
                        totalRankings = 8914,
                        source = "Archon.gg Meta Builds (33.5% popularity, 8,914 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 25.1,
                        totalRankings = 24969,
                        source = "Archon.gg Meta Builds (25.1% popularity, 24,969 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 22.7,
                        totalRankings = 3350,
                        source = "Archon.gg Meta Builds (22.7% popularity, 3,350 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 22.5,
                        totalRankings = 24073,
                        source = "Archon.gg Meta Builds (22.5% popularity, 24,073 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 20.0,
                        totalRankings = 12505,
                        source = "Archon.gg Meta Builds (20.0% popularity, 12,505 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 93.1,
                        totalRankings = 2769,
                        source = "Archon.gg Meta Builds (93.1% popularity, 2,769 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGGDAAAAAAAAzMzsxMjZAAz2MMjZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 43.4,
                        totalRankings = 412,
                        source = "Archon.gg Meta Builds (43.4% popularity, 412 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMMzYmZmZGLzYmZmmhhxwYAAAAgZmZmZmZmZzMzYAAAMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.1% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 47.0,
                        totalRankings = 2163,
                        source = "Archon.gg Meta Builds (47.0% popularity, 2,163 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                        usage = 6.3,
                        totalRankings = 694,
                        source = "Archon.gg Meta Builds (6.3% popularity, 694 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMmZZmtZmlxMjZmFjxwMjNswAMAbbjFMNzsMAAAAYzMjxAbGDD",
                        usage = 37.0,
                        totalRankings = 1473,
                        source = "Archon.gg Meta Builds (37.0% popularity, 1,473 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2MMMjaGzyYZmZMmxAAAAAAAGAAAAgmZZWmZ2GAwCYGAWMDG",
                        usage = 28.0,
                        totalRankings = 986,
                        source = "Archon.gg Meta Builds (28.0% popularity, 986 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 8.2,
                        totalRankings = 292,
                        source = "Archon.gg Meta Builds (8.2% popularity, 292 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2MjpZGDMLzsMzMMMzAAAAAAAADAAAAAY2mZrZZmNbMmZAGgG",
                        usage = 22.1,
                        totalRankings = 1113,
                        source = "Archon.gg Meta Builds (22.1% popularity, 1,113 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZ2mBMjZ2GzMLzMDmBmxMwGYBMDTgFwywA",
                        usage = 17.7,
                        totalRankings = 1572,
                        source = "Archon.gg Meta Builds (17.7% popularity, 1,572 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 43.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.9% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 15.2,
                        totalRankings = 954,
                        source = "Archon.gg Meta Builds (15.2% popularity, 954 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 42.6,
                        totalRankings = 2058,
                        source = "Archon.gg Meta Builds (42.6% popularity, 2,058 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAAjZMzYmZMjMzMGzMDMDLLzgtxMDz22mZmZMLmZYmZGLbGzyAD",
                        usage = 59.2,
                        totalRankings = 1138,
                        source = "Archon.gg Meta Builds (59.2% popularity, 1,138 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmhZwwYMzMMmxssMD2AAAAAgBAA",
                        usage = 43.0,
                        totalRankings = 193,
                        source = "Archon.gg Meta Builds (43.0% popularity, 193 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbGjZMzMLwYmhx0MjBAAAAAADAYmZaZ22mBAwGAAAAAAbAYMYmlZZGzMGzwMzMzYGzyYA",
                        usage = 65.4,
                        totalRankings = 3201,
                        source = "Archon.gg Meta Builds (65.4% popularity, 3,201 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZ8AjZxwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 33.2,
                        totalRankings = 274,
                        source = "Archon.gg Meta Builds (33.2% popularity, 274 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbsZMmhZmFDjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsNLAAAwCAAAAAAmNAAAAAAAA",
                        usage = 63.4,
                        totalRankings = 626,
                        source = "Archon.gg Meta Builds (63.4% popularity, 626 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.5,
                        totalRankings = 1143,
                        source = "Archon.gg Meta Builds (32.5% popularity, 1,143 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 44.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.9% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 29.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.8% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.2,
                        totalRankings = 1021,
                        source = "Archon.gg Meta Builds (36.2% popularity, 1,021 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMjZmx2MmxMGDDAAwAAAAAAAQbZMLGmZGjxMbtBAMAAzgtBAAAAMzsst02MjFzAAMDzwYA",
                        usage = 5.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.3% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 63.9,
                        totalRankings = 1546,
                        source = "Archon.gg Meta Builds (63.9% popularity, 1,546 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 6.2,
                        totalRankings = 65,
                        source = "Archon.gg Meta Builds (6.2% popularity, 65 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 55.6,
                        totalRankings = 1195,
                        source = "Archon.gg Meta Builds (55.6% popularity, 1,195 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 43.9,
                        totalRankings = 2123,
                        source = "Archon.gg Meta Builds (43.9% popularity, 2,123 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 78.2,
                        totalRankings = 780,
                        source = "Archon.gg Meta Builds (78.2% popularity, 780 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 47.5,
                        totalRankings = 318,
                        source = "Archon.gg Meta Builds (47.5% popularity, 318 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2GzMjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 37.2,
                        totalRankings = 1383,
                        source = "Archon.gg Meta Builds (37.2% popularity, 1,383 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.9,
                        totalRankings = 2097,
                        source = "Archon.gg Meta Builds (49.9% popularity, 2,097 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 71.4,
                        totalRankings = 517,
                        source = "Archon.gg Meta Builds (71.4% popularity, 517 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.9,
                        totalRankings = 1376,
                        source = "Archon.gg Meta Builds (27.9% popularity, 1,376 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMzyMjxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 47.1,
                        totalRankings = 529,
                        source = "Archon.gg Meta Builds (47.1% popularity, 529 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDz2AAAAAAAAAAYeAwYGDLwALDL0wCzMmx2YmtZMzMjxMGmZmZmBmBAAA",
                        usage = 62.6,
                        totalRankings = 139,
                        source = "Archon.gg Meta Builds (62.6% popularity, 139 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 53.5,
                        totalRankings = 3372,
                        source = "Archon.gg Meta Builds (53.5% popularity, 3,372 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYGmGGzyYGGLDmxmZmhZMGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 32.6,
                        totalRankings = 135,
                        source = "Archon.gg Meta Builds (32.6% popularity, 135 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 24.9,
                        totalRankings = 1883,
                        source = "Archon.gg Meta Builds (24.9% popularity, 1,883 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGmx8ADDAAAAAAsMAAzYDwAbwyiRjZAMbwsxMzA",
                        usage = 24.4,
                        totalRankings = 1063,
                        source = "Archon.gg Meta Builds (24.4% popularity, 1,063 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 76.7,
                        totalRankings = 36100,
                        source = "Archon.gg Meta Builds (76.7% popularity, 36,100 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 21.7,
                        totalRankings = 5408,
                        source = "Archon.gg Meta Builds (21.7% popularity, 5,408 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.8,
                        totalRankings = 6502,
                        source = "Archon.gg Meta Builds (19.8% popularity, 6,502 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 21.7,
                        totalRankings = 31820,
                        source = "Archon.gg Meta Builds (21.7% popularity, 31,820 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 26.3,
                        totalRankings = 7781,
                        source = "Archon.gg Meta Builds (26.3% popularity, 7,781 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 82.1,
                        totalRankings = 14815,
                        source = "Archon.gg Meta Builds (82.1% popularity, 14,815 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 58.3,
                        totalRankings = 6550,
                        source = "Archon.gg Meta Builds (58.3% popularity, 6,550 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 15.2,
                        totalRankings = 4597,
                        source = "Archon.gg Meta Builds (15.2% popularity, 4,597 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.5,
                        totalRankings = 19098,
                        source = "Archon.gg Meta Builds (24.5% popularity, 19,098 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGzMmlZGmBMYMTzYmpZ2GLDGGjZWmBMjZ2GzMGzgZgZMDsA2AzwEYBsMMA",
                        usage = 8.9,
                        totalRankings = 9775,
                        source = "Archon.gg Meta Builds (8.9% popularity, 9,775 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.3,
                        totalRankings = 5782,
                        source = "Archon.gg Meta Builds (42.3% popularity, 5,782 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.6,
                        totalRankings = 2039,
                        source = "Archon.gg Meta Builds (12.6% popularity, 2,039 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 22.2,
                        totalRankings = 33075,
                        source = "Archon.gg Meta Builds (22.2% popularity, 33,075 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 43.6,
                        totalRankings = 16427,
                        source = "Archon.gg Meta Builds (43.6% popularity, 16,427 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 18.1,
                        totalRankings = 2902,
                        source = "Archon.gg Meta Builds (18.1% popularity, 2,902 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 68.5,
                        totalRankings = 24881,
                        source = "Archon.gg Meta Builds (68.5% popularity, 24,881 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 39.0,
                        totalRankings = 2702,
                        source = "Archon.gg Meta Builds (39.0% popularity, 2,702 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 25.2,
                        totalRankings = 10717,
                        source = "Archon.gg Meta Builds (25.2% popularity, 10,717 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 30.7,
                        totalRankings = 7069,
                        source = "Archon.gg Meta Builds (30.7% popularity, 7,069 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.6,
                        totalRankings = 8176,
                        source = "Archon.gg Meta Builds (27.6% popularity, 8,176 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 22.1,
                        totalRankings = 10122,
                        source = "Archon.gg Meta Builds (22.1% popularity, 10,122 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.0,
                        totalRankings = 10979,
                        source = "Archon.gg Meta Builds (36.0% popularity, 10,979 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 4.8,
                        totalRankings = 9513,
                        source = "Archon.gg Meta Builds (4.8% popularity, 9,513 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 25.7,
                        totalRankings = 35518,
                        source = "Archon.gg Meta Builds (25.7% popularity, 35,518 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.6,
                        totalRankings = 3205,
                        source = "Archon.gg Meta Builds (8.6% popularity, 3,205 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.8,
                        totalRankings = 17739,
                        source = "Archon.gg Meta Builds (30.8% popularity, 17,739 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 30.4,
                        totalRankings = 14440,
                        source = "Archon.gg Meta Builds (30.4% popularity, 14,440 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 70.1,
                        totalRankings = 7605,
                        source = "Archon.gg Meta Builds (70.1% popularity, 7,605 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 46.1,
                        totalRankings = 2687,
                        source = "Archon.gg Meta Builds (46.1% popularity, 2,687 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 23.7,
                        totalRankings = 6906,
                        source = "Archon.gg Meta Builds (23.7% popularity, 6,906 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 28.7,
                        totalRankings = 18851,
                        source = "Archon.gg Meta Builds (28.7% popularity, 18,851 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 38.8,
                        totalRankings = 3972,
                        source = "Archon.gg Meta Builds (38.8% popularity, 3,972 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.4,
                        totalRankings = 28438,
                        source = "Archon.gg Meta Builds (19.4% popularity, 28,438 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 30.3,
                        totalRankings = 3138,
                        source = "Archon.gg Meta Builds (30.3% popularity, 3,138 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 31.7,
                        totalRankings = 7349,
                        source = "Archon.gg Meta Builds (31.7% popularity, 7,349 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 33.2,
                        totalRankings = 26256,
                        source = "Archon.gg Meta Builds (33.2% popularity, 26,256 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 18.5,
                        totalRankings = 3617,
                        source = "Archon.gg Meta Builds (18.5% popularity, 3,617 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 25.8,
                        totalRankings = 24986,
                        source = "Archon.gg Meta Builds (25.8% popularity, 24,986 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.3,
                        totalRankings = 12965,
                        source = "Archon.gg Meta Builds (19.3% popularity, 12,965 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 70.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (70.5% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 45.8,
                        totalRankings = 59,
                        source = "Archon.gg Meta Builds (45.8% popularity, 59 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzMzMGLzYmZmmZMjxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 32.7,
                        totalRankings = 685,
                        source = "Archon.gg Meta Builds (32.7% popularity, 685 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 44.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.6% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmxYYmZZmhZsNjZegZMDGjZmZzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 5.7,
                        totalRankings = 158,
                        source = "Archon.gg Meta Builds (5.7% popularity, 158 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 92.9,
                        totalRankings = 780,
                        source = "Archon.gg Meta Builds (92.9% popularity, 780 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2MMMjaGzyYZmZMmxAAAAAAAGAAAAgmZZWmZ2GAwCYGAWMDG",
                        usage = 75.2,
                        totalRankings = 145,
                        source = "Archon.gg Meta Builds (75.2% popularity, 145 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8ADjZMzYxDMMzsYZAgRTmmZmlZWmZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 8.8,
                        totalRankings = 68,
                        source = "Archon.gg Meta Builds (8.8% popularity, 68 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2YMNzYgZZmlZmhhZGAAAAAAAYAAAAAAz2MbNLzsZjZmZAGgG",
                        usage = 27.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.3% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMzgBMYMTzYmpZ2GLzwwYMz2MgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 24.1,
                        totalRankings = 931,
                        source = "Archon.gg Meta Builds (24.1% popularity, 931 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 45.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.0% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 9.7,
                        totalRankings = 444,
                        source = "Archon.gg Meta Builds (9.7% popularity, 444 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzYMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                        usage = 37.3,
                        totalRankings = 989,
                        source = "Archon.gg Meta Builds (37.3% popularity, 989 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjmZmxwMDMMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 76.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (76.1% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 23.5,
                        totalRankings = 17,
                        source = "Archon.gg Meta Builds (23.5% popularity, 17 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAMbzMjZMjZBmZmhx0MjBAAAAAADAYmZaZ2WmBAwGAAAAAAAwYwMLzyMmZMmhZmZmxMmlxA",
                        usage = 67.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (67.5% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMzMzMLeAGzMMNmZMAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 47.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (47.1% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmFDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 65.4,
                        totalRankings = 127,
                        source = "Archon.gg Meta Builds (65.4% popularity, 127 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 27.8,
                        totalRankings = 930,
                        source = "Archon.gg Meta Builds (27.8% popularity, 930 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 82.0,
                        totalRankings = 799,
                        source = "Archon.gg Meta Builds (82.0% popularity, 799 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 69.1,
                        totalRankings = 327,
                        source = "Archon.gg Meta Builds (69.1% popularity, 327 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.4% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMzMzM2mZmZmBDDAAAAAAAAAASmZYYmZMGmt2AAGAgZw2AAAAAmZW2WabmxiBGAmZMDjB",
                        usage = 5.3,
                        totalRankings = 342,
                        source = "Archon.gg Meta Builds (5.3% popularity, 342 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 73.6,
                        totalRankings = 683,
                        source = "Archon.gg Meta Builds (73.6% popularity, 683 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMmZMzYMmZGzwsNzMzMzDAAAAAAAAAAAsMLz2gZmBzCDDzYYWYbmGTsMwMDAEgZb22AjNbAAA",
                        usage = 8.7,
                        totalRankings = 46,
                        source = "Archon.gg Meta Builds (8.7% popularity, 46 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 54.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (54.1% popularity, 1,000 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 55.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.9% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 88.8,
                        totalRankings = 268,
                        source = "Archon.gg Meta Builds (88.8% popularity, 268 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 42.7,
                        totalRankings = 150,
                        source = "Archon.gg Meta Builds (42.7% popularity, 150 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 39.5,
                        totalRankings = 885,
                        source = "Archon.gg Meta Builds (39.5% popularity, 885 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmBzywsMzMjZGzMbA",
                        usage = 52.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (52.3% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAWmmZwswMzMjZMzsxsMzMBGLzyYAAGD",
                        usage = 64.8,
                        totalRankings = 71,
                        source = "Archon.gg Meta Builds (64.8% popularity, 71 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.1% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZMzGAAAwMzMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 29.0,
                        totalRankings = 183,
                        source = "Archon.gg Meta Builds (29.0% popularity, 183 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 78.6,
                        totalRankings = 14,
                        source = "Archon.gg Meta Builds (78.6% popularity, 14 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 46.4,
                        totalRankings = 1390,
                        source = "Archon.gg Meta Builds (46.4% popularity, 1,390 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmZmZMbLLjZAAAAGMNMzsMmhxyYmZsZmZwghBAAAAAAgZMbDGwWMgFzYYDGYG2ohhFA",
                        usage = 38.9,
                        totalRankings = 36,
                        source = "Archon.gg Meta Builds (38.9% popularity, 36 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 38.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (38.8% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzsxMG",
                        usage = 22.6,
                        totalRankings = 851,
                        source = "Archon.gg Meta Builds (22.6% popularity, 851 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 45.2,
                        totalRankings = 32095,
                        source = "Archon.gg Meta Builds (45.2% popularity, 32,095 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.1,
                        totalRankings = 6157,
                        source = "Archon.gg Meta Builds (70.1% popularity, 6,157 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.5,
                        totalRankings = 6298,
                        source = "Archon.gg Meta Builds (20.5% popularity, 6,298 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 62.6,
                        totalRankings = 27835,
                        source = "Archon.gg Meta Builds (62.6% popularity, 27,835 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.8,
                        totalRankings = 7284,
                        source = "Archon.gg Meta Builds (38.8% popularity, 7,284 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 44.4,
                        totalRankings = 13384,
                        source = "Archon.gg Meta Builds (44.4% popularity, 13,384 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 77.8,
                        totalRankings = 6098,
                        source = "Archon.gg Meta Builds (77.8% popularity, 6,098 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.9,
                        totalRankings = 4358,
                        source = "Archon.gg Meta Builds (30.9% popularity, 4,358 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.3,
                        totalRankings = 17230,
                        source = "Archon.gg Meta Builds (24.3% popularity, 17,230 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 23.7,
                        totalRankings = 9133,
                        source = "Archon.gg Meta Builds (23.7% popularity, 9,133 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 38.7,
                        totalRankings = 5234,
                        source = "Archon.gg Meta Builds (38.7% popularity, 5,234 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.7,
                        totalRankings = 1978,
                        source = "Archon.gg Meta Builds (13.7% popularity, 1,978 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 45.5,
                        totalRankings = 32404,
                        source = "Archon.gg Meta Builds (45.5% popularity, 32,404 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.1,
                        totalRankings = 14930,
                        source = "Archon.gg Meta Builds (71.1% popularity, 14,930 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 60.5,
                        totalRankings = 2613,
                        source = "Archon.gg Meta Builds (60.5% popularity, 2,613 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 69.3,
                        totalRankings = 23937,
                        source = "Archon.gg Meta Builds (69.3% popularity, 23,937 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.3,
                        totalRankings = 1807,
                        source = "Archon.gg Meta Builds (40.3% popularity, 1,807 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 38.0,
                        totalRankings = 9784,
                        source = "Archon.gg Meta Builds (38.0% popularity, 9,784 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.1,
                        totalRankings = 6556,
                        source = "Archon.gg Meta Builds (36.1% popularity, 6,556 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 21.8,
                        totalRankings = 7463,
                        source = "Archon.gg Meta Builds (21.8% popularity, 7,463 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 63.1,
                        totalRankings = 9217,
                        source = "Archon.gg Meta Builds (63.1% popularity, 9,217 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.1,
                        totalRankings = 9837,
                        source = "Archon.gg Meta Builds (36.1% popularity, 9,837 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.1,
                        totalRankings = 8806,
                        source = "Archon.gg Meta Builds (8.1% popularity, 8,806 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 70.6,
                        totalRankings = 31916,
                        source = "Archon.gg Meta Builds (70.6% popularity, 31,916 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 10.8,
                        totalRankings = 2879,
                        source = "Archon.gg Meta Builds (10.8% popularity, 2,879 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 29.8,
                        totalRankings = 16394,
                        source = "Archon.gg Meta Builds (29.8% popularity, 16,394 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 34.8,
                        totalRankings = 13458,
                        source = "Archon.gg Meta Builds (34.8% popularity, 13,458 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.1,
                        totalRankings = 8231,
                        source = "Archon.gg Meta Builds (72.1% popularity, 8,231 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 66.5,
                        totalRankings = 2107,
                        source = "Archon.gg Meta Builds (66.5% popularity, 2,107 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.4,
                        totalRankings = 5940,
                        source = "Archon.gg Meta Builds (55.4% popularity, 5,940 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.0,
                        totalRankings = 17788,
                        source = "Archon.gg Meta Builds (29.0% popularity, 17,788 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 64.0,
                        totalRankings = 3691,
                        source = "Archon.gg Meta Builds (64.0% popularity, 3,691 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.9,
                        totalRankings = 25356,
                        source = "Archon.gg Meta Builds (17.9% popularity, 25,356 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.9,
                        totalRankings = 2291,
                        source = "Archon.gg Meta Builds (19.9% popularity, 2,291 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.1,
                        totalRankings = 8433,
                        source = "Archon.gg Meta Builds (76.1% popularity, 8,433 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 42.2,
                        totalRankings = 23549,
                        source = "Archon.gg Meta Builds (42.2% popularity, 23,549 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.9,
                        totalRankings = 3190,
                        source = "Archon.gg Meta Builds (62.9% popularity, 3,190 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 51.7,
                        totalRankings = 22044,
                        source = "Archon.gg Meta Builds (51.7% popularity, 22,044 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 17.8,
                        totalRankings = 11855,
                        source = "Archon.gg Meta Builds (17.8% popularity, 11,855 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 69.2,
                        totalRankings = 1495,
                        source = "Archon.gg Meta Builds (69.2% popularity, 1,495 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 75.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (75.0% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 32.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (32.6% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 71.6,
                        totalRankings = 1705,
                        source = "Archon.gg Meta Builds (71.6% popularity, 1,705 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 10.5,
                        totalRankings = 526,
                        source = "Archon.gg Meta Builds (10.5% popularity, 526 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 71.9,
                        totalRankings = 1018,
                        source = "Archon.gg Meta Builds (71.9% popularity, 1,018 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 84.0,
                        totalRankings = 824,
                        source = "Archon.gg Meta Builds (84.0% popularity, 824 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 13.3,
                        totalRankings = 211,
                        source = "Archon.gg Meta Builds (13.3% popularity, 211 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2YMNzYgZZmlZmhhZAAAAAAAADAAAAAY2mZrZZmNbMzMDwAjG",
                        usage = 21.0,
                        totalRankings = 1062,
                        source = "Archon.gg Meta Builds (21.0% popularity, 1,062 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 33.3,
                        totalRankings = 1055,
                        source = "Archon.gg Meta Builds (33.3% popularity, 1,055 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.8% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 15.2,
                        totalRankings = 843,
                        source = "Archon.gg Meta Builds (15.2% popularity, 843 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 56.4,
                        totalRankings = 1805,
                        source = "Archon.gg Meta Builds (56.4% popularity, 1,805 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 83.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (83.8% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 50.0,
                        totalRankings = 114,
                        source = "Archon.gg Meta Builds (50.0% popularity, 114 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 76.8,
                        totalRankings = 2574,
                        source = "Archon.gg Meta Builds (76.8% popularity, 2,574 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 34.2,
                        totalRankings = 298,
                        source = "Archon.gg Meta Builds (34.2% popularity, 298 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 60.5,
                        totalRankings = 458,
                        source = "Archon.gg Meta Builds (60.5% popularity, 458 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 34.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (34.4% popularity, 1,000 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 42.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.2% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 79.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.9% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 40.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.2% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBDDAAwAAAAAAAQyMzihZGGjZ2CAwAAMD2GAAAAwMzy2SbzMWMwAwMMDjB",
                        usage = 8.6,
                        totalRankings = 874,
                        source = "Archon.gg Meta Builds (8.6% popularity, 874 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 89.4,
                        totalRankings = 1099,
                        source = "Archon.gg Meta Builds (89.4% popularity, 1,099 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZYGjxMDzsx2MzMzMzMAAAAAAAAAAwysMbDmZGMLMmhZMYZbMTDxyMAzsgNCjZbAGbYBAA",
                        usage = 6.3,
                        totalRankings = 95,
                        source = "Archon.gg Meta Builds (6.3% popularity, 95 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 54.5,
                        totalRankings = 1413,
                        source = "Archon.gg Meta Builds (54.5% popularity, 1,413 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 20.7,
                        totalRankings = 1241,
                        source = "Archon.gg Meta Builds (20.7% popularity, 1,241 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 80.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (80.1% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 57.1,
                        totalRankings = 245,
                        source = "Archon.gg Meta Builds (57.1% popularity, 245 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.9,
                        totalRankings = 997,
                        source = "Archon.gg Meta Builds (58.9% popularity, 997 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 54.5,
                        totalRankings = 1664,
                        source = "Archon.gg Meta Builds (54.5% popularity, 1,664 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 79.1,
                        totalRankings = 402,
                        source = "Archon.gg Meta Builds (79.1% popularity, 402 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 27.3,
                        totalRankings = 1397,
                        source = "Archon.gg Meta Builds (27.3% popularity, 1,397 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMbGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 20.6,
                        totalRankings = 223,
                        source = "Archon.gg Meta Builds (20.6% popularity, 223 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 83.2,
                        totalRankings = 632,
                        source = "Archon.gg Meta Builds (83.2% popularity, 632 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 56.5,
                        totalRankings = 2470,
                        source = "Archon.gg Meta Builds (56.5% popularity, 2,470 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 60.4,
                        totalRankings = 101,
                        source = "Archon.gg Meta Builds (60.4% popularity, 101 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.9,
                        totalRankings = 1505,
                        source = "Archon.gg Meta Builds (45.9% popularity, 1,505 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNMzA",
                        usage = 43.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.1% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 73.6,
                        totalRankings = 16731,
                        source = "Archon.gg Meta Builds (73.6% popularity, 16,731 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 61.4,
                        totalRankings = 3097,
                        source = "Archon.gg Meta Builds (61.4% popularity, 3,097 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.9,
                        totalRankings = 4518,
                        source = "Archon.gg Meta Builds (19.9% popularity, 4,518 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 39.6,
                        totalRankings = 14876,
                        source = "Archon.gg Meta Builds (39.6% popularity, 14,876 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.4,
                        totalRankings = 4049,
                        source = "Archon.gg Meta Builds (32.4% popularity, 4,049 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 44.3,
                        totalRankings = 7661,
                        source = "Archon.gg Meta Builds (44.3% popularity, 7,661 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsZgZG1MmFWmZmlxMmBAAAAAAGAAAAgmZZWmZ2GAwCMzAwCDG",
                        usage = 45.8,
                        totalRankings = 3569,
                        source = "Archon.gg Meta Builds (45.8% popularity, 3,569 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 24.9,
                        totalRankings = 2449,
                        source = "Archon.gg Meta Builds (24.9% popularity, 2,449 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.2,
                        totalRankings = 8713,
                        source = "Archon.gg Meta Builds (24.2% popularity, 8,713 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 23.9,
                        totalRankings = 6140,
                        source = "Archon.gg Meta Builds (23.9% popularity, 6,140 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.9,
                        totalRankings = 3438,
                        source = "Archon.gg Meta Builds (41.9% popularity, 3,438 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 13.5,
                        totalRankings = 1309,
                        source = "Archon.gg Meta Builds (13.5% popularity, 1,309 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 36.4,
                        totalRankings = 16728,
                        source = "Archon.gg Meta Builds (36.4% popularity, 16,728 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 23.1,
                        totalRankings = 7276,
                        source = "Archon.gg Meta Builds (23.1% popularity, 7,276 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 54.7,
                        totalRankings = 1382,
                        source = "Archon.gg Meta Builds (54.7% popularity, 1,382 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 47.5,
                        totalRankings = 14570,
                        source = "Archon.gg Meta Builds (47.5% popularity, 14,570 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 39.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (39.1% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 44.6,
                        totalRankings = 4901,
                        source = "Archon.gg Meta Builds (44.6% popularity, 4,901 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.6,
                        totalRankings = 4277,
                        source = "Archon.gg Meta Builds (34.6% popularity, 4,277 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 33.6,
                        totalRankings = 4830,
                        source = "Archon.gg Meta Builds (33.6% popularity, 4,830 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 52.7,
                        totalRankings = 5419,
                        source = "Archon.gg Meta Builds (52.7% popularity, 5,419 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.4,
                        totalRankings = 5817,
                        source = "Archon.gg Meta Builds (38.4% popularity, 5,817 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 4726,
                        source = "Archon.gg Meta Builds (5.6% popularity, 4,726 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 67.7,
                        totalRankings = 17455,
                        source = "Archon.gg Meta Builds (67.7% popularity, 17,455 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.7,
                        totalRankings = 1271,
                        source = "Archon.gg Meta Builds (8.7% popularity, 1,271 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 32.4,
                        totalRankings = 10083,
                        source = "Archon.gg Meta Builds (32.4% popularity, 10,083 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 43.0,
                        totalRankings = 8170,
                        source = "Archon.gg Meta Builds (43.0% popularity, 8,170 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 77.9,
                        totalRankings = 4346,
                        source = "Archon.gg Meta Builds (77.9% popularity, 4,346 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 57.5,
                        totalRankings = 1108,
                        source = "Archon.gg Meta Builds (57.5% popularity, 1,108 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 51.8,
                        totalRankings = 3712,
                        source = "Archon.gg Meta Builds (51.8% popularity, 3,712 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLMz0wYmZZYZmZGMGmlxMjZGzMbA",
                        usage = 33.5,
                        totalRankings = 10641,
                        source = "Archon.gg Meta Builds (33.5% popularity, 10,641 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 34.7,
                        totalRankings = 2194,
                        source = "Archon.gg Meta Builds (34.7% popularity, 2,194 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.8,
                        totalRankings = 12773,
                        source = "Archon.gg Meta Builds (18.8% popularity, 12,773 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 30.1,
                        totalRankings = 1214,
                        source = "Archon.gg Meta Builds (30.1% popularity, 1,214 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 75.9,
                        totalRankings = 4224,
                        source = "Archon.gg Meta Builds (75.9% popularity, 4,224 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 37.9,
                        totalRankings = 14637,
                        source = "Archon.gg Meta Builds (37.9% popularity, 14,637 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 33.8,
                        totalRankings = 1679,
                        source = "Archon.gg Meta Builds (33.8% popularity, 1,679 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 24.5,
                        totalRankings = 12718,
                        source = "Archon.gg Meta Builds (24.5% popularity, 12,718 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.2,
                        totalRankings = 6690,
                        source = "Archon.gg Meta Builds (23.2% popularity, 6,690 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 96.4,
                        totalRankings = 477,
                        source = "Archon.gg Meta Builds (96.4% popularity, 477 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZBzYGAwsNjZGz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 33.3,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (33.3% popularity, 9 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMGzYAAAAgZmZmZmZmZzMzYAAAjZmZGAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 24.7,
                        totalRankings = 85,
                        source = "Archon.gg Meta Builds (24.7% popularity, 85 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 65.5,
                        totalRankings = 330,
                        source = "Archon.gg Meta Builds (65.5% popularity, 330 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMjMzMGDzMLjhZsNjZegZmZMYMzMbmZ2mZwAAAAAsMLmxwsx0AzMD2A",
                        usage = 33.3,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (33.3% popularity, 9 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 55.9,
                        totalRankings = 145,
                        source = "Archon.gg Meta Builds (55.9% popularity, 145 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBmZG1MmlxyMzYYMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 83.7,
                        totalRankings = 92,
                        source = "Archon.gg Meta Builds (83.7% popularity, 92 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMzYWGDzDMYGLzMMzsYZAMMay0MzsMzyMzYMDDAAAAAADDAAAAoZ2mlZmlBAwCzMAswgB",
                        usage = 22.2,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (22.2% popularity, 9 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLjlZmhhZAAAAAADAYAAAAAAz2MbNLzsZjZmZGwAjG",
                        usage = 22.6,
                        totalRankings = 106,
                        source = "Archon.gg Meta Builds (22.6% popularity, 106 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMzyMzgZgZMDsBWAzwEYBsMMA",
                        usage = 40.9,
                        totalRankings = 176,
                        source = "Archon.gg Meta Builds (40.9% popularity, 176 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMDsAWAzwEYD2MMA",
                        usage = 33.0,
                        totalRankings = 227,
                        source = "Archon.gg Meta Builds (33.0% popularity, 227 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZYmZZmZmhZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 25.7,
                        totalRankings = 249,
                        source = "Archon.gg Meta Builds (25.7% popularity, 249 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 77.3,
                        totalRankings = 321,
                        source = "Archon.gg Meta Builds (77.3% popularity, 321 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 82.8,
                        totalRankings = 87,
                        source = "Archon.gg Meta Builds (82.8% popularity, 87 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZYmZMDzwYYmhxwssND2AAAAAgBAA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 58.7,
                        totalRankings = 581,
                        source = "Archon.gg Meta Builds (58.7% popularity, 581 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 45.5,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (45.5% popularity, 11 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 66.7,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (66.7% popularity, 6 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgx2wMmxsMjtxMzAAAAAAAwyCGxMjFmhxGD2mZmhZZMzYbWMxsNbzgZ2AAglZbaZ2mZZAAAAYG2A",
                        usage = 23.6,
                        totalRankings = 225,
                        source = "Archon.gg Meta Builds (23.6% popularity, 225 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 74.4,
                        totalRankings = 82,
                        source = "Archon.gg Meta Builds (74.4% popularity, 82 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYmhZG2mBAwGAYWmlmZmZBwM",
                        usage = 56.2,
                        totalRankings = 89,
                        source = "Archon.gg Meta Builds (56.2% popularity, 89 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 31.4,
                        totalRankings = 223,
                        source = "Archon.gg Meta Builds (31.4% popularity, 223 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGDzWbAwYAAmBbDAAAAYmZZbptZGLGYAYmxMMG",
                        usage = 28.3,
                        totalRankings = 60,
                        source = "Archon.gg Meta Builds (28.3% popularity, 60 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 86.4,
                        totalRankings = 132,
                        source = "Archon.gg Meta Builds (86.4% popularity, 132 parses)"
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
                        usage = 57.7,
                        totalRankings = 78,
                        source = "Archon.gg Meta Builds (57.7% popularity, 78 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 45.8,
                        totalRankings = 295,
                        source = "Archon.gg Meta Builds (45.8% popularity, 295 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 78.6,
                        totalRankings = 14,
                        source = "Archon.gg Meta Builds (78.6% popularity, 14 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAA22mZmhZmxCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 75.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (75.0% popularity, 4 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMz22MzYmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 36.0,
                        totalRankings = 342,
                        source = "Archon.gg Meta Builds (36.0% popularity, 342 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzAbLmZmGGzMLDLzMzgxwsMzMjZGzMbA",
                        usage = 63.7,
                        totalRankings = 350,
                        source = "Archon.gg Meta Builds (63.7% popularity, 350 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 76.2,
                        totalRankings = 21,
                        source = "Archon.gg Meta Builds (76.2% popularity, 21 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 35.6,
                        totalRankings = 202,
                        source = "Archon.gg Meta Builds (35.6% popularity, 202 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 25.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (25.0% popularity, 4 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 56.2,
                        totalRankings = 537,
                        source = "Archon.gg Meta Builds (56.2% popularity, 537 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 27.5,
                        totalRankings = 222,
                        source = "Archon.gg Meta Builds (27.5% popularity, 222 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhZmNjZZwYMTDLzMDjlBzw2MzghZYAAAAAAglxAAzYDwAbwyiRjZAMbwshZG",
                        usage = 9.3,
                        totalRankings = 214,
                        source = "Archon.gg Meta Builds (9.3% popularity, 214 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 44.4,
                        totalRankings = 11991,
                        source = "Archon.gg Meta Builds (44.4% popularity, 11,991 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 55.7,
                        totalRankings = 2447,
                        source = "Archon.gg Meta Builds (55.7% popularity, 2,447 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 22.1,
                        totalRankings = 3559,
                        source = "Archon.gg Meta Builds (22.1% popularity, 3,559 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 50.0,
                        totalRankings = 10782,
                        source = "Archon.gg Meta Builds (50.0% popularity, 10,782 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.4,
                        totalRankings = 2791,
                        source = "Archon.gg Meta Builds (32.4% popularity, 2,791 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 43.9,
                        totalRankings = 5210,
                        source = "Archon.gg Meta Builds (43.9% popularity, 5,210 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsZgZG1MmFWmZmlxMmBAAAAAAGAAAAgmZZWmZ2GAwCMzAwCDG",
                        usage = 78.0,
                        totalRankings = 2361,
                        source = "Archon.gg Meta Builds (78.0% popularity, 2,361 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.8,
                        totalRankings = 1543,
                        source = "Archon.gg Meta Builds (23.8% popularity, 1,543 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.6,
                        totalRankings = 6324,
                        source = "Archon.gg Meta Builds (22.6% popularity, 6,324 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 28.9,
                        totalRankings = 4437,
                        source = "Archon.gg Meta Builds (28.9% popularity, 4,437 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 40.0,
                        totalRankings = 2623,
                        source = "Archon.gg Meta Builds (40.0% popularity, 2,623 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 12.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (12.9% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZwwsMzgZMjZWGzMzYMzMTmxMmZmZGmZMDjhZGYY2WmBbAAAAAAwMA",
                        usage = 36.3,
                        totalRankings = 11916,
                        source = "Archon.gg Meta Builds (36.3% popularity, 11,916 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.5,
                        totalRankings = 5275,
                        source = "Archon.gg Meta Builds (70.5% popularity, 5,275 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.4% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 51.5,
                        totalRankings = 10713,
                        source = "Archon.gg Meta Builds (51.5% popularity, 10,713 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.6% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 46.2,
                        totalRankings = 3303,
                        source = "Archon.gg Meta Builds (46.2% popularity, 3,303 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.9,
                        totalRankings = 3091,
                        source = "Archon.gg Meta Builds (31.9% popularity, 3,091 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzstwMamZGYGmBD2mxMMb2mZwiJAAAAAAgFLzyysNzMBAALA",
                        usage = 39.6,
                        totalRankings = 3588,
                        source = "Archon.gg Meta Builds (39.6% popularity, 3,588 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 57.4,
                        totalRankings = 3679,
                        source = "Archon.gg Meta Builds (57.4% popularity, 3,679 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 41.2,
                        totalRankings = 4117,
                        source = "Archon.gg Meta Builds (41.2% popularity, 4,117 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 7.8,
                        totalRankings = 3047,
                        source = "Archon.gg Meta Builds (7.8% popularity, 3,047 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 75.7,
                        totalRankings = 12178,
                        source = "Archon.gg Meta Builds (75.7% popularity, 12,178 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (9.5% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 35.8,
                        totalRankings = 7549,
                        source = "Archon.gg Meta Builds (35.8% popularity, 7,549 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 40.9,
                        totalRankings = 5520,
                        source = "Archon.gg Meta Builds (40.9% popularity, 5,520 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 81.6,
                        totalRankings = 3251,
                        source = "Archon.gg Meta Builds (81.6% popularity, 3,251 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 63.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (63.3% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.3,
                        totalRankings = 2650,
                        source = "Archon.gg Meta Builds (55.3% popularity, 2,650 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLMz0wYmZZYZmZGMGmlxMjZGzMbA",
                        usage = 37.9,
                        totalRankings = 7557,
                        source = "Archon.gg Meta Builds (37.9% popularity, 7,557 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 39.3,
                        totalRankings = 1387,
                        source = "Archon.gg Meta Builds (39.3% popularity, 1,387 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.9,
                        totalRankings = 9493,
                        source = "Archon.gg Meta Builds (17.9% popularity, 9,493 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 33.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.7% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.7,
                        totalRankings = 2264,
                        source = "Archon.gg Meta Builds (80.7% popularity, 2,264 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 49.2,
                        totalRankings = 10807,
                        source = "Archon.gg Meta Builds (49.2% popularity, 10,807 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 44.0,
                        totalRankings = 1208,
                        source = "Archon.gg Meta Builds (44.0% popularity, 1,208 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 20.1,
                        totalRankings = 9550,
                        source = "Archon.gg Meta Builds (20.1% popularity, 9,550 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 26.1,
                        totalRankings = 4607,
                        source = "Archon.gg Meta Builds (26.1% popularity, 4,607 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 98.4,
                        totalRankings = 128,
                        source = "Archon.gg Meta Builds (98.4% popularity, 128 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDGzYGLjZMzMNMMmZGzAAAAAAAAAzsYmZMzAAjZYmZMzMzYmZAbmNDDMwsxQjFGgZGAD",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMjZGzYmxYZYmZmmZMzMGGDAAAAYmZmZmZmZjZGAAgZMzMzAAAAMwAzY0YbDw2A2AMzgNA",
                        usage = 15.8,
                        totalRankings = 19,
                        source = "Archon.gg Meta Builds (15.8% popularity, 19 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMzMxMzAAAAAAAmtxMmBGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 72.1,
                        totalRankings = 68,
                        source = "Archon.gg Meta Builds (72.1% popularity, 68 parses)"
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
                        usage = 71.4,
                        totalRankings = 14,
                        source = "Archon.gg Meta Builds (71.4% popularity, 14 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwwAzMqZMLjlZmxYmZAAAAAAADAAAAQzsMLzMbDAYBmZGALMYA",
                        usage = 100.0,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (100.0% popularity, 11 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzstYbGAAAAAAAAAAAALGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMzMzAGgG",
                        usage = 19.1,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (19.1% popularity, 47 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmtZAzYmtxMzyMzgZgZMDsAWAzwEYBsMMA",
                        usage = 20.8,
                        totalRankings = 106,
                        source = "Archon.gg Meta Builds (20.8% popularity, 106 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMjZMMGzIMDAAAwMzMxsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 32.6,
                        totalRankings = 86,
                        source = "Archon.gg Meta Builds (32.6% popularity, 86 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZYmZZmZmhZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 26.7,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (26.7% popularity, 15 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 48.9,
                        totalRankings = 45,
                        source = "Archon.gg Meta Builds (48.9% popularity, 45 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDjhZxMjxYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 57.1,
                        totalRankings = 21,
                        source = "Archon.gg Meta Builds (57.1% popularity, 21 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 64.2,
                        totalRankings = 123,
                        source = "Archon.gg Meta Builds (64.2% popularity, 123 parses)"
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
                        usage = 31.0,
                        totalRankings = 58,
                        source = "Archon.gg Meta Builds (31.0% popularity, 58 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMbMzwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 90.9,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (90.9% popularity, 11 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBjZYWmZGzMAAAAAAAAAAAYZZYmGzMwMMsww2MzMMbMzws8ATAAsMmZYGmtZAAssMLLz2MzEAAGA",
                        usage = 37.5,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (37.5% popularity, 16 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 50.8,
                        totalRankings = 65,
                        source = "Archon.gg Meta Builds (50.8% popularity, 65 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMzMzM2mZmZmZbMMAAADAAAAAAAtlxsYYmZMGzs1GAwAAMD2GAAAAwMzyySbzMWAAwMYMjB",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY2aaGGmZsNDmthZZ2mhhBDGWWYDAAAmZabWmtZAAbADAGjZYGA",
                        usage = 92.3,
                        totalRankings = 13,
                        source = "Archon.gg Meta Builds (92.3% popularity, 13 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 22.7,
                        totalRankings = 22,
                        source = "Archon.gg Meta Builds (22.7% popularity, 22 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDzMDAAAAAAAAAAAAjxGMzMLbbjZGzMzMLDmNmZmZMbMAjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 55.9,
                        totalRankings = 59,
                        source = "Archon.gg Meta Builds (55.9% popularity, 59 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 100.0,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (100.0% popularity, 3 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 49.3,
                        totalRankings = 71,
                        source = "Archon.gg Meta Builds (49.3% popularity, 71 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbMzMNMmxywyMzM2MGmlxMjZGzMbA",
                        usage = 69.5,
                        totalRankings = 118,
                        source = "Archon.gg Meta Builds (69.5% popularity, 118 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzy0MzgtFGzMYMz2wyMzkNWGmlZGAgxA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmB2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDmFsMzYsZMMLjBAAG",
                        usage = 34.0,
                        totalRankings = 50,
                        source = "Archon.gg Meta Builds (34.0% popularity, 50 parses)"
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
                        usage = 64.5,
                        totalRankings = 141,
                        source = "Archon.gg Meta Builds (64.5% popularity, 141 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 70.8,
                        totalRankings = 24,
                        source = "Archon.gg Meta Builds (70.8% popularity, 24 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwYmxMzMjxsZmZZwYMTDLzMDzsMYG2mZGGMDDAAAAAAsMGAYmtNADsBLLGNmBwsB2gZA",
                        usage = 12.5,
                        totalRankings = 56,
                        source = "Archon.gg Meta Builds (12.5% popularity, 56 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 13.1,
                    totalRankings = 36802,
                    source = "Archon.gg Mythic+ Meta Builds (13.1% popularity, 36,802 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMDGzMGGzMzMzMMzMamxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 60.9,
                    totalRankings = 179720,
                    source = "Archon.gg Mythic+ Meta Builds (60.9% popularity, 179,720 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 58.5,
                    totalRankings = 17784,
                    source = "Archon.gg Mythic+ Meta Builds (58.5% popularity, 17,784 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 45.6,
                    totalRankings = 122880,
                    source = "Archon.gg Mythic+ Meta Builds (45.6% popularity, 122,880 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 44.4,
                    totalRankings = 72992,
                    source = "Archon.gg Mythic+ Meta Builds (44.4% popularity, 72,992 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 72.3,
                    totalRankings = 46744,
                    source = "Archon.gg Mythic+ Meta Builds (72.3% popularity, 46,744 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 62.7,
                    totalRankings = 24816,
                    source = "Archon.gg Mythic+ Meta Builds (62.7% popularity, 24,816 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDMbGGNRmZWmZbmZWGzAAAAAAAGzYALbzshxsMAmAAAA2gBgFjhB",
                    usage = 26.8,
                    totalRankings = 43720,
                    source = "Archon.gg Mythic+ Meta Builds (26.8% popularity, 43,720 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 9.1,
                    totalRankings = 96700,
                    source = "Archon.gg Mythic+ Meta Builds (9.1% popularity, 96,700 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmpZ2GLDGGjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 19.8,
                    totalRankings = 33688,
                    source = "Archon.gg Mythic+ Meta Builds (19.8% popularity, 33,688 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDAAAmZYMjxwMxYGAAAYbmZmmxyMzMGzAAwY2swCMwMM0gxCMA",
                    usage = 37.9,
                    totalRankings = 19264,
                    source = "Archon.gg Mythic+ Meta Builds (37.9% popularity, 19,264 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMLjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 25.7,
                    totalRankings = 7095,
                    source = "Archon.gg Mythic+ Meta Builds (25.7% popularity, 7,095 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjZeALzMDzMGsMjZmxYmZmMjZMjZmhZGzwYYMMLDz2yMYDAAAAAAmB",
                    usage = 23.4,
                    totalRankings = 135285,
                    source = "Archon.gg Mythic+ Meta Builds (23.4% popularity, 135,285 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjMjxwMDzywssMD2GmxYZbzMzMmFzMMmZmlNDLDzM",
                    usage = 43.3,
                    totalRankings = 67450,
                    source = "Archon.gg Mythic+ Meta Builds (43.3% popularity, 67,450 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 25.6,
                    totalRankings = 14843,
                    source = "Archon.gg Mythic+ Meta Builds (25.6% popularity, 14,843 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZYmZBGzMMmmZWmBAAAAAgBAMzMtMbLzAAYDAAAAAgNAMGMzysMjZGjZYmZmZMjZZM",
                    usage = 45.0,
                    totalRankings = 112163,
                    source = "Archon.gg Mythic+ Meta Builds (45.0% popularity, 112,163 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzgZGzMLAzMjpxMjZGAAAAAADAYmZaZW2mBAYzMzgxMDzYWMLjhZmNzsNjlZWwAAAAAAAA",
                    usage = 17.9,
                    totalRankings = 6850,
                    source = "Archon.gg Mythic+ Meta Builds (17.9% popularity, 6,850 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsMLAAAwCAAAAAAmNAAAAAAAA",
                    usage = 38.8,
                    totalRankings = 31941,
                    source = "Archon.gg Mythic+ Meta Builds (38.8% popularity, 31,941 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 38.6,
                    totalRankings = 50856,
                    source = "Archon.gg Mythic+ Meta Builds (38.6% popularity, 50,856 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 14.4,
                    totalRankings = 25297,
                    source = "Archon.gg Mythic+ Meta Builds (14.4% popularity, 25,297 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 34.5,
                    totalRankings = 25710,
                    source = "Archon.gg Mythic+ Meta Builds (34.5% popularity, 25,710 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLmxMLz2Mzs0AAAAsAYwmZghhB",
                    usage = 21.6,
                    totalRankings = 36799,
                    source = "Archon.gg Mythic+ Meta Builds (21.6% popularity, 36,799 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZGzsNmxAAAMAAAAAAA0WzMzihZGGD2aDAGDMAAbDAAAAYmZZbptZGLMYAYwMbYA",
                    usage = 9.7,
                    totalRankings = 116970,
                    source = "Archon.gg Mythic+ Meta Builds (9.7% popularity, 116,970 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 33.4,
                    totalRankings = 117889,
                    source = "Archon.gg Mythic+ Meta Builds (33.4% popularity, 117,889 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                    usage = 16.1,
                    totalRankings = 65197,
                    source = "Archon.gg Mythic+ Meta Builds (16.1% popularity, 65,197 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 19.0,
                    totalRankings = 20375,
                    source = "Archon.gg Mythic+ Meta Builds (19.0% popularity, 20,375 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 31.5,
                    totalRankings = 37724,
                    source = "Archon.gg Mythic+ Meta Builds (31.5% popularity, 37,724 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 80.4,
                    totalRankings = 21005,
                    source = "Archon.gg Mythic+ Meta Builds (80.4% popularity, 21,005 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw2yMzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 53.3,
                    totalRankings = 11389,
                    source = "Archon.gg Mythic+ Meta Builds (53.3% popularity, 11,389 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 44.5,
                    totalRankings = 27851,
                    source = "Archon.gg Mythic+ Meta Builds (44.5% popularity, 27,851 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsMNDMbwMNmZmZMsMjZsYWGmlZGDGmZbA",
                    usage = 32.0,
                    totalRankings = 62990,
                    source = "Archon.gg Mythic+ Meta Builds (32.0% popularity, 62,990 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBswMzMDzYmtZsMzMZhlxyYmBAYMA",
                    usage = 47.5,
                    totalRankings = 15181,
                    source = "Archon.gg Mythic+ Meta Builds (47.5% popularity, 15,181 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 26.8,
                    totalRankings = 180203,
                    source = "Archon.gg Mythic+ Meta Builds (26.8% popularity, 180,203 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMbglZAAAAAAAAwMsA",
                    usage = 26.4,
                    totalRankings = 6713,
                    source = "Archon.gg Mythic+ Meta Builds (26.4% popularity, 6,713 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 36.1,
                    totalRankings = 38780,
                    source = "Archon.gg Mythic+ Meta Builds (36.1% popularity, 38,780 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 12.5,
                    totalRankings = 70704,
                    source = "Archon.gg Mythic+ Meta Builds (12.5% popularity, 70,704 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                    usage = 24.9,
                    totalRankings = 8357,
                    source = "Archon.gg Mythic+ Meta Builds (24.9% popularity, 8,357 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                    usage = 40.3,
                    totalRankings = 83655,
                    source = "Archon.gg Mythic+ Meta Builds (40.3% popularity, 83,655 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAAkBAAAgxMMzMzMzMbmZWGMGjGzyYGGLjZmhtZmxMwwAAAAAAALDAwM2AMwGssY0YGAzCMbMjZA",
                    usage = 10.6,
                    totalRankings = 122776,
                    source = "Archon.gg Mythic+ Meta Builds (10.6% popularity, 122,776 parses)"
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
