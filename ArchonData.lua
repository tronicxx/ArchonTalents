-- Archon Talents Data File
-- Generated: 2025-10-22 08:06:17 UTC
-- Version: 1761138377
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1761138377
    local lastUpdated = "2025-10-22 08:06:17 UTC"
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
                        usage = 48.0,
                        totalRankings = 14557,
                        source = "Archon.gg Meta Builds (48.0% popularity, 14,557 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.4,
                        totalRankings = 2257,
                        source = "Archon.gg Meta Builds (72.4% popularity, 2,257 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.7,
                        totalRankings = 3308,
                        source = "Archon.gg Meta Builds (16.7% popularity, 3,308 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.7,
                        totalRankings = 12030,
                        source = "Archon.gg Meta Builds (67.7% popularity, 12,030 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 41.2,
                        totalRankings = 3030,
                        source = "Archon.gg Meta Builds (41.2% popularity, 3,030 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 56.2,
                        totalRankings = 6713,
                        source = "Archon.gg Meta Builds (56.2% popularity, 6,713 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 65.1,
                        totalRankings = 2613,
                        source = "Archon.gg Meta Builds (65.1% popularity, 2,613 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 27.9,
                        totalRankings = 2660,
                        source = "Archon.gg Meta Builds (27.9% popularity, 2,660 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.0,
                        totalRankings = 8810,
                        source = "Archon.gg Meta Builds (18.0% popularity, 8,810 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.0,
                        totalRankings = 3706,
                        source = "Archon.gg Meta Builds (24.0% popularity, 3,706 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.2,
                        totalRankings = 2448,
                        source = "Archon.gg Meta Builds (38.2% popularity, 2,448 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 51.9,
                        totalRankings = 23287,
                        source = "Archon.gg Meta Builds (51.9% popularity, 23,287 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.7,
                        totalRankings = 3637,
                        source = "Archon.gg Meta Builds (67.7% popularity, 3,637 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 59.0,
                        totalRankings = 1128,
                        source = "Archon.gg Meta Builds (59.0% popularity, 1,128 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 73.4,
                        totalRankings = 9364,
                        source = "Archon.gg Meta Builds (73.4% popularity, 9,364 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 52.7,
                        totalRankings = 1191,
                        source = "Archon.gg Meta Builds (52.7% popularity, 1,191 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 38.7,
                        totalRankings = 4958,
                        source = "Archon.gg Meta Builds (38.7% popularity, 4,958 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.0,
                        totalRankings = 2749,
                        source = "Archon.gg Meta Builds (36.0% popularity, 2,749 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 23.1,
                        totalRankings = 3398,
                        source = "Archon.gg Meta Builds (23.1% popularity, 3,398 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 66.4,
                        totalRankings = 3910,
                        source = "Archon.gg Meta Builds (66.4% popularity, 3,910 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.4,
                        totalRankings = 4529,
                        source = "Archon.gg Meta Builds (35.4% popularity, 4,529 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.6,
                        totalRankings = 4834,
                        source = "Archon.gg Meta Builds (6.6% popularity, 4,834 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 72.9,
                        totalRankings = 16041,
                        source = "Archon.gg Meta Builds (72.9% popularity, 16,041 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.8,
                        totalRankings = 1618,
                        source = "Archon.gg Meta Builds (8.8% popularity, 1,618 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 38.1,
                        totalRankings = 7537,
                        source = "Archon.gg Meta Builds (38.1% popularity, 7,537 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 26.4,
                        totalRankings = 5538,
                        source = "Archon.gg Meta Builds (26.4% popularity, 5,538 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.8,
                        totalRankings = 2972,
                        source = "Archon.gg Meta Builds (70.8% popularity, 2,972 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 41.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.9,
                        totalRankings = 2285,
                        source = "Archon.gg Meta Builds (56.9% popularity, 2,285 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.3,
                        totalRankings = 8756,
                        source = "Archon.gg Meta Builds (29.3% popularity, 8,756 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 62.2,
                        totalRankings = 1554,
                        source = "Archon.gg Meta Builds (62.2% popularity, 1,554 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.7,
                        totalRankings = 11642,
                        source = "Archon.gg Meta Builds (18.7% popularity, 11,642 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.6,
                        totalRankings = 1135,
                        source = "Archon.gg Meta Builds (20.6% popularity, 1,135 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 74.9,
                        totalRankings = 3605,
                        source = "Archon.gg Meta Builds (74.9% popularity, 3,605 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.1,
                        totalRankings = 11332,
                        source = "Archon.gg Meta Builds (35.1% popularity, 11,332 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 65.8,
                        totalRankings = 1259,
                        source = "Archon.gg Meta Builds (65.8% popularity, 1,259 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 47.8,
                        totalRankings = 11388,
                        source = "Archon.gg Meta Builds (47.8% popularity, 11,388 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 18.2,
                        totalRankings = 5815,
                        source = "Archon.gg Meta Builds (18.2% popularity, 5,815 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 62.3,
                        totalRankings = 16974,
                        source = "Archon.gg Meta Builds (62.3% popularity, 16,974 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.3,
                        totalRankings = 2114,
                        source = "Archon.gg Meta Builds (70.3% popularity, 2,114 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 19.7,
                        totalRankings = 2746,
                        source = "Archon.gg Meta Builds (19.7% popularity, 2,746 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 78.4,
                        totalRankings = 11361,
                        source = "Archon.gg Meta Builds (78.4% popularity, 11,361 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 39.3,
                        totalRankings = 2681,
                        source = "Archon.gg Meta Builds (39.3% popularity, 2,681 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 60.3,
                        totalRankings = 5447,
                        source = "Archon.gg Meta Builds (60.3% popularity, 5,447 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 56.8,
                        totalRankings = 1922,
                        source = "Archon.gg Meta Builds (56.8% popularity, 1,922 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.9,
                        totalRankings = 1616,
                        source = "Archon.gg Meta Builds (18.9% popularity, 1,616 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.0,
                        totalRankings = 8872,
                        source = "Archon.gg Meta Builds (17.0% popularity, 8,872 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 25.6,
                        totalRankings = 3460,
                        source = "Archon.gg Meta Builds (25.6% popularity, 3,460 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.7,
                        totalRankings = 2993,
                        source = "Archon.gg Meta Builds (38.7% popularity, 2,993 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 27.0,
                        totalRankings = 1152,
                        source = "Archon.gg Meta Builds (27.0% popularity, 1,152 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 60.2,
                        totalRankings = 18850,
                        source = "Archon.gg Meta Builds (60.2% popularity, 18,850 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 79.6,
                        totalRankings = 2685,
                        source = "Archon.gg Meta Builds (79.6% popularity, 2,685 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 51.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.2% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 77.9,
                        totalRankings = 12110,
                        source = "Archon.gg Meta Builds (77.9% popularity, 12,110 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 47.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (47.9% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 53.6,
                        totalRankings = 3092,
                        source = "Archon.gg Meta Builds (53.6% popularity, 3,092 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 31.7,
                        totalRankings = 3668,
                        source = "Archon.gg Meta Builds (31.7% popularity, 3,668 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 33.3,
                        totalRankings = 3043,
                        source = "Archon.gg Meta Builds (33.3% popularity, 3,043 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 75.0,
                        totalRankings = 2907,
                        source = "Archon.gg Meta Builds (75.0% popularity, 2,907 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.5,
                        totalRankings = 4595,
                        source = "Archon.gg Meta Builds (35.5% popularity, 4,595 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MmxMYYAAAGAAAAAAAarZmZzwMYMjZrNAgBAYGsNAAAAgZmtllWmZsYGMAAzwYA",
                        usage = 5.8,
                        totalRankings = 3738,
                        source = "Archon.gg Meta Builds (5.8% popularity, 3,738 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 79.9,
                        totalRankings = 12331,
                        source = "Archon.gg Meta Builds (79.9% popularity, 12,331 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 4.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.1% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 47.1,
                        totalRankings = 8350,
                        source = "Archon.gg Meta Builds (47.1% popularity, 8,350 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 21.5,
                        totalRankings = 4721,
                        source = "Archon.gg Meta Builds (21.5% popularity, 4,721 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 74.2,
                        totalRankings = 3495,
                        source = "Archon.gg Meta Builds (74.2% popularity, 3,495 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 57.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.9% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.3,
                        totalRankings = 1952,
                        source = "Archon.gg Meta Builds (56.3% popularity, 1,952 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 44.6,
                        totalRankings = 7637,
                        source = "Archon.gg Meta Builds (44.6% popularity, 7,637 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 72.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (72.0% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.1,
                        totalRankings = 12349,
                        source = "Archon.gg Meta Builds (19.1% popularity, 12,349 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (19.6% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 79.3,
                        totalRankings = 2334,
                        source = "Archon.gg Meta Builds (79.3% popularity, 2,334 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 42.0,
                        totalRankings = 11791,
                        source = "Archon.gg Meta Builds (42.0% popularity, 11,791 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (63.2% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.8,
                        totalRankings = 10029,
                        source = "Archon.gg Meta Builds (40.8% popularity, 10,029 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.0,
                        totalRankings = 5843,
                        source = "Archon.gg Meta Builds (19.0% popularity, 5,843 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 47.7,
                        totalRankings = 15276,
                        source = "Archon.gg Meta Builds (47.7% popularity, 15,276 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.4,
                        totalRankings = 2357,
                        source = "Archon.gg Meta Builds (72.4% popularity, 2,357 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.2,
                        totalRankings = 3401,
                        source = "Archon.gg Meta Builds (17.2% popularity, 3,401 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.1,
                        totalRankings = 12519,
                        source = "Archon.gg Meta Builds (67.1% popularity, 12,519 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.3,
                        totalRankings = 3125,
                        source = "Archon.gg Meta Builds (38.3% popularity, 3,125 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 57.0,
                        totalRankings = 7134,
                        source = "Archon.gg Meta Builds (57.0% popularity, 7,134 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 64.5,
                        totalRankings = 2737,
                        source = "Archon.gg Meta Builds (64.5% popularity, 2,737 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 27.9,
                        totalRankings = 2717,
                        source = "Archon.gg Meta Builds (27.9% popularity, 2,717 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.7,
                        totalRankings = 9192,
                        source = "Archon.gg Meta Builds (18.7% popularity, 9,192 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 17.6,
                        totalRankings = 3885,
                        source = "Archon.gg Meta Builds (17.6% popularity, 3,885 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.2,
                        totalRankings = 2522,
                        source = "Archon.gg Meta Builds (39.2% popularity, 2,522 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.6% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 51.5,
                        totalRankings = 24509,
                        source = "Archon.gg Meta Builds (51.5% popularity, 24,509 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.6,
                        totalRankings = 3716,
                        source = "Archon.gg Meta Builds (67.6% popularity, 3,716 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 63.2,
                        totalRankings = 1167,
                        source = "Archon.gg Meta Builds (63.2% popularity, 1,167 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 71.7,
                        totalRankings = 9833,
                        source = "Archon.gg Meta Builds (71.7% popularity, 9,833 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.5,
                        totalRankings = 1232,
                        source = "Archon.gg Meta Builds (49.5% popularity, 1,232 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 39.2,
                        totalRankings = 5165,
                        source = "Archon.gg Meta Builds (39.2% popularity, 5,165 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 37.0,
                        totalRankings = 2813,
                        source = "Archon.gg Meta Builds (37.0% popularity, 2,813 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.1,
                        totalRankings = 3516,
                        source = "Archon.gg Meta Builds (25.1% popularity, 3,516 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 67.0,
                        totalRankings = 4143,
                        source = "Archon.gg Meta Builds (67.0% popularity, 4,143 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.3,
                        totalRankings = 4694,
                        source = "Archon.gg Meta Builds (36.3% popularity, 4,694 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.6,
                        totalRankings = 4972,
                        source = "Archon.gg Meta Builds (7.6% popularity, 4,972 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 73.7,
                        totalRankings = 16874,
                        source = "Archon.gg Meta Builds (73.7% popularity, 16,874 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.0,
                        totalRankings = 1669,
                        source = "Archon.gg Meta Builds (7.0% popularity, 1,669 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.5,
                        totalRankings = 7825,
                        source = "Archon.gg Meta Builds (39.5% popularity, 7,825 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 41.4,
                        totalRankings = 5843,
                        source = "Archon.gg Meta Builds (41.4% popularity, 5,843 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.8,
                        totalRankings = 3119,
                        source = "Archon.gg Meta Builds (69.8% popularity, 3,119 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 42.4,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (42.4% popularity, 1,001 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.5,
                        totalRankings = 2357,
                        source = "Archon.gg Meta Builds (56.5% popularity, 2,357 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.7,
                        totalRankings = 9259,
                        source = "Archon.gg Meta Builds (29.7% popularity, 9,259 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 60.7,
                        totalRankings = 1636,
                        source = "Archon.gg Meta Builds (60.7% popularity, 1,636 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.7,
                        totalRankings = 12249,
                        source = "Archon.gg Meta Builds (19.7% popularity, 12,249 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.2,
                        totalRankings = 1141,
                        source = "Archon.gg Meta Builds (20.2% popularity, 1,141 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 74.8,
                        totalRankings = 3644,
                        source = "Archon.gg Meta Builds (74.8% popularity, 3,644 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 37.4,
                        totalRankings = 11946,
                        source = "Archon.gg Meta Builds (37.4% popularity, 11,946 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.2,
                        totalRankings = 1318,
                        source = "Archon.gg Meta Builds (62.2% popularity, 1,318 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 47.0,
                        totalRankings = 11925,
                        source = "Archon.gg Meta Builds (47.0% popularity, 11,925 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.9,
                        totalRankings = 6021,
                        source = "Archon.gg Meta Builds (19.9% popularity, 6,021 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 66.5,
                        totalRankings = 8532,
                        source = "Archon.gg Meta Builds (66.5% popularity, 8,532 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 74.1,
                        totalRankings = 1107,
                        source = "Archon.gg Meta Builds (74.1% popularity, 1,107 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 22.5,
                        totalRankings = 1917,
                        source = "Archon.gg Meta Builds (22.5% popularity, 1,917 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 79.0,
                        totalRankings = 5901,
                        source = "Archon.gg Meta Builds (79.0% popularity, 5,901 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 40.7,
                        totalRankings = 1198,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,198 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 64.5,
                        totalRankings = 3358,
                        source = "Archon.gg Meta Builds (64.5% popularity, 3,358 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 51.5,
                        totalRankings = 1088,
                        source = "Archon.gg Meta Builds (51.5% popularity, 1,088 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 17.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.4% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 18.0,
                        totalRankings = 4190,
                        source = "Archon.gg Meta Builds (18.0% popularity, 4,190 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 19.3,
                        totalRankings = 2385,
                        source = "Archon.gg Meta Builds (19.3% popularity, 2,385 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.0,
                        totalRankings = 2116,
                        source = "Archon.gg Meta Builds (38.0% popularity, 2,116 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 29.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.9% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 67.5,
                        totalRankings = 9651,
                        source = "Archon.gg Meta Builds (67.5% popularity, 9,651 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 81.6,
                        totalRankings = 1532,
                        source = "Archon.gg Meta Builds (81.6% popularity, 1,532 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 47.6,
                        totalRankings = 523,
                        source = "Archon.gg Meta Builds (47.6% popularity, 523 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 77.1,
                        totalRankings = 7400,
                        source = "Archon.gg Meta Builds (77.1% popularity, 7,400 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 41.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.2% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 60.4,
                        totalRankings = 1283,
                        source = "Archon.gg Meta Builds (60.4% popularity, 1,283 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.3,
                        totalRankings = 2610,
                        source = "Archon.gg Meta Builds (32.3% popularity, 2,610 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 41.9,
                        totalRankings = 1937,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,937 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 77.5,
                        totalRankings = 1753,
                        source = "Archon.gg Meta Builds (77.5% popularity, 1,753 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.0,
                        totalRankings = 2838,
                        source = "Archon.gg Meta Builds (36.0% popularity, 2,838 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.7,
                        totalRankings = 1732,
                        source = "Archon.gg Meta Builds (5.7% popularity, 1,732 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.3,
                        totalRankings = 5406,
                        source = "Archon.gg Meta Builds (85.3% popularity, 5,406 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZMzYMmZGzsx2MzMzMDAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWGYmBACwsNbbgxmNAA",
                        usage = 4.5,
                        totalRankings = 445,
                        source = "Archon.gg Meta Builds (4.5% popularity, 445 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 53.5,
                        totalRankings = 4702,
                        source = "Archon.gg Meta Builds (53.5% popularity, 4,702 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 47.1,
                        totalRankings = 3202,
                        source = "Archon.gg Meta Builds (47.1% popularity, 3,202 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 73.4,
                        totalRankings = 2289,
                        source = "Archon.gg Meta Builds (73.4% popularity, 2,289 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 64.8,
                        totalRankings = 710,
                        source = "Archon.gg Meta Builds (64.8% popularity, 710 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.9,
                        totalRankings = 1286,
                        source = "Archon.gg Meta Builds (55.9% popularity, 1,286 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 48.6,
                        totalRankings = 4923,
                        source = "Archon.gg Meta Builds (48.6% popularity, 4,923 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.8% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.0,
                        totalRankings = 5771,
                        source = "Archon.gg Meta Builds (20.0% popularity, 5,771 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.6,
                        totalRankings = 455,
                        source = "Archon.gg Meta Builds (19.6% popularity, 455 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (80.7% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.8,
                        totalRankings = 8290,
                        source = "Archon.gg Meta Builds (55.8% popularity, 8,290 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 66.4,
                        totalRankings = 485,
                        source = "Archon.gg Meta Builds (66.4% popularity, 485 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 41.2,
                        totalRankings = 5246,
                        source = "Archon.gg Meta Builds (41.2% popularity, 5,246 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 26.3,
                        totalRankings = 3156,
                        source = "Archon.gg Meta Builds (26.3% popularity, 3,156 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 80.5,
                        totalRankings = 14582,
                        source = "Archon.gg Meta Builds (80.5% popularity, 14,582 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.5,
                        totalRankings = 2107,
                        source = "Archon.gg Meta Builds (28.5% popularity, 2,107 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.7,
                        totalRankings = 3292,
                        source = "Archon.gg Meta Builds (16.7% popularity, 3,292 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 33.3,
                        totalRankings = 11861,
                        source = "Archon.gg Meta Builds (33.3% popularity, 11,861 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.0,
                        totalRankings = 3048,
                        source = "Archon.gg Meta Builds (32.0% popularity, 3,048 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 40.5,
                        totalRankings = 6808,
                        source = "Archon.gg Meta Builds (40.5% popularity, 6,808 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 21.2,
                        totalRankings = 2622,
                        source = "Archon.gg Meta Builds (21.2% popularity, 2,622 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 19.5,
                        totalRankings = 2641,
                        source = "Archon.gg Meta Builds (19.5% popularity, 2,641 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.3,
                        totalRankings = 8705,
                        source = "Archon.gg Meta Builds (18.3% popularity, 8,705 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 13.8,
                        totalRankings = 3780,
                        source = "Archon.gg Meta Builds (13.8% popularity, 3,780 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.1,
                        totalRankings = 2440,
                        source = "Archon.gg Meta Builds (39.1% popularity, 2,440 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.9% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 37.1,
                        totalRankings = 23521,
                        source = "Archon.gg Meta Builds (37.1% popularity, 23,521 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 31.2,
                        totalRankings = 3543,
                        source = "Archon.gg Meta Builds (31.2% popularity, 3,543 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 32.0,
                        totalRankings = 1153,
                        source = "Archon.gg Meta Builds (32.0% popularity, 1,153 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 58.4,
                        totalRankings = 9299,
                        source = "Archon.gg Meta Builds (58.4% popularity, 9,299 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.8,
                        totalRankings = 1197,
                        source = "Archon.gg Meta Builds (46.8% popularity, 1,197 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 24.4,
                        totalRankings = 5109,
                        source = "Archon.gg Meta Builds (24.4% popularity, 5,109 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.6,
                        totalRankings = 2736,
                        source = "Archon.gg Meta Builds (34.6% popularity, 2,736 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 29.0,
                        totalRankings = 3370,
                        source = "Archon.gg Meta Builds (29.0% popularity, 3,370 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 34.9,
                        totalRankings = 3984,
                        source = "Archon.gg Meta Builds (34.9% popularity, 3,984 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.4,
                        totalRankings = 4497,
                        source = "Archon.gg Meta Builds (34.4% popularity, 4,497 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 7.3,
                        totalRankings = 4784,
                        source = "Archon.gg Meta Builds (7.3% popularity, 4,784 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 34.4,
                        totalRankings = 16135,
                        source = "Archon.gg Meta Builds (34.4% popularity, 16,135 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.0,
                        totalRankings = 1547,
                        source = "Archon.gg Meta Builds (8.0% popularity, 1,547 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.7,
                        totalRankings = 7580,
                        source = "Archon.gg Meta Builds (39.7% popularity, 7,580 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 38.2,
                        totalRankings = 5585,
                        source = "Archon.gg Meta Builds (38.2% popularity, 5,585 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 48.8,
                        totalRankings = 2689,
                        source = "Archon.gg Meta Builds (48.8% popularity, 2,689 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 29.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.9% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 51.4,
                        totalRankings = 2574,
                        source = "Archon.gg Meta Builds (51.4% popularity, 2,574 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 22.0,
                        totalRankings = 8820,
                        source = "Archon.gg Meta Builds (22.0% popularity, 8,820 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 33.4,
                        totalRankings = 1579,
                        source = "Archon.gg Meta Builds (33.4% popularity, 1,579 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.0,
                        totalRankings = 11471,
                        source = "Archon.gg Meta Builds (20.0% popularity, 11,471 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.0,
                        totalRankings = 1048,
                        source = "Archon.gg Meta Builds (19.0% popularity, 1,048 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 31.8,
                        totalRankings = 3907,
                        source = "Archon.gg Meta Builds (31.8% popularity, 3,907 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.7,
                        totalRankings = 11227,
                        source = "Archon.gg Meta Builds (30.7% popularity, 11,227 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 29.3,
                        totalRankings = 1241,
                        source = "Archon.gg Meta Builds (29.3% popularity, 1,241 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 39.4,
                        totalRankings = 11503,
                        source = "Archon.gg Meta Builds (39.4% popularity, 11,503 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.2,
                        totalRankings = 5777,
                        source = "Archon.gg Meta Builds (23.2% popularity, 5,777 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 88.2,
                        totalRankings = 17431,
                        source = "Archon.gg Meta Builds (88.2% popularity, 17,431 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 34.1,
                        totalRankings = 1506,
                        source = "Archon.gg Meta Builds (34.1% popularity, 1,506 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 20.0,
                        totalRankings = 2753,
                        source = "Archon.gg Meta Builds (20.0% popularity, 2,753 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzYGAAAAAAwsZMbzwMzsNmZDLzMYMMW2mtZwwYbjJMjZmhhF",
                        usage = 26.5,
                        totalRankings = 11314,
                        source = "Archon.gg Meta Builds (26.5% popularity, 11,314 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 21.3,
                        totalRankings = 2668,
                        source = "Archon.gg Meta Builds (21.3% popularity, 2,668 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 30.2,
                        totalRankings = 5376,
                        source = "Archon.gg Meta Builds (30.2% popularity, 5,376 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZjZmFzMzMzmNGbzMzMPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 17.9,
                        totalRankings = 1868,
                        source = "Archon.gg Meta Builds (17.9% popularity, 1,868 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 10.8,
                        totalRankings = 1619,
                        source = "Archon.gg Meta Builds (10.8% popularity, 1,619 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.2,
                        totalRankings = 8887,
                        source = "Archon.gg Meta Builds (17.2% popularity, 8,887 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZWmBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 13.7,
                        totalRankings = 3450,
                        source = "Archon.gg Meta Builds (13.7% popularity, 3,450 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 40.7,
                        totalRankings = 2977,
                        source = "Archon.gg Meta Builds (40.7% popularity, 2,977 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 26.0,
                        totalRankings = 1109,
                        source = "Archon.gg Meta Builds (26.0% popularity, 1,109 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 47.7,
                        totalRankings = 18718,
                        source = "Archon.gg Meta Builds (47.7% popularity, 18,718 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 51.6,
                        totalRankings = 2744,
                        source = "Archon.gg Meta Builds (51.6% popularity, 2,744 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 15.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.9% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 72.2,
                        totalRankings = 12174,
                        source = "Archon.gg Meta Builds (72.2% popularity, 12,174 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 41.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 39.8,
                        totalRankings = 3185,
                        source = "Archon.gg Meta Builds (39.8% popularity, 3,185 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 31.5,
                        totalRankings = 3670,
                        source = "Archon.gg Meta Builds (31.5% popularity, 3,670 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 42.8,
                        totalRankings = 3051,
                        source = "Archon.gg Meta Builds (42.8% popularity, 3,051 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 21.1,
                        totalRankings = 2852,
                        source = "Archon.gg Meta Builds (21.1% popularity, 2,852 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.6,
                        totalRankings = 4554,
                        source = "Archon.gg Meta Builds (36.6% popularity, 4,554 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 3695,
                        source = "Archon.gg Meta Builds (6.0% popularity, 3,695 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 17.6,
                        totalRankings = 12206,
                        source = "Archon.gg Meta Builds (17.6% popularity, 12,206 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 4.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.1% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 49.3,
                        totalRankings = 8303,
                        source = "Archon.gg Meta Builds (49.3% popularity, 8,303 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.2,
                        totalRankings = 4699,
                        source = "Archon.gg Meta Builds (36.2% popularity, 4,699 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 42.7,
                        totalRankings = 2356,
                        source = "Archon.gg Meta Builds (42.7% popularity, 2,356 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 27.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.6% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.8,
                        totalRankings = 2982,
                        source = "Archon.gg Meta Builds (48.8% popularity, 2,982 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 30.5,
                        totalRankings = 7626,
                        source = "Archon.gg Meta Builds (30.5% popularity, 7,626 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 57.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.5% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.8,
                        totalRankings = 12333,
                        source = "Archon.gg Meta Builds (22.8% popularity, 12,333 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.6,
                        totalRankings = 870,
                        source = "Archon.gg Meta Builds (21.6% popularity, 870 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 37.0,
                        totalRankings = 3069,
                        source = "Archon.gg Meta Builds (37.0% popularity, 3,069 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 37.4,
                        totalRankings = 11160,
                        source = "Archon.gg Meta Builds (37.4% popularity, 11,160 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 24.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (24.2% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 42.5,
                        totalRankings = 10037,
                        source = "Archon.gg Meta Builds (42.5% popularity, 10,037 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 28.5,
                        totalRankings = 5841,
                        source = "Archon.gg Meta Builds (28.5% popularity, 5,841 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 79.6,
                        totalRankings = 15089,
                        source = "Archon.gg Meta Builds (79.6% popularity, 15,089 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 35.2,
                        totalRankings = 2127,
                        source = "Archon.gg Meta Builds (35.2% popularity, 2,127 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.1,
                        totalRankings = 3305,
                        source = "Archon.gg Meta Builds (16.1% popularity, 3,305 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 27.6,
                        totalRankings = 12112,
                        source = "Archon.gg Meta Builds (27.6% popularity, 12,112 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.5,
                        totalRankings = 3041,
                        source = "Archon.gg Meta Builds (30.5% popularity, 3,041 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 35.5,
                        totalRankings = 6951,
                        source = "Archon.gg Meta Builds (35.5% popularity, 6,951 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 26.4,
                        totalRankings = 2702,
                        source = "Archon.gg Meta Builds (26.4% popularity, 2,702 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 21.0,
                        totalRankings = 2599,
                        source = "Archon.gg Meta Builds (21.0% popularity, 2,599 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.3,
                        totalRankings = 8635,
                        source = "Archon.gg Meta Builds (18.3% popularity, 8,635 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 12.9,
                        totalRankings = 3842,
                        source = "Archon.gg Meta Builds (12.9% popularity, 3,842 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.7,
                        totalRankings = 2442,
                        source = "Archon.gg Meta Builds (38.7% popularity, 2,442 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 15.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 35.4,
                        totalRankings = 24314,
                        source = "Archon.gg Meta Builds (35.4% popularity, 24,314 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 26.8,
                        totalRankings = 3552,
                        source = "Archon.gg Meta Builds (26.8% popularity, 3,552 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 34.0,
                        totalRankings = 1159,
                        source = "Archon.gg Meta Builds (34.0% popularity, 1,159 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.6,
                        totalRankings = 9282,
                        source = "Archon.gg Meta Builds (55.6% popularity, 9,282 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.6,
                        totalRankings = 1163,
                        source = "Archon.gg Meta Builds (49.6% popularity, 1,163 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 23.4,
                        totalRankings = 5083,
                        source = "Archon.gg Meta Builds (23.4% popularity, 5,083 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.1,
                        totalRankings = 2743,
                        source = "Archon.gg Meta Builds (35.1% popularity, 2,743 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.9,
                        totalRankings = 3375,
                        source = "Archon.gg Meta Builds (25.9% popularity, 3,375 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 32.1,
                        totalRankings = 4083,
                        source = "Archon.gg Meta Builds (32.1% popularity, 4,083 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.4,
                        totalRankings = 4493,
                        source = "Archon.gg Meta Builds (34.4% popularity, 4,493 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.7,
                        totalRankings = 4716,
                        source = "Archon.gg Meta Builds (5.7% popularity, 4,716 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 33.5,
                        totalRankings = 16481,
                        source = "Archon.gg Meta Builds (33.5% popularity, 16,481 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.6,
                        totalRankings = 1489,
                        source = "Archon.gg Meta Builds (7.6% popularity, 1,489 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.2,
                        totalRankings = 7557,
                        source = "Archon.gg Meta Builds (39.2% popularity, 7,557 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.4,
                        totalRankings = 5685,
                        source = "Archon.gg Meta Builds (36.4% popularity, 5,685 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 68.1,
                        totalRankings = 2687,
                        source = "Archon.gg Meta Builds (68.1% popularity, 2,687 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 25.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.1% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 47.9,
                        totalRankings = 2695,
                        source = "Archon.gg Meta Builds (47.9% popularity, 2,695 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 30.8,
                        totalRankings = 9101,
                        source = "Archon.gg Meta Builds (30.8% popularity, 9,101 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 30.3,
                        totalRankings = 1605,
                        source = "Archon.gg Meta Builds (30.3% popularity, 1,605 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 11314,
                        source = "Archon.gg Meta Builds (19.3% popularity, 11,314 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.1,
                        totalRankings = 1043,
                        source = "Archon.gg Meta Builds (22.1% popularity, 1,043 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 37.2,
                        totalRankings = 3565,
                        source = "Archon.gg Meta Builds (37.2% popularity, 3,565 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 31.9,
                        totalRankings = 11553,
                        source = "Archon.gg Meta Builds (31.9% popularity, 11,553 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 30.0,
                        totalRankings = 1237,
                        source = "Archon.gg Meta Builds (30.0% popularity, 1,237 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 39.0,
                        totalRankings = 11569,
                        source = "Archon.gg Meta Builds (39.0% popularity, 11,569 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.0,
                        totalRankings = 5817,
                        source = "Archon.gg Meta Builds (23.0% popularity, 5,817 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 93.3,
                        totalRankings = 6301,
                        source = "Archon.gg Meta Builds (93.3% popularity, 6,301 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGGDAAAAAAAAzMzsxMjZAAz2MMjZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 41.0,
                        totalRankings = 859,
                        source = "Archon.gg Meta Builds (41.0% popularity, 859 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 17.9,
                        totalRankings = 1488,
                        source = "Archon.gg Meta Builds (17.9% popularity, 1,488 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNjxMMmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 49.6,
                        totalRankings = 4162,
                        source = "Archon.gg Meta Builds (49.6% popularity, 4,162 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 9.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (9.4% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMMLzsNzsMmZmZmFjxwMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 47.4,
                        totalRankings = 2967,
                        source = "Archon.gg Meta Builds (47.4% popularity, 2,967 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZb2MDzMzMzmNzYbmZm5BmZAAAAAA2CmNDjZG1MmFWmZGjZmBAAAAAAMAAAAAAgZbmlmlZW2AzAwCDG",
                        usage = 17.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.1% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMbGGNZamZWMbzMjxgBAAAAAghZAAAAgmZbWmZWGAALwAwiZGG",
                        usage = 8.2,
                        totalRankings = 808,
                        source = "Archon.gg Meta Builds (8.2% popularity, 808 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2MjpZGDDLzsMzMMMzAAAAAAAADAAAAAY2mZrZZmNbMmBwA0A",
                        usage = 23.0,
                        totalRankings = 2269,
                        source = "Archon.gg Meta Builds (23.0% popularity, 2,269 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZ2mBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 15.5,
                        totalRankings = 2097,
                        source = "Archon.gg Meta Builds (15.5% popularity, 2,097 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 41.9,
                        totalRankings = 1336,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,336 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 29.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 54.6,
                        totalRankings = 6270,
                        source = "Archon.gg Meta Builds (54.6% popularity, 6,270 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 37.5,
                        totalRankings = 1346,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,346 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmhZwwYMzMMmxssMD2AAAAAgBAA",
                        usage = 24.5,
                        totalRankings = 359,
                        source = "Archon.gg Meta Builds (24.5% popularity, 359 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbGjZMzMLwYmhx0MjBAAAAAADAYmZaZ22mBAwGAAAAAAbAYMYmlZZGzMGzwMzMzYGzyYA",
                        usage = 48.4,
                        totalRankings = 5630,
                        source = "Archon.gg Meta Builds (48.4% popularity, 5,630 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 36.4,
                        totalRankings = 777,
                        source = "Archon.gg Meta Builds (36.4% popularity, 777 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbsZMmhZmFDjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsNLAAAwCAAAAAAmNAAAAAAAA",
                        usage = 56.9,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (56.9% popularity, 1,001 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.1,
                        totalRankings = 2087,
                        source = "Archon.gg Meta Builds (32.1% popularity, 2,087 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 48.2,
                        totalRankings = 1229,
                        source = "Archon.gg Meta Builds (48.2% popularity, 1,229 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 36.4,
                        totalRankings = 1356,
                        source = "Archon.gg Meta Builds (36.4% popularity, 1,356 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.6,
                        totalRankings = 1823,
                        source = "Archon.gg Meta Builds (33.6% popularity, 1,823 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MmhxYYAAAGAAAAAAASmZWMMDGzMzWbAADAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.4,
                        totalRankings = 1053,
                        source = "Archon.gg Meta Builds (5.4% popularity, 1,053 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 60.6,
                        totalRankings = 3634,
                        source = "Archon.gg Meta Builds (60.6% popularity, 3,634 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmlZZ2GMzMYWYYYGDzyCz0YilZAmZBLEGz2AM2wCAAA",
                        usage = 5.5,
                        totalRankings = 200,
                        source = "Archon.gg Meta Builds (5.5% popularity, 200 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.2,
                        totalRankings = 2610,
                        source = "Archon.gg Meta Builds (56.2% popularity, 2,610 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 38.4,
                        totalRankings = 3098,
                        source = "Archon.gg Meta Builds (38.4% popularity, 3,098 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.5% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 47.1,
                        totalRankings = 459,
                        source = "Archon.gg Meta Builds (47.1% popularity, 459 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 42.8,
                        totalRankings = 1691,
                        source = "Archon.gg Meta Builds (42.8% popularity, 1,691 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.3,
                        totalRankings = 4054,
                        source = "Archon.gg Meta Builds (49.3% popularity, 4,054 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 63.8,
                        totalRankings = 710,
                        source = "Archon.gg Meta Builds (63.8% popularity, 710 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 23.4,
                        totalRankings = 3217,
                        source = "Archon.gg Meta Builds (23.4% popularity, 3,217 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMzyMjxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 32.4,
                        totalRankings = 707,
                        source = "Archon.gg Meta Builds (32.4% popularity, 707 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 36.0,
                        totalRankings = 616,
                        source = "Archon.gg Meta Builds (36.0% popularity, 616 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 57.0,
                        totalRankings = 6121,
                        source = "Archon.gg Meta Builds (57.0% popularity, 6,121 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 31.2,
                        totalRankings = 263,
                        source = "Archon.gg Meta Builds (31.2% popularity, 263 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 53.1,
                        totalRankings = 3723,
                        source = "Archon.gg Meta Builds (53.1% popularity, 3,723 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 27.5,
                        totalRankings = 2171,
                        source = "Archon.gg Meta Builds (27.5% popularity, 2,171 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 81.3,
                        totalRankings = 15953,
                        source = "Archon.gg Meta Builds (81.3% popularity, 15,953 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 27.7,
                        totalRankings = 2198,
                        source = "Archon.gg Meta Builds (27.7% popularity, 2,198 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.8,
                        totalRankings = 3368,
                        source = "Archon.gg Meta Builds (17.8% popularity, 3,368 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 17.6,
                        totalRankings = 13317,
                        source = "Archon.gg Meta Builds (17.6% popularity, 13,317 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 25.6,
                        totalRankings = 3133,
                        source = "Archon.gg Meta Builds (25.6% popularity, 3,133 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 80.3,
                        totalRankings = 7206,
                        source = "Archon.gg Meta Builds (80.3% popularity, 7,206 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 58.1,
                        totalRankings = 2745,
                        source = "Archon.gg Meta Builds (58.1% popularity, 2,745 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 13.1,
                        totalRankings = 2656,
                        source = "Archon.gg Meta Builds (13.1% popularity, 2,656 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.3,
                        totalRankings = 9437,
                        source = "Archon.gg Meta Builds (18.3% popularity, 9,437 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 20.5,
                        totalRankings = 3935,
                        source = "Archon.gg Meta Builds (20.5% popularity, 3,935 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 40.6,
                        totalRankings = 2638,
                        source = "Archon.gg Meta Builds (40.6% popularity, 2,638 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.2,
                        totalRankings = 1006,
                        source = "Archon.gg Meta Builds (14.2% popularity, 1,006 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 22.1,
                        totalRankings = 24376,
                        source = "Archon.gg Meta Builds (22.1% popularity, 24,376 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 53.5,
                        totalRankings = 4056,
                        source = "Archon.gg Meta Builds (53.5% popularity, 4,056 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 22.0,
                        totalRankings = 1174,
                        source = "Archon.gg Meta Builds (22.0% popularity, 1,174 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 69.7,
                        totalRankings = 9843,
                        source = "Archon.gg Meta Builds (69.7% popularity, 9,843 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 36.0,
                        totalRankings = 1475,
                        source = "Archon.gg Meta Builds (36.0% popularity, 1,475 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 27.5,
                        totalRankings = 5143,
                        source = "Archon.gg Meta Builds (27.5% popularity, 5,143 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.1,
                        totalRankings = 2942,
                        source = "Archon.gg Meta Builds (32.1% popularity, 2,942 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 29.9,
                        totalRankings = 3687,
                        source = "Archon.gg Meta Builds (29.9% popularity, 3,687 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 19.3,
                        totalRankings = 4372,
                        source = "Archon.gg Meta Builds (19.3% popularity, 4,372 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.9,
                        totalRankings = 4907,
                        source = "Archon.gg Meta Builds (36.9% popularity, 4,907 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 4863,
                        source = "Archon.gg Meta Builds (6.0% popularity, 4,863 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 29.9,
                        totalRankings = 17281,
                        source = "Archon.gg Meta Builds (29.9% popularity, 17,281 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.4,
                        totalRankings = 1560,
                        source = "Archon.gg Meta Builds (6.4% popularity, 1,560 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.1,
                        totalRankings = 7985,
                        source = "Archon.gg Meta Builds (40.1% popularity, 7,985 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 28.4,
                        totalRankings = 5736,
                        source = "Archon.gg Meta Builds (28.4% popularity, 5,736 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 64.5,
                        totalRankings = 2858,
                        source = "Archon.gg Meta Builds (64.5% popularity, 2,858 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 28.4,
                        totalRankings = 1004,
                        source = "Archon.gg Meta Builds (28.4% popularity, 1,004 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjxy0YGjxMGjZ8AzMzMMmtZxYGbzMjZmZMYsMbDAAAgZGMAGzmhBGYWYhWsBD",
                        usage = 27.2,
                        totalRankings = 2670,
                        source = "Archon.gg Meta Builds (27.2% popularity, 2,670 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.7,
                        totalRankings = 9064,
                        source = "Archon.gg Meta Builds (32.7% popularity, 9,064 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 42.6,
                        totalRankings = 1619,
                        source = "Archon.gg Meta Builds (42.6% popularity, 1,619 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 21.8,
                        totalRankings = 12049,
                        source = "Archon.gg Meta Builds (21.8% popularity, 12,049 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 26.5,
                        totalRankings = 1433,
                        source = "Archon.gg Meta Builds (26.5% popularity, 1,433 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 38.8,
                        totalRankings = 3154,
                        source = "Archon.gg Meta Builds (38.8% popularity, 3,154 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 33.9,
                        totalRankings = 12158,
                        source = "Archon.gg Meta Builds (33.9% popularity, 12,158 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 23.7,
                        totalRankings = 1331,
                        source = "Archon.gg Meta Builds (23.7% popularity, 1,331 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 44.4,
                        totalRankings = 12472,
                        source = "Archon.gg Meta Builds (44.4% popularity, 12,472 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 21.5,
                        totalRankings = 6137,
                        source = "Archon.gg Meta Builds (21.5% popularity, 6,137 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 75.7,
                        totalRankings = 3240,
                        source = "Archon.gg Meta Builds (75.7% popularity, 3,240 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 53.4,
                        totalRankings = 350,
                        source = "Archon.gg Meta Builds (53.4% popularity, 350 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZmxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 30.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (30.2% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 41.9,
                        totalRankings = 2360,
                        source = "Archon.gg Meta Builds (41.9% popularity, 2,360 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDzMbzMYsNjZegZMDmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 9.8,
                        totalRankings = 652,
                        source = "Archon.gg Meta Builds (9.8% popularity, 652 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 92.0,
                        totalRankings = 1225,
                        source = "Archon.gg Meta Builds (92.0% popularity, 1,225 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2AzMjaGzyYZmZMMMAAAAAAwAAAAA0MLzyMz2AAWgZmBwCzwA",
                        usage = 69.2,
                        totalRankings = 574,
                        source = "Archon.gg Meta Builds (69.2% popularity, 574 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZYMjZGLegZGmFLDMbwoJamZWmZbmZMmxAAAAAAghxAW2mZDjZbAMBAAAsZMDALGYA",
                        usage = 7.1,
                        totalRankings = 350,
                        source = "Archon.gg Meta Builds (7.1% popularity, 350 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 21.8,
                        totalRankings = 1971,
                        source = "Archon.gg Meta Builds (21.8% popularity, 1,971 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 30.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (30.7% popularity, 1,000 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 41.2,
                        totalRankings = 1557,
                        source = "Archon.gg Meta Builds (41.2% popularity, 1,557 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 19.2,
                        totalRankings = 942,
                        source = "Archon.gg Meta Builds (19.2% popularity, 942 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzMMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                        usage = 30.8,
                        totalRankings = 3354,
                        source = "Archon.gg Meta Builds (30.8% popularity, 3,354 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjmZmxwMDMMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 82.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (82.1% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGmlhZxMYDAAAAAGAA",
                        usage = 30.2,
                        totalRankings = 106,
                        source = "Archon.gg Meta Builds (30.2% popularity, 106 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 71.0,
                        totalRankings = 2880,
                        source = "Archon.gg Meta Builds (71.0% popularity, 2,880 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMzMzMLeAGzMMNmZMAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 37.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (37.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmFDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 58.7,
                        totalRankings = 601,
                        source = "Archon.gg Meta Builds (58.7% popularity, 601 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 29.3,
                        totalRankings = 1381,
                        source = "Archon.gg Meta Builds (29.3% popularity, 1,381 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 82.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (82.9% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 49.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (49.0% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 31.5,
                        totalRankings = 1509,
                        source = "Archon.gg Meta Builds (31.5% popularity, 1,509 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLjZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGzMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.6% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 69.4,
                        totalRankings = 1505,
                        source = "Archon.gg Meta Builds (69.4% popularity, 1,505 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMmZMzYMmZGzwsNzMzMzDAAAAAAAAAAAsMLz2gZmBzCDDzYYWYbmGTsMwMDAEgZb22AjNbAAA",
                        usage = 6.1,
                        totalRankings = 229,
                        source = "Archon.gg Meta Builds (6.1% popularity, 229 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.9,
                        totalRankings = 2195,
                        source = "Archon.gg Meta Builds (56.9% popularity, 2,195 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 50.8,
                        totalRankings = 1244,
                        source = "Archon.gg Meta Builds (50.8% popularity, 1,244 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 72.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (72.9% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 56.4,
                        totalRankings = 349,
                        source = "Archon.gg Meta Builds (56.4% popularity, 349 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGDbzMzMzMDYsMbDAAAAzgBwY2MMwAzCL0iNMD",
                        usage = 44.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.8% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmBzywsMzMjZGzMbA",
                        usage = 50.2,
                        totalRankings = 1810,
                        source = "Archon.gg Meta Builds (50.2% popularity, 1,810 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAz2kBmlFzMzMmZMzGWmZmGsMWYmBAYMA",
                        usage = 72.1,
                        totalRankings = 240,
                        source = "Archon.gg Meta Builds (72.1% popularity, 240 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 26.7,
                        totalRankings = 2640,
                        source = "Archon.gg Meta Builds (26.7% popularity, 2,640 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 23.5,
                        totalRankings = 660,
                        source = "Archon.gg Meta Builds (23.5% popularity, 660 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 65.2,
                        totalRankings = 158,
                        source = "Archon.gg Meta Builds (65.2% popularity, 158 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 51.9,
                        totalRankings = 3687,
                        source = "Archon.gg Meta Builds (51.9% popularity, 3,687 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWmZGGLjZmxmZmBDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 29.3,
                        totalRankings = 147,
                        source = "Archon.gg Meta Builds (29.3% popularity, 147 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 61.5,
                        totalRankings = 1978,
                        source = "Archon.gg Meta Builds (61.5% popularity, 1,978 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 21.1,
                        totalRankings = 1255,
                        source = "Archon.gg Meta Builds (21.1% popularity, 1,255 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 46.8,
                        totalRankings = 14283,
                        source = "Archon.gg Meta Builds (46.8% popularity, 14,283 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.7,
                        totalRankings = 2241,
                        source = "Archon.gg Meta Builds (69.7% popularity, 2,241 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.2,
                        totalRankings = 3209,
                        source = "Archon.gg Meta Builds (18.2% popularity, 3,209 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 68.1,
                        totalRankings = 11408,
                        source = "Archon.gg Meta Builds (68.1% popularity, 11,408 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 36.9,
                        totalRankings = 2951,
                        source = "Archon.gg Meta Builds (36.9% popularity, 2,951 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 56.8,
                        totalRankings = 6353,
                        source = "Archon.gg Meta Builds (56.8% popularity, 6,353 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 65.9,
                        totalRankings = 2440,
                        source = "Archon.gg Meta Builds (65.9% popularity, 2,440 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 27.0,
                        totalRankings = 2485,
                        source = "Archon.gg Meta Builds (27.0% popularity, 2,485 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.2,
                        totalRankings = 8477,
                        source = "Archon.gg Meta Builds (18.2% popularity, 8,477 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 23.6,
                        totalRankings = 3529,
                        source = "Archon.gg Meta Builds (23.6% popularity, 3,529 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.7,
                        totalRankings = 2328,
                        source = "Archon.gg Meta Builds (36.7% popularity, 2,328 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.1,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (14.1% popularity, 1,001 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 50.6,
                        totalRankings = 23408,
                        source = "Archon.gg Meta Builds (50.6% popularity, 23,408 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 69.4,
                        totalRankings = 3390,
                        source = "Archon.gg Meta Builds (69.4% popularity, 3,390 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.9,
                        totalRankings = 1020,
                        source = "Archon.gg Meta Builds (57.9% popularity, 1,020 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 73.4,
                        totalRankings = 9182,
                        source = "Archon.gg Meta Builds (73.4% popularity, 9,182 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.3,
                        totalRankings = 1102,
                        source = "Archon.gg Meta Builds (49.3% popularity, 1,102 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 41.0,
                        totalRankings = 4722,
                        source = "Archon.gg Meta Builds (41.0% popularity, 4,722 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 37.7,
                        totalRankings = 2674,
                        source = "Archon.gg Meta Builds (37.7% popularity, 2,674 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.6,
                        totalRankings = 3255,
                        source = "Archon.gg Meta Builds (24.6% popularity, 3,255 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 64.9,
                        totalRankings = 3841,
                        source = "Archon.gg Meta Builds (64.9% popularity, 3,841 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.2,
                        totalRankings = 4308,
                        source = "Archon.gg Meta Builds (36.2% popularity, 4,308 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.9,
                        totalRankings = 4359,
                        source = "Archon.gg Meta Builds (5.9% popularity, 4,359 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.4,
                        totalRankings = 15006,
                        source = "Archon.gg Meta Builds (71.4% popularity, 15,006 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.5,
                        totalRankings = 1340,
                        source = "Archon.gg Meta Builds (8.5% popularity, 1,340 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 38.5,
                        totalRankings = 7340,
                        source = "Archon.gg Meta Builds (38.5% popularity, 7,340 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 28.0,
                        totalRankings = 5173,
                        source = "Archon.gg Meta Builds (28.0% popularity, 5,173 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.4,
                        totalRankings = 2997,
                        source = "Archon.gg Meta Builds (72.4% popularity, 2,997 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 44.5,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (44.5% popularity, 1,001 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.0,
                        totalRankings = 2193,
                        source = "Archon.gg Meta Builds (53.0% popularity, 2,193 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.5,
                        totalRankings = 8194,
                        source = "Archon.gg Meta Builds (31.5% popularity, 8,194 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 59.7,
                        totalRankings = 1455,
                        source = "Archon.gg Meta Builds (59.7% popularity, 1,455 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.1,
                        totalRankings = 10765,
                        source = "Archon.gg Meta Builds (20.1% popularity, 10,765 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.4,
                        totalRankings = 1055,
                        source = "Archon.gg Meta Builds (20.4% popularity, 1,055 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 74.6,
                        totalRankings = 3315,
                        source = "Archon.gg Meta Builds (74.6% popularity, 3,315 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.2,
                        totalRankings = 10817,
                        source = "Archon.gg Meta Builds (41.2% popularity, 10,817 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 64.3,
                        totalRankings = 1156,
                        source = "Archon.gg Meta Builds (64.3% popularity, 1,156 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.0,
                        totalRankings = 10556,
                        source = "Archon.gg Meta Builds (45.0% popularity, 10,556 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 18.8,
                        totalRankings = 5453,
                        source = "Archon.gg Meta Builds (18.8% popularity, 5,453 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 69.4,
                        totalRankings = 4965,
                        source = "Archon.gg Meta Builds (69.4% popularity, 4,965 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 71.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.9% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMzMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 29.7,
                        totalRankings = 1376,
                        source = "Archon.gg Meta Builds (29.7% popularity, 1,376 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 83.8,
                        totalRankings = 3766,
                        source = "Archon.gg Meta Builds (83.8% popularity, 3,766 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 23.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (23.8% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 69.8,
                        totalRankings = 2303,
                        source = "Archon.gg Meta Builds (69.8% popularity, 2,303 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 54.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (54.6% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDAMay0MzsMz2MzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCjBgFzgB",
                        usage = 9.5,
                        totalRankings = 717,
                        source = "Archon.gg Meta Builds (9.5% popularity, 717 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 22.5,
                        totalRankings = 2527,
                        source = "Archon.gg Meta Builds (22.5% popularity, 2,527 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 30.2,
                        totalRankings = 1604,
                        source = "Archon.gg Meta Builds (30.2% popularity, 1,604 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.3,
                        totalRankings = 1624,
                        source = "Archon.gg Meta Builds (36.3% popularity, 1,624 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 29.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.0% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 71.4,
                        totalRankings = 6054,
                        source = "Archon.gg Meta Builds (71.4% popularity, 6,054 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 86.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (86.5% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 42.7,
                        totalRankings = 260,
                        source = "Archon.gg Meta Builds (42.7% popularity, 260 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 80.5,
                        totalRankings = 5177,
                        source = "Archon.gg Meta Builds (80.5% popularity, 5,177 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.6,
                        totalRankings = 809,
                        source = "Archon.gg Meta Builds (46.6% popularity, 809 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 61.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (61.5% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.5,
                        totalRankings = 1932,
                        source = "Archon.gg Meta Builds (32.5% popularity, 1,932 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 49.3,
                        totalRankings = 1303,
                        source = "Archon.gg Meta Builds (49.3% popularity, 1,303 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 82.4,
                        totalRankings = 1091,
                        source = "Archon.gg Meta Builds (82.4% popularity, 1,091 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.6,
                        totalRankings = 1955,
                        source = "Archon.gg Meta Builds (35.6% popularity, 1,955 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBDDAAwAAAAAAAQyMzihZGGjZ2CAwAAMD2GAAAAwMzy2SbzMWMwAwMMDjB",
                        usage = 5.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.2% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.9,
                        totalRankings = 2887,
                        source = "Archon.gg Meta Builds (85.9% popularity, 2,887 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZMzMjxMzYGsNzMzMzAAAAAAAAAAAmlZZ2GMzMYWYYYGDzCbz0YilBmZAgAMbz2GYsZDAA",
                        usage = 5.8,
                        totalRankings = 276,
                        source = "Archon.gg Meta Builds (5.8% popularity, 276 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 57.5,
                        totalRankings = 3012,
                        source = "Archon.gg Meta Builds (57.5% popularity, 3,012 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 18.8,
                        totalRankings = 2255,
                        source = "Archon.gg Meta Builds (18.8% popularity, 2,255 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 75.8,
                        totalRankings = 1607,
                        source = "Archon.gg Meta Builds (75.8% popularity, 1,607 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 71.4,
                        totalRankings = 447,
                        source = "Archon.gg Meta Builds (71.4% popularity, 447 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 58.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.0% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 54.3,
                        totalRankings = 3367,
                        source = "Archon.gg Meta Builds (54.3% popularity, 3,367 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 74.7,
                        totalRankings = 597,
                        source = "Archon.gg Meta Builds (74.7% popularity, 597 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 24.0,
                        totalRankings = 3498,
                        source = "Archon.gg Meta Builds (24.0% popularity, 3,498 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMbGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 23.1,
                        totalRankings = 540,
                        source = "Archon.gg Meta Builds (23.1% popularity, 540 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 84.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (84.4% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.9,
                        totalRankings = 5296,
                        source = "Archon.gg Meta Builds (55.9% popularity, 5,296 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.7,
                        totalRankings = 245,
                        source = "Archon.gg Meta Builds (63.7% popularity, 245 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.5,
                        totalRankings = 3261,
                        source = "Archon.gg Meta Builds (40.5% popularity, 3,261 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzshZG",
                        usage = 31.8,
                        totalRankings = 1983,
                        source = "Archon.gg Meta Builds (31.8% popularity, 1,983 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 72.1,
                        totalRankings = 6718,
                        source = "Archon.gg Meta Builds (72.1% popularity, 6,718 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 60.7,
                        totalRankings = 1340,
                        source = "Archon.gg Meta Builds (60.7% popularity, 1,340 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.8,
                        totalRankings = 2331,
                        source = "Archon.gg Meta Builds (16.8% popularity, 2,331 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 54.0,
                        totalRankings = 5909,
                        source = "Archon.gg Meta Builds (54.0% popularity, 5,909 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.7,
                        totalRankings = 1783,
                        source = "Archon.gg Meta Builds (31.7% popularity, 1,783 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 57.7,
                        totalRankings = 3699,
                        source = "Archon.gg Meta Builds (57.7% popularity, 3,699 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 46.5,
                        totalRankings = 1471,
                        source = "Archon.gg Meta Builds (46.5% popularity, 1,471 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.9,
                        totalRankings = 1446,
                        source = "Archon.gg Meta Builds (23.9% popularity, 1,446 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.9,
                        totalRankings = 4163,
                        source = "Archon.gg Meta Builds (17.9% popularity, 4,163 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 22.2,
                        totalRankings = 2435,
                        source = "Archon.gg Meta Builds (22.2% popularity, 2,435 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 37.2,
                        totalRankings = 1568,
                        source = "Archon.gg Meta Builds (37.2% popularity, 1,568 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 13.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (13.6% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 41.9,
                        totalRankings = 10534,
                        source = "Archon.gg Meta Builds (41.9% popularity, 10,534 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 26.6,
                        totalRankings = 1903,
                        source = "Archon.gg Meta Builds (26.6% popularity, 1,903 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 53.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.7% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 41.8,
                        totalRankings = 5343,
                        source = "Archon.gg Meta Builds (41.8% popularity, 5,343 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 51.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.0% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 44.8,
                        totalRankings = 2594,
                        source = "Archon.gg Meta Builds (44.8% popularity, 2,594 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 39.9,
                        totalRankings = 1834,
                        source = "Archon.gg Meta Builds (39.9% popularity, 1,834 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 33.5,
                        totalRankings = 2045,
                        source = "Archon.gg Meta Builds (33.5% popularity, 2,045 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.6,
                        totalRankings = 2342,
                        source = "Archon.gg Meta Builds (53.6% popularity, 2,342 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.8,
                        totalRankings = 2645,
                        source = "Archon.gg Meta Builds (38.8% popularity, 2,645 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 6.1,
                        totalRankings = 2506,
                        source = "Archon.gg Meta Builds (6.1% popularity, 2,506 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.4,
                        totalRankings = 8276,
                        source = "Archon.gg Meta Builds (71.4% popularity, 8,276 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (8.6% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.8,
                        totalRankings = 4451,
                        source = "Archon.gg Meta Builds (40.8% popularity, 4,451 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 37.1,
                        totalRankings = 3230,
                        source = "Archon.gg Meta Builds (37.1% popularity, 3,230 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 74.4,
                        totalRankings = 1689,
                        source = "Archon.gg Meta Builds (74.4% popularity, 1,689 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 35.4,
                        totalRankings = 916,
                        source = "Archon.gg Meta Builds (35.4% popularity, 916 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.6,
                        totalRankings = 1319,
                        source = "Archon.gg Meta Builds (53.6% popularity, 1,319 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 36.6,
                        totalRankings = 4719,
                        source = "Archon.gg Meta Builds (36.6% popularity, 4,719 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 31.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (31.9% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.8,
                        totalRankings = 5448,
                        source = "Archon.gg Meta Builds (19.8% popularity, 5,448 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.7,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (20.7% popularity, 1,001 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.5,
                        totalRankings = 1848,
                        source = "Archon.gg Meta Builds (77.5% popularity, 1,848 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 40.6,
                        totalRankings = 6606,
                        source = "Archon.gg Meta Builds (40.6% popularity, 6,606 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 46.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.8% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 36.6,
                        totalRankings = 6008,
                        source = "Archon.gg Meta Builds (36.6% popularity, 6,008 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 24.6,
                        totalRankings = 3123,
                        source = "Archon.gg Meta Builds (24.6% popularity, 3,123 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 97.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (97.0% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.8,
                        totalRankings = 73,
                        source = "Archon.gg Meta Builds (28.8% popularity, 73 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYGGLzYmZmmZMzMGzYAAAAgZmZmZmZmZzMzYAAAjZmZGAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 28.0,
                        totalRankings = 518,
                        source = "Archon.gg Meta Builds (28.0% popularity, 518 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjxMxMzAAAAAAAmNjZbGmZmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 55.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.5% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMjMzMGDzMLjhZsNMzMzMjBjZmZzMz2MDGAAAAglZxMGmNmGYmZwG",
                        usage = 8.4,
                        totalRankings = 95,
                        source = "Archon.gg Meta Builds (8.4% popularity, 95 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDY2GLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 77.7,
                        totalRankings = 737,
                        source = "Archon.gg Meta Builds (77.7% popularity, 737 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsNWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 55.3,
                        totalRankings = 228,
                        source = "Archon.gg Meta Builds (55.3% popularity, 228 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMzMzy8AMmZwYxMMjFLDAMay0MzsMzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 15.2,
                        totalRankings = 46,
                        source = "Archon.gg Meta Builds (15.2% popularity, 46 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMbzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMzMDwAjG",
                        usage = 34.1,
                        totalRankings = 557,
                        source = "Archon.gg Meta Builds (34.1% popularity, 557 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 28.8,
                        totalRankings = 645,
                        source = "Archon.gg Meta Builds (28.8% popularity, 645 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 35.4,
                        totalRankings = 758,
                        source = "Archon.gg Meta Builds (35.4% popularity, 758 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 30.6,
                        totalRankings = 644,
                        source = "Archon.gg Meta Builds (30.6% popularity, 644 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 79.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.1% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 59.4,
                        totalRankings = 128,
                        source = "Archon.gg Meta Builds (59.4% popularity, 128 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 50.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (50.0% popularity, 20 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 38.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (38.9% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 56.4,
                        totalRankings = 110,
                        source = "Archon.gg Meta Builds (56.4% popularity, 110 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 74.3,
                        totalRankings = 70,
                        source = "Archon.gg Meta Builds (74.3% popularity, 70 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwoxMDMDjNGsNzMDzyYmx2sYiZb2mxYmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 15.5,
                        totalRankings = 747,
                        source = "Archon.gg Meta Builds (15.5% popularity, 747 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 75.7,
                        totalRankings = 367,
                        source = "Archon.gg Meta Builds (75.7% popularity, 367 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYmhZG2mBAwGAYWmlmZmZBwM",
                        usage = 56.2,
                        totalRankings = 363,
                        source = "Archon.gg Meta Builds (56.2% popularity, 363 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 38.7,
                        totalRankings = 752,
                        source = "Archon.gg Meta Builds (38.7% popularity, 752 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAAAAAAAAQyMzihZmxYY2aDAGDAwMYbAAAAAzMLbLtNzYxADAzwMMG",
                        usage = 21.0,
                        totalRankings = 214,
                        source = "Archon.gg Meta Builds (21.0% popularity, 214 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.6,
                        totalRankings = 585,
                        source = "Archon.gg Meta Builds (85.6% popularity, 585 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZMzYMmZGzsNz2MzMzMAAAAAAAAAAAzysMbDmZGMLMmBjBLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 8.6,
                        totalRankings = 35,
                        source = "Archon.gg Meta Builds (8.6% popularity, 35 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 53.6,
                        totalRankings = 638,
                        source = "Archon.gg Meta Builds (53.6% popularity, 638 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 37.3,
                        totalRankings = 867,
                        source = "Archon.gg Meta Builds (37.3% popularity, 867 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 77.3,
                        totalRankings = 286,
                        source = "Archon.gg Meta Builds (77.3% popularity, 286 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 92.3,
                        totalRankings = 39,
                        source = "Archon.gg Meta Builds (92.3% popularity, 39 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 43.9,
                        totalRankings = 773,
                        source = "Archon.gg Meta Builds (43.9% popularity, 773 parses)"
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
                        usage = 78.1,
                        totalRankings = 96,
                        source = "Archon.gg Meta Builds (78.1% popularity, 96 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 31.0,
                        totalRankings = 755,
                        source = "Archon.gg Meta Builds (31.0% popularity, 755 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 43.8,
                        totalRankings = 32,
                        source = "Archon.gg Meta Builds (43.8% popularity, 32 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.9,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (80.9% popularity, 47 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 58.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.6% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGLDmxmZmBDzwAAAAAAAwDMmlZmZALhx22ALgBMDTgB2A",
                        usage = 77.3,
                        totalRankings = 22,
                        source = "Archon.gg Meta Builds (77.3% popularity, 22 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 60.1,
                        totalRankings = 995,
                        source = "Archon.gg Meta Builds (60.1% popularity, 995 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 9.4,
                        totalRankings = 638,
                        source = "Archon.gg Meta Builds (9.4% popularity, 638 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 49.2,
                        totalRankings = 5323,
                        source = "Archon.gg Meta Builds (49.2% popularity, 5,323 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 56.2,
                        totalRankings = 1077,
                        source = "Archon.gg Meta Builds (56.2% popularity, 1,077 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.6,
                        totalRankings = 1916,
                        source = "Archon.gg Meta Builds (16.6% popularity, 1,916 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 64.8,
                        totalRankings = 4593,
                        source = "Archon.gg Meta Builds (64.8% popularity, 4,593 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.7,
                        totalRankings = 1308,
                        source = "Archon.gg Meta Builds (32.7% popularity, 1,308 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 60.3,
                        totalRankings = 2664,
                        source = "Archon.gg Meta Builds (60.3% popularity, 2,664 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 66.6,
                        totalRankings = 1063,
                        source = "Archon.gg Meta Builds (66.6% popularity, 1,063 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 24.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (24.3% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.2,
                        totalRankings = 3274,
                        source = "Archon.gg Meta Builds (18.2% popularity, 3,274 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 26.2,
                        totalRankings = 1846,
                        source = "Archon.gg Meta Builds (26.2% popularity, 1,846 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.9,
                        totalRankings = 1268,
                        source = "Archon.gg Meta Builds (36.9% popularity, 1,268 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 15.4,
                        totalRankings = 858,
                        source = "Archon.gg Meta Builds (15.4% popularity, 858 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 50.2,
                        totalRankings = 8004,
                        source = "Archon.gg Meta Builds (50.2% popularity, 8,004 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 68.4,
                        totalRankings = 1433,
                        source = "Archon.gg Meta Builds (68.4% popularity, 1,433 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 51.8,
                        totalRankings = 847,
                        source = "Archon.gg Meta Builds (51.8% popularity, 847 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 48.4,
                        totalRankings = 4168,
                        source = "Archon.gg Meta Builds (48.4% popularity, 4,168 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 47.3,
                        totalRankings = 919,
                        source = "Archon.gg Meta Builds (47.3% popularity, 919 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 48.4,
                        totalRankings = 1938,
                        source = "Archon.gg Meta Builds (48.4% popularity, 1,938 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 40.1,
                        totalRankings = 1430,
                        source = "Archon.gg Meta Builds (40.1% popularity, 1,430 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 35.9,
                        totalRankings = 1638,
                        source = "Archon.gg Meta Builds (35.9% popularity, 1,638 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 57.4,
                        totalRankings = 1759,
                        source = "Archon.gg Meta Builds (57.4% popularity, 1,759 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 42.3,
                        totalRankings = 2014,
                        source = "Archon.gg Meta Builds (42.3% popularity, 2,014 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 9.1,
                        totalRankings = 1764,
                        source = "Archon.gg Meta Builds (9.1% popularity, 1,764 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 79.0,
                        totalRankings = 6219,
                        source = "Archon.gg Meta Builds (79.0% popularity, 6,219 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.6,
                        totalRankings = 911,
                        source = "Archon.gg Meta Builds (7.6% popularity, 911 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.3,
                        totalRankings = 3546,
                        source = "Archon.gg Meta Builds (41.3% popularity, 3,546 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 35.1,
                        totalRankings = 2357,
                        source = "Archon.gg Meta Builds (35.1% popularity, 2,357 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 75.8,
                        totalRankings = 1340,
                        source = "Archon.gg Meta Builds (75.8% popularity, 1,340 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 37.2,
                        totalRankings = 683,
                        source = "Archon.gg Meta Builds (37.2% popularity, 683 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.2,
                        totalRankings = 1043,
                        source = "Archon.gg Meta Builds (57.2% popularity, 1,043 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmlpZmBbYmphxMzywyMzMYMMLzMzYmxMzGA",
                        usage = 38.0,
                        totalRankings = 3554,
                        source = "Archon.gg Meta Builds (38.0% popularity, 3,554 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 39.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (39.3% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 4300,
                        source = "Archon.gg Meta Builds (19.3% popularity, 4,300 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.7,
                        totalRankings = 976,
                        source = "Archon.gg Meta Builds (23.7% popularity, 976 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.9,
                        totalRankings = 1188,
                        source = "Archon.gg Meta Builds (80.9% popularity, 1,188 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 51.1,
                        totalRankings = 5134,
                        source = "Archon.gg Meta Builds (51.1% popularity, 5,134 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 51.0,
                        totalRankings = 1003,
                        source = "Archon.gg Meta Builds (51.0% popularity, 1,003 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 35.9,
                        totalRankings = 4798,
                        source = "Archon.gg Meta Builds (35.9% popularity, 4,798 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 24.5,
                        totalRankings = 2226,
                        source = "Archon.gg Meta Builds (24.5% popularity, 2,226 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 93.3,
                        totalRankings = 820,
                        source = "Archon.gg Meta Builds (93.3% popularity, 820 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYmxYZGzMzMNMmxYGDAAAAAAAAzMzsgZMDAY2mhZmZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 30.8,
                        totalRankings = 26,
                        source = "Archon.gg Meta Builds (30.8% popularity, 26 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMjZGzYmxYZGzMz0MjZMGGDAAAAYmZmZmZmZjZGAAgZMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 9.0,
                        totalRankings = 277,
                        source = "Archon.gg Meta Builds (9.0% popularity, 277 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 77.1,
                        totalRankings = 528,
                        source = "Archon.gg Meta Builds (77.1% popularity, 528 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMmZkZmhZYYZmhZsNjZmZMDGzyMzsZmxMDGAAAAglZxMGmNmGYmZwG",
                        usage = 14.3,
                        totalRankings = 21,
                        source = "Archon.gg Meta Builds (14.3% popularity, 21 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 82.4,
                        totalRankings = 222,
                        source = "Archon.gg Meta Builds (82.4% popularity, 222 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 59.7,
                        totalRankings = 72,
                        source = "Archon.gg Meta Builds (59.7% popularity, 72 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 66.7,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (66.7% popularity, 15 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAALGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmxAmNMaA",
                        usage = 23.4,
                        totalRankings = 312,
                        source = "Archon.gg Meta Builds (23.4% popularity, 312 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmtZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 25.3,
                        totalRankings = 455,
                        source = "Archon.gg Meta Builds (25.3% popularity, 455 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 38.7,
                        totalRankings = 465,
                        source = "Archon.gg Meta Builds (38.7% popularity, 465 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 38.9,
                        totalRankings = 185,
                        source = "Archon.gg Meta Builds (38.9% popularity, 185 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 63.5,
                        totalRankings = 633,
                        source = "Archon.gg Meta Builds (63.5% popularity, 633 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDjhZxMjxYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 48.2,
                        totalRankings = 56,
                        source = "Archon.gg Meta Builds (48.2% popularity, 56 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAIjZMzYmZMDGzYMzMwMsYmhNAAAAAYAA",
                        usage = 50.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (50.0% popularity, 4 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 67.4,
                        totalRankings = 791,
                        source = "Archon.gg Meta Builds (67.4% popularity, 791 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 60.9,
                        totalRankings = 46,
                        source = "Archon.gg Meta Builds (60.9% popularity, 46 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 23.1,
                        totalRankings = 13,
                        source = "Archon.gg Meta Builds (23.1% popularity, 13 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 35.8,
                        totalRankings = 349,
                        source = "Archon.gg Meta Builds (35.8% popularity, 349 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswQzMzAzwMYw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 81.6,
                        totalRankings = 163,
                        source = "Archon.gg Meta Builds (81.6% popularity, 163 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBjZYWmZGzMAAAAAAAAAAAYZZY0MzMwMMsww2MzMMbMzws8ATAAsMmZYGmtZAAssMLLz2MzEAAGA",
                        usage = 48.8,
                        totalRankings = 121,
                        source = "Archon.gg Meta Builds (48.8% popularity, 121 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 46.1,
                        totalRankings = 382,
                        source = "Archon.gg Meta Builds (46.1% popularity, 382 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZM2mZmZmxYYAAAAAAAAAAQyMzihZmxYY2aDAGDAwMYbAAAAAzMLbLtNzYxADAzwMMG",
                        usage = 17.5,
                        totalRankings = 57,
                        source = "Archon.gg Meta Builds (17.5% popularity, 57 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 90.4,
                        totalRankings = 178,
                        source = "Archon.gg Meta Builds (90.4% popularity, 178 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsxMjHYGjxMDzwsNzMzMzMDAAAAAAAAAAmlZZ2GMzMYWYYwYYW2Gz0QsAwMLYjwY2GgxGWAAA",
                        usage = 33.3,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (33.3% popularity, 9 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 35.3,
                        totalRankings = 306,
                        source = "Archon.gg Meta Builds (35.3% popularity, 306 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDzMDAAAAAAAAAAAAjxGMzMLbbjZGzMzMLDmNmZmZMbMAjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 47.9,
                        totalRankings = 303,
                        source = "Archon.gg Meta Builds (47.9% popularity, 303 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 75.8,
                        totalRankings = 95,
                        source = "Archon.gg Meta Builds (75.8% popularity, 95 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAA2WmZGMzMWglZbAAAAYmZADsBzY0Y2AsNwiZA",
                        usage = 88.9,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (88.9% popularity, 9 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 52.4,
                        totalRankings = 393,
                        source = "Archon.gg Meta Builds (52.4% popularity, 393 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGYbhZmGGzMbDLzMzYzYYWGzMmZMzsBA",
                        usage = 56.5,
                        totalRankings = 626,
                        source = "Archon.gg Meta Builds (56.5% popularity, 626 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZgtlZmZmhhZWYWmZmmNMMmZAAGD",
                        usage = 77.8,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (77.8% popularity, 18 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 38.6,
                        totalRankings = 365,
                        source = "Archon.gg Meta Builds (38.6% popularity, 365 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 50.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (50.0% popularity, 4 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 66.0,
                        totalRankings = 997,
                        source = "Archon.gg Meta Builds (66.0% popularity, 997 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGGMjNzMDGmhBAAAAAAgHYMLzMzAWCjttBWADYGmAzgNA",
                        usage = 41.7,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (41.7% popularity, 12 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 67.1,
                        totalRankings = 374,
                        source = "Archon.gg Meta Builds (67.1% popularity, 374 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhxsZmZZwYMTDLzMDjlBzw2MzwMMYAAAAAAglxAAzstBYgNYZxoxMAmNY2gZA",
                        usage = 8.7,
                        totalRankings = 286,
                        source = "Archon.gg Meta Builds (8.7% popularity, 286 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 8.9,
                    totalRankings = 16115,
                    source = "Archon.gg Mythic+ Meta Builds (8.9% popularity, 16,115 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGjxwYmZmZmhZmRzMGjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 73.4,
                    totalRankings = 75624,
                    source = "Archon.gg Mythic+ Meta Builds (73.4% popularity, 75,624 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 59.5,
                    totalRankings = 5999,
                    source = "Archon.gg Mythic+ Meta Builds (59.5% popularity, 5,999 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 50.4,
                    totalRankings = 51525,
                    source = "Archon.gg Mythic+ Meta Builds (50.4% popularity, 51,525 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 41.7,
                    totalRankings = 23229,
                    source = "Archon.gg Mythic+ Meta Builds (41.7% popularity, 23,229 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 70.9,
                    totalRankings = 17913,
                    source = "Archon.gg Mythic+ Meta Builds (70.9% popularity, 17,913 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 62.0,
                    totalRankings = 7837,
                    source = "Archon.gg Mythic+ Meta Builds (62.0% popularity, 7,837 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 22.7,
                    totalRankings = 20408,
                    source = "Archon.gg Mythic+ Meta Builds (22.7% popularity, 20,408 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 6.1,
                    totalRankings = 49973,
                    source = "Archon.gg Mythic+ Meta Builds (6.1% popularity, 49,973 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmJz2YZwMDjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 16.9,
                    totalRankings = 12268,
                    source = "Archon.gg Mythic+ Meta Builds (16.9% popularity, 12,268 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDAAAmZYMjxwMxYGAAAYbmZmmxyMzMGzAAwY2swCMwMM0gxCMA",
                    usage = 34.1,
                    totalRankings = 8278,
                    source = "Archon.gg Mythic+ Meta Builds (34.1% popularity, 8,278 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMbjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 18.4,
                    totalRankings = 3180,
                    source = "Archon.gg Mythic+ Meta Builds (18.4% popularity, 3,180 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzYMzAzMMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                    usage = 22.5,
                    totalRankings = 97885,
                    source = "Archon.gg Mythic+ Meta Builds (22.5% popularity, 97,885 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjMjxwMDzywssMD2GmxYZbzMzMmFzMMmZmlNDLDzM",
                    usage = 41.0,
                    totalRankings = 10829,
                    source = "Archon.gg Mythic+ Meta Builds (41.0% popularity, 10,829 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 36.5,
                    totalRankings = 4858,
                    source = "Archon.gg Mythic+ Meta Builds (36.5% popularity, 4,858 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZYmZBGzMMmmZWmBAAAAAgBAMzMtMbLzAAYDAAAAAgNAMGMzysMjZGjZYmZmZMjZZM",
                    usage = 53.2,
                    totalRankings = 39064,
                    source = "Archon.gg Mythic+ Meta Builds (53.2% popularity, 39,064 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbGMDzMLGeAzMMNmZMzAAAAAAYAAzMTLzyyMAAbmZGMmZMzYWMLjhZmNzsNjtZgBAAAAAAA",
                    usage = 21.2,
                    totalRankings = 3512,
                    source = "Archon.gg Mythic+ Meta Builds (21.2% popularity, 3,512 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsMLAAAwCAAAAAAmNAAAAAAAA",
                    usage = 37.9,
                    totalRankings = 12533,
                    source = "Archon.gg Mythic+ Meta Builds (37.9% popularity, 12,533 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 45.8,
                    totalRankings = 17721,
                    source = "Archon.gg Mythic+ Meta Builds (45.8% popularity, 17,721 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 13.0,
                    totalRankings = 10505,
                    source = "Archon.gg Mythic+ Meta Builds (13.0% popularity, 10,505 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 30.5,
                    totalRankings = 10271,
                    source = "Archon.gg Mythic+ Meta Builds (30.5% popularity, 10,271 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLzMmZZ2mZmlGAAAgFAD2MDMMA",
                    usage = 16.7,
                    totalRankings = 14414,
                    source = "Archon.gg Mythic+ Meta Builds (16.7% popularity, 14,414 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMzMzMLbzMzYmtxwAAAMAAAAAAA0WzMzihZGGzwWbAADMAAbDAAAAYmZbbptZGLMYAYwMMG",
                    usage = 9.8,
                    totalRankings = 52484,
                    source = "Archon.gg Mythic+ Meta Builds (9.8% popularity, 52,484 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 30.4,
                    totalRankings = 49097,
                    source = "Archon.gg Mythic+ Meta Builds (30.4% popularity, 49,097 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                    usage = 20.4,
                    totalRankings = 25215,
                    source = "Archon.gg Mythic+ Meta Builds (20.4% popularity, 25,215 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 15.3,
                    totalRankings = 9179,
                    source = "Archon.gg Mythic+ Meta Builds (15.3% popularity, 9,179 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 29.7,
                    totalRankings = 12938,
                    source = "Archon.gg Mythic+ Meta Builds (29.7% popularity, 12,938 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 78.1,
                    totalRankings = 5906,
                    source = "Archon.gg Mythic+ Meta Builds (78.1% popularity, 5,906 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZmhZmZmWmxsNDAAAAAA2WmZGMzYWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 45.4,
                    totalRankings = 3924,
                    source = "Archon.gg Mythic+ Meta Builds (45.4% popularity, 3,924 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 45.8,
                    totalRankings = 9887,
                    source = "Archon.gg Mythic+ Meta Builds (45.8% popularity, 9,887 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsNNDYDzMNMzMz2MWmxMYWGLWmZMYYmtBA",
                    usage = 35.7,
                    totalRankings = 32349,
                    source = "Archon.gg Mythic+ Meta Builds (35.7% popularity, 32,349 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBswMzMDzYmtZsMzMZhlxyYmBAYMA",
                    usage = 37.0,
                    totalRankings = 5514,
                    source = "Archon.gg Mythic+ Meta Builds (37.0% popularity, 5,514 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 22.9,
                    totalRankings = 69030,
                    source = "Archon.gg Mythic+ Meta Builds (22.9% popularity, 69,030 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMbglZAAAAAAAAwMsA",
                    usage = 29.0,
                    totalRankings = 2462,
                    source = "Archon.gg Mythic+ Meta Builds (29.0% popularity, 2,462 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 47.5,
                    totalRankings = 14129,
                    source = "Archon.gg Mythic+ Meta Builds (47.5% popularity, 14,129 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 9.9,
                    totalRankings = 29630,
                    source = "Archon.gg Mythic+ Meta Builds (9.9% popularity, 29,630 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                    usage = 26.8,
                    totalRankings = 2446,
                    source = "Archon.gg Mythic+ Meta Builds (26.8% popularity, 2,446 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                    usage = 44.4,
                    totalRankings = 36079,
                    source = "Archon.gg Mythic+ Meta Builds (44.4% popularity, 36,079 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAAwYGzMzMzMmNjZZwYMaMLjZYsMmZG2mZGzADDAAAAAAsMGAYGbAGYDWWMaMDgZBmNYmB",
                    usage = 22.7,
                    totalRankings = 56708,
                    source = "Archon.gg Mythic+ Meta Builds (22.7% popularity, 56,708 parses)"
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
