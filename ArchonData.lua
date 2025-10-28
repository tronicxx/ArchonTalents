-- Archon Talents Data File
-- Generated: 2025-10-28 08:06:09 UTC
-- Version: 1761656769
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1761656769
    local lastUpdated = "2025-10-28 08:06:09 UTC"
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
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 47.1,
                        totalRankings = 13211,
                        source = "Archon.gg Meta Builds (47.1% popularity, 13,211 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.3,
                        totalRankings = 2216,
                        source = "Archon.gg Meta Builds (72.3% popularity, 2,216 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.6,
                        totalRankings = 3160,
                        source = "Archon.gg Meta Builds (16.6% popularity, 3,160 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.8,
                        totalRankings = 11230,
                        source = "Archon.gg Meta Builds (67.8% popularity, 11,230 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 39.5,
                        totalRankings = 2858,
                        source = "Archon.gg Meta Builds (39.5% popularity, 2,858 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 57.5,
                        totalRankings = 6383,
                        source = "Archon.gg Meta Builds (57.5% popularity, 6,383 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 64.0,
                        totalRankings = 2474,
                        source = "Archon.gg Meta Builds (64.0% popularity, 2,474 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 26.7,
                        totalRankings = 2568,
                        source = "Archon.gg Meta Builds (26.7% popularity, 2,568 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.2,
                        totalRankings = 8162,
                        source = "Archon.gg Meta Builds (17.2% popularity, 8,162 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.2,
                        totalRankings = 3492,
                        source = "Archon.gg Meta Builds (24.2% popularity, 3,492 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.8,
                        totalRankings = 2227,
                        source = "Archon.gg Meta Builds (38.8% popularity, 2,227 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 18.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 53.7,
                        totalRankings = 21836,
                        source = "Archon.gg Meta Builds (53.7% popularity, 21,836 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 66.5,
                        totalRankings = 3217,
                        source = "Archon.gg Meta Builds (66.5% popularity, 3,217 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 61.9,
                        totalRankings = 1065,
                        source = "Archon.gg Meta Builds (61.9% popularity, 1,065 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 71.7,
                        totalRankings = 8401,
                        source = "Archon.gg Meta Builds (71.7% popularity, 8,401 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 52.2,
                        totalRankings = 1127,
                        source = "Archon.gg Meta Builds (52.2% popularity, 1,127 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 38.4,
                        totalRankings = 4667,
                        source = "Archon.gg Meta Builds (38.4% popularity, 4,667 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.8,
                        totalRankings = 2465,
                        source = "Archon.gg Meta Builds (35.8% popularity, 2,465 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.3,
                        totalRankings = 3250,
                        source = "Archon.gg Meta Builds (24.3% popularity, 3,250 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 63.9,
                        totalRankings = 3645,
                        source = "Archon.gg Meta Builds (63.9% popularity, 3,645 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.9,
                        totalRankings = 4173,
                        source = "Archon.gg Meta Builds (35.9% popularity, 4,173 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.5,
                        totalRankings = 4365,
                        source = "Archon.gg Meta Builds (6.5% popularity, 4,365 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 73.5,
                        totalRankings = 15342,
                        source = "Archon.gg Meta Builds (73.5% popularity, 15,342 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.6,
                        totalRankings = 1574,
                        source = "Archon.gg Meta Builds (8.6% popularity, 1,574 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 38.3,
                        totalRankings = 7034,
                        source = "Archon.gg Meta Builds (38.3% popularity, 7,034 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 25.1,
                        totalRankings = 5092,
                        source = "Archon.gg Meta Builds (25.1% popularity, 5,092 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.4,
                        totalRankings = 2868,
                        source = "Archon.gg Meta Builds (70.4% popularity, 2,868 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAA22mZGMzMzCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 40.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.6% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.4,
                        totalRankings = 1965,
                        source = "Archon.gg Meta Builds (57.4% popularity, 1,965 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 30.7,
                        totalRankings = 8220,
                        source = "Archon.gg Meta Builds (30.7% popularity, 8,220 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 60.8,
                        totalRankings = 1479,
                        source = "Archon.gg Meta Builds (60.8% popularity, 1,479 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.1,
                        totalRankings = 10546,
                        source = "Archon.gg Meta Builds (18.1% popularity, 10,546 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.8,
                        totalRankings = 1101,
                        source = "Archon.gg Meta Builds (19.8% popularity, 1,101 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.0,
                        totalRankings = 3369,
                        source = "Archon.gg Meta Builds (76.0% popularity, 3,369 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 34.6,
                        totalRankings = 10736,
                        source = "Archon.gg Meta Builds (34.6% popularity, 10,736 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 64.8,
                        totalRankings = 1232,
                        source = "Archon.gg Meta Builds (64.8% popularity, 1,232 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 47.6,
                        totalRankings = 10605,
                        source = "Archon.gg Meta Builds (47.6% popularity, 10,605 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 18.1,
                        totalRankings = 5360,
                        source = "Archon.gg Meta Builds (18.1% popularity, 5,360 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 62.9,
                        totalRankings = 16319,
                        source = "Archon.gg Meta Builds (62.9% popularity, 16,319 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.7,
                        totalRankings = 1937,
                        source = "Archon.gg Meta Builds (69.7% popularity, 1,937 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.9,
                        totalRankings = 2733,
                        source = "Archon.gg Meta Builds (17.9% popularity, 2,733 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 79.0,
                        totalRankings = 10954,
                        source = "Archon.gg Meta Builds (79.0% popularity, 10,954 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 38.3,
                        totalRankings = 2538,
                        source = "Archon.gg Meta Builds (38.3% popularity, 2,538 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 62.3,
                        totalRankings = 5521,
                        source = "Archon.gg Meta Builds (62.3% popularity, 5,521 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 50.8,
                        totalRankings = 1780,
                        source = "Archon.gg Meta Builds (50.8% popularity, 1,780 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.2,
                        totalRankings = 1590,
                        source = "Archon.gg Meta Builds (18.2% popularity, 1,590 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 16.2,
                        totalRankings = 8520,
                        source = "Archon.gg Meta Builds (16.2% popularity, 8,520 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.6,
                        totalRankings = 3273,
                        source = "Archon.gg Meta Builds (24.6% popularity, 3,273 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.5,
                        totalRankings = 2890,
                        source = "Archon.gg Meta Builds (38.5% popularity, 2,890 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 31.0,
                        totalRankings = 1130,
                        source = "Archon.gg Meta Builds (31.0% popularity, 1,130 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 63.2,
                        totalRankings = 18813,
                        source = "Archon.gg Meta Builds (63.2% popularity, 18,813 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 79.4,
                        totalRankings = 2389,
                        source = "Archon.gg Meta Builds (79.4% popularity, 2,389 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 49.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (49.6% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 77.6,
                        totalRankings = 11513,
                        source = "Archon.gg Meta Builds (77.6% popularity, 11,513 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 50.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 53.6,
                        totalRankings = 3009,
                        source = "Archon.gg Meta Builds (53.6% popularity, 3,009 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 30.0,
                        totalRankings = 3587,
                        source = "Archon.gg Meta Builds (30.0% popularity, 3,587 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 36.0,
                        totalRankings = 2883,
                        source = "Archon.gg Meta Builds (36.0% popularity, 2,883 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 74.5,
                        totalRankings = 2738,
                        source = "Archon.gg Meta Builds (74.5% popularity, 2,738 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.6,
                        totalRankings = 4373,
                        source = "Archon.gg Meta Builds (35.6% popularity, 4,373 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MmxMYYAAAGAAAAAAAarZmZzwMYMjZrNAgBAYGsNAAAAgZmtllWmZsYGMAAzwYA",
                        usage = 5.4,
                        totalRankings = 3564,
                        source = "Archon.gg Meta Builds (5.4% popularity, 3,564 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 80.0,
                        totalRankings = 12123,
                        source = "Archon.gg Meta Builds (80.0% popularity, 12,123 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 4.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.4% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 48.4,
                        totalRankings = 8042,
                        source = "Archon.gg Meta Builds (48.4% popularity, 8,042 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 22.9,
                        totalRankings = 4546,
                        source = "Archon.gg Meta Builds (22.9% popularity, 4,546 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.7,
                        totalRankings = 3340,
                        source = "Archon.gg Meta Builds (72.7% popularity, 3,340 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 59.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (59.5% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.4,
                        totalRankings = 1754,
                        source = "Archon.gg Meta Builds (56.4% popularity, 1,754 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 45.3,
                        totalRankings = 7493,
                        source = "Archon.gg Meta Builds (45.3% popularity, 7,493 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.7% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.8,
                        totalRankings = 11768,
                        source = "Archon.gg Meta Builds (18.8% popularity, 11,768 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.6% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 78.5,
                        totalRankings = 2184,
                        source = "Archon.gg Meta Builds (78.5% popularity, 2,184 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 43.7,
                        totalRankings = 11568,
                        source = "Archon.gg Meta Builds (43.7% popularity, 11,568 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (62.3% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.9,
                        totalRankings = 9826,
                        source = "Archon.gg Meta Builds (40.9% popularity, 9,826 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.9,
                        totalRankings = 5644,
                        source = "Archon.gg Meta Builds (19.9% popularity, 5,644 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 46.1,
                        totalRankings = 13628,
                        source = "Archon.gg Meta Builds (46.1% popularity, 13,628 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.2,
                        totalRankings = 2294,
                        source = "Archon.gg Meta Builds (72.2% popularity, 2,294 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.3,
                        totalRankings = 3226,
                        source = "Archon.gg Meta Builds (18.3% popularity, 3,226 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.3,
                        totalRankings = 11585,
                        source = "Archon.gg Meta Builds (67.3% popularity, 11,585 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 37.6,
                        totalRankings = 2914,
                        source = "Archon.gg Meta Builds (37.6% popularity, 2,914 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 58.6,
                        totalRankings = 6674,
                        source = "Archon.gg Meta Builds (58.6% popularity, 6,674 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 62.9,
                        totalRankings = 2561,
                        source = "Archon.gg Meta Builds (62.9% popularity, 2,561 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 27.1,
                        totalRankings = 2631,
                        source = "Archon.gg Meta Builds (27.1% popularity, 2,631 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.8,
                        totalRankings = 8444,
                        source = "Archon.gg Meta Builds (17.8% popularity, 8,444 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 18.1,
                        totalRankings = 3587,
                        source = "Archon.gg Meta Builds (18.1% popularity, 3,587 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.6,
                        totalRankings = 2255,
                        source = "Archon.gg Meta Builds (39.6% popularity, 2,255 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 20.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (20.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 53.5,
                        totalRankings = 22687,
                        source = "Archon.gg Meta Builds (53.5% popularity, 22,687 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.2,
                        totalRankings = 3264,
                        source = "Archon.gg Meta Builds (67.2% popularity, 3,264 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 63.6,
                        totalRankings = 1092,
                        source = "Archon.gg Meta Builds (63.6% popularity, 1,092 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 71.8,
                        totalRankings = 8728,
                        source = "Archon.gg Meta Builds (71.8% popularity, 8,728 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.9,
                        totalRankings = 1134,
                        source = "Archon.gg Meta Builds (49.9% popularity, 1,134 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 38.8,
                        totalRankings = 4807,
                        source = "Archon.gg Meta Builds (38.8% popularity, 4,807 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.7,
                        totalRankings = 2509,
                        source = "Archon.gg Meta Builds (36.7% popularity, 2,509 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.9,
                        totalRankings = 3330,
                        source = "Archon.gg Meta Builds (24.9% popularity, 3,330 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 65.2,
                        totalRankings = 3814,
                        source = "Archon.gg Meta Builds (65.2% popularity, 3,814 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.4,
                        totalRankings = 4299,
                        source = "Archon.gg Meta Builds (36.4% popularity, 4,299 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.2,
                        totalRankings = 4463,
                        source = "Archon.gg Meta Builds (7.2% popularity, 4,463 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 73.5,
                        totalRankings = 15932,
                        source = "Archon.gg Meta Builds (73.5% popularity, 15,932 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.1,
                        totalRankings = 1582,
                        source = "Archon.gg Meta Builds (7.1% popularity, 1,582 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.2,
                        totalRankings = 7221,
                        source = "Archon.gg Meta Builds (40.2% popularity, 7,221 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 40.5,
                        totalRankings = 5327,
                        source = "Archon.gg Meta Builds (40.5% popularity, 5,327 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.9,
                        totalRankings = 2954,
                        source = "Archon.gg Meta Builds (69.9% popularity, 2,954 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 40.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.4,
                        totalRankings = 1985,
                        source = "Archon.gg Meta Builds (58.4% popularity, 1,985 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 30.7,
                        totalRankings = 8632,
                        source = "Archon.gg Meta Builds (30.7% popularity, 8,632 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 61.7,
                        totalRankings = 1546,
                        source = "Archon.gg Meta Builds (61.7% popularity, 1,546 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 10981,
                        source = "Archon.gg Meta Builds (19.3% popularity, 10,981 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.5,
                        totalRankings = 1108,
                        source = "Archon.gg Meta Builds (20.5% popularity, 1,108 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.0,
                        totalRankings = 3382,
                        source = "Archon.gg Meta Builds (76.0% popularity, 3,382 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 36.8,
                        totalRankings = 11134,
                        source = "Archon.gg Meta Builds (36.8% popularity, 11,134 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.1,
                        totalRankings = 1283,
                        source = "Archon.gg Meta Builds (62.1% popularity, 1,283 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 47.4,
                        totalRankings = 10974,
                        source = "Archon.gg Meta Builds (47.4% popularity, 10,974 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 20.5,
                        totalRankings = 5501,
                        source = "Archon.gg Meta Builds (20.5% popularity, 5,501 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 65.1,
                        totalRankings = 9094,
                        source = "Archon.gg Meta Builds (65.1% popularity, 9,094 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 74.8,
                        totalRankings = 1101,
                        source = "Archon.gg Meta Builds (74.8% popularity, 1,101 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 20.8,
                        totalRankings = 1975,
                        source = "Archon.gg Meta Builds (20.8% popularity, 1,975 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 78.8,
                        totalRankings = 6214,
                        source = "Archon.gg Meta Builds (78.8% popularity, 6,214 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 37.2,
                        totalRankings = 1247,
                        source = "Archon.gg Meta Builds (37.2% popularity, 1,247 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 66.0,
                        totalRankings = 3592,
                        source = "Archon.gg Meta Builds (66.0% popularity, 3,592 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 43.1,
                        totalRankings = 1085,
                        source = "Archon.gg Meta Builds (43.1% popularity, 1,085 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 16.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.6% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 17.7,
                        totalRankings = 4445,
                        source = "Archon.gg Meta Builds (17.7% popularity, 4,445 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 20.0,
                        totalRankings = 2304,
                        source = "Archon.gg Meta Builds (20.0% popularity, 2,304 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.6,
                        totalRankings = 2143,
                        source = "Archon.gg Meta Builds (38.6% popularity, 2,143 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 34.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (34.9% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 68.5,
                        totalRankings = 10748,
                        source = "Archon.gg Meta Builds (68.5% popularity, 10,748 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 83.4,
                        totalRankings = 1436,
                        source = "Archon.gg Meta Builds (83.4% popularity, 1,436 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 46.8,
                        totalRankings = 509,
                        source = "Archon.gg Meta Builds (46.8% popularity, 509 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 76.8,
                        totalRankings = 7540,
                        source = "Archon.gg Meta Builds (76.8% popularity, 7,540 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.9% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsYwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 61.9,
                        totalRankings = 1361,
                        source = "Archon.gg Meta Builds (61.9% popularity, 1,361 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 31.3,
                        totalRankings = 2708,
                        source = "Archon.gg Meta Builds (31.3% popularity, 2,708 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 44.2,
                        totalRankings = 1908,
                        source = "Archon.gg Meta Builds (44.2% popularity, 1,908 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 77.8,
                        totalRankings = 1724,
                        source = "Archon.gg Meta Builds (77.8% popularity, 1,724 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.1,
                        totalRankings = 2867,
                        source = "Archon.gg Meta Builds (36.1% popularity, 2,867 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.4,
                        totalRankings = 1815,
                        source = "Archon.gg Meta Builds (5.4% popularity, 1,815 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 84.4,
                        totalRankings = 6039,
                        source = "Archon.gg Meta Builds (84.4% popularity, 6,039 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 5.2,
                        totalRankings = 499,
                        source = "Archon.gg Meta Builds (5.2% popularity, 499 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 53.9,
                        totalRankings = 4908,
                        source = "Archon.gg Meta Builds (53.9% popularity, 4,908 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 46.8,
                        totalRankings = 3204,
                        source = "Archon.gg Meta Builds (46.8% popularity, 3,204 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.3,
                        totalRankings = 2318,
                        source = "Archon.gg Meta Builds (72.3% popularity, 2,318 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 64.2,
                        totalRankings = 696,
                        source = "Archon.gg Meta Builds (64.2% popularity, 696 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 55.5,
                        totalRankings = 1173,
                        source = "Archon.gg Meta Builds (55.5% popularity, 1,173 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.4,
                        totalRankings = 5174,
                        source = "Archon.gg Meta Builds (49.4% popularity, 5,174 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 70.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (70.7% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.6,
                        totalRankings = 6120,
                        source = "Archon.gg Meta Builds (19.6% popularity, 6,120 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.2,
                        totalRankings = 452,
                        source = "Archon.gg Meta Builds (21.2% popularity, 452 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 81.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (81.5% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.7,
                        totalRankings = 8491,
                        source = "Archon.gg Meta Builds (55.7% popularity, 8,491 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 64.3,
                        totalRankings = 513,
                        source = "Archon.gg Meta Builds (64.3% popularity, 513 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.5,
                        totalRankings = 5586,
                        source = "Archon.gg Meta Builds (40.5% popularity, 5,586 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 26.0,
                        totalRankings = 3328,
                        source = "Archon.gg Meta Builds (26.0% popularity, 3,328 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 80.2,
                        totalRankings = 13138,
                        source = "Archon.gg Meta Builds (80.2% popularity, 13,138 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 27.6,
                        totalRankings = 2097,
                        source = "Archon.gg Meta Builds (27.6% popularity, 2,097 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.7,
                        totalRankings = 3145,
                        source = "Archon.gg Meta Builds (16.7% popularity, 3,145 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 35.0,
                        totalRankings = 11120,
                        source = "Archon.gg Meta Builds (35.0% popularity, 11,120 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.9,
                        totalRankings = 2837,
                        source = "Archon.gg Meta Builds (31.9% popularity, 2,837 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 42.6,
                        totalRankings = 6415,
                        source = "Archon.gg Meta Builds (42.6% popularity, 6,415 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 20.4,
                        totalRankings = 2452,
                        source = "Archon.gg Meta Builds (20.4% popularity, 2,452 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.8,
                        totalRankings = 2534,
                        source = "Archon.gg Meta Builds (18.8% popularity, 2,534 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.3,
                        totalRankings = 8114,
                        source = "Archon.gg Meta Builds (17.3% popularity, 8,114 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 15.4,
                        totalRankings = 3500,
                        source = "Archon.gg Meta Builds (15.4% popularity, 3,500 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.1,
                        totalRankings = 2197,
                        source = "Archon.gg Meta Builds (38.1% popularity, 2,197 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 19.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (19.3% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 36.6,
                        totalRankings = 22045,
                        source = "Archon.gg Meta Builds (36.6% popularity, 22,045 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 30.7,
                        totalRankings = 3143,
                        source = "Archon.gg Meta Builds (30.7% popularity, 3,143 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 31.3,
                        totalRankings = 1089,
                        source = "Archon.gg Meta Builds (31.3% popularity, 1,089 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 56.7,
                        totalRankings = 8327,
                        source = "Archon.gg Meta Builds (56.7% popularity, 8,327 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 47.7,
                        totalRankings = 1122,
                        source = "Archon.gg Meta Builds (47.7% popularity, 1,122 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 23.2,
                        totalRankings = 4766,
                        source = "Archon.gg Meta Builds (23.2% popularity, 4,766 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.2,
                        totalRankings = 2461,
                        source = "Archon.gg Meta Builds (34.2% popularity, 2,461 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 28.0,
                        totalRankings = 3198,
                        source = "Archon.gg Meta Builds (28.0% popularity, 3,198 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 35.4,
                        totalRankings = 3710,
                        source = "Archon.gg Meta Builds (35.4% popularity, 3,710 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.5,
                        totalRankings = 4143,
                        source = "Archon.gg Meta Builds (35.5% popularity, 4,143 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 7.6,
                        totalRankings = 4330,
                        source = "Archon.gg Meta Builds (7.6% popularity, 4,330 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 36.1,
                        totalRankings = 15443,
                        source = "Archon.gg Meta Builds (36.1% popularity, 15,443 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.3,
                        totalRankings = 1483,
                        source = "Archon.gg Meta Builds (7.3% popularity, 1,483 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.8,
                        totalRankings = 7039,
                        source = "Archon.gg Meta Builds (39.8% popularity, 7,039 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 37.3,
                        totalRankings = 5143,
                        source = "Archon.gg Meta Builds (37.3% popularity, 5,143 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 54.8,
                        totalRankings = 2595,
                        source = "Archon.gg Meta Builds (54.8% popularity, 2,595 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 27.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.6,
                        totalRankings = 2188,
                        source = "Archon.gg Meta Builds (52.6% popularity, 2,188 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 22.7,
                        totalRankings = 8303,
                        source = "Archon.gg Meta Builds (22.7% popularity, 8,303 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 31.4,
                        totalRankings = 1519,
                        source = "Archon.gg Meta Builds (31.4% popularity, 1,519 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.8,
                        totalRankings = 10382,
                        source = "Archon.gg Meta Builds (19.8% popularity, 10,382 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 18.2,
                        totalRankings = 1012,
                        source = "Archon.gg Meta Builds (18.2% popularity, 1,012 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 33.1,
                        totalRankings = 3603,
                        source = "Archon.gg Meta Builds (33.1% popularity, 3,603 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.4,
                        totalRankings = 10554,
                        source = "Archon.gg Meta Builds (30.4% popularity, 10,554 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 29.1,
                        totalRankings = 1225,
                        source = "Archon.gg Meta Builds (29.1% popularity, 1,225 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 41.6,
                        totalRankings = 10673,
                        source = "Archon.gg Meta Builds (41.6% popularity, 10,673 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.3,
                        totalRankings = 5339,
                        source = "Archon.gg Meta Builds (23.3% popularity, 5,339 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 88.8,
                        totalRankings = 16797,
                        source = "Archon.gg Meta Builds (88.8% popularity, 16,797 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 33.6,
                        totalRankings = 1410,
                        source = "Archon.gg Meta Builds (33.6% popularity, 1,410 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.2,
                        totalRankings = 2751,
                        source = "Archon.gg Meta Builds (18.2% popularity, 2,751 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                        usage = 27.8,
                        totalRankings = 10972,
                        source = "Archon.gg Meta Builds (27.8% popularity, 10,972 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 21.7,
                        totalRankings = 2537,
                        source = "Archon.gg Meta Builds (21.7% popularity, 2,537 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 32.5,
                        totalRankings = 5484,
                        source = "Archon.gg Meta Builds (32.5% popularity, 5,484 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZjZmFzMzMzmNGbzMzMPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 18.7,
                        totalRankings = 1761,
                        source = "Archon.gg Meta Builds (18.7% popularity, 1,761 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 10.4,
                        totalRankings = 1599,
                        source = "Archon.gg Meta Builds (10.4% popularity, 1,599 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 16.3,
                        totalRankings = 8573,
                        source = "Archon.gg Meta Builds (16.3% popularity, 8,573 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZWmBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 13.8,
                        totalRankings = 3283,
                        source = "Archon.gg Meta Builds (13.8% popularity, 3,283 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.6,
                        totalRankings = 2888,
                        source = "Archon.gg Meta Builds (39.6% popularity, 2,888 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 31.2,
                        totalRankings = 1100,
                        source = "Archon.gg Meta Builds (31.2% popularity, 1,100 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 46.5,
                        totalRankings = 18790,
                        source = "Archon.gg Meta Builds (46.5% popularity, 18,790 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 49.6,
                        totalRankings = 2475,
                        source = "Archon.gg Meta Builds (49.6% popularity, 2,475 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 16.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.3% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 72.0,
                        totalRankings = 11649,
                        source = "Archon.gg Meta Builds (72.0% popularity, 11,649 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.6% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 39.6,
                        totalRankings = 3093,
                        source = "Archon.gg Meta Builds (39.6% popularity, 3,093 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 30.4,
                        totalRankings = 3623,
                        source = "Archon.gg Meta Builds (30.4% popularity, 3,623 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 40.2,
                        totalRankings = 2917,
                        source = "Archon.gg Meta Builds (40.2% popularity, 2,917 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 21.0,
                        totalRankings = 2710,
                        source = "Archon.gg Meta Builds (21.0% popularity, 2,710 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.4,
                        totalRankings = 4357,
                        source = "Archon.gg Meta Builds (36.4% popularity, 4,357 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.7,
                        totalRankings = 3548,
                        source = "Archon.gg Meta Builds (5.7% popularity, 3,548 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 16.4,
                        totalRankings = 12124,
                        source = "Archon.gg Meta Builds (16.4% popularity, 12,124 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 5.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.0% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 50.2,
                        totalRankings = 8058,
                        source = "Archon.gg Meta Builds (50.2% popularity, 8,058 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 35.0,
                        totalRankings = 4556,
                        source = "Archon.gg Meta Builds (35.0% popularity, 4,556 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 53.0,
                        totalRankings = 2368,
                        source = "Archon.gg Meta Builds (53.0% popularity, 2,368 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 25.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.0% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.8,
                        totalRankings = 2683,
                        source = "Archon.gg Meta Builds (48.8% popularity, 2,683 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 30.0,
                        totalRankings = 7529,
                        source = "Archon.gg Meta Builds (30.0% popularity, 7,529 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 53.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.6% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.3,
                        totalRankings = 11818,
                        source = "Archon.gg Meta Builds (22.3% popularity, 11,818 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.8,
                        totalRankings = 830,
                        source = "Archon.gg Meta Builds (21.8% popularity, 830 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 35.5,
                        totalRankings = 2840,
                        source = "Archon.gg Meta Builds (35.5% popularity, 2,840 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 37.0,
                        totalRankings = 11091,
                        source = "Archon.gg Meta Builds (37.0% popularity, 11,091 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 23.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (23.0% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 45.4,
                        totalRankings = 9891,
                        source = "Archon.gg Meta Builds (45.4% popularity, 9,891 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 28.5,
                        totalRankings = 5672,
                        source = "Archon.gg Meta Builds (28.5% popularity, 5,672 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 79.7,
                        totalRankings = 13438,
                        source = "Archon.gg Meta Builds (79.7% popularity, 13,438 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 37.5,
                        totalRankings = 2098,
                        source = "Archon.gg Meta Builds (37.5% popularity, 2,098 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.2,
                        totalRankings = 3122,
                        source = "Archon.gg Meta Builds (16.2% popularity, 3,122 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 29.2,
                        totalRankings = 11264,
                        source = "Archon.gg Meta Builds (29.2% popularity, 11,264 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.6,
                        totalRankings = 2804,
                        source = "Archon.gg Meta Builds (30.6% popularity, 2,804 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 38.0,
                        totalRankings = 6487,
                        source = "Archon.gg Meta Builds (38.0% popularity, 6,487 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 26.8,
                        totalRankings = 2525,
                        source = "Archon.gg Meta Builds (26.8% popularity, 2,525 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.2,
                        totalRankings = 2508,
                        source = "Archon.gg Meta Builds (20.2% popularity, 2,508 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.5,
                        totalRankings = 8035,
                        source = "Archon.gg Meta Builds (17.5% popularity, 8,035 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 15.0,
                        totalRankings = 3477,
                        source = "Archon.gg Meta Builds (15.0% popularity, 3,477 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.1,
                        totalRankings = 2201,
                        source = "Archon.gg Meta Builds (39.1% popularity, 2,201 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 19.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (19.7% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 35.3,
                        totalRankings = 22753,
                        source = "Archon.gg Meta Builds (35.3% popularity, 22,753 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 28.9,
                        totalRankings = 3117,
                        source = "Archon.gg Meta Builds (28.9% popularity, 3,117 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 34.3,
                        totalRankings = 1094,
                        source = "Archon.gg Meta Builds (34.3% popularity, 1,094 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.6,
                        totalRankings = 8257,
                        source = "Archon.gg Meta Builds (55.6% popularity, 8,257 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 50.8,
                        totalRankings = 1091,
                        source = "Archon.gg Meta Builds (50.8% popularity, 1,091 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 23.2,
                        totalRankings = 4742,
                        source = "Archon.gg Meta Builds (23.2% popularity, 4,742 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.8,
                        totalRankings = 2457,
                        source = "Archon.gg Meta Builds (34.8% popularity, 2,457 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.8,
                        totalRankings = 3157,
                        source = "Archon.gg Meta Builds (24.8% popularity, 3,157 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 31.9,
                        totalRankings = 3770,
                        source = "Archon.gg Meta Builds (31.9% popularity, 3,770 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.8,
                        totalRankings = 4114,
                        source = "Archon.gg Meta Builds (34.8% popularity, 4,114 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 4275,
                        source = "Archon.gg Meta Builds (6.0% popularity, 4,275 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 35.3,
                        totalRankings = 15657,
                        source = "Archon.gg Meta Builds (35.3% popularity, 15,657 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.9,
                        totalRankings = 1416,
                        source = "Archon.gg Meta Builds (7.9% popularity, 1,416 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.5,
                        totalRankings = 6924,
                        source = "Archon.gg Meta Builds (39.5% popularity, 6,924 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 35.2,
                        totalRankings = 5189,
                        source = "Archon.gg Meta Builds (35.2% popularity, 5,189 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 68.6,
                        totalRankings = 2583,
                        source = "Archon.gg Meta Builds (68.6% popularity, 2,583 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 26.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.6% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.0,
                        totalRankings = 2259,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2,259 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.0,
                        totalRankings = 8475,
                        source = "Archon.gg Meta Builds (31.0% popularity, 8,475 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 29.8,
                        totalRankings = 1536,
                        source = "Archon.gg Meta Builds (29.8% popularity, 1,536 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.0,
                        totalRankings = 10242,
                        source = "Archon.gg Meta Builds (19.0% popularity, 10,242 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.7,
                        totalRankings = 1018,
                        source = "Archon.gg Meta Builds (19.7% popularity, 1,018 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 38.5,
                        totalRankings = 3311,
                        source = "Archon.gg Meta Builds (38.5% popularity, 3,311 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 32.2,
                        totalRankings = 10786,
                        source = "Archon.gg Meta Builds (32.2% popularity, 10,786 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 30.9,
                        totalRankings = 1209,
                        source = "Archon.gg Meta Builds (30.9% popularity, 1,209 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 41.0,
                        totalRankings = 10660,
                        source = "Archon.gg Meta Builds (41.0% popularity, 10,660 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 22.8,
                        totalRankings = 5342,
                        source = "Archon.gg Meta Builds (22.8% popularity, 5,342 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 92.8,
                        totalRankings = 7193,
                        source = "Archon.gg Meta Builds (92.8% popularity, 7,193 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGGDAAAAAAAAzMzsxMjZAAz2MMjZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 39.4,
                        totalRankings = 977,
                        source = "Archon.gg Meta Builds (39.4% popularity, 977 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 16.6,
                        totalRankings = 1636,
                        source = "Archon.gg Meta Builds (16.6% popularity, 1,636 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNjxMMmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 49.8,
                        totalRankings = 4691,
                        source = "Archon.gg Meta Builds (49.8% popularity, 4,691 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 11.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (11.6% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMMLzsNzsMmZmZmFjxwMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 45.1,
                        totalRankings = 3347,
                        source = "Archon.gg Meta Builds (45.1% popularity, 3,347 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZb2MDzMzMzmNzYbmZm5BmZAAAAAA2CmNDjZG1MmFWmZGjZmBAAAAAAMAAAAAAgZbmlmlZW2AzAwCDG",
                        usage = 21.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.2% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMbGGNZamZWMbzMjxgBAAAAAghZAAAAgmZbWmZWGAALwAwiZGG",
                        usage = 8.0,
                        totalRankings = 988,
                        source = "Archon.gg Meta Builds (8.0% popularity, 988 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 22.3,
                        totalRankings = 2592,
                        source = "Archon.gg Meta Builds (22.3% popularity, 2,592 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZ2mBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 15.5,
                        totalRankings = 2161,
                        source = "Archon.gg Meta Builds (15.5% popularity, 2,161 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 40.7,
                        totalRankings = 1456,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,456 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 34.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (34.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 54.8,
                        totalRankings = 7623,
                        source = "Archon.gg Meta Builds (54.8% popularity, 7,623 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 38.7,
                        totalRankings = 1342,
                        source = "Archon.gg Meta Builds (38.7% popularity, 1,342 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 23.1,
                        totalRankings = 373,
                        source = "Archon.gg Meta Builds (23.1% popularity, 373 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 48.8,
                        totalRankings = 6104,
                        source = "Archon.gg Meta Builds (48.8% popularity, 6,104 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 39.7,
                        totalRankings = 791,
                        source = "Archon.gg Meta Builds (39.7% popularity, 791 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 58.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.0% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 32.3,
                        totalRankings = 2278,
                        source = "Archon.gg Meta Builds (32.3% popularity, 2,278 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 49.1,
                        totalRankings = 1313,
                        source = "Archon.gg Meta Builds (49.1% popularity, 1,313 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 37.5,
                        totalRankings = 1414,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,414 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.3,
                        totalRankings = 1976,
                        source = "Archon.gg Meta Builds (33.3% popularity, 1,976 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MmhxYYAAAGAAAAAAASmZWMMDGzMzWbAADAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.5,
                        totalRankings = 1168,
                        source = "Archon.gg Meta Builds (5.5% popularity, 1,168 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 58.3,
                        totalRankings = 4317,
                        source = "Archon.gg Meta Builds (58.3% popularity, 4,317 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmlZZ2GMzMYWYYYGDzyCz0YilZAmZBLEGz2AM2wCAAA",
                        usage = 4.9,
                        totalRankings = 243,
                        source = "Archon.gg Meta Builds (4.9% popularity, 243 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.0,
                        totalRankings = 3017,
                        source = "Archon.gg Meta Builds (56.0% popularity, 3,017 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 36.8,
                        totalRankings = 3246,
                        source = "Archon.gg Meta Builds (36.8% popularity, 3,246 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 78.7,
                        totalRankings = 1119,
                        source = "Archon.gg Meta Builds (78.7% popularity, 1,119 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 44.7,
                        totalRankings = 456,
                        source = "Archon.gg Meta Builds (44.7% popularity, 456 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 44.5,
                        totalRankings = 1626,
                        source = "Archon.gg Meta Builds (44.5% popularity, 1,626 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.1,
                        totalRankings = 4527,
                        source = "Archon.gg Meta Builds (49.1% popularity, 4,527 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 59.2,
                        totalRankings = 743,
                        source = "Archon.gg Meta Builds (59.2% popularity, 743 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.6,
                        totalRankings = 3679,
                        source = "Archon.gg Meta Builds (22.6% popularity, 3,679 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMzyMjxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 24.7,
                        totalRankings = 631,
                        source = "Archon.gg Meta Builds (24.7% popularity, 631 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 30.3,
                        totalRankings = 753,
                        source = "Archon.gg Meta Builds (30.3% popularity, 753 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 57.2,
                        totalRankings = 6676,
                        source = "Archon.gg Meta Builds (57.2% popularity, 6,676 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMMDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 30.3,
                        totalRankings = 294,
                        source = "Archon.gg Meta Builds (30.3% popularity, 294 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 54.9,
                        totalRankings = 4200,
                        source = "Archon.gg Meta Builds (54.9% popularity, 4,200 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 27.2,
                        totalRankings = 2444,
                        source = "Archon.gg Meta Builds (27.2% popularity, 2,444 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 81.5,
                        totalRankings = 14072,
                        source = "Archon.gg Meta Builds (81.5% popularity, 14,072 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 30.2,
                        totalRankings = 2129,
                        source = "Archon.gg Meta Builds (30.2% popularity, 2,129 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.0,
                        totalRankings = 3162,
                        source = "Archon.gg Meta Builds (18.0% popularity, 3,162 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                        usage = 17.5,
                        totalRankings = 12187,
                        source = "Archon.gg Meta Builds (17.5% popularity, 12,187 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 25.0,
                        totalRankings = 2856,
                        source = "Archon.gg Meta Builds (25.0% popularity, 2,856 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 78.1,
                        totalRankings = 6646,
                        source = "Archon.gg Meta Builds (78.1% popularity, 6,646 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 57.4,
                        totalRankings = 2533,
                        source = "Archon.gg Meta Builds (57.4% popularity, 2,533 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 12.8,
                        totalRankings = 2538,
                        source = "Archon.gg Meta Builds (12.8% popularity, 2,538 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.1,
                        totalRankings = 8681,
                        source = "Archon.gg Meta Builds (18.1% popularity, 8,681 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 19.1,
                        totalRankings = 3490,
                        source = "Archon.gg Meta Builds (19.1% popularity, 3,490 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 41.5,
                        totalRankings = 2330,
                        source = "Archon.gg Meta Builds (41.5% popularity, 2,330 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 18.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.1% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 21.8,
                        totalRankings = 22531,
                        source = "Archon.gg Meta Builds (21.8% popularity, 22,531 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 55.1,
                        totalRankings = 3483,
                        source = "Archon.gg Meta Builds (55.1% popularity, 3,483 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 22.9,
                        totalRankings = 1088,
                        source = "Archon.gg Meta Builds (22.9% popularity, 1,088 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 69.0,
                        totalRankings = 8564,
                        source = "Archon.gg Meta Builds (69.0% popularity, 8,564 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.5,
                        totalRankings = 1289,
                        source = "Archon.gg Meta Builds (40.5% popularity, 1,289 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 28.3,
                        totalRankings = 4749,
                        source = "Archon.gg Meta Builds (28.3% popularity, 4,749 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.5,
                        totalRankings = 2575,
                        source = "Archon.gg Meta Builds (31.5% popularity, 2,575 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 31.6,
                        totalRankings = 3372,
                        source = "Archon.gg Meta Builds (31.6% popularity, 3,372 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 20.0,
                        totalRankings = 3976,
                        source = "Archon.gg Meta Builds (20.0% popularity, 3,976 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.4,
                        totalRankings = 4430,
                        source = "Archon.gg Meta Builds (36.4% popularity, 4,430 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.8,
                        totalRankings = 4375,
                        source = "Archon.gg Meta Builds (5.8% popularity, 4,375 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 31.6,
                        totalRankings = 16225,
                        source = "Archon.gg Meta Builds (31.6% popularity, 16,225 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.2,
                        totalRankings = 1474,
                        source = "Archon.gg Meta Builds (6.2% popularity, 1,474 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.4,
                        totalRankings = 7239,
                        source = "Archon.gg Meta Builds (40.4% popularity, 7,239 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 26.9,
                        totalRankings = 5157,
                        source = "Archon.gg Meta Builds (26.9% popularity, 5,157 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 62.7,
                        totalRankings = 2609,
                        source = "Archon.gg Meta Builds (62.7% popularity, 2,609 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 29.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.6% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjxy0YGjxMGjZ8AzMzMMmtZxYGbzMjZmZMYsMbDAAAgZGMAGzmhBGYWYhWsBD",
                        usage = 26.0,
                        totalRankings = 2242,
                        source = "Archon.gg Meta Builds (26.0% popularity, 2,242 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.6,
                        totalRankings = 8312,
                        source = "Archon.gg Meta Builds (32.6% popularity, 8,312 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAWmmZGssYmZmhxMz2wyMzEYYWmZAAGD",
                        usage = 40.9,
                        totalRankings = 1515,
                        source = "Archon.gg Meta Builds (40.9% popularity, 1,515 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.0,
                        totalRankings = 10765,
                        source = "Archon.gg Meta Builds (22.0% popularity, 10,765 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.5,
                        totalRankings = 1355,
                        source = "Archon.gg Meta Builds (23.5% popularity, 1,355 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 38.0,
                        totalRankings = 2943,
                        source = "Archon.gg Meta Builds (38.0% popularity, 2,943 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 33.4,
                        totalRankings = 11064,
                        source = "Archon.gg Meta Builds (33.4% popularity, 11,064 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 23.2,
                        totalRankings = 1303,
                        source = "Archon.gg Meta Builds (23.2% popularity, 1,303 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 46.4,
                        totalRankings = 11320,
                        source = "Archon.gg Meta Builds (46.4% popularity, 11,320 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 21.5,
                        totalRankings = 5600,
                        source = "Archon.gg Meta Builds (21.5% popularity, 5,600 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 76.8,
                        totalRankings = 3946,
                        source = "Archon.gg Meta Builds (76.8% popularity, 3,946 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMzMGmxMzMTzYmZMMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 55.9,
                        totalRankings = 451,
                        source = "Archon.gg Meta Builds (55.9% popularity, 451 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMzMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 27.7,
                        totalRankings = 1157,
                        source = "Archon.gg Meta Builds (27.7% popularity, 1,157 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 42.7,
                        totalRankings = 2859,
                        source = "Archon.gg Meta Builds (42.7% popularity, 2,859 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDzMbzMYsNjZegZMDmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 12.2,
                        totalRankings = 846,
                        source = "Archon.gg Meta Builds (12.2% popularity, 846 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 92.6,
                        totalRankings = 1478,
                        source = "Archon.gg Meta Builds (92.6% popularity, 1,478 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2AzMjaGzyYZmZMMMAAAAAAwAAAAA0MLzyMz2AAWgZmBwCzwA",
                        usage = 66.9,
                        totalRankings = 667,
                        source = "Archon.gg Meta Builds (66.9% popularity, 667 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8ADjZMzYxDMMzsYZgZDGNRzMziZZmZMmxAAAAAAghZAAAAgmZZWmZWGAALGzAwiZwA",
                        usage = 7.4,
                        totalRankings = 475,
                        source = "Archon.gg Meta Builds (7.4% popularity, 475 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 22.0,
                        totalRankings = 2411,
                        source = "Archon.gg Meta Builds (22.0% popularity, 2,411 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 33.2,
                        totalRankings = 1037,
                        source = "Archon.gg Meta Builds (33.2% popularity, 1,037 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 41.9,
                        totalRankings = 1756,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,756 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 22.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (22.8% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzMMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                        usage = 32.6,
                        totalRankings = 4353,
                        source = "Archon.gg Meta Builds (32.6% popularity, 4,353 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjmZmxwMDMMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 80.8,
                        totalRankings = 1060,
                        source = "Archon.gg Meta Builds (80.8% popularity, 1,060 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 26.1,
                        totalRankings = 119,
                        source = "Archon.gg Meta Builds (26.1% popularity, 119 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 70.9,
                        totalRankings = 3443,
                        source = "Archon.gg Meta Builds (70.9% popularity, 3,443 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMzMzMLeAGzMMNmZMAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 33.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.3% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmFDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 59.6,
                        totalRankings = 830,
                        source = "Archon.gg Meta Builds (59.6% popularity, 830 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 31.9,
                        totalRankings = 1609,
                        source = "Archon.gg Meta Builds (31.9% popularity, 1,609 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 81.6,
                        totalRankings = 1033,
                        source = "Archon.gg Meta Builds (81.6% popularity, 1,033 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 47.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (47.0% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 31.6,
                        totalRankings = 1784,
                        source = "Archon.gg Meta Builds (31.6% popularity, 1,784 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLjZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGzMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (6.8% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 67.6,
                        totalRankings = 1922,
                        source = "Archon.gg Meta Builds (67.6% popularity, 1,922 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMmZMzYMmZGzwsNzMzMDAAAAAAAAAAwsMLz2gZmBzCjZwYwCbz0YilxwMDAEgZb2WAjNbAAA",
                        usage = 4.1,
                        totalRankings = 270,
                        source = "Archon.gg Meta Builds (4.1% popularity, 270 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 57.0,
                        totalRankings = 2663,
                        source = "Archon.gg Meta Builds (57.0% popularity, 2,663 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 49.3,
                        totalRankings = 1429,
                        source = "Archon.gg Meta Builds (49.3% popularity, 1,429 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 66.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (66.1% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 50.7,
                        totalRankings = 359,
                        source = "Archon.gg Meta Builds (50.7% popularity, 359 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGDbzMzMzMDYsMbDAAAAzgBwY2MMwAzCL0iNMD",
                        usage = 44.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.1% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmBzywsMzMjZGzMbA",
                        usage = 49.4,
                        totalRankings = 2186,
                        source = "Archon.gg Meta Builds (49.4% popularity, 2,186 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAz2kBmlFzMzMmZMzGWmZmGsMWYmBAYMA",
                        usage = 67.1,
                        totalRankings = 301,
                        source = "Archon.gg Meta Builds (67.1% popularity, 301 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 25.9,
                        totalRankings = 3153,
                        source = "Archon.gg Meta Builds (25.9% popularity, 3,153 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 21.7,
                        totalRankings = 724,
                        source = "Archon.gg Meta Builds (21.7% popularity, 724 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 71.0,
                        totalRankings = 255,
                        source = "Archon.gg Meta Builds (71.0% popularity, 255 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 50.1,
                        totalRankings = 4332,
                        source = "Archon.gg Meta Builds (50.1% popularity, 4,332 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWmZGGLjZmxmZmBDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 30.4,
                        totalRankings = 191,
                        source = "Archon.gg Meta Builds (30.4% popularity, 191 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 63.1,
                        totalRankings = 2456,
                        source = "Archon.gg Meta Builds (63.1% popularity, 2,456 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 22.1,
                        totalRankings = 1521,
                        source = "Archon.gg Meta Builds (22.1% popularity, 1,521 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 46.0,
                        totalRankings = 12553,
                        source = "Archon.gg Meta Builds (46.0% popularity, 12,553 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.3,
                        totalRankings = 2134,
                        source = "Archon.gg Meta Builds (70.3% popularity, 2,134 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.4,
                        totalRankings = 3036,
                        source = "Archon.gg Meta Builds (18.4% popularity, 3,036 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.8,
                        totalRankings = 10442,
                        source = "Archon.gg Meta Builds (67.8% popularity, 10,442 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 37.0,
                        totalRankings = 2687,
                        source = "Archon.gg Meta Builds (37.0% popularity, 2,687 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 58.6,
                        totalRankings = 5927,
                        source = "Archon.gg Meta Builds (58.6% popularity, 5,927 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 62.3,
                        totalRankings = 2262,
                        source = "Archon.gg Meta Builds (62.3% popularity, 2,262 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 25.8,
                        totalRankings = 2400,
                        source = "Archon.gg Meta Builds (25.8% popularity, 2,400 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.9,
                        totalRankings = 7797,
                        source = "Archon.gg Meta Builds (17.9% popularity, 7,797 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.6,
                        totalRankings = 3136,
                        source = "Archon.gg Meta Builds (24.6% popularity, 3,136 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.1,
                        totalRankings = 2089,
                        source = "Archon.gg Meta Builds (36.1% popularity, 2,089 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 18.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.6% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 52.2,
                        totalRankings = 21638,
                        source = "Archon.gg Meta Builds (52.2% popularity, 21,638 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 69.4,
                        totalRankings = 2998,
                        source = "Archon.gg Meta Builds (69.4% popularity, 2,998 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 58.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.0% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 73.1,
                        totalRankings = 8117,
                        source = "Archon.gg Meta Builds (73.1% popularity, 8,117 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 51.9,
                        totalRankings = 1004,
                        source = "Archon.gg Meta Builds (51.9% popularity, 1,004 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 40.9,
                        totalRankings = 4425,
                        source = "Archon.gg Meta Builds (40.9% popularity, 4,425 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 37.0,
                        totalRankings = 2388,
                        source = "Archon.gg Meta Builds (37.0% popularity, 2,388 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 26.8,
                        totalRankings = 2999,
                        source = "Archon.gg Meta Builds (26.8% popularity, 2,999 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 63.5,
                        totalRankings = 3473,
                        source = "Archon.gg Meta Builds (63.5% popularity, 3,473 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.4,
                        totalRankings = 3870,
                        source = "Archon.gg Meta Builds (36.4% popularity, 3,870 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.9,
                        totalRankings = 3923,
                        source = "Archon.gg Meta Builds (5.9% popularity, 3,923 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.5,
                        totalRankings = 14126,
                        source = "Archon.gg Meta Builds (71.5% popularity, 14,126 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.2,
                        totalRankings = 1299,
                        source = "Archon.gg Meta Builds (8.2% popularity, 1,299 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.2,
                        totalRankings = 6697,
                        source = "Archon.gg Meta Builds (39.2% popularity, 6,697 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 27.3,
                        totalRankings = 4699,
                        source = "Archon.gg Meta Builds (27.3% popularity, 4,699 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.3,
                        totalRankings = 2758,
                        source = "Archon.gg Meta Builds (72.3% popularity, 2,758 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 40.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.9% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.5,
                        totalRankings = 1842,
                        source = "Archon.gg Meta Builds (53.5% popularity, 1,842 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.8,
                        totalRankings = 7594,
                        source = "Archon.gg Meta Builds (31.8% popularity, 7,594 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 59.2,
                        totalRankings = 1368,
                        source = "Archon.gg Meta Builds (59.2% popularity, 1,368 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.9,
                        totalRankings = 9667,
                        source = "Archon.gg Meta Builds (19.9% popularity, 9,667 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 18.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.0% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 75.5,
                        totalRankings = 3072,
                        source = "Archon.gg Meta Builds (75.5% popularity, 3,072 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.4,
                        totalRankings = 9968,
                        source = "Archon.gg Meta Builds (41.4% popularity, 9,968 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.0,
                        totalRankings = 1139,
                        source = "Archon.gg Meta Builds (63.0% popularity, 1,139 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.2,
                        totalRankings = 9668,
                        source = "Archon.gg Meta Builds (45.2% popularity, 9,668 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.3,
                        totalRankings = 5012,
                        source = "Archon.gg Meta Builds (19.3% popularity, 5,012 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 68.6,
                        totalRankings = 5920,
                        source = "Archon.gg Meta Builds (68.6% popularity, 5,920 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 73.2,
                        totalRankings = 1054,
                        source = "Archon.gg Meta Builds (73.2% popularity, 1,054 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMzMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 27.5,
                        totalRankings = 1541,
                        source = "Archon.gg Meta Builds (27.5% popularity, 1,541 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 82.6,
                        totalRankings = 4360,
                        source = "Archon.gg Meta Builds (82.6% popularity, 4,360 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 26.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.7% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 69.4,
                        totalRankings = 2649,
                        source = "Archon.gg Meta Builds (69.4% popularity, 2,649 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 46.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.2% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDAMay0MzsMz2MzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCjBgFzgB",
                        usage = 7.8,
                        totalRankings = 901,
                        source = "Archon.gg Meta Builds (7.8% popularity, 901 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 22.0,
                        totalRankings = 2929,
                        source = "Archon.gg Meta Builds (22.0% popularity, 2,929 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 28.8,
                        totalRankings = 1725,
                        source = "Archon.gg Meta Builds (28.8% popularity, 1,725 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.1,
                        totalRankings = 1764,
                        source = "Archon.gg Meta Builds (36.1% popularity, 1,764 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 34.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (34.0% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 72.8,
                        totalRankings = 7459,
                        source = "Archon.gg Meta Builds (72.8% popularity, 7,459 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 85.6,
                        totalRankings = 1006,
                        source = "Archon.gg Meta Builds (85.6% popularity, 1,006 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 39.9,
                        totalRankings = 281,
                        source = "Archon.gg Meta Builds (39.9% popularity, 281 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 79.8,
                        totalRankings = 5728,
                        source = "Archon.gg Meta Builds (79.8% popularity, 5,728 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 47.3,
                        totalRankings = 855,
                        source = "Archon.gg Meta Builds (47.3% popularity, 855 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 62.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (62.7% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 31.8,
                        totalRankings = 2141,
                        source = "Archon.gg Meta Builds (31.8% popularity, 2,141 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 51.7,
                        totalRankings = 1403,
                        source = "Archon.gg Meta Builds (51.7% popularity, 1,403 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 79.6,
                        totalRankings = 1194,
                        source = "Archon.gg Meta Builds (79.6% popularity, 1,194 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.0,
                        totalRankings = 2144,
                        source = "Archon.gg Meta Builds (36.0% popularity, 2,144 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBDDAAwAAAAAAAQyMzihZGGjZ2CAwAAMD2GAAAAwMzy2SbzMWMwAwMMDjB",
                        usage = 3.1,
                        totalRankings = 1098,
                        source = "Archon.gg Meta Builds (3.1% popularity, 1,098 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 84.8,
                        totalRankings = 3558,
                        source = "Archon.gg Meta Builds (84.8% popularity, 3,558 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZMzMjxMzYGsNzMzMzAAAAAAAAAAAmlZZ2GMzMYWYYYGDzCbz0YilBmZAgAMbz2GYsZDAA",
                        usage = 4.7,
                        totalRankings = 338,
                        source = "Archon.gg Meta Builds (4.7% popularity, 338 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 58.1,
                        totalRankings = 3452,
                        source = "Archon.gg Meta Builds (58.1% popularity, 3,452 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 19.3,
                        totalRankings = 2435,
                        source = "Archon.gg Meta Builds (19.3% popularity, 2,435 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 75.6,
                        totalRankings = 1739,
                        source = "Archon.gg Meta Builds (75.6% popularity, 1,739 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 72.1,
                        totalRankings = 448,
                        source = "Archon.gg Meta Builds (72.1% popularity, 448 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 54.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (54.6% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 53.0,
                        totalRankings = 3852,
                        source = "Archon.gg Meta Builds (53.0% popularity, 3,852 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 73.6,
                        totalRankings = 652,
                        source = "Archon.gg Meta Builds (73.6% popularity, 652 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 23.4,
                        totalRankings = 4034,
                        source = "Archon.gg Meta Builds (23.4% popularity, 4,034 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMbGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 18.8,
                        totalRankings = 552,
                        source = "Archon.gg Meta Builds (18.8% popularity, 552 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 84.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (84.6% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.6,
                        totalRankings = 5955,
                        source = "Archon.gg Meta Builds (55.6% popularity, 5,955 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 64.1,
                        totalRankings = 298,
                        source = "Archon.gg Meta Builds (64.1% popularity, 298 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 39.9,
                        totalRankings = 3771,
                        source = "Archon.gg Meta Builds (39.9% popularity, 3,771 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzshZG",
                        usage = 28.9,
                        totalRankings = 2285,
                        source = "Archon.gg Meta Builds (28.9% popularity, 2,285 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 69.0,
                        totalRankings = 6231,
                        source = "Archon.gg Meta Builds (69.0% popularity, 6,231 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 59.9,
                        totalRankings = 1325,
                        source = "Archon.gg Meta Builds (59.9% popularity, 1,325 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.8,
                        totalRankings = 2243,
                        source = "Archon.gg Meta Builds (16.8% popularity, 2,243 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 56.0,
                        totalRankings = 5658,
                        source = "Archon.gg Meta Builds (56.0% popularity, 5,658 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.9,
                        totalRankings = 1707,
                        source = "Archon.gg Meta Builds (30.9% popularity, 1,707 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 58.4,
                        totalRankings = 3506,
                        source = "Archon.gg Meta Builds (58.4% popularity, 3,506 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 44.1,
                        totalRankings = 1376,
                        source = "Archon.gg Meta Builds (44.1% popularity, 1,376 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.2,
                        totalRankings = 1411,
                        source = "Archon.gg Meta Builds (23.2% popularity, 1,411 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 16.4,
                        totalRankings = 3929,
                        source = "Archon.gg Meta Builds (16.4% popularity, 3,929 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 25.2,
                        totalRankings = 2268,
                        source = "Archon.gg Meta Builds (25.2% popularity, 2,268 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.3,
                        totalRankings = 1414,
                        source = "Archon.gg Meta Builds (38.3% popularity, 1,414 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 16.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.0% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 39.9,
                        totalRankings = 10065,
                        source = "Archon.gg Meta Builds (39.9% popularity, 10,065 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxYmZgZMLmZwYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 29.4,
                        totalRankings = 1815,
                        source = "Archon.gg Meta Builds (29.4% popularity, 1,815 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 52.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (52.7% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 38.8,
                        totalRankings = 4928,
                        source = "Archon.gg Meta Builds (38.8% popularity, 4,928 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 52.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (52.2% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 43.5,
                        totalRankings = 2467,
                        source = "Archon.gg Meta Builds (43.5% popularity, 2,467 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 38.1,
                        totalRankings = 1655,
                        source = "Archon.gg Meta Builds (38.1% popularity, 1,655 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 35.6,
                        totalRankings = 1939,
                        source = "Archon.gg Meta Builds (35.6% popularity, 1,939 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.0,
                        totalRankings = 2170,
                        source = "Archon.gg Meta Builds (53.0% popularity, 2,170 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 40.1,
                        totalRankings = 2471,
                        source = "Archon.gg Meta Builds (40.1% popularity, 2,471 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 6.2,
                        totalRankings = 2368,
                        source = "Archon.gg Meta Builds (6.2% popularity, 2,368 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 72.6,
                        totalRankings = 8124,
                        source = "Archon.gg Meta Builds (72.6% popularity, 8,124 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (9.0% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.2,
                        totalRankings = 4158,
                        source = "Archon.gg Meta Builds (41.2% popularity, 4,158 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 35.3,
                        totalRankings = 3064,
                        source = "Archon.gg Meta Builds (35.3% popularity, 3,064 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 73.2,
                        totalRankings = 1681,
                        source = "Archon.gg Meta Builds (73.2% popularity, 1,681 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAA22mZGMzMzCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 31.4,
                        totalRankings = 848,
                        source = "Archon.gg Meta Builds (31.4% popularity, 848 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.7,
                        totalRankings = 1154,
                        source = "Archon.gg Meta Builds (53.7% popularity, 1,154 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 36.8,
                        totalRankings = 4498,
                        source = "Archon.gg Meta Builds (36.8% popularity, 4,498 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 33.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.1% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.8,
                        totalRankings = 5039,
                        source = "Archon.gg Meta Builds (19.8% popularity, 5,039 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (19.2% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.6,
                        totalRankings = 1725,
                        source = "Archon.gg Meta Builds (77.6% popularity, 1,725 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 42.0,
                        totalRankings = 6391,
                        source = "Archon.gg Meta Builds (42.0% popularity, 6,391 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 46.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.0% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 39.7,
                        totalRankings = 5679,
                        source = "Archon.gg Meta Builds (39.7% popularity, 5,679 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.6,
                        totalRankings = 3004,
                        source = "Archon.gg Meta Builds (25.6% popularity, 3,004 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 97.5,
                        totalRankings = 1151,
                        source = "Archon.gg Meta Builds (97.5% popularity, 1,151 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 27.2,
                        totalRankings = 114,
                        source = "Archon.gg Meta Builds (27.2% popularity, 114 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMGzYAAAAgZmZmZmZmZzMzYAAAjZmZGAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 25.5,
                        totalRankings = 733,
                        source = "Archon.gg Meta Builds (25.5% popularity, 733 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 57.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.4% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmxYYmZZMMjtZMzDMzMjBjZmZzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 9.4,
                        totalRankings = 149,
                        source = "Archon.gg Meta Builds (9.4% popularity, 149 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDY2GLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 80.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (80.7% popularity, 1,000 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsNWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 52.8,
                        totalRankings = 271,
                        source = "Archon.gg Meta Builds (52.8% popularity, 271 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMzMzy8AMmZwYxMMjFLDAMay0MzsMzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 14.9,
                        totalRankings = 74,
                        source = "Archon.gg Meta Builds (14.9% popularity, 74 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMbjlZmhhZAAAAAADAYAAAAAAz2MbNLzsZjZmZAmNMaA",
                        usage = 37.6,
                        totalRankings = 779,
                        source = "Archon.gg Meta Builds (37.6% popularity, 779 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 28.1,
                        totalRankings = 879,
                        source = "Archon.gg Meta Builds (28.1% popularity, 879 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 35.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (35.9% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 35.6,
                        totalRankings = 794,
                        source = "Archon.gg Meta Builds (35.6% popularity, 794 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 79.2,
                        totalRankings = 1159,
                        source = "Archon.gg Meta Builds (79.2% popularity, 1,159 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 61.8,
                        totalRankings = 157,
                        source = "Archon.gg Meta Builds (61.8% popularity, 157 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 40.6,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (40.6% popularity, 32 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 38.0,
                        totalRankings = 1246,
                        source = "Archon.gg Meta Builds (38.0% popularity, 1,246 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 52.0,
                        totalRankings = 150,
                        source = "Archon.gg Meta Builds (52.0% popularity, 150 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 69.2,
                        totalRankings = 120,
                        source = "Archon.gg Meta Builds (69.2% popularity, 120 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mxYmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 14.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.8% popularity, 1,000 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 77.9,
                        totalRankings = 512,
                        source = "Archon.gg Meta Builds (77.9% popularity, 512 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYmhZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.7,
                        totalRankings = 490,
                        source = "Archon.gg Meta Builds (53.7% popularity, 490 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 38.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (38.4% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGDzWbAwYAAmBbDAAAAYmZZbptZGLGYAYmxMMG",
                        usage = 22.0,
                        totalRankings = 295,
                        source = "Archon.gg Meta Builds (22.0% popularity, 295 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 86.2,
                        totalRankings = 842,
                        source = "Archon.gg Meta Builds (86.2% popularity, 842 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZMzYMmZGzsx2MzMzMDAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWGYmBACwsNbbgxmNAA",
                        usage = 8.3,
                        totalRankings = 48,
                        source = "Archon.gg Meta Builds (8.3% popularity, 48 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 53.3,
                        totalRankings = 900,
                        source = "Archon.gg Meta Builds (53.3% popularity, 900 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (36.4% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 77.0,
                        totalRankings = 517,
                        source = "Archon.gg Meta Builds (77.0% popularity, 517 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 83.0,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (83.0% popularity, 47 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 45.1,
                        totalRankings = 917,
                        source = "Archon.gg Meta Builds (45.1% popularity, 917 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGYbhZmGGzMbDLzMzYzYYWGzMmZMzsBA",
                        usage = 58.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.2% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 75.0,
                        totalRankings = 112,
                        source = "Archon.gg Meta Builds (75.0% popularity, 112 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 33.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.9% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 44.8,
                        totalRankings = 67,
                        source = "Archon.gg Meta Builds (44.8% popularity, 67 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.7,
                        totalRankings = 90,
                        source = "Archon.gg Meta Builds (76.7% popularity, 90 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 60.5,
                        totalRankings = 1336,
                        source = "Archon.gg Meta Builds (60.5% popularity, 1,336 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGLDmxmZmBDzwAAAAAAAwDMmlZmZALhx22ALgBMDTgB2A",
                        usage = 69.0,
                        totalRankings = 29,
                        source = "Archon.gg Meta Builds (69.0% popularity, 29 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 66.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (66.5% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 11.5,
                        totalRankings = 835,
                        source = "Archon.gg Meta Builds (11.5% popularity, 835 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 50.1,
                        totalRankings = 5166,
                        source = "Archon.gg Meta Builds (50.1% popularity, 5,166 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 54.4,
                        totalRankings = 1089,
                        source = "Archon.gg Meta Builds (54.4% popularity, 1,089 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.7,
                        totalRankings = 1916,
                        source = "Archon.gg Meta Builds (17.7% popularity, 1,916 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 66.3,
                        totalRankings = 4540,
                        source = "Archon.gg Meta Builds (66.3% popularity, 4,540 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.3,
                        totalRankings = 1305,
                        source = "Archon.gg Meta Builds (31.3% popularity, 1,305 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 61.1,
                        totalRankings = 2600,
                        source = "Archon.gg Meta Builds (61.1% popularity, 2,600 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 65.8,
                        totalRankings = 1037,
                        source = "Archon.gg Meta Builds (65.8% popularity, 1,037 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.7,
                        totalRankings = 1010,
                        source = "Archon.gg Meta Builds (23.7% popularity, 1,010 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 16.9,
                        totalRankings = 3174,
                        source = "Archon.gg Meta Builds (16.9% popularity, 3,174 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGmBMYMTzYmJjxyMzMzwYmtZAzYmNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 30.1,
                        totalRankings = 1785,
                        source = "Archon.gg Meta Builds (30.1% popularity, 1,785 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 37.5,
                        totalRankings = 1168,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,168 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 18.8,
                        totalRankings = 800,
                        source = "Archon.gg Meta Builds (18.8% popularity, 800 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 51.9,
                        totalRankings = 7882,
                        source = "Archon.gg Meta Builds (51.9% popularity, 7,882 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 73.4,
                        totalRankings = 1408,
                        source = "Archon.gg Meta Builds (73.4% popularity, 1,408 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 51.0,
                        totalRankings = 820,
                        source = "Archon.gg Meta Builds (51.0% popularity, 820 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 51.0,
                        totalRankings = 3955,
                        source = "Archon.gg Meta Builds (51.0% popularity, 3,955 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 45.7,
                        totalRankings = 917,
                        source = "Archon.gg Meta Builds (45.7% popularity, 917 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 48.1,
                        totalRankings = 1911,
                        source = "Archon.gg Meta Builds (48.1% popularity, 1,911 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 39.2,
                        totalRankings = 1318,
                        source = "Archon.gg Meta Builds (39.2% popularity, 1,318 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 39.4,
                        totalRankings = 1605,
                        source = "Archon.gg Meta Builds (39.4% popularity, 1,605 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 57.1,
                        totalRankings = 1710,
                        source = "Archon.gg Meta Builds (57.1% popularity, 1,710 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 45.0,
                        totalRankings = 1929,
                        source = "Archon.gg Meta Builds (45.0% popularity, 1,929 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 10.1,
                        totalRankings = 1721,
                        source = "Archon.gg Meta Builds (10.1% popularity, 1,721 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 80.2,
                        totalRankings = 6270,
                        source = "Archon.gg Meta Builds (80.2% popularity, 6,270 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.9,
                        totalRankings = 940,
                        source = "Archon.gg Meta Builds (6.9% popularity, 940 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.2,
                        totalRankings = 3393,
                        source = "Archon.gg Meta Builds (41.2% popularity, 3,393 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 32.9,
                        totalRankings = 2318,
                        source = "Archon.gg Meta Builds (32.9% popularity, 2,318 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 77.2,
                        totalRankings = 1358,
                        source = "Archon.gg Meta Builds (77.2% popularity, 1,358 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAA22mZGMzMzCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 32.3,
                        totalRankings = 635,
                        source = "Archon.gg Meta Builds (32.3% popularity, 635 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.1% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLmZmGmZGbDLmZGMGmlxMjZGzMbA",
                        usage = 39.4,
                        totalRankings = 3490,
                        source = "Archon.gg Meta Builds (39.4% popularity, 3,490 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 39.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (39.4% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.8,
                        totalRankings = 4105,
                        source = "Archon.gg Meta Builds (18.8% popularity, 4,105 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.8,
                        totalRankings = 958,
                        source = "Archon.gg Meta Builds (22.8% popularity, 958 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 81.4,
                        totalRankings = 1144,
                        source = "Archon.gg Meta Builds (81.4% popularity, 1,144 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 50.8,
                        totalRankings = 5087,
                        source = "Archon.gg Meta Builds (50.8% popularity, 5,087 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 49.5,
                        totalRankings = 1002,
                        source = "Archon.gg Meta Builds (49.5% popularity, 1,002 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 41.5,
                        totalRankings = 4652,
                        source = "Archon.gg Meta Builds (41.5% popularity, 4,652 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.8,
                        totalRankings = 2243,
                        source = "Archon.gg Meta Builds (25.8% popularity, 2,243 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 95.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (95.1% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYmxYZGzMzMNMmxYGDAAAAAAAAzMzsgZMDAY2mhZmZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 40.6,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (40.6% popularity, 32 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYMDzYmxYZYmZmmZMzMGzYAAAAgZmZmZmZMbmZGDAAYMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 5.6,
                        totalRankings = 429,
                        source = "Archon.gg Meta Builds (5.6% popularity, 429 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 70.3,
                        totalRankings = 765,
                        source = "Archon.gg Meta Builds (70.3% popularity, 765 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmhZYYZmhZsNjZmZMDGzyMzsZmxMDGAAAAglZxMGmNmGYmZwG",
                        usage = 12.5,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (12.5% popularity, 32 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 83.6,
                        totalRankings = 354,
                        source = "Archon.gg Meta Builds (83.6% popularity, 354 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 60.5,
                        totalRankings = 86,
                        source = "Archon.gg Meta Builds (60.5% popularity, 86 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 57.9,
                        totalRankings = 19,
                        source = "Archon.gg Meta Builds (57.9% popularity, 19 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAALGa2MjpZGgZZmlZmhhZAAAAAADAYAAAAAAz2MbNLzsZjxMDwsBaA",
                        usage = 31.0,
                        totalRankings = 461,
                        source = "Archon.gg Meta Builds (31.0% popularity, 461 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmtZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 24.3,
                        totalRankings = 585,
                        source = "Archon.gg Meta Builds (24.3% popularity, 585 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 36.7,
                        totalRankings = 637,
                        source = "Archon.gg Meta Builds (36.7% popularity, 637 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 38.5,
                        totalRankings = 252,
                        source = "Archon.gg Meta Builds (38.5% popularity, 252 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 63.5,
                        totalRankings = 938,
                        source = "Archon.gg Meta Builds (63.5% popularity, 938 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDjhZxMjxYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 56.2,
                        totalRankings = 73,
                        source = "Archon.gg Meta Builds (56.2% popularity, 73 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMDDzMjZYGGDzMMGmllZG2AAAAAgBAA",
                        usage = 42.9,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (42.9% popularity, 7 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 63.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (63.9% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 54.3,
                        totalRankings = 70,
                        source = "Archon.gg Meta Builds (54.3% popularity, 70 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 38.9,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (38.9% popularity, 18 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 34.8,
                        totalRankings = 491,
                        source = "Archon.gg Meta Builds (34.8% popularity, 491 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMiZGYGmBw2MzMMbjxwsMTAAAAAAALWmllZbmZCAAWA",
                        usage = 82.2,
                        totalRankings = 236,
                        source = "Archon.gg Meta Builds (82.2% popularity, 236 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBjZYWmZGzMAAAAAAAAAAAYZZY0MzMwMMsww2MzMMbMzws8ATAAsMmZYGmtZAAssMLLz2MzEAAGA",
                        usage = 50.9,
                        totalRankings = 161,
                        source = "Archon.gg Meta Builds (50.9% popularity, 161 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 44.8,
                        totalRankings = 534,
                        source = "Archon.gg Meta Builds (44.8% popularity, 534 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMGDDAAwAAAAAAAQbZmZxwMzYMMbtBAMAAzgtBAAAAMzsst02MjFDAgBzwYA",
                        usage = 10.7,
                        totalRankings = 84,
                        source = "Archon.gg Meta Builds (10.7% popularity, 84 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 86.6,
                        totalRankings = 284,
                        source = "Archon.gg Meta Builds (86.6% popularity, 284 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmlZZ2GMzMYWYYYGDzCbz0YilZAmZBLEGzyAM2wCAAA",
                        usage = 14.3,
                        totalRankings = 14,
                        source = "Archon.gg Meta Builds (14.3% popularity, 14 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 42.0,
                        totalRankings = 433,
                        source = "Archon.gg Meta Builds (42.0% popularity, 433 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDzMDAAAAAAAAAAAAjxGMzMLbbjZGzMzMLDmNmZmZMbMAjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 43.9,
                        totalRankings = 426,
                        source = "Archon.gg Meta Builds (43.9% popularity, 426 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 75.0,
                        totalRankings = 204,
                        source = "Archon.gg Meta Builds (75.0% popularity, 204 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAA2WmZGMzMWglZbAAAAYmZADsBzY0Y2AsNwiZA",
                        usage = 90.9,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (90.9% popularity, 11 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 53.2,
                        totalRankings = 447,
                        source = "Archon.gg Meta Builds (53.2% popularity, 447 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGYbhZmGGzMbDLzMzYzYYWGzMmZMzsBA",
                        usage = 50.0,
                        totalRankings = 840,
                        source = "Archon.gg Meta Builds (50.0% popularity, 840 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZgtlZmZmhhZWYWmZmmNMMmZAAGD",
                        usage = 71.4,
                        totalRankings = 35,
                        source = "Archon.gg Meta Builds (71.4% popularity, 35 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 33.7,
                        totalRankings = 531,
                        source = "Archon.gg Meta Builds (33.7% popularity, 531 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 42.9,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (42.9% popularity, 7 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjY2MwsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 42.9,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (42.9% popularity, 7 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 66.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (66.3% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGGMjNzMDGmhBAAAAAAgHYMLzMzAWCjttBWADYGmAzgNA",
                        usage = 54.5,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (54.5% popularity, 11 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 71.0,
                        totalRankings = 582,
                        source = "Archon.gg Meta Builds (71.0% popularity, 582 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhxsZmZZwYMTDLzMDjlBzw2MzwMMYAAAAAAglxAAzstBYgNYZxoxMAmNY2gZA",
                        usage = 7.9,
                        totalRankings = 382,
                        source = "Archon.gg Meta Builds (7.9% popularity, 382 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 9.2,
                    totalRankings = 19721,
                    source = "Archon.gg Mythic+ Meta Builds (9.2% popularity, 19,721 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGjxwYmZmZmhZmRzMGjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 74.6,
                    totalRankings = 86616,
                    source = "Archon.gg Mythic+ Meta Builds (74.6% popularity, 86,616 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 60.1,
                    totalRankings = 6859,
                    source = "Archon.gg Mythic+ Meta Builds (60.1% popularity, 6,859 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZmZMzMjhJDzAAAAAAAmFjxMjZmZbMzGWmZwYYssNbzghx2GTYGzMDDL",
                    usage = 50.6,
                    totalRankings = 61102,
                    source = "Archon.gg Mythic+ Meta Builds (50.6% popularity, 61,102 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 41.0,
                    totalRankings = 26088,
                    source = "Archon.gg Mythic+ Meta Builds (41.0% popularity, 26,088 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 70.4,
                    totalRankings = 20615,
                    source = "Archon.gg Mythic+ Meta Builds (70.4% popularity, 20,615 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 63.2,
                    totalRankings = 8903,
                    source = "Archon.gg Mythic+ Meta Builds (63.2% popularity, 8,903 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 21.8,
                    totalRankings = 23113,
                    source = "Archon.gg Mythic+ Meta Builds (21.8% popularity, 23,113 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 5.9,
                    totalRankings = 58253,
                    source = "Archon.gg Mythic+ Meta Builds (5.9% popularity, 58,253 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmJz2YZwMDjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 16.6,
                    totalRankings = 14976,
                    source = "Archon.gg Mythic+ Meta Builds (16.6% popularity, 14,976 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDAAAmZYMjxwMxYGAAAYbmZmmxyMzMGzAAwY2swCMwMM0gxCMA",
                    usage = 33.8,
                    totalRankings = 9838,
                    source = "Archon.gg Mythic+ Meta Builds (33.8% popularity, 9,838 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMbjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 18.4,
                    totalRankings = 3862,
                    source = "Archon.gg Mythic+ Meta Builds (18.4% popularity, 3,862 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzMMzyMzMzgZMTmxMmxMzwMDDjhZGmlhZbZGsBAAAAAAzA",
                    usage = 25.7,
                    totalRankings = 112402,
                    source = "Archon.gg Mythic+ Meta Builds (25.7% popularity, 112,402 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjMjxwMDzywssMD2GmxYZbzMzMmFzMMmZmlNDLDzM",
                    usage = 42.0,
                    totalRankings = 11313,
                    source = "Archon.gg Mythic+ Meta Builds (42.0% popularity, 11,313 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 38.2,
                    totalRankings = 5551,
                    source = "Archon.gg Mythic+ Meta Builds (38.2% popularity, 5,551 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZbGMDzMLwDYmhx0MzyMAAAAAAMAgZmplZbZGAAbAAAAAAsBgxgZWmlZMzYMDzMzMjZMLjB",
                    usage = 51.7,
                    totalRankings = 44152,
                    source = "Archon.gg Mythic+ Meta Builds (51.7% popularity, 44,152 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbGMDzMLGeAzMMNmZMzAAAAAAYAAzMTLzyyMAAbmZGMmZMzYWMLjhZmNzsNjtZgBAAAAAAA",
                    usage = 22.7,
                    totalRankings = 4133,
                    source = "Archon.gg Mythic+ Meta Builds (22.7% popularity, 4,133 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsMLAAAwCAAAAAAmNAAAAAAAA",
                    usage = 37.6,
                    totalRankings = 14009,
                    source = "Archon.gg Mythic+ Meta Builds (37.6% popularity, 14,009 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 47.5,
                    totalRankings = 20271,
                    source = "Archon.gg Mythic+ Meta Builds (47.5% popularity, 20,271 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 13.2,
                    totalRankings = 12254,
                    source = "Archon.gg Mythic+ Meta Builds (13.2% popularity, 12,254 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 28.8,
                    totalRankings = 12001,
                    source = "Archon.gg Mythic+ Meta Builds (28.8% popularity, 12,001 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLzMmZZ2mZmlGAAAgFAD2MDMMA",
                    usage = 18.7,
                    totalRankings = 16830,
                    source = "Archon.gg Mythic+ Meta Builds (18.7% popularity, 16,830 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMzMzMLbzMzYmtxwAAAMAAAAAAA0WzMzihZGGzwWbAADMAAbDAAAAYmZbbptZGLMYAYwMMG",
                    usage = 10.6,
                    totalRankings = 59852,
                    source = "Archon.gg Mythic+ Meta Builds (10.6% popularity, 59,852 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 30.9,
                    totalRankings = 56025,
                    source = "Archon.gg Mythic+ Meta Builds (30.9% popularity, 56,025 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                    usage = 19.9,
                    totalRankings = 28534,
                    source = "Archon.gg Mythic+ Meta Builds (19.9% popularity, 28,534 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 17.6,
                    totalRankings = 11073,
                    source = "Archon.gg Mythic+ Meta Builds (17.6% popularity, 11,073 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 32.0,
                    totalRankings = 15242,
                    source = "Archon.gg Mythic+ Meta Builds (32.0% popularity, 15,242 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 79.2,
                    totalRankings = 6815,
                    source = "Archon.gg Mythic+ Meta Builds (79.2% popularity, 6,815 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZmhZmZmWmxsNDAAAAAA2WmZGMzYWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 49.4,
                    totalRankings = 4778,
                    source = "Archon.gg Mythic+ Meta Builds (49.4% popularity, 4,778 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 43.8,
                    totalRankings = 12278,
                    source = "Archon.gg Mythic+ Meta Builds (43.8% popularity, 12,278 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsNNDYDzMNMzMz2MWmxMYWGLWmZMYYmtBA",
                    usage = 36.6,
                    totalRankings = 37782,
                    source = "Archon.gg Mythic+ Meta Builds (36.6% popularity, 37,782 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBswMzMDzYmtZsMzMZhlxyYmBAYMA",
                    usage = 33.8,
                    totalRankings = 6502,
                    source = "Archon.gg Mythic+ Meta Builds (33.8% popularity, 6,502 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 22.2,
                    totalRankings = 78815,
                    source = "Archon.gg Mythic+ Meta Builds (22.2% popularity, 78,815 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMbglZAAAAAAAAwMsA",
                    usage = 29.6,
                    totalRankings = 3036,
                    source = "Archon.gg Mythic+ Meta Builds (29.6% popularity, 3,036 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 48.3,
                    totalRankings = 16716,
                    source = "Archon.gg Mythic+ Meta Builds (48.3% popularity, 16,716 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 11.0,
                    totalRankings = 34745,
                    source = "Archon.gg Mythic+ Meta Builds (11.0% popularity, 34,745 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                    usage = 25.7,
                    totalRankings = 2732,
                    source = "Archon.gg Mythic+ Meta Builds (25.7% popularity, 2,732 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                    usage = 43.5,
                    totalRankings = 41712,
                    source = "Archon.gg Mythic+ Meta Builds (43.5% popularity, 41,712 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAAwYGzMzMzMmNjZZwYMaMLjZYsMmZG2mZGzADDAAAAAAsMGAYGbAGYDWWMaMDgZBmNYmB",
                    usage = 24.8,
                    totalRankings = 66667,
                    source = "Archon.gg Mythic+ Meta Builds (24.8% popularity, 66,667 parses)"
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
