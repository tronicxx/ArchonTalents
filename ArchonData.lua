-- Archon Talents Data File
-- Generated: 2025-10-23 08:06:32 UTC
-- Version: 1761224792
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1761224792
    local lastUpdated = "2025-10-23 08:06:32 UTC"
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
                        usage = 48.1,
                        totalRankings = 14779,
                        source = "Archon.gg Meta Builds (48.1% popularity, 14,779 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.3,
                        totalRankings = 2310,
                        source = "Archon.gg Meta Builds (72.3% popularity, 2,310 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.3,
                        totalRankings = 3334,
                        source = "Archon.gg Meta Builds (16.3% popularity, 3,334 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.7,
                        totalRankings = 12172,
                        source = "Archon.gg Meta Builds (67.7% popularity, 12,172 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 40.8,
                        totalRankings = 3051,
                        source = "Archon.gg Meta Builds (40.8% popularity, 3,051 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 56.4,
                        totalRankings = 6820,
                        source = "Archon.gg Meta Builds (56.4% popularity, 6,820 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 65.0,
                        totalRankings = 2638,
                        source = "Archon.gg Meta Builds (65.0% popularity, 2,638 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 28.0,
                        totalRankings = 2693,
                        source = "Archon.gg Meta Builds (28.0% popularity, 2,693 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.8,
                        totalRankings = 8923,
                        source = "Archon.gg Meta Builds (17.8% popularity, 8,923 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.6,
                        totalRankings = 3750,
                        source = "Archon.gg Meta Builds (24.6% popularity, 3,750 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.2,
                        totalRankings = 2465,
                        source = "Archon.gg Meta Builds (38.2% popularity, 2,465 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 15.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 52.3,
                        totalRankings = 23658,
                        source = "Archon.gg Meta Builds (52.3% popularity, 23,658 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.7,
                        totalRankings = 3603,
                        source = "Archon.gg Meta Builds (67.7% popularity, 3,603 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 59.0,
                        totalRankings = 1146,
                        source = "Archon.gg Meta Builds (59.0% popularity, 1,146 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 72.9,
                        totalRankings = 9420,
                        source = "Archon.gg Meta Builds (72.9% popularity, 9,420 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 53.5,
                        totalRankings = 1197,
                        source = "Archon.gg Meta Builds (53.5% popularity, 1,197 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 39.0,
                        totalRankings = 5024,
                        source = "Archon.gg Meta Builds (39.0% popularity, 5,024 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.9,
                        totalRankings = 2765,
                        source = "Archon.gg Meta Builds (35.9% popularity, 2,765 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 23.6,
                        totalRankings = 3432,
                        source = "Archon.gg Meta Builds (23.6% popularity, 3,432 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 66.3,
                        totalRankings = 3912,
                        source = "Archon.gg Meta Builds (66.3% popularity, 3,912 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.5,
                        totalRankings = 4571,
                        source = "Archon.gg Meta Builds (35.5% popularity, 4,571 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 6.4,
                        totalRankings = 4860,
                        source = "Archon.gg Meta Builds (6.4% popularity, 4,860 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 72.9,
                        totalRankings = 16296,
                        source = "Archon.gg Meta Builds (72.9% popularity, 16,296 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.2,
                        totalRankings = 1614,
                        source = "Archon.gg Meta Builds (9.2% popularity, 1,614 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 37.9,
                        totalRankings = 7608,
                        source = "Archon.gg Meta Builds (37.9% popularity, 7,608 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 25.6,
                        totalRankings = 5577,
                        source = "Archon.gg Meta Builds (25.6% popularity, 5,577 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 70.6,
                        totalRankings = 3013,
                        source = "Archon.gg Meta Builds (70.6% popularity, 3,013 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 41.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.0% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.1,
                        totalRankings = 2275,
                        source = "Archon.gg Meta Builds (57.1% popularity, 2,275 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.8,
                        totalRankings = 8855,
                        source = "Archon.gg Meta Builds (29.8% popularity, 8,855 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 62.0,
                        totalRankings = 1561,
                        source = "Archon.gg Meta Builds (62.0% popularity, 1,561 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.7,
                        totalRankings = 11779,
                        source = "Archon.gg Meta Builds (18.7% popularity, 11,779 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.7,
                        totalRankings = 1136,
                        source = "Archon.gg Meta Builds (20.7% popularity, 1,136 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 74.6,
                        totalRankings = 3643,
                        source = "Archon.gg Meta Builds (74.6% popularity, 3,643 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 34.7,
                        totalRankings = 11520,
                        source = "Archon.gg Meta Builds (34.7% popularity, 11,520 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 65.2,
                        totalRankings = 1287,
                        source = "Archon.gg Meta Builds (65.2% popularity, 1,287 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 47.7,
                        totalRankings = 11524,
                        source = "Archon.gg Meta Builds (47.7% popularity, 11,524 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 17.9,
                        totalRankings = 5850,
                        source = "Archon.gg Meta Builds (17.9% popularity, 5,850 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 62.5,
                        totalRankings = 17402,
                        source = "Archon.gg Meta Builds (62.5% popularity, 17,402 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.1,
                        totalRankings = 2143,
                        source = "Archon.gg Meta Builds (70.1% popularity, 2,143 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 19.9,
                        totalRankings = 2799,
                        source = "Archon.gg Meta Builds (19.9% popularity, 2,799 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 78.2,
                        totalRankings = 11635,
                        source = "Archon.gg Meta Builds (78.2% popularity, 11,635 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 39.9,
                        totalRankings = 2733,
                        source = "Archon.gg Meta Builds (39.9% popularity, 2,733 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 60.7,
                        totalRankings = 5564,
                        source = "Archon.gg Meta Builds (60.7% popularity, 5,564 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 55.0,
                        totalRankings = 1933,
                        source = "Archon.gg Meta Builds (55.0% popularity, 1,933 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.7,
                        totalRankings = 1662,
                        source = "Archon.gg Meta Builds (18.7% popularity, 1,662 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.0,
                        totalRankings = 9119,
                        source = "Archon.gg Meta Builds (17.0% popularity, 9,119 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 25.3,
                        totalRankings = 3480,
                        source = "Archon.gg Meta Builds (25.3% popularity, 3,480 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.6,
                        totalRankings = 3032,
                        source = "Archon.gg Meta Builds (38.6% popularity, 3,032 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 27.6,
                        totalRankings = 1150,
                        source = "Archon.gg Meta Builds (27.6% popularity, 1,150 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 60.3,
                        totalRankings = 19422,
                        source = "Archon.gg Meta Builds (60.3% popularity, 19,422 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 79.9,
                        totalRankings = 2707,
                        source = "Archon.gg Meta Builds (79.9% popularity, 2,707 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 51.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.6% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 77.8,
                        totalRankings = 12297,
                        source = "Archon.gg Meta Builds (77.8% popularity, 12,297 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 48.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (48.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 53.3,
                        totalRankings = 3168,
                        source = "Archon.gg Meta Builds (53.3% popularity, 3,168 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 31.5,
                        totalRankings = 3724,
                        source = "Archon.gg Meta Builds (31.5% popularity, 3,724 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 33.1,
                        totalRankings = 3071,
                        source = "Archon.gg Meta Builds (33.1% popularity, 3,071 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 75.2,
                        totalRankings = 2932,
                        source = "Archon.gg Meta Builds (75.2% popularity, 2,932 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.6,
                        totalRankings = 4681,
                        source = "Archon.gg Meta Builds (35.6% popularity, 4,681 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MmxMYYAAAGAAAAAAAarZmZzwMYMjZrNAgBAYGsNAAAAgZmtllWmZsYGMAAzwYA",
                        usage = 5.6,
                        totalRankings = 3842,
                        source = "Archon.gg Meta Builds (5.6% popularity, 3,842 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 79.9,
                        totalRankings = 12682,
                        source = "Archon.gg Meta Builds (79.9% popularity, 12,682 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 4.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.3% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 47.5,
                        totalRankings = 8504,
                        source = "Archon.gg Meta Builds (47.5% popularity, 8,504 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 21.8,
                        totalRankings = 4776,
                        source = "Archon.gg Meta Builds (21.8% popularity, 4,776 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 73.9,
                        totalRankings = 3542,
                        source = "Archon.gg Meta Builds (73.9% popularity, 3,542 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 58.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 55.7,
                        totalRankings = 1962,
                        source = "Archon.gg Meta Builds (55.7% popularity, 1,962 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 44.6,
                        totalRankings = 7798,
                        source = "Archon.gg Meta Builds (44.6% popularity, 7,798 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.9% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.0,
                        totalRankings = 12678,
                        source = "Archon.gg Meta Builds (19.0% popularity, 12,678 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (20.6% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 79.2,
                        totalRankings = 2368,
                        source = "Archon.gg Meta Builds (79.2% popularity, 2,368 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 42.2,
                        totalRankings = 12022,
                        source = "Archon.gg Meta Builds (42.2% popularity, 12,022 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (63.7% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.9,
                        totalRankings = 10275,
                        source = "Archon.gg Meta Builds (40.9% popularity, 10,275 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.0,
                        totalRankings = 5967,
                        source = "Archon.gg Meta Builds (19.0% popularity, 5,967 parses)"
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
                        totalRankings = 15484,
                        source = "Archon.gg Meta Builds (47.7% popularity, 15,484 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.3,
                        totalRankings = 2398,
                        source = "Archon.gg Meta Builds (72.3% popularity, 2,398 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.5,
                        totalRankings = 3432,
                        source = "Archon.gg Meta Builds (17.5% popularity, 3,432 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.1,
                        totalRankings = 12664,
                        source = "Archon.gg Meta Builds (67.1% popularity, 12,664 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.0,
                        totalRankings = 3139,
                        source = "Archon.gg Meta Builds (38.0% popularity, 3,139 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 57.3,
                        totalRankings = 7242,
                        source = "Archon.gg Meta Builds (57.3% popularity, 7,242 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 64.1,
                        totalRankings = 2763,
                        source = "Archon.gg Meta Builds (64.1% popularity, 2,763 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 27.6,
                        totalRankings = 2763,
                        source = "Archon.gg Meta Builds (27.6% popularity, 2,763 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.6,
                        totalRankings = 9307,
                        source = "Archon.gg Meta Builds (18.6% popularity, 9,307 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 17.8,
                        totalRankings = 3922,
                        source = "Archon.gg Meta Builds (17.8% popularity, 3,922 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.0,
                        totalRankings = 2528,
                        source = "Archon.gg Meta Builds (39.0% popularity, 2,528 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 15.5,
                        totalRankings = 1008,
                        source = "Archon.gg Meta Builds (15.5% popularity, 1,008 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 51.8,
                        totalRankings = 24882,
                        source = "Archon.gg Meta Builds (51.8% popularity, 24,882 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.6,
                        totalRankings = 3690,
                        source = "Archon.gg Meta Builds (67.6% popularity, 3,690 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 62.8,
                        totalRankings = 1182,
                        source = "Archon.gg Meta Builds (62.8% popularity, 1,182 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 71.3,
                        totalRankings = 9884,
                        source = "Archon.gg Meta Builds (71.3% popularity, 9,884 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.2,
                        totalRankings = 1238,
                        source = "Archon.gg Meta Builds (49.2% popularity, 1,238 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 39.4,
                        totalRankings = 5217,
                        source = "Archon.gg Meta Builds (39.4% popularity, 5,217 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.4,
                        totalRankings = 2828,
                        source = "Archon.gg Meta Builds (36.4% popularity, 2,828 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.0,
                        totalRankings = 3566,
                        source = "Archon.gg Meta Builds (25.0% popularity, 3,566 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 66.9,
                        totalRankings = 4148,
                        source = "Archon.gg Meta Builds (66.9% popularity, 4,148 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.1,
                        totalRankings = 4747,
                        source = "Archon.gg Meta Builds (36.1% popularity, 4,747 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.4,
                        totalRankings = 4997,
                        source = "Archon.gg Meta Builds (7.4% popularity, 4,997 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 73.5,
                        totalRankings = 17134,
                        source = "Archon.gg Meta Builds (73.5% popularity, 17,134 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.4,
                        totalRankings = 1665,
                        source = "Archon.gg Meta Builds (7.4% popularity, 1,665 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.7,
                        totalRankings = 7887,
                        source = "Archon.gg Meta Builds (39.7% popularity, 7,887 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 41.1,
                        totalRankings = 5890,
                        source = "Archon.gg Meta Builds (41.1% popularity, 5,890 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.9,
                        totalRankings = 3150,
                        source = "Archon.gg Meta Builds (69.9% popularity, 3,150 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 42.1,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (42.1% popularity, 1,001 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.0,
                        totalRankings = 2360,
                        source = "Archon.gg Meta Builds (57.0% popularity, 2,360 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.9,
                        totalRankings = 9358,
                        source = "Archon.gg Meta Builds (29.9% popularity, 9,358 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 60.3,
                        totalRankings = 1644,
                        source = "Archon.gg Meta Builds (60.3% popularity, 1,644 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.5,
                        totalRankings = 12383,
                        source = "Archon.gg Meta Builds (19.5% popularity, 12,383 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.9,
                        totalRankings = 1151,
                        source = "Archon.gg Meta Builds (20.9% popularity, 1,151 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 74.7,
                        totalRankings = 3677,
                        source = "Archon.gg Meta Builds (74.7% popularity, 3,677 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 37.2,
                        totalRankings = 12115,
                        source = "Archon.gg Meta Builds (37.2% popularity, 12,115 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 62.4,
                        totalRankings = 1350,
                        source = "Archon.gg Meta Builds (62.4% popularity, 1,350 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 46.7,
                        totalRankings = 12060,
                        source = "Archon.gg Meta Builds (46.7% popularity, 12,060 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.8,
                        totalRankings = 6046,
                        source = "Archon.gg Meta Builds (19.8% popularity, 6,046 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 66.5,
                        totalRankings = 8666,
                        source = "Archon.gg Meta Builds (66.5% popularity, 8,666 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 73.6,
                        totalRankings = 1122,
                        source = "Archon.gg Meta Builds (73.6% popularity, 1,122 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 23.2,
                        totalRankings = 1948,
                        source = "Archon.gg Meta Builds (23.2% popularity, 1,948 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 79.1,
                        totalRankings = 6006,
                        source = "Archon.gg Meta Builds (79.1% popularity, 6,006 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 40.4,
                        totalRankings = 1214,
                        source = "Archon.gg Meta Builds (40.4% popularity, 1,214 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 64.9,
                        totalRankings = 3407,
                        source = "Archon.gg Meta Builds (64.9% popularity, 3,407 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 50.2,
                        totalRankings = 1090,
                        source = "Archon.gg Meta Builds (50.2% popularity, 1,090 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 17.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.6% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 17.7,
                        totalRankings = 4275,
                        source = "Archon.gg Meta Builds (17.7% popularity, 4,275 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 19.4,
                        totalRankings = 2385,
                        source = "Archon.gg Meta Builds (19.4% popularity, 2,385 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 37.8,
                        totalRankings = 2126,
                        source = "Archon.gg Meta Builds (37.8% popularity, 2,126 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 30.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (30.7% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 67.8,
                        totalRankings = 9864,
                        source = "Archon.gg Meta Builds (67.8% popularity, 9,864 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 82.1,
                        totalRankings = 1538,
                        source = "Archon.gg Meta Builds (82.1% popularity, 1,538 parses)"
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
                        usage = 77.2,
                        totalRankings = 7491,
                        source = "Archon.gg Meta Builds (77.2% popularity, 7,491 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.0% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 60.6,
                        totalRankings = 1298,
                        source = "Archon.gg Meta Builds (60.6% popularity, 1,298 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.0,
                        totalRankings = 2647,
                        source = "Archon.gg Meta Builds (32.0% popularity, 2,647 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 41.9,
                        totalRankings = 1942,
                        source = "Archon.gg Meta Builds (41.9% popularity, 1,942 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 77.6,
                        totalRankings = 1761,
                        source = "Archon.gg Meta Builds (77.6% popularity, 1,761 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.2,
                        totalRankings = 2861,
                        source = "Archon.gg Meta Builds (36.2% popularity, 2,861 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.7,
                        totalRankings = 1749,
                        source = "Archon.gg Meta Builds (5.7% popularity, 1,749 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.3,
                        totalRankings = 5559,
                        source = "Archon.gg Meta Builds (85.3% popularity, 5,559 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZMzYMmZGzsx2MzMzMDAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWGYmBACwsNbbgxmNAA",
                        usage = 4.5,
                        totalRankings = 446,
                        source = "Archon.gg Meta Builds (4.5% popularity, 446 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 53.7,
                        totalRankings = 4768,
                        source = "Archon.gg Meta Builds (53.7% popularity, 4,768 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 47.0,
                        totalRankings = 3206,
                        source = "Archon.gg Meta Builds (47.0% popularity, 3,206 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 73.5,
                        totalRankings = 2311,
                        source = "Archon.gg Meta Builds (73.5% popularity, 2,311 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 65.3,
                        totalRankings = 701,
                        source = "Archon.gg Meta Builds (65.3% popularity, 701 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 55.3,
                        totalRankings = 1282,
                        source = "Archon.gg Meta Builds (55.3% popularity, 1,282 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 48.8,
                        totalRankings = 5011,
                        source = "Archon.gg Meta Builds (48.8% popularity, 5,011 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 71.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (71.5% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.0,
                        totalRankings = 5864,
                        source = "Archon.gg Meta Builds (20.0% popularity, 5,864 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.2,
                        totalRankings = 456,
                        source = "Archon.gg Meta Builds (20.2% popularity, 456 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (80.8% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.8,
                        totalRankings = 8380,
                        source = "Archon.gg Meta Builds (55.8% popularity, 8,380 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 66.5,
                        totalRankings = 493,
                        source = "Archon.gg Meta Builds (66.5% popularity, 493 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 41.6,
                        totalRankings = 5326,
                        source = "Archon.gg Meta Builds (41.6% popularity, 5,326 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.8,
                        totalRankings = 3200,
                        source = "Archon.gg Meta Builds (25.8% popularity, 3,200 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 80.8,
                        totalRankings = 14835,
                        source = "Archon.gg Meta Builds (80.8% popularity, 14,835 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.0,
                        totalRankings = 2151,
                        source = "Archon.gg Meta Builds (28.0% popularity, 2,151 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.6,
                        totalRankings = 3319,
                        source = "Archon.gg Meta Builds (16.6% popularity, 3,319 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 33.5,
                        totalRankings = 12025,
                        source = "Archon.gg Meta Builds (33.5% popularity, 12,025 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.8,
                        totalRankings = 3062,
                        source = "Archon.gg Meta Builds (31.8% popularity, 3,062 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 40.8,
                        totalRankings = 6916,
                        source = "Archon.gg Meta Builds (40.8% popularity, 6,916 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 21.1,
                        totalRankings = 2643,
                        source = "Archon.gg Meta Builds (21.1% popularity, 2,643 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 19.0,
                        totalRankings = 2684,
                        source = "Archon.gg Meta Builds (19.0% popularity, 2,684 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.0,
                        totalRankings = 8845,
                        source = "Archon.gg Meta Builds (18.0% popularity, 8,845 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 14.0,
                        totalRankings = 3810,
                        source = "Archon.gg Meta Builds (14.0% popularity, 3,810 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.7,
                        totalRankings = 2447,
                        source = "Archon.gg Meta Builds (38.7% popularity, 2,447 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 15.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.2% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 36.7,
                        totalRankings = 23934,
                        source = "Archon.gg Meta Builds (36.7% popularity, 23,934 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 31.0,
                        totalRankings = 3519,
                        source = "Archon.gg Meta Builds (31.0% popularity, 3,519 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 31.7,
                        totalRankings = 1170,
                        source = "Archon.gg Meta Builds (31.7% popularity, 1,170 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 58.3,
                        totalRankings = 9381,
                        source = "Archon.gg Meta Builds (58.3% popularity, 9,381 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.8,
                        totalRankings = 1202,
                        source = "Archon.gg Meta Builds (46.8% popularity, 1,202 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 24.6,
                        totalRankings = 5174,
                        source = "Archon.gg Meta Builds (24.6% popularity, 5,174 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.9,
                        totalRankings = 2759,
                        source = "Archon.gg Meta Builds (33.9% popularity, 2,759 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 28.6,
                        totalRankings = 3412,
                        source = "Archon.gg Meta Builds (28.6% popularity, 3,412 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 34.8,
                        totalRankings = 4007,
                        source = "Archon.gg Meta Builds (34.8% popularity, 4,007 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.5,
                        totalRankings = 4539,
                        source = "Archon.gg Meta Builds (34.5% popularity, 4,539 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 7.5,
                        totalRankings = 4815,
                        source = "Archon.gg Meta Builds (7.5% popularity, 4,815 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 34.5,
                        totalRankings = 16433,
                        source = "Archon.gg Meta Builds (34.5% popularity, 16,433 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.9,
                        totalRankings = 1551,
                        source = "Archon.gg Meta Builds (7.9% popularity, 1,551 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.8,
                        totalRankings = 7643,
                        source = "Archon.gg Meta Builds (39.8% popularity, 7,643 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 37.8,
                        totalRankings = 5636,
                        source = "Archon.gg Meta Builds (37.8% popularity, 5,636 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 50.5,
                        totalRankings = 2726,
                        source = "Archon.gg Meta Builds (50.5% popularity, 2,726 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 29.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.6% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 51.6,
                        totalRankings = 2582,
                        source = "Archon.gg Meta Builds (51.6% popularity, 2,582 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 21.8,
                        totalRankings = 8935,
                        source = "Archon.gg Meta Builds (21.8% popularity, 8,935 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 33.6,
                        totalRankings = 1588,
                        source = "Archon.gg Meta Builds (33.6% popularity, 1,588 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.0,
                        totalRankings = 11621,
                        source = "Archon.gg Meta Builds (20.0% popularity, 11,621 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.6,
                        totalRankings = 1053,
                        source = "Archon.gg Meta Builds (19.6% popularity, 1,053 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 32.0,
                        totalRankings = 3918,
                        source = "Archon.gg Meta Builds (32.0% popularity, 3,918 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.4,
                        totalRankings = 11433,
                        source = "Archon.gg Meta Builds (30.4% popularity, 11,433 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 29.1,
                        totalRankings = 1273,
                        source = "Archon.gg Meta Builds (29.1% popularity, 1,273 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 39.7,
                        totalRankings = 11644,
                        source = "Archon.gg Meta Builds (39.7% popularity, 11,644 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.1,
                        totalRankings = 5811,
                        source = "Archon.gg Meta Builds (23.1% popularity, 5,811 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 88.3,
                        totalRankings = 17897,
                        source = "Archon.gg Meta Builds (88.3% popularity, 17,897 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 34.6,
                        totalRankings = 1540,
                        source = "Archon.gg Meta Builds (34.6% popularity, 1,540 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 20.2,
                        totalRankings = 2810,
                        source = "Archon.gg Meta Builds (20.2% popularity, 2,810 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzYGAAAAAAwsZMbzwMzsNmZDLzMYMMW2mtZwwYbjJMjZmhhF",
                        usage = 26.8,
                        totalRankings = 11615,
                        source = "Archon.gg Meta Builds (26.8% popularity, 11,615 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 21.4,
                        totalRankings = 2732,
                        source = "Archon.gg Meta Builds (21.4% popularity, 2,732 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 30.6,
                        totalRankings = 5502,
                        source = "Archon.gg Meta Builds (30.6% popularity, 5,502 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZjZmFzMzMzmNGbzMzMPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 17.9,
                        totalRankings = 1889,
                        source = "Archon.gg Meta Builds (17.9% popularity, 1,889 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 10.7,
                        totalRankings = 1670,
                        source = "Archon.gg Meta Builds (10.7% popularity, 1,670 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.2,
                        totalRankings = 9163,
                        source = "Archon.gg Meta Builds (17.2% popularity, 9,163 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZWmBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 13.7,
                        totalRankings = 3482,
                        source = "Archon.gg Meta Builds (13.7% popularity, 3,482 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.8,
                        totalRankings = 3010,
                        source = "Archon.gg Meta Builds (39.8% popularity, 3,010 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 26.9,
                        totalRankings = 1111,
                        source = "Archon.gg Meta Builds (26.9% popularity, 1,111 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 47.4,
                        totalRankings = 19321,
                        source = "Archon.gg Meta Builds (47.4% popularity, 19,321 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 51.3,
                        totalRankings = 2771,
                        source = "Archon.gg Meta Builds (51.3% popularity, 2,771 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 16.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.4% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 72.3,
                        totalRankings = 12394,
                        source = "Archon.gg Meta Builds (72.3% popularity, 12,394 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.4% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 39.3,
                        totalRankings = 3274,
                        source = "Archon.gg Meta Builds (39.3% popularity, 3,274 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.1,
                        totalRankings = 3728,
                        source = "Archon.gg Meta Builds (31.1% popularity, 3,728 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 42.5,
                        totalRankings = 3095,
                        source = "Archon.gg Meta Builds (42.5% popularity, 3,095 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 21.4,
                        totalRankings = 2892,
                        source = "Archon.gg Meta Builds (21.4% popularity, 2,892 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.5,
                        totalRankings = 4651,
                        source = "Archon.gg Meta Builds (36.5% popularity, 4,651 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 3806,
                        source = "Archon.gg Meta Builds (6.0% popularity, 3,806 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 17.3,
                        totalRankings = 12601,
                        source = "Archon.gg Meta Builds (17.3% popularity, 12,601 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 4.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.5% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 49.7,
                        totalRankings = 8480,
                        source = "Archon.gg Meta Builds (49.7% popularity, 8,480 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.1,
                        totalRankings = 4762,
                        source = "Archon.gg Meta Builds (36.1% popularity, 4,762 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 44.6,
                        totalRankings = 2403,
                        source = "Archon.gg Meta Builds (44.6% popularity, 2,403 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 27.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.7,
                        totalRankings = 3002,
                        source = "Archon.gg Meta Builds (48.7% popularity, 3,002 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 30.2,
                        totalRankings = 7794,
                        source = "Archon.gg Meta Builds (30.2% popularity, 7,794 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 56.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (56.5% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 22.7,
                        totalRankings = 12693,
                        source = "Archon.gg Meta Builds (22.7% popularity, 12,693 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.9,
                        totalRankings = 860,
                        source = "Archon.gg Meta Builds (20.9% popularity, 860 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 37.2,
                        totalRankings = 3120,
                        source = "Archon.gg Meta Builds (37.2% popularity, 3,120 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 37.5,
                        totalRankings = 11411,
                        source = "Archon.gg Meta Builds (37.5% popularity, 11,411 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 24.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (24.5% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 43.0,
                        totalRankings = 10305,
                        source = "Archon.gg Meta Builds (43.0% popularity, 10,305 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 28.1,
                        totalRankings = 5986,
                        source = "Archon.gg Meta Builds (28.1% popularity, 5,986 parses)"
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
                        totalRankings = 15313,
                        source = "Archon.gg Meta Builds (79.7% popularity, 15,313 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 35.3,
                        totalRankings = 2160,
                        source = "Archon.gg Meta Builds (35.3% popularity, 2,160 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.1,
                        totalRankings = 3333,
                        source = "Archon.gg Meta Builds (16.1% popularity, 3,333 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 27.7,
                        totalRankings = 12278,
                        source = "Archon.gg Meta Builds (27.7% popularity, 12,278 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.5,
                        totalRankings = 3056,
                        source = "Archon.gg Meta Builds (30.5% popularity, 3,056 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 36.3,
                        totalRankings = 7044,
                        source = "Archon.gg Meta Builds (36.3% popularity, 7,044 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 26.7,
                        totalRankings = 2729,
                        source = "Archon.gg Meta Builds (26.7% popularity, 2,729 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 21.2,
                        totalRankings = 2641,
                        source = "Archon.gg Meta Builds (21.2% popularity, 2,641 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.1,
                        totalRankings = 8793,
                        source = "Archon.gg Meta Builds (18.1% popularity, 8,793 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 13.3,
                        totalRankings = 3862,
                        source = "Archon.gg Meta Builds (13.3% popularity, 3,862 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.6,
                        totalRankings = 2453,
                        source = "Archon.gg Meta Builds (38.6% popularity, 2,453 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 15.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (15.7% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 35.4,
                        totalRankings = 24761,
                        source = "Archon.gg Meta Builds (35.4% popularity, 24,761 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 27.0,
                        totalRankings = 3530,
                        source = "Archon.gg Meta Builds (27.0% popularity, 3,530 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 33.1,
                        totalRankings = 1178,
                        source = "Archon.gg Meta Builds (33.1% popularity, 1,178 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.9,
                        totalRankings = 9340,
                        source = "Archon.gg Meta Builds (55.9% popularity, 9,340 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.9,
                        totalRankings = 1175,
                        source = "Archon.gg Meta Builds (49.9% popularity, 1,175 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 23.4,
                        totalRankings = 5150,
                        source = "Archon.gg Meta Builds (23.4% popularity, 5,150 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.4,
                        totalRankings = 2755,
                        source = "Archon.gg Meta Builds (34.4% popularity, 2,755 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.5,
                        totalRankings = 3408,
                        source = "Archon.gg Meta Builds (25.5% popularity, 3,408 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 31.8,
                        totalRankings = 4110,
                        source = "Archon.gg Meta Builds (31.8% popularity, 4,110 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.5,
                        totalRankings = 4528,
                        source = "Archon.gg Meta Builds (34.5% popularity, 4,528 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.8,
                        totalRankings = 4759,
                        source = "Archon.gg Meta Builds (5.8% popularity, 4,759 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 33.8,
                        totalRankings = 16784,
                        source = "Archon.gg Meta Builds (33.8% popularity, 16,784 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.9,
                        totalRankings = 1484,
                        source = "Archon.gg Meta Builds (7.9% popularity, 1,484 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 39.4,
                        totalRankings = 7624,
                        source = "Archon.gg Meta Builds (39.4% popularity, 7,624 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.1,
                        totalRankings = 5719,
                        source = "Archon.gg Meta Builds (36.1% popularity, 5,719 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 69.0,
                        totalRankings = 2732,
                        source = "Archon.gg Meta Builds (69.0% popularity, 2,732 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 25.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.2,
                        totalRankings = 2699,
                        source = "Archon.gg Meta Builds (48.2% popularity, 2,699 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 30.8,
                        totalRankings = 9204,
                        source = "Archon.gg Meta Builds (30.8% popularity, 9,204 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 31.3,
                        totalRankings = 1616,
                        source = "Archon.gg Meta Builds (31.3% popularity, 1,616 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 11480,
                        source = "Archon.gg Meta Builds (19.3% popularity, 11,480 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.6,
                        totalRankings = 1059,
                        source = "Archon.gg Meta Builds (22.6% popularity, 1,059 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 36.9,
                        totalRankings = 3593,
                        source = "Archon.gg Meta Builds (36.9% popularity, 3,593 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 31.9,
                        totalRankings = 11747,
                        source = "Archon.gg Meta Builds (31.9% popularity, 11,747 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 29.9,
                        totalRankings = 1270,
                        source = "Archon.gg Meta Builds (29.9% popularity, 1,270 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 39.4,
                        totalRankings = 11738,
                        source = "Archon.gg Meta Builds (39.4% popularity, 11,738 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 22.9,
                        totalRankings = 5859,
                        source = "Archon.gg Meta Builds (22.9% popularity, 5,859 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 93.3,
                        totalRankings = 6440,
                        source = "Archon.gg Meta Builds (93.3% popularity, 6,440 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGGDAAAAAAAAzMzsxMjZAAz2MMjZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 40.4,
                        totalRankings = 882,
                        source = "Archon.gg Meta Builds (40.4% popularity, 882 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 18.2,
                        totalRankings = 1526,
                        source = "Archon.gg Meta Builds (18.2% popularity, 1,526 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNjxMMmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 50.1,
                        totalRankings = 4261,
                        source = "Archon.gg Meta Builds (50.1% popularity, 4,261 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 10.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (10.2% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMMLzsNzsMmZmZmFjxwMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 47.6,
                        totalRankings = 3042,
                        source = "Archon.gg Meta Builds (47.6% popularity, 3,042 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZb2MDzMzMzmNzYbmZm5BmZAAAAAA2CmNDjZG1MmFWmZGjZmBAAAAAAMAAAAAAgZbmlmlZW2AzAwCDG",
                        usage = 17.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.4% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMbGGNZamZWMbzMjxgBAAAAAghZAAAAgmZbWmZWGAALwAwiZGG",
                        usage = 8.4,
                        totalRankings = 826,
                        source = "Archon.gg Meta Builds (8.4% popularity, 826 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbDa2MjpZGDDLzsMzMMMzAAAAAAAADAAAAAY2mZrZZmNbMmBwA0A",
                        usage = 23.2,
                        totalRankings = 2313,
                        source = "Archon.gg Meta Builds (23.2% popularity, 2,313 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZ2mBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 15.4,
                        totalRankings = 2121,
                        source = "Archon.gg Meta Builds (15.4% popularity, 2,121 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 42.4,
                        totalRankings = 1353,
                        source = "Archon.gg Meta Builds (42.4% popularity, 1,353 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 29.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.7% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 54.7,
                        totalRankings = 6465,
                        source = "Archon.gg Meta Builds (54.7% popularity, 6,465 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 37.7,
                        totalRankings = 1357,
                        source = "Archon.gg Meta Builds (37.7% popularity, 1,357 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmhZwwYMzMMmxssMD2AAAAAgBAA",
                        usage = 24.4,
                        totalRankings = 356,
                        source = "Archon.gg Meta Builds (24.4% popularity, 356 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbGjZMzMLwYmhx0MjBAAAAAADAYmZaZ22mBAwGAAAAAAbAYMYmlZZGzMGzwMzMzYGzyYA",
                        usage = 48.0,
                        totalRankings = 5745,
                        source = "Archon.gg Meta Builds (48.0% popularity, 5,745 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 36.9,
                        totalRankings = 773,
                        source = "Archon.gg Meta Builds (36.9% popularity, 773 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbsZMmhZmFDjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsNLAAAwCAAAAAAmNAAAAAAAA",
                        usage = 57.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.2% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.1,
                        totalRankings = 2131,
                        source = "Archon.gg Meta Builds (32.1% popularity, 2,131 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 47.8,
                        totalRankings = 1250,
                        source = "Archon.gg Meta Builds (47.8% popularity, 1,250 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 37.6,
                        totalRankings = 1374,
                        source = "Archon.gg Meta Builds (37.6% popularity, 1,374 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.2,
                        totalRankings = 1856,
                        source = "Archon.gg Meta Builds (33.2% popularity, 1,856 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MmhxYYAAAGAAAAAAASmZWMMDGzMzWbAADAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.5,
                        totalRankings = 1069,
                        source = "Archon.gg Meta Builds (5.5% popularity, 1,069 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 60.5,
                        totalRankings = 3738,
                        source = "Archon.gg Meta Builds (60.5% popularity, 3,738 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmlZZ2GMzMYWYYYGDzyCz0YilZAmZBLEGz2AM2wCAAA",
                        usage = 5.9,
                        totalRankings = 204,
                        source = "Archon.gg Meta Builds (5.9% popularity, 204 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.4,
                        totalRankings = 2687,
                        source = "Archon.gg Meta Builds (56.4% popularity, 2,687 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 38.2,
                        totalRankings = 3131,
                        source = "Archon.gg Meta Builds (38.2% popularity, 3,131 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 80.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (80.9% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 47.0,
                        totalRankings = 464,
                        source = "Archon.gg Meta Builds (47.0% popularity, 464 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 42.7,
                        totalRankings = 1692,
                        source = "Archon.gg Meta Builds (42.7% popularity, 1,692 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.5,
                        totalRankings = 4148,
                        source = "Archon.gg Meta Builds (49.5% popularity, 4,148 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 63.2,
                        totalRankings = 715,
                        source = "Archon.gg Meta Builds (63.2% popularity, 715 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 23.5,
                        totalRankings = 3290,
                        source = "Archon.gg Meta Builds (23.5% popularity, 3,290 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMzyMjxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 31.0,
                        totalRankings = 684,
                        source = "Archon.gg Meta Builds (31.0% popularity, 684 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 35.7,
                        totalRankings = 628,
                        source = "Archon.gg Meta Builds (35.7% popularity, 628 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 57.1,
                        totalRankings = 6240,
                        source = "Archon.gg Meta Builds (57.1% popularity, 6,240 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 30.2,
                        totalRankings = 268,
                        source = "Archon.gg Meta Builds (30.2% popularity, 268 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 53.0,
                        totalRankings = 3810,
                        source = "Archon.gg Meta Builds (53.0% popularity, 3,810 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 27.1,
                        totalRankings = 2215,
                        source = "Archon.gg Meta Builds (27.1% popularity, 2,215 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 81.4,
                        totalRankings = 16127,
                        source = "Archon.gg Meta Builds (81.4% popularity, 16,127 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 27.9,
                        totalRankings = 2216,
                        source = "Archon.gg Meta Builds (27.9% popularity, 2,216 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.9,
                        totalRankings = 3375,
                        source = "Archon.gg Meta Builds (17.9% popularity, 3,375 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                        usage = 17.7,
                        totalRankings = 13412,
                        source = "Archon.gg Meta Builds (17.7% popularity, 13,412 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 25.9,
                        totalRankings = 3145,
                        source = "Archon.gg Meta Builds (25.9% popularity, 3,145 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 80.2,
                        totalRankings = 7259,
                        source = "Archon.gg Meta Builds (80.2% popularity, 7,259 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 57.6,
                        totalRankings = 2762,
                        source = "Archon.gg Meta Builds (57.6% popularity, 2,762 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 13.3,
                        totalRankings = 2680,
                        source = "Archon.gg Meta Builds (13.3% popularity, 2,680 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.2,
                        totalRankings = 9563,
                        source = "Archon.gg Meta Builds (18.2% popularity, 9,563 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 20.0,
                        totalRankings = 3916,
                        source = "Archon.gg Meta Builds (20.0% popularity, 3,916 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 40.5,
                        totalRankings = 2624,
                        source = "Archon.gg Meta Builds (40.5% popularity, 2,624 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.7,
                        totalRankings = 1003,
                        source = "Archon.gg Meta Builds (14.7% popularity, 1,003 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 21.7,
                        totalRankings = 24679,
                        source = "Archon.gg Meta Builds (21.7% popularity, 24,679 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 54.3,
                        totalRankings = 4014,
                        source = "Archon.gg Meta Builds (54.3% popularity, 4,014 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 22.2,
                        totalRankings = 1180,
                        source = "Archon.gg Meta Builds (22.2% popularity, 1,180 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 69.8,
                        totalRankings = 9814,
                        source = "Archon.gg Meta Builds (69.8% popularity, 9,814 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 36.6,
                        totalRankings = 1466,
                        source = "Archon.gg Meta Builds (36.6% popularity, 1,466 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 27.8,
                        totalRankings = 5184,
                        source = "Archon.gg Meta Builds (27.8% popularity, 5,184 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.7,
                        totalRankings = 2938,
                        source = "Archon.gg Meta Builds (31.7% popularity, 2,938 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 30.4,
                        totalRankings = 3692,
                        source = "Archon.gg Meta Builds (30.4% popularity, 3,692 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 19.0,
                        totalRankings = 4383,
                        source = "Archon.gg Meta Builds (19.0% popularity, 4,383 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.7,
                        totalRankings = 4918,
                        source = "Archon.gg Meta Builds (36.7% popularity, 4,918 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 4896,
                        source = "Archon.gg Meta Builds (6.0% popularity, 4,896 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 30.0,
                        totalRankings = 17523,
                        source = "Archon.gg Meta Builds (30.0% popularity, 17,523 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.3,
                        totalRankings = 1560,
                        source = "Archon.gg Meta Builds (6.3% popularity, 1,560 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.0,
                        totalRankings = 8023,
                        source = "Archon.gg Meta Builds (40.0% popularity, 8,023 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 28.2,
                        totalRankings = 5727,
                        source = "Archon.gg Meta Builds (28.2% popularity, 5,727 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 64.4,
                        totalRankings = 2874,
                        source = "Archon.gg Meta Builds (64.4% popularity, 2,874 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 28.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (28.5% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjxy0YGjxMGjZ8AzMzMMmtZxYGbzMjZmZMYsMbDAAAgZGMAGzmhBGYWYhWsBD",
                        usage = 27.1,
                        totalRankings = 2658,
                        source = "Archon.gg Meta Builds (27.1% popularity, 2,658 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.6,
                        totalRankings = 9082,
                        source = "Archon.gg Meta Builds (32.6% popularity, 9,082 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 42.3,
                        totalRankings = 1612,
                        source = "Archon.gg Meta Builds (42.3% popularity, 1,612 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 21.6,
                        totalRankings = 12140,
                        source = "Archon.gg Meta Builds (21.6% popularity, 12,140 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 25.6,
                        totalRankings = 1431,
                        source = "Archon.gg Meta Builds (25.6% popularity, 1,431 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 38.9,
                        totalRankings = 3197,
                        source = "Archon.gg Meta Builds (38.9% popularity, 3,197 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 33.7,
                        totalRankings = 12232,
                        source = "Archon.gg Meta Builds (33.7% popularity, 12,232 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 23.1,
                        totalRankings = 1368,
                        source = "Archon.gg Meta Builds (23.1% popularity, 1,368 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 44.7,
                        totalRankings = 12569,
                        source = "Archon.gg Meta Builds (44.7% popularity, 12,569 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 21.2,
                        totalRankings = 6172,
                        source = "Archon.gg Meta Builds (21.2% popularity, 6,172 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 76.0,
                        totalRankings = 3367,
                        source = "Archon.gg Meta Builds (76.0% popularity, 3,367 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 53.5,
                        totalRankings = 361,
                        source = "Archon.gg Meta Builds (53.5% popularity, 361 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZmxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 30.4,
                        totalRankings = 1024,
                        source = "Archon.gg Meta Builds (30.4% popularity, 1,024 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 41.6,
                        totalRankings = 2453,
                        source = "Archon.gg Meta Builds (41.6% popularity, 2,453 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDzMbzMYsNjZegZMDmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 9.9,
                        totalRankings = 678,
                        source = "Archon.gg Meta Builds (9.9% popularity, 678 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 92.0,
                        totalRankings = 1270,
                        source = "Archon.gg Meta Builds (92.0% popularity, 1,270 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2AzMjaGzyYZmZMMMAAAAAAwAAAAA0MLzyMz2AAWgZmBwCzwA",
                        usage = 68.5,
                        totalRankings = 584,
                        source = "Archon.gg Meta Builds (68.5% popularity, 584 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZYMjZGLegZGmFLDMbwoJamZWmZbmZMmxAAAAAAghxAW2mZDjZbAMBAAAsZMDALGYA",
                        usage = 7.3,
                        totalRankings = 371,
                        source = "Archon.gg Meta Builds (7.3% popularity, 371 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 21.9,
                        totalRankings = 2051,
                        source = "Archon.gg Meta Builds (21.9% popularity, 2,051 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 30.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (30.8% popularity, 1,000 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 40.7,
                        totalRankings = 1599,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,599 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 19.6,
                        totalRankings = 961,
                        source = "Archon.gg Meta Builds (19.6% popularity, 961 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzMMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                        usage = 30.8,
                        totalRankings = 3520,
                        source = "Archon.gg Meta Builds (30.8% popularity, 3,520 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjmZmxwMDMMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 82.2,
                        totalRankings = 1006,
                        source = "Archon.gg Meta Builds (82.2% popularity, 1,006 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGmlhZxMYDAAAAAGAA",
                        usage = 30.4,
                        totalRankings = 112,
                        source = "Archon.gg Meta Builds (30.4% popularity, 112 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 71.7,
                        totalRankings = 2980,
                        source = "Archon.gg Meta Builds (71.7% popularity, 2,980 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMzMzMLeAGzMMNmZMAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 36.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (36.6% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmFDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 59.5,
                        totalRankings = 632,
                        source = "Archon.gg Meta Builds (59.5% popularity, 632 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 29.5,
                        totalRankings = 1431,
                        source = "Archon.gg Meta Builds (29.5% popularity, 1,431 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 83.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (83.1% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 48.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (48.6% popularity, 1,000 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 32.6,
                        totalRankings = 1562,
                        source = "Archon.gg Meta Builds (32.6% popularity, 1,562 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLjZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGzMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (6.0% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 68.8,
                        totalRankings = 1568,
                        source = "Archon.gg Meta Builds (68.8% popularity, 1,568 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMmZMzYMmZGzwsNzMzMzDAAAAAAAAAAAsMLz2gZmBzCDDzYYWYbmGTsMwMDAEgZb22AjNbAAA",
                        usage = 6.1,
                        totalRankings = 231,
                        source = "Archon.gg Meta Builds (6.1% popularity, 231 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 57.0,
                        totalRankings = 2287,
                        source = "Archon.gg Meta Builds (57.0% popularity, 2,287 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 50.6,
                        totalRankings = 1283,
                        source = "Archon.gg Meta Builds (50.6% popularity, 1,283 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 72.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (72.3% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 55.0,
                        totalRankings = 349,
                        source = "Archon.gg Meta Builds (55.0% popularity, 349 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGDbzMzMzMDYsMbDAAAAzgBwY2MMwAzCL0iNMD",
                        usage = 45.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.2% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmBzywsMzMjZGzMbA",
                        usage = 50.4,
                        totalRankings = 1876,
                        source = "Archon.gg Meta Builds (50.4% popularity, 1,876 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAz2kBmlFzMzMmZMzGWmZmGsMWYmBAYMA",
                        usage = 71.8,
                        totalRankings = 252,
                        source = "Archon.gg Meta Builds (71.8% popularity, 252 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 26.9,
                        totalRankings = 2724,
                        source = "Archon.gg Meta Builds (26.9% popularity, 2,724 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 23.9,
                        totalRankings = 683,
                        source = "Archon.gg Meta Builds (23.9% popularity, 683 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 67.3,
                        totalRankings = 165,
                        source = "Archon.gg Meta Builds (67.3% popularity, 165 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 51.6,
                        totalRankings = 3809,
                        source = "Archon.gg Meta Builds (51.6% popularity, 3,809 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWmZGGLjZmxmZmBDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 29.0,
                        totalRankings = 155,
                        source = "Archon.gg Meta Builds (29.0% popularity, 155 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 61.9,
                        totalRankings = 2054,
                        source = "Archon.gg Meta Builds (61.9% popularity, 2,054 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 21.6,
                        totalRankings = 1305,
                        source = "Archon.gg Meta Builds (21.6% popularity, 1,305 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 46.9,
                        totalRankings = 14501,
                        source = "Archon.gg Meta Builds (46.9% popularity, 14,501 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.0,
                        totalRankings = 2269,
                        source = "Archon.gg Meta Builds (70.0% popularity, 2,269 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.3,
                        totalRankings = 3237,
                        source = "Archon.gg Meta Builds (18.3% popularity, 3,237 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 67.8,
                        totalRankings = 11536,
                        source = "Archon.gg Meta Builds (67.8% popularity, 11,536 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 36.9,
                        totalRankings = 2965,
                        source = "Archon.gg Meta Builds (36.9% popularity, 2,965 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 57.0,
                        totalRankings = 6433,
                        source = "Archon.gg Meta Builds (57.0% popularity, 6,433 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 64.9,
                        totalRankings = 2468,
                        source = "Archon.gg Meta Builds (64.9% popularity, 2,468 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 26.7,
                        totalRankings = 2525,
                        source = "Archon.gg Meta Builds (26.7% popularity, 2,525 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.2,
                        totalRankings = 8627,
                        source = "Archon.gg Meta Builds (18.2% popularity, 8,627 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.3,
                        totalRankings = 3524,
                        source = "Archon.gg Meta Builds (24.3% popularity, 3,524 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.7,
                        totalRankings = 2327,
                        source = "Archon.gg Meta Builds (36.7% popularity, 2,327 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.9,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (14.9% popularity, 1,001 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 50.9,
                        totalRankings = 23779,
                        source = "Archon.gg Meta Builds (50.9% popularity, 23,779 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 69.3,
                        totalRankings = 3379,
                        source = "Archon.gg Meta Builds (69.3% popularity, 3,379 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.2,
                        totalRankings = 1029,
                        source = "Archon.gg Meta Builds (57.2% popularity, 1,029 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 73.2,
                        totalRankings = 9239,
                        source = "Archon.gg Meta Builds (73.2% popularity, 9,239 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.5,
                        totalRankings = 1107,
                        source = "Archon.gg Meta Builds (49.5% popularity, 1,107 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 41.2,
                        totalRankings = 4786,
                        source = "Archon.gg Meta Builds (41.2% popularity, 4,786 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.7,
                        totalRankings = 2686,
                        source = "Archon.gg Meta Builds (36.7% popularity, 2,686 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.0,
                        totalRankings = 3272,
                        source = "Archon.gg Meta Builds (25.0% popularity, 3,272 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 64.8,
                        totalRankings = 3845,
                        source = "Archon.gg Meta Builds (64.8% popularity, 3,845 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.2,
                        totalRankings = 4334,
                        source = "Archon.gg Meta Builds (36.2% popularity, 4,334 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.0,
                        totalRankings = 4403,
                        source = "Archon.gg Meta Builds (6.0% popularity, 4,403 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.1,
                        totalRankings = 15267,
                        source = "Archon.gg Meta Builds (71.1% popularity, 15,267 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.4,
                        totalRankings = 1349,
                        source = "Archon.gg Meta Builds (8.4% popularity, 1,349 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 38.5,
                        totalRankings = 7394,
                        source = "Archon.gg Meta Builds (38.5% popularity, 7,394 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 27.7,
                        totalRankings = 5188,
                        source = "Archon.gg Meta Builds (27.7% popularity, 5,188 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 71.9,
                        totalRankings = 3038,
                        source = "Archon.gg Meta Builds (71.9% popularity, 3,038 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 44.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.5% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.9,
                        totalRankings = 2198,
                        source = "Archon.gg Meta Builds (52.9% popularity, 2,198 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.3,
                        totalRankings = 8261,
                        source = "Archon.gg Meta Builds (31.3% popularity, 8,261 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 59.5,
                        totalRankings = 1451,
                        source = "Archon.gg Meta Builds (59.5% popularity, 1,451 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.7,
                        totalRankings = 10873,
                        source = "Archon.gg Meta Builds (19.7% popularity, 10,873 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.7,
                        totalRankings = 1047,
                        source = "Archon.gg Meta Builds (20.7% popularity, 1,047 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 74.7,
                        totalRankings = 3361,
                        source = "Archon.gg Meta Builds (74.7% popularity, 3,361 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 40.9,
                        totalRankings = 10969,
                        source = "Archon.gg Meta Builds (40.9% popularity, 10,969 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.9,
                        totalRankings = 1194,
                        source = "Archon.gg Meta Builds (63.9% popularity, 1,194 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 44.8,
                        totalRankings = 10704,
                        source = "Archon.gg Meta Builds (44.8% popularity, 10,704 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 18.7,
                        totalRankings = 5513,
                        source = "Archon.gg Meta Builds (18.7% popularity, 5,513 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 69.5,
                        totalRankings = 5161,
                        source = "Archon.gg Meta Builds (69.5% popularity, 5,161 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 71.6,
                        totalRankings = 1007,
                        source = "Archon.gg Meta Builds (71.6% popularity, 1,007 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMzMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 29.9,
                        totalRankings = 1430,
                        source = "Archon.gg Meta Builds (29.9% popularity, 1,430 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 83.2,
                        totalRankings = 3903,
                        source = "Archon.gg Meta Builds (83.2% popularity, 3,903 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 24.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (24.9% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 69.5,
                        totalRankings = 2384,
                        source = "Archon.gg Meta Builds (69.5% popularity, 2,384 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 52.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (52.7% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDAMay0MzsMz2MzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCjBgFzgB",
                        usage = 8.9,
                        totalRankings = 749,
                        source = "Archon.gg Meta Builds (8.9% popularity, 749 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 22.4,
                        totalRankings = 2623,
                        source = "Archon.gg Meta Builds (22.4% popularity, 2,623 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 29.6,
                        totalRankings = 1655,
                        source = "Archon.gg Meta Builds (29.6% popularity, 1,655 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.3,
                        totalRankings = 1666,
                        source = "Archon.gg Meta Builds (36.3% popularity, 1,666 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 28.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (28.7% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 71.7,
                        totalRankings = 6314,
                        source = "Archon.gg Meta Builds (71.7% popularity, 6,314 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 86.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (86.8% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 41.5,
                        totalRankings = 270,
                        source = "Archon.gg Meta Builds (41.5% popularity, 270 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 80.6,
                        totalRankings = 5346,
                        source = "Archon.gg Meta Builds (80.6% popularity, 5,346 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 47.0,
                        totalRankings = 825,
                        source = "Archon.gg Meta Builds (47.0% popularity, 825 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 61.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (61.1% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 32.7,
                        totalRankings = 1994,
                        source = "Archon.gg Meta Builds (32.7% popularity, 1,994 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 49.3,
                        totalRankings = 1340,
                        source = "Archon.gg Meta Builds (49.3% popularity, 1,340 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 82.0,
                        totalRankings = 1127,
                        source = "Archon.gg Meta Builds (82.0% popularity, 1,127 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.5,
                        totalRankings = 2010,
                        source = "Archon.gg Meta Builds (35.5% popularity, 2,010 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBDDAAwAAAAAAAQyMzihZGGjZ2CAwAAMD2GAAAAwMzy2SbzMWMwAwMMDjB",
                        usage = 4.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.9% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.6,
                        totalRankings = 3006,
                        source = "Archon.gg Meta Builds (85.6% popularity, 3,006 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgFmZMzMjxMzYGsNzMzMzAAAAAAAAAAAmlZZ2GMzMYWYYYGDzCbz0YilBmZAgAMbz2GYsZDAA",
                        usage = 5.7,
                        totalRankings = 283,
                        source = "Archon.gg Meta Builds (5.7% popularity, 283 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 57.7,
                        totalRankings = 3131,
                        source = "Archon.gg Meta Builds (57.7% popularity, 3,131 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 19.5,
                        totalRankings = 2318,
                        source = "Archon.gg Meta Builds (19.5% popularity, 2,318 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 76.2,
                        totalRankings = 1650,
                        source = "Archon.gg Meta Builds (76.2% popularity, 1,650 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 71.5,
                        totalRankings = 449,
                        source = "Archon.gg Meta Builds (71.5% popularity, 449 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 56.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (56.6% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 54.0,
                        totalRankings = 3478,
                        source = "Archon.gg Meta Builds (54.0% popularity, 3,478 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 73.9,
                        totalRankings = 624,
                        source = "Archon.gg Meta Builds (73.9% popularity, 624 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 24.3,
                        totalRankings = 3624,
                        source = "Archon.gg Meta Builds (24.3% popularity, 3,624 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMbGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 22.8,
                        totalRankings = 557,
                        source = "Archon.gg Meta Builds (22.8% popularity, 557 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 84.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (84.8% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.9,
                        totalRankings = 5482,
                        source = "Archon.gg Meta Builds (55.9% popularity, 5,482 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 65.9,
                        totalRankings = 255,
                        source = "Archon.gg Meta Builds (65.9% popularity, 255 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 41.0,
                        totalRankings = 3378,
                        source = "Archon.gg Meta Builds (41.0% popularity, 3,378 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzshZG",
                        usage = 31.8,
                        totalRankings = 2045,
                        source = "Archon.gg Meta Builds (31.8% popularity, 2,045 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 71.6,
                        totalRankings = 6810,
                        source = "Archon.gg Meta Builds (71.6% popularity, 6,810 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 61.6,
                        totalRankings = 1362,
                        source = "Archon.gg Meta Builds (61.6% popularity, 1,362 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.3,
                        totalRankings = 2358,
                        source = "Archon.gg Meta Builds (16.3% popularity, 2,358 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 54.2,
                        totalRankings = 5979,
                        source = "Archon.gg Meta Builds (54.2% popularity, 5,979 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.0,
                        totalRankings = 1805,
                        source = "Archon.gg Meta Builds (31.0% popularity, 1,805 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 58.1,
                        totalRankings = 3741,
                        source = "Archon.gg Meta Builds (58.1% popularity, 3,741 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 45.3,
                        totalRankings = 1470,
                        source = "Archon.gg Meta Builds (45.3% popularity, 1,470 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.3,
                        totalRankings = 1463,
                        source = "Archon.gg Meta Builds (23.3% popularity, 1,463 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 17.6,
                        totalRankings = 4200,
                        source = "Archon.gg Meta Builds (17.6% popularity, 4,200 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 22.7,
                        totalRankings = 2444,
                        source = "Archon.gg Meta Builds (22.7% popularity, 2,444 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.9,
                        totalRankings = 1571,
                        source = "Archon.gg Meta Builds (36.9% popularity, 1,571 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 14.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.3% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 41.9,
                        totalRankings = 10643,
                        source = "Archon.gg Meta Builds (41.9% popularity, 10,643 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 26.8,
                        totalRankings = 1890,
                        source = "Archon.gg Meta Builds (26.8% popularity, 1,890 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 53.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.9% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 41.5,
                        totalRankings = 5364,
                        source = "Archon.gg Meta Builds (41.5% popularity, 5,364 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 50.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 45.1,
                        totalRankings = 2617,
                        source = "Archon.gg Meta Builds (45.1% popularity, 2,617 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 38.7,
                        totalRankings = 1835,
                        source = "Archon.gg Meta Builds (38.7% popularity, 1,835 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 33.9,
                        totalRankings = 2052,
                        source = "Archon.gg Meta Builds (33.9% popularity, 2,052 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.6,
                        totalRankings = 2332,
                        source = "Archon.gg Meta Builds (53.6% popularity, 2,332 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 38.8,
                        totalRankings = 2656,
                        source = "Archon.gg Meta Builds (38.8% popularity, 2,656 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 6.2,
                        totalRankings = 2531,
                        source = "Archon.gg Meta Builds (6.2% popularity, 2,531 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.4,
                        totalRankings = 8377,
                        source = "Archon.gg Meta Builds (71.4% popularity, 8,377 parses)"
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
                        usage = 41.0,
                        totalRankings = 4469,
                        source = "Archon.gg Meta Builds (41.0% popularity, 4,469 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.5,
                        totalRankings = 3233,
                        source = "Archon.gg Meta Builds (36.5% popularity, 3,233 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 74.2,
                        totalRankings = 1712,
                        source = "Archon.gg Meta Builds (74.2% popularity, 1,712 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 34.2,
                        totalRankings = 920,
                        source = "Archon.gg Meta Builds (34.2% popularity, 920 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 54.3,
                        totalRankings = 1312,
                        source = "Archon.gg Meta Builds (54.3% popularity, 1,312 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 36.3,
                        totalRankings = 4742,
                        source = "Archon.gg Meta Builds (36.3% popularity, 4,742 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 32.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (32.0% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.9,
                        totalRankings = 5466,
                        source = "Archon.gg Meta Builds (19.9% popularity, 5,466 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.5,
                        totalRankings = 1001,
                        source = "Archon.gg Meta Builds (21.5% popularity, 1,001 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.5,
                        totalRankings = 1874,
                        source = "Archon.gg Meta Builds (77.5% popularity, 1,874 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.0,
                        totalRankings = 6697,
                        source = "Archon.gg Meta Builds (41.0% popularity, 6,697 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 46.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.6% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 36.7,
                        totalRankings = 6027,
                        source = "Archon.gg Meta Builds (36.7% popularity, 6,027 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.1,
                        totalRankings = 3145,
                        source = "Archon.gg Meta Builds (25.1% popularity, 3,145 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 97.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (97.5% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.6,
                        totalRankings = 77,
                        source = "Archon.gg Meta Builds (28.6% popularity, 77 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYGGLzYmZmmZMzMGzYAAAAgZmZmZmZmZzMzYAAAjZmZGAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 28.5,
                        totalRankings = 562,
                        source = "Archon.gg Meta Builds (28.5% popularity, 562 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjxMxMzAAAAAAAmNjZbGmZmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 56.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (56.0% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmxYYmZZMMjtZMzDMzMjBjZmZzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 10.3,
                        totalRankings = 107,
                        source = "Archon.gg Meta Builds (10.3% popularity, 107 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDY2GLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 77.9,
                        totalRankings = 798,
                        source = "Archon.gg Meta Builds (77.9% popularity, 798 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsNWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 52.6,
                        totalRankings = 247,
                        source = "Archon.gg Meta Builds (52.6% popularity, 247 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMzMzy8AMmZwYxMMjFLDAMay0MzsMzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 15.1,
                        totalRankings = 53,
                        source = "Archon.gg Meta Builds (15.1% popularity, 53 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMbzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMzMDwAjG",
                        usage = 34.7,
                        totalRankings = 596,
                        source = "Archon.gg Meta Builds (34.7% popularity, 596 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 28.6,
                        totalRankings = 688,
                        source = "Archon.gg Meta Builds (28.6% popularity, 688 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 34.9,
                        totalRankings = 820,
                        source = "Archon.gg Meta Builds (34.9% popularity, 820 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 31.6,
                        totalRankings = 690,
                        source = "Archon.gg Meta Builds (31.6% popularity, 690 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 79.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (79.0% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 60.6,
                        totalRankings = 137,
                        source = "Archon.gg Meta Builds (60.6% popularity, 137 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 50.0,
                        totalRankings = 22,
                        source = "Archon.gg Meta Builds (50.0% popularity, 22 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 38.2,
                        totalRankings = 1004,
                        source = "Archon.gg Meta Builds (38.2% popularity, 1,004 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 56.7,
                        totalRankings = 120,
                        source = "Archon.gg Meta Builds (56.7% popularity, 120 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 73.7,
                        totalRankings = 76,
                        source = "Archon.gg Meta Builds (73.7% popularity, 76 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mxYmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 15.6,
                        totalRankings = 810,
                        source = "Archon.gg Meta Builds (15.6% popularity, 810 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 76.2,
                        totalRankings = 391,
                        source = "Archon.gg Meta Builds (76.2% popularity, 391 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYmhZG2mBAwGAYWmlmZmZBwM",
                        usage = 56.9,
                        totalRankings = 383,
                        source = "Archon.gg Meta Builds (56.9% popularity, 383 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 38.9,
                        totalRankings = 802,
                        source = "Archon.gg Meta Builds (38.9% popularity, 802 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAAAAAAAAQyMzihZmxYY2aDAGDAwMYbAAAAAzMLbLtNzYxADAzwMMG",
                        usage = 19.8,
                        totalRankings = 227,
                        source = "Archon.gg Meta Builds (19.8% popularity, 227 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 86.3,
                        totalRankings = 637,
                        source = "Archon.gg Meta Builds (86.3% popularity, 637 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZMzYMmZGzsNz2MzMzMAAAAAAAAAAAzysMbDmZGMLMmBjBLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 7.9,
                        totalRankings = 38,
                        source = "Archon.gg Meta Builds (7.9% popularity, 38 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 53.3,
                        totalRankings = 696,
                        source = "Archon.gg Meta Builds (53.3% popularity, 696 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 37.4,
                        totalRankings = 909,
                        source = "Archon.gg Meta Builds (37.4% popularity, 909 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.1,
                        totalRankings = 326,
                        source = "Archon.gg Meta Builds (79.1% popularity, 326 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 91.1,
                        totalRankings = 45,
                        source = "Archon.gg Meta Builds (91.1% popularity, 45 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 43.7,
                        totalRankings = 814,
                        source = "Archon.gg Meta Builds (43.7% popularity, 814 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLMz0wYmZbYZmZGMGmlxMjZGzMbA",
                        usage = 58.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.4% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 76.0,
                        totalRankings = 104,
                        source = "Archon.gg Meta Builds (76.0% popularity, 104 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 31.7,
                        totalRankings = 810,
                        source = "Archon.gg Meta Builds (31.7% popularity, 810 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 44.7,
                        totalRankings = 38,
                        source = "Archon.gg Meta Builds (44.7% popularity, 38 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 78.9,
                        totalRankings = 57,
                        source = "Archon.gg Meta Builds (78.9% popularity, 57 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 59.9,
                        totalRankings = 1053,
                        source = "Archon.gg Meta Builds (59.9% popularity, 1,053 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGLDmxmZmBDzwAAAAAAAwDMmlZmZALhx22ALgBMDTgB2A",
                        usage = 72.0,
                        totalRankings = 25,
                        source = "Archon.gg Meta Builds (72.0% popularity, 25 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 60.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (60.6% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 8.7,
                        totalRankings = 669,
                        source = "Archon.gg Meta Builds (8.7% popularity, 669 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 48.7,
                        totalRankings = 5473,
                        source = "Archon.gg Meta Builds (48.7% popularity, 5,473 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 56.5,
                        totalRankings = 1100,
                        source = "Archon.gg Meta Builds (56.5% popularity, 1,100 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.2,
                        totalRankings = 1957,
                        source = "Archon.gg Meta Builds (16.2% popularity, 1,957 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 65.1,
                        totalRankings = 4709,
                        source = "Archon.gg Meta Builds (65.1% popularity, 4,709 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.3,
                        totalRankings = 1348,
                        source = "Archon.gg Meta Builds (32.3% popularity, 1,348 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 60.9,
                        totalRankings = 2747,
                        source = "Archon.gg Meta Builds (60.9% popularity, 2,747 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 65.0,
                        totalRankings = 1072,
                        source = "Archon.gg Meta Builds (65.0% popularity, 1,072 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 24.2,
                        totalRankings = 1006,
                        source = "Archon.gg Meta Builds (24.2% popularity, 1,006 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.1,
                        totalRankings = 3323,
                        source = "Archon.gg Meta Builds (18.1% popularity, 3,323 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 26.9,
                        totalRankings = 1878,
                        source = "Archon.gg Meta Builds (26.9% popularity, 1,878 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.6,
                        totalRankings = 1282,
                        source = "Archon.gg Meta Builds (36.6% popularity, 1,282 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 16.3,
                        totalRankings = 875,
                        source = "Archon.gg Meta Builds (16.3% popularity, 875 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 50.5,
                        totalRankings = 8188,
                        source = "Archon.gg Meta Builds (50.5% popularity, 8,188 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 68.7,
                        totalRankings = 1445,
                        source = "Archon.gg Meta Builds (68.7% popularity, 1,445 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 52.0,
                        totalRankings = 858,
                        source = "Archon.gg Meta Builds (52.0% popularity, 858 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 49.1,
                        totalRankings = 4242,
                        source = "Archon.gg Meta Builds (49.1% popularity, 4,242 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.9,
                        totalRankings = 938,
                        source = "Archon.gg Meta Builds (46.9% popularity, 938 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 48.4,
                        totalRankings = 1985,
                        source = "Archon.gg Meta Builds (48.4% popularity, 1,985 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 39.8,
                        totalRankings = 1445,
                        source = "Archon.gg Meta Builds (39.8% popularity, 1,445 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 36.8,
                        totalRankings = 1671,
                        source = "Archon.gg Meta Builds (36.8% popularity, 1,671 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 57.3,
                        totalRankings = 1786,
                        source = "Archon.gg Meta Builds (57.3% popularity, 1,786 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 42.7,
                        totalRankings = 2041,
                        source = "Archon.gg Meta Builds (42.7% popularity, 2,041 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 9.5,
                        totalRankings = 1797,
                        source = "Archon.gg Meta Builds (9.5% popularity, 1,797 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 78.8,
                        totalRankings = 6372,
                        source = "Archon.gg Meta Builds (78.8% popularity, 6,372 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.3,
                        totalRankings = 937,
                        source = "Archon.gg Meta Builds (7.3% popularity, 937 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.6,
                        totalRankings = 3604,
                        source = "Archon.gg Meta Builds (41.6% popularity, 3,604 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 34.3,
                        totalRankings = 2396,
                        source = "Archon.gg Meta Builds (34.3% popularity, 2,396 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 76.3,
                        totalRankings = 1378,
                        source = "Archon.gg Meta Builds (76.3% popularity, 1,378 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 35.8,
                        totalRankings = 703,
                        source = "Archon.gg Meta Builds (35.8% popularity, 703 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.2,
                        totalRankings = 1046,
                        source = "Archon.gg Meta Builds (58.2% popularity, 1,046 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLmZmGmZGbDLmZGMGmlxMjZGzMbA",
                        usage = 38.4,
                        totalRankings = 3609,
                        source = "Archon.gg Meta Builds (38.4% popularity, 3,609 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 39.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (39.8% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.0,
                        totalRankings = 4386,
                        source = "Archon.gg Meta Builds (19.0% popularity, 4,386 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.2,
                        totalRankings = 970,
                        source = "Archon.gg Meta Builds (23.2% popularity, 970 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 81.0,
                        totalRankings = 1217,
                        source = "Archon.gg Meta Builds (81.0% popularity, 1,217 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 51.4,
                        totalRankings = 5266,
                        source = "Archon.gg Meta Builds (51.4% popularity, 5,266 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 51.6,
                        totalRankings = 1004,
                        source = "Archon.gg Meta Builds (51.6% popularity, 1,004 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 36.5,
                        totalRankings = 4873,
                        source = "Archon.gg Meta Builds (36.5% popularity, 4,873 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 24.8,
                        totalRankings = 2280,
                        source = "Archon.gg Meta Builds (24.8% popularity, 2,280 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 93.7,
                        totalRankings = 883,
                        source = "Archon.gg Meta Builds (93.7% popularity, 883 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYmxYZGzMzMNMmxYGDAAAAAAAAzMzsgZMDAY2mhZmZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 36.0,
                        totalRankings = 25,
                        source = "Archon.gg Meta Builds (36.0% popularity, 25 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMjZGzYmxYZGzMz0MjZMGGDAAAAYmZmZmZmZjZGAAgZMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 8.6,
                        totalRankings = 304,
                        source = "Archon.gg Meta Builds (8.6% popularity, 304 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 76.3,
                        totalRankings = 562,
                        source = "Archon.gg Meta Builds (76.3% popularity, 562 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMjMzMGDzMLjhZsNMzMzMjBjZmZzMz2MDGAAAAglZxMGmNmGYmZwG",
                        usage = 9.1,
                        totalRankings = 22,
                        source = "Archon.gg Meta Builds (9.1% popularity, 22 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 81.5,
                        totalRankings = 249,
                        source = "Archon.gg Meta Builds (81.5% popularity, 249 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 58.4,
                        totalRankings = 77,
                        source = "Archon.gg Meta Builds (58.4% popularity, 77 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 62.5,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (62.5% popularity, 16 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAALGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmxAmNMaA",
                        usage = 23.4,
                        totalRankings = 333,
                        source = "Archon.gg Meta Builds (23.4% popularity, 333 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmtZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 24.3,
                        totalRankings = 477,
                        source = "Archon.gg Meta Builds (24.3% popularity, 477 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 37.1,
                        totalRankings = 501,
                        source = "Archon.gg Meta Builds (37.1% popularity, 501 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 39.3,
                        totalRankings = 201,
                        source = "Archon.gg Meta Builds (39.3% popularity, 201 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 64.3,
                        totalRankings = 676,
                        source = "Archon.gg Meta Builds (64.3% popularity, 676 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDjhZxMjxYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 50.9,
                        totalRankings = 57,
                        source = "Archon.gg Meta Builds (50.9% popularity, 57 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAIjZMzYmZMDGzYMzMwMsYmhNAAAAAYAA",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 66.5,
                        totalRankings = 851,
                        source = "Archon.gg Meta Builds (66.5% popularity, 851 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 59.6,
                        totalRankings = 52,
                        source = "Archon.gg Meta Builds (59.6% popularity, 52 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 25.0,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (25.0% popularity, 12 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 34.5,
                        totalRankings = 368,
                        source = "Archon.gg Meta Builds (34.5% popularity, 368 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswQzMzAzwMYw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 80.7,
                        totalRankings = 181,
                        source = "Archon.gg Meta Builds (80.7% popularity, 181 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBjZYWmZGzMAAAAAAAAAAAYZZY0MzMwMMsww2MzMMbMzws8ATAAsMmZYGmtZAAssMLLz2MzEAAGA",
                        usage = 47.7,
                        totalRankings = 130,
                        source = "Archon.gg Meta Builds (47.7% popularity, 130 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 45.5,
                        totalRankings = 407,
                        source = "Archon.gg Meta Builds (45.5% popularity, 407 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZM2mZmZmxYYAAAAAAAAAAQyMzihZmxYY2aDAGDAwMYbAAAAAzMLbLtNzYxADAzwMMG",
                        usage = 11.3,
                        totalRankings = 62,
                        source = "Archon.gg Meta Builds (11.3% popularity, 62 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 90.1,
                        totalRankings = 192,
                        source = "Archon.gg Meta Builds (90.1% popularity, 192 parses)"
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
                        usage = 34.6,
                        totalRankings = 324,
                        source = "Archon.gg Meta Builds (34.6% popularity, 324 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDzMDAAAAAAAAAAAAjxGMzMLbbjZGzMzMLDmNmZmZMbMAjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 48.5,
                        totalRankings = 328,
                        source = "Archon.gg Meta Builds (48.5% popularity, 328 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 78.7,
                        totalRankings = 108,
                        source = "Archon.gg Meta Builds (78.7% popularity, 108 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAA2WmZGMzMWglZbAAAAYmZADsBzY0Y2AsNwiZA",
                        usage = 100.0,
                        totalRankings = 9,
                        source = "Archon.gg Meta Builds (100.0% popularity, 9 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 54.1,
                        totalRankings = 410,
                        source = "Archon.gg Meta Builds (54.1% popularity, 410 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGYbhZmGGzMbDLzMzYzYYWGzMmZMzsBA",
                        usage = 55.8,
                        totalRankings = 660,
                        source = "Archon.gg Meta Builds (55.8% popularity, 660 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZgtFzMzMMzMz2wyMzEsMMmZAAGD",
                        usage = 77.3,
                        totalRankings = 22,
                        source = "Archon.gg Meta Builds (77.3% popularity, 22 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 37.6,
                        totalRankings = 391,
                        source = "Archon.gg Meta Builds (37.6% popularity, 391 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 50.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (50.0% popularity, 4 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 65.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (65.6% popularity, 1,000 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGGMjNzMDGmhBAAAAAAgHYMLzMzAWCjttBWADYGmAzgNA",
                        usage = 38.5,
                        totalRankings = 13,
                        source = "Archon.gg Meta Builds (38.5% popularity, 13 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 68.2,
                        totalRankings = 406,
                        source = "Archon.gg Meta Builds (68.2% popularity, 406 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhxsZmZZwYMTDLzMDjlBzw2MzghZYAAAAAAglxAAzstBYgNYZxoxMAmNY2gZA",
                        usage = 8.5,
                        totalRankings = 307,
                        source = "Archon.gg Meta Builds (8.5% popularity, 307 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 8.8,
                    totalRankings = 16248,
                    source = "Archon.gg Mythic+ Meta Builds (8.8% popularity, 16,248 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGjxwYmZmZmhZmRzMGjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 73.7,
                    totalRankings = 73795,
                    source = "Archon.gg Mythic+ Meta Builds (73.7% popularity, 73,795 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 59.7,
                    totalRankings = 5908,
                    source = "Archon.gg Mythic+ Meta Builds (59.7% popularity, 5,908 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 50.3,
                    totalRankings = 50508,
                    source = "Archon.gg Mythic+ Meta Builds (50.3% popularity, 50,508 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 41.4,
                    totalRankings = 22549,
                    source = "Archon.gg Mythic+ Meta Builds (41.4% popularity, 22,549 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 70.6,
                    totalRankings = 17781,
                    source = "Archon.gg Mythic+ Meta Builds (70.6% popularity, 17,781 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 62.1,
                    totalRankings = 7721,
                    source = "Archon.gg Mythic+ Meta Builds (62.1% popularity, 7,721 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 22.4,
                    totalRankings = 20072,
                    source = "Archon.gg Mythic+ Meta Builds (22.4% popularity, 20,072 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 6.1,
                    totalRankings = 49273,
                    source = "Archon.gg Mythic+ Meta Builds (6.1% popularity, 49,273 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmJz2YZwMDjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 16.8,
                    totalRankings = 12212,
                    source = "Archon.gg Mythic+ Meta Builds (16.8% popularity, 12,212 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDAAAmZYMjxwMxYGAAAYbmZmmxyMzMGzAAwY2swCMwMM0gxCMA",
                    usage = 34.3,
                    totalRankings = 8411,
                    source = "Archon.gg Mythic+ Meta Builds (34.3% popularity, 8,411 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMbjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 19.0,
                    totalRankings = 3200,
                    source = "Archon.gg Mythic+ Meta Builds (19.0% popularity, 3,200 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzYMzAzMMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                    usage = 22.5,
                    totalRankings = 96159,
                    source = "Archon.gg Mythic+ Meta Builds (22.5% popularity, 96,159 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjMjxwMDzywssMD2GmxYZbzMzMmFzMMmZmlNDLDzM",
                    usage = 40.9,
                    totalRankings = 10389,
                    source = "Archon.gg Mythic+ Meta Builds (40.9% popularity, 10,389 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 37.0,
                    totalRankings = 4773,
                    source = "Archon.gg Mythic+ Meta Builds (37.0% popularity, 4,773 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZYmZBGzMMmmZWmBAAAAAgBAMzMtMbLzAAYDAAAAAgNAMGMzysMjZGjZYmZmZMjZZM",
                    usage = 52.5,
                    totalRankings = 38550,
                    source = "Archon.gg Mythic+ Meta Builds (52.5% popularity, 38,550 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbGMDzMLGeAzMMNmZMzAAAAAAYAAzMTLzyyMAAbmZGMmZMzYWMLjhZmNzsNjtZgBAAAAAAA",
                    usage = 21.0,
                    totalRankings = 3502,
                    source = "Archon.gg Mythic+ Meta Builds (21.0% popularity, 3,502 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsMLAAAwCAAAAAAmNAAAAAAAA",
                    usage = 37.7,
                    totalRankings = 12200,
                    source = "Archon.gg Mythic+ Meta Builds (37.7% popularity, 12,200 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 46.4,
                    totalRankings = 17562,
                    source = "Archon.gg Mythic+ Meta Builds (46.4% popularity, 17,562 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 13.2,
                    totalRankings = 10359,
                    source = "Archon.gg Mythic+ Meta Builds (13.2% popularity, 10,359 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 30.7,
                    totalRankings = 10210,
                    source = "Archon.gg Mythic+ Meta Builds (30.7% popularity, 10,210 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLzMmZZ2mZmlGAAAgFAD2MDMMA",
                    usage = 17.0,
                    totalRankings = 14276,
                    source = "Archon.gg Mythic+ Meta Builds (17.0% popularity, 14,276 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMzMzMLbzMzYmtxwAAAMAAAAAAA0WzMzihZGGzwWbAADMAAbDAAAAYmZbbptZGLMYAYwMMG",
                    usage = 10.0,
                    totalRankings = 51551,
                    source = "Archon.gg Mythic+ Meta Builds (10.0% popularity, 51,551 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 30.7,
                    totalRankings = 48189,
                    source = "Archon.gg Mythic+ Meta Builds (30.7% popularity, 48,189 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                    usage = 20.3,
                    totalRankings = 24783,
                    source = "Archon.gg Mythic+ Meta Builds (20.3% popularity, 24,783 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 16.4,
                    totalRankings = 9186,
                    source = "Archon.gg Mythic+ Meta Builds (16.4% popularity, 9,186 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 30.6,
                    totalRankings = 12908,
                    source = "Archon.gg Mythic+ Meta Builds (30.6% popularity, 12,908 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 77.9,
                    totalRankings = 5766,
                    source = "Archon.gg Mythic+ Meta Builds (77.9% popularity, 5,766 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZmhZmZmWmxsNDAAAAAA2WmZGMzYWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 46.1,
                    totalRankings = 3837,
                    source = "Archon.gg Mythic+ Meta Builds (46.1% popularity, 3,837 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 44.6,
                    totalRankings = 9859,
                    source = "Archon.gg Mythic+ Meta Builds (44.6% popularity, 9,859 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsNNDYDzMNMzMz2MWmxMYWGLWmZMYYmtBA",
                    usage = 36.0,
                    totalRankings = 32247,
                    source = "Archon.gg Mythic+ Meta Builds (36.0% popularity, 32,247 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBswMzMDzYmtZsMzMZhlxyYmBAYMA",
                    usage = 36.3,
                    totalRankings = 5494,
                    source = "Archon.gg Mythic+ Meta Builds (36.3% popularity, 5,494 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 23.0,
                    totalRankings = 67357,
                    source = "Archon.gg Mythic+ Meta Builds (23.0% popularity, 67,357 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMbglZAAAAAAAAwMsA",
                    usage = 28.6,
                    totalRankings = 2468,
                    source = "Archon.gg Mythic+ Meta Builds (28.6% popularity, 2,468 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 47.6,
                    totalRankings = 13893,
                    source = "Archon.gg Mythic+ Meta Builds (47.6% popularity, 13,893 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 10.1,
                    totalRankings = 29473,
                    source = "Archon.gg Mythic+ Meta Builds (10.1% popularity, 29,473 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                    usage = 26.5,
                    totalRankings = 2362,
                    source = "Archon.gg Mythic+ Meta Builds (26.5% popularity, 2,362 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                    usage = 44.4,
                    totalRankings = 35428,
                    source = "Archon.gg Mythic+ Meta Builds (44.4% popularity, 35,428 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAAwYGzMzMzMmNjZZwYMaMLjZYsMmZG2mZGzADDAAAAAAsMGAYGbAGYDWWMaMDgZBmNYmB",
                    usage = 23.0,
                    totalRankings = 55716,
                    source = "Archon.gg Mythic+ Meta Builds (23.0% popularity, 55,716 parses)"
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
