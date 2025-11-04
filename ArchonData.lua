-- Archon Talents Data File
-- Generated: 2025-11-04 08:09:49 UTC
-- Version: 1762265389
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1762265389
    local lastUpdated = "2025-11-04 08:09:49 UTC"
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
                        usage = 47.8,
                        totalRankings = 12617,
                        source = "Archon.gg Meta Builds (47.8% popularity, 12,617 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 71.3,
                        totalRankings = 2169,
                        source = "Archon.gg Meta Builds (71.3% popularity, 2,169 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 15.7,
                        totalRankings = 3201,
                        source = "Archon.gg Meta Builds (15.7% popularity, 3,201 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 69.0,
                        totalRankings = 11036,
                        source = "Archon.gg Meta Builds (69.0% popularity, 11,036 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 39.2,
                        totalRankings = 2755,
                        source = "Archon.gg Meta Builds (39.2% popularity, 2,755 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 59.7,
                        totalRankings = 6404,
                        source = "Archon.gg Meta Builds (59.7% popularity, 6,404 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 58.9,
                        totalRankings = 2460,
                        source = "Archon.gg Meta Builds (58.9% popularity, 2,460 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 24.8,
                        totalRankings = 2498,
                        source = "Archon.gg Meta Builds (24.8% popularity, 2,498 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 14.8,
                        totalRankings = 7895,
                        source = "Archon.gg Meta Builds (14.8% popularity, 7,895 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 23.6,
                        totalRankings = 3499,
                        source = "Archon.gg Meta Builds (23.6% popularity, 3,499 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.8,
                        totalRankings = 2185,
                        source = "Archon.gg Meta Builds (38.8% popularity, 2,185 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 21.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 56.4,
                        totalRankings = 21345,
                        source = "Archon.gg Meta Builds (56.4% popularity, 21,345 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.7,
                        totalRankings = 3044,
                        source = "Archon.gg Meta Builds (67.7% popularity, 3,044 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 59.3,
                        totalRankings = 1058,
                        source = "Archon.gg Meta Builds (59.3% popularity, 1,058 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 71.2,
                        totalRankings = 8113,
                        source = "Archon.gg Meta Builds (71.2% popularity, 8,113 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 51.5,
                        totalRankings = 1150,
                        source = "Archon.gg Meta Builds (51.5% popularity, 1,150 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 39.3,
                        totalRankings = 4622,
                        source = "Archon.gg Meta Builds (39.3% popularity, 4,622 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.7,
                        totalRankings = 2381,
                        source = "Archon.gg Meta Builds (34.7% popularity, 2,381 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.2,
                        totalRankings = 3212,
                        source = "Archon.gg Meta Builds (27.2% popularity, 3,212 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 61.3,
                        totalRankings = 3646,
                        source = "Archon.gg Meta Builds (61.3% popularity, 3,646 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.4,
                        totalRankings = 4126,
                        source = "Archon.gg Meta Builds (37.4% popularity, 4,126 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.3,
                        totalRankings = 4051,
                        source = "Archon.gg Meta Builds (6.3% popularity, 4,051 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 73.9,
                        totalRankings = 15245,
                        source = "Archon.gg Meta Builds (73.9% popularity, 15,245 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.5,
                        totalRankings = 1568,
                        source = "Archon.gg Meta Builds (8.5% popularity, 1,568 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.3,
                        totalRankings = 6853,
                        source = "Archon.gg Meta Builds (40.3% popularity, 6,853 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 24.2,
                        totalRankings = 5063,
                        source = "Archon.gg Meta Builds (24.2% popularity, 5,063 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 71.4,
                        totalRankings = 2955,
                        source = "Archon.gg Meta Builds (71.4% popularity, 2,955 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 40.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.7% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 56.0,
                        totalRankings = 1899,
                        source = "Archon.gg Meta Builds (56.0% popularity, 1,899 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.5,
                        totalRankings = 8191,
                        source = "Archon.gg Meta Builds (32.5% popularity, 8,191 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 59.7,
                        totalRankings = 1464,
                        source = "Archon.gg Meta Builds (59.7% popularity, 1,464 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.4,
                        totalRankings = 9891,
                        source = "Archon.gg Meta Builds (17.4% popularity, 9,891 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.2,
                        totalRankings = 1117,
                        source = "Archon.gg Meta Builds (19.2% popularity, 1,117 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.1,
                        totalRankings = 3165,
                        source = "Archon.gg Meta Builds (77.1% popularity, 3,165 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 34.7,
                        totalRankings = 10846,
                        source = "Archon.gg Meta Builds (34.7% popularity, 10,846 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 65.0,
                        totalRankings = 1226,
                        source = "Archon.gg Meta Builds (65.0% popularity, 1,226 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 46.1,
                        totalRankings = 10473,
                        source = "Archon.gg Meta Builds (46.1% popularity, 10,473 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 19.5,
                        totalRankings = 5081,
                        source = "Archon.gg Meta Builds (19.5% popularity, 5,081 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 62.3,
                        totalRankings = 14918,
                        source = "Archon.gg Meta Builds (62.3% popularity, 14,918 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 69.9,
                        totalRankings = 1684,
                        source = "Archon.gg Meta Builds (69.9% popularity, 1,684 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.7,
                        totalRankings = 2607,
                        source = "Archon.gg Meta Builds (16.7% popularity, 2,607 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 80.1,
                        totalRankings = 9947,
                        source = "Archon.gg Meta Builds (80.1% popularity, 9,947 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 38.1,
                        totalRankings = 2231,
                        source = "Archon.gg Meta Builds (38.1% popularity, 2,231 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 65.1,
                        totalRankings = 5205,
                        source = "Archon.gg Meta Builds (65.1% popularity, 5,205 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 43.7,
                        totalRankings = 1557,
                        source = "Archon.gg Meta Builds (43.7% popularity, 1,557 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 16.6,
                        totalRankings = 1516,
                        source = "Archon.gg Meta Builds (16.6% popularity, 1,516 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 15.1,
                        totalRankings = 7761,
                        source = "Archon.gg Meta Builds (15.1% popularity, 7,761 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.6,
                        totalRankings = 2992,
                        source = "Archon.gg Meta Builds (24.6% popularity, 2,992 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 37.4,
                        totalRankings = 2631,
                        source = "Archon.gg Meta Builds (37.4% popularity, 2,631 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 35.1,
                        totalRankings = 1056,
                        source = "Archon.gg Meta Builds (35.1% popularity, 1,056 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 65.4,
                        totalRankings = 17900,
                        source = "Archon.gg Meta Builds (65.4% popularity, 17,900 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 79.8,
                        totalRankings = 1969,
                        source = "Archon.gg Meta Builds (79.8% popularity, 1,969 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 48.3,
                        totalRankings = 963,
                        source = "Archon.gg Meta Builds (48.3% popularity, 963 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 77.2,
                        totalRankings = 10219,
                        source = "Archon.gg Meta Builds (77.2% popularity, 10,219 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 50.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.5% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 54.0,
                        totalRankings = 2790,
                        source = "Archon.gg Meta Builds (54.0% popularity, 2,790 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 29.8,
                        totalRankings = 3321,
                        source = "Archon.gg Meta Builds (29.8% popularity, 3,321 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 39.0,
                        totalRankings = 2619,
                        source = "Archon.gg Meta Builds (39.0% popularity, 2,619 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 74.4,
                        totalRankings = 2478,
                        source = "Archon.gg Meta Builds (74.4% popularity, 2,478 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.8,
                        totalRankings = 3930,
                        source = "Archon.gg Meta Builds (35.8% popularity, 3,930 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MmxMYYAAAGAAAAAAAarZmZzwMYMjZrNAgBAYGsNAAAAgZmtllWmZsYGMAAzwYA",
                        usage = 4.5,
                        totalRankings = 3167,
                        source = "Archon.gg Meta Builds (4.5% popularity, 3,167 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 80.2,
                        totalRankings = 11435,
                        source = "Archon.gg Meta Builds (80.2% popularity, 11,435 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 5.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (5.7% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 49.4,
                        totalRankings = 7315,
                        source = "Archon.gg Meta Builds (49.4% popularity, 7,315 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 22.6,
                        totalRankings = 4149,
                        source = "Archon.gg Meta Builds (22.6% popularity, 4,149 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.4,
                        totalRankings = 2989,
                        source = "Archon.gg Meta Builds (69.4% popularity, 2,989 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 57.4,
                        totalRankings = 980,
                        source = "Archon.gg Meta Builds (57.4% popularity, 980 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 54.4,
                        totalRankings = 1526,
                        source = "Archon.gg Meta Builds (54.4% popularity, 1,526 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 45.0,
                        totalRankings = 7074,
                        source = "Archon.gg Meta Builds (45.0% popularity, 7,074 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 69.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (69.6% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 17.9,
                        totalRankings = 10575,
                        source = "Archon.gg Meta Builds (17.9% popularity, 10,575 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.8,
                        totalRankings = 963,
                        source = "Archon.gg Meta Builds (22.8% popularity, 963 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 78.4,
                        totalRankings = 1921,
                        source = "Archon.gg Meta Builds (78.4% popularity, 1,921 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 45.4,
                        totalRankings = 10699,
                        source = "Archon.gg Meta Builds (45.4% popularity, 10,699 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 61.2,
                        totalRankings = 957,
                        source = "Archon.gg Meta Builds (61.2% popularity, 957 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 39.3,
                        totalRankings = 9140,
                        source = "Archon.gg Meta Builds (39.3% popularity, 9,140 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 20.7,
                        totalRankings = 5221,
                        source = "Archon.gg Meta Builds (20.7% popularity, 5,221 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 47.0,
                        totalRankings = 12842,
                        source = "Archon.gg Meta Builds (47.0% popularity, 12,842 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 71.7,
                        totalRankings = 2228,
                        source = "Archon.gg Meta Builds (71.7% popularity, 2,228 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.3,
                        totalRankings = 3195,
                        source = "Archon.gg Meta Builds (18.3% popularity, 3,195 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 68.5,
                        totalRankings = 11276,
                        source = "Archon.gg Meta Builds (68.5% popularity, 11,276 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 37.5,
                        totalRankings = 2810,
                        source = "Archon.gg Meta Builds (37.5% popularity, 2,810 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 59.9,
                        totalRankings = 6584,
                        source = "Archon.gg Meta Builds (59.9% popularity, 6,584 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 58.0,
                        totalRankings = 2509,
                        source = "Archon.gg Meta Builds (58.0% popularity, 2,509 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 26.4,
                        totalRankings = 2541,
                        source = "Archon.gg Meta Builds (26.4% popularity, 2,541 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 15.8,
                        totalRankings = 8057,
                        source = "Archon.gg Meta Builds (15.8% popularity, 8,057 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 18.4,
                        totalRankings = 3540,
                        source = "Archon.gg Meta Builds (18.4% popularity, 3,540 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.5,
                        totalRankings = 2152,
                        source = "Archon.gg Meta Builds (39.5% popularity, 2,152 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 21.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.1% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 56.1,
                        totalRankings = 21973,
                        source = "Archon.gg Meta Builds (56.1% popularity, 21,973 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 69.3,
                        totalRankings = 3026,
                        source = "Archon.gg Meta Builds (69.3% popularity, 3,026 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 61.4,
                        totalRankings = 1075,
                        source = "Archon.gg Meta Builds (61.4% popularity, 1,075 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 72.4,
                        totalRankings = 8297,
                        source = "Archon.gg Meta Builds (72.4% popularity, 8,297 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 48.7,
                        totalRankings = 1150,
                        source = "Archon.gg Meta Builds (48.7% popularity, 1,150 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 40.3,
                        totalRankings = 4697,
                        source = "Archon.gg Meta Builds (40.3% popularity, 4,697 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 35.4,
                        totalRankings = 2389,
                        source = "Archon.gg Meta Builds (35.4% popularity, 2,389 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 27.2,
                        totalRankings = 3273,
                        source = "Archon.gg Meta Builds (27.2% popularity, 3,273 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 63.8,
                        totalRankings = 3728,
                        source = "Archon.gg Meta Builds (63.8% popularity, 3,728 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.5,
                        totalRankings = 4168,
                        source = "Archon.gg Meta Builds (37.5% popularity, 4,168 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.6,
                        totalRankings = 4100,
                        source = "Archon.gg Meta Builds (6.6% popularity, 4,100 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 74.0,
                        totalRankings = 15600,
                        source = "Archon.gg Meta Builds (74.0% popularity, 15,600 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.4,
                        totalRankings = 1533,
                        source = "Archon.gg Meta Builds (7.4% popularity, 1,533 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 42.8,
                        totalRankings = 6917,
                        source = "Archon.gg Meta Builds (42.8% popularity, 6,917 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 39.5,
                        totalRankings = 5190,
                        source = "Archon.gg Meta Builds (39.5% popularity, 5,190 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 71.9,
                        totalRankings = 2990,
                        source = "Archon.gg Meta Builds (71.9% popularity, 2,990 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 42.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (42.0% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 58.2,
                        totalRankings = 1910,
                        source = "Archon.gg Meta Builds (58.2% popularity, 1,910 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.9,
                        totalRankings = 8458,
                        source = "Archon.gg Meta Builds (31.9% popularity, 8,458 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 62.7,
                        totalRankings = 1505,
                        source = "Archon.gg Meta Builds (62.7% popularity, 1,505 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.9,
                        totalRankings = 10148,
                        source = "Archon.gg Meta Builds (18.9% popularity, 10,148 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.8,
                        totalRankings = 1114,
                        source = "Archon.gg Meta Builds (20.8% popularity, 1,114 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.8,
                        totalRankings = 3122,
                        source = "Archon.gg Meta Builds (76.8% popularity, 3,122 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 38.8,
                        totalRankings = 11097,
                        source = "Archon.gg Meta Builds (38.8% popularity, 11,097 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 63.8,
                        totalRankings = 1264,
                        source = "Archon.gg Meta Builds (63.8% popularity, 1,264 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 45.5,
                        totalRankings = 10743,
                        source = "Archon.gg Meta Builds (45.5% popularity, 10,743 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 21.9,
                        totalRankings = 5187,
                        source = "Archon.gg Meta Builds (21.9% popularity, 5,187 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 64.3,
                        totalRankings = 9432,
                        source = "Archon.gg Meta Builds (64.3% popularity, 9,432 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 73.9,
                        totalRankings = 1063,
                        source = "Archon.gg Meta Builds (73.9% popularity, 1,063 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 20.0,
                        totalRankings = 2009,
                        source = "Archon.gg Meta Builds (20.0% popularity, 2,009 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 80.5,
                        totalRankings = 6294,
                        source = "Archon.gg Meta Builds (80.5% popularity, 6,294 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 37.5,
                        totalRankings = 1260,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,260 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 68.0,
                        totalRankings = 3646,
                        source = "Archon.gg Meta Builds (68.0% popularity, 3,646 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBmZZmZMzsNbjx2MmxMzAAAAAAsFMbwYmRNjZhlZmxYGzAAAAAAADMAAAAAAz2MLNLzssBmBgFzgB",
                        usage = 44.5,
                        totalRankings = 1025,
                        source = "Archon.gg Meta Builds (44.5% popularity, 1,025 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 14.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.6% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 17.5,
                        totalRankings = 4554,
                        source = "Archon.gg Meta Builds (17.5% popularity, 4,554 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 20.0,
                        totalRankings = 2176,
                        source = "Archon.gg Meta Builds (20.0% popularity, 2,176 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.4,
                        totalRankings = 2032,
                        source = "Archon.gg Meta Builds (38.4% popularity, 2,032 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 36.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (36.1% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 69.0,
                        totalRankings = 11527,
                        source = "Archon.gg Meta Builds (69.0% popularity, 11,527 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 82.3,
                        totalRankings = 1288,
                        source = "Archon.gg Meta Builds (82.3% popularity, 1,288 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 45.5,
                        totalRankings = 506,
                        source = "Archon.gg Meta Builds (45.5% popularity, 506 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 76.5,
                        totalRankings = 7282,
                        source = "Archon.gg Meta Builds (76.5% popularity, 7,282 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 49.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (49.7% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsYwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 61.5,
                        totalRankings = 1419,
                        source = "Archon.gg Meta Builds (61.5% popularity, 1,419 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 30.4,
                        totalRankings = 2675,
                        source = "Archon.gg Meta Builds (30.4% popularity, 2,675 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 47.2,
                        totalRankings = 1773,
                        source = "Archon.gg Meta Builds (47.2% popularity, 1,773 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 77.7,
                        totalRankings = 1705,
                        source = "Archon.gg Meta Builds (77.7% popularity, 1,705 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.1,
                        totalRankings = 2791,
                        source = "Archon.gg Meta Builds (37.1% popularity, 2,791 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.3,
                        totalRankings = 1818,
                        source = "Archon.gg Meta Builds (5.3% popularity, 1,818 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 84.4,
                        totalRankings = 6614,
                        source = "Archon.gg Meta Builds (84.4% popularity, 6,614 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 6.3,
                        totalRankings = 489,
                        source = "Archon.gg Meta Builds (6.3% popularity, 489 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 55.0,
                        totalRankings = 4856,
                        source = "Archon.gg Meta Builds (55.0% popularity, 4,856 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 45.5,
                        totalRankings = 3111,
                        source = "Archon.gg Meta Builds (45.5% popularity, 3,111 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 69.9,
                        totalRankings = 2220,
                        source = "Archon.gg Meta Builds (69.9% popularity, 2,220 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 63.8,
                        totalRankings = 639,
                        source = "Archon.gg Meta Builds (63.8% popularity, 639 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 55.2,
                        totalRankings = 1087,
                        source = "Archon.gg Meta Builds (55.2% popularity, 1,087 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 48.7,
                        totalRankings = 5234,
                        source = "Archon.gg Meta Builds (48.7% popularity, 5,234 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 68.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (68.1% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.3,
                        totalRankings = 6157,
                        source = "Archon.gg Meta Builds (19.3% popularity, 6,157 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.3,
                        totalRankings = 475,
                        source = "Archon.gg Meta Builds (22.3% popularity, 475 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (80.0% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.8,
                        totalRankings = 8358,
                        source = "Archon.gg Meta Builds (55.8% popularity, 8,358 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 61.8,
                        totalRankings = 544,
                        source = "Archon.gg Meta Builds (61.8% popularity, 544 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 39.2,
                        totalRankings = 5720,
                        source = "Archon.gg Meta Builds (39.2% popularity, 5,720 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.8,
                        totalRankings = 3418,
                        source = "Archon.gg Meta Builds (25.8% popularity, 3,418 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 80.1,
                        totalRankings = 12577,
                        source = "Archon.gg Meta Builds (80.1% popularity, 12,577 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 28.8,
                        totalRankings = 2068,
                        source = "Archon.gg Meta Builds (28.8% popularity, 2,068 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 16.5,
                        totalRankings = 3140,
                        source = "Archon.gg Meta Builds (16.5% popularity, 3,140 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 37.6,
                        totalRankings = 10893,
                        source = "Archon.gg Meta Builds (37.6% popularity, 10,893 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.1,
                        totalRankings = 2759,
                        source = "Archon.gg Meta Builds (32.1% popularity, 2,759 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 46.3,
                        totalRankings = 6405,
                        source = "Archon.gg Meta Builds (46.3% popularity, 6,405 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 20.4,
                        totalRankings = 2419,
                        source = "Archon.gg Meta Builds (20.4% popularity, 2,419 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.0,
                        totalRankings = 2473,
                        source = "Archon.gg Meta Builds (18.0% popularity, 2,473 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 15.3,
                        totalRankings = 7836,
                        source = "Archon.gg Meta Builds (15.3% popularity, 7,836 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 15.3,
                        totalRankings = 3458,
                        source = "Archon.gg Meta Builds (15.3% popularity, 3,458 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.8,
                        totalRankings = 2101,
                        source = "Archon.gg Meta Builds (38.8% popularity, 2,101 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 20.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (20.6% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 36.2,
                        totalRankings = 21483,
                        source = "Archon.gg Meta Builds (36.2% popularity, 21,483 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 31.7,
                        totalRankings = 2933,
                        source = "Archon.gg Meta Builds (31.7% popularity, 2,933 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 31.4,
                        totalRankings = 1055,
                        source = "Archon.gg Meta Builds (31.4% popularity, 1,055 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 55.0,
                        totalRankings = 7956,
                        source = "Archon.gg Meta Builds (55.0% popularity, 7,956 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 48.4,
                        totalRankings = 1125,
                        source = "Archon.gg Meta Builds (48.4% popularity, 1,125 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 22.2,
                        totalRankings = 4661,
                        source = "Archon.gg Meta Builds (22.2% popularity, 4,661 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.2,
                        totalRankings = 2346,
                        source = "Archon.gg Meta Builds (34.2% popularity, 2,346 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.3,
                        totalRankings = 3152,
                        source = "Archon.gg Meta Builds (25.3% popularity, 3,152 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 34.0,
                        totalRankings = 3629,
                        source = "Archon.gg Meta Builds (34.0% popularity, 3,629 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.8,
                        totalRankings = 4024,
                        source = "Archon.gg Meta Builds (37.8% popularity, 4,024 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 7.5,
                        totalRankings = 3979,
                        source = "Archon.gg Meta Builds (7.5% popularity, 3,979 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 37.0,
                        totalRankings = 15222,
                        source = "Archon.gg Meta Builds (37.0% popularity, 15,222 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.4,
                        totalRankings = 1477,
                        source = "Archon.gg Meta Builds (7.4% popularity, 1,477 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 42.3,
                        totalRankings = 6851,
                        source = "Archon.gg Meta Builds (42.3% popularity, 6,851 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 36.5,
                        totalRankings = 5047,
                        source = "Archon.gg Meta Builds (36.5% popularity, 5,047 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 60.4,
                        totalRankings = 2650,
                        source = "Archon.gg Meta Builds (60.4% popularity, 2,650 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 23.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (23.5% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.8,
                        totalRankings = 2096,
                        source = "Archon.gg Meta Builds (50.8% popularity, 2,096 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 23.1,
                        totalRankings = 8219,
                        source = "Archon.gg Meta Builds (23.1% popularity, 8,219 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 30.2,
                        totalRankings = 1473,
                        source = "Archon.gg Meta Builds (30.2% popularity, 1,473 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.0,
                        totalRankings = 9712,
                        source = "Archon.gg Meta Builds (19.0% popularity, 9,712 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 18.1,
                        totalRankings = 1023,
                        source = "Archon.gg Meta Builds (18.1% popularity, 1,023 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 34.9,
                        totalRankings = 3374,
                        source = "Archon.gg Meta Builds (34.9% popularity, 3,374 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 30.1,
                        totalRankings = 10595,
                        source = "Archon.gg Meta Builds (30.1% popularity, 10,595 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 28.7,
                        totalRankings = 1218,
                        source = "Archon.gg Meta Builds (28.7% popularity, 1,218 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 43.4,
                        totalRankings = 10430,
                        source = "Archon.gg Meta Builds (43.4% popularity, 10,430 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 23.6,
                        totalRankings = 5041,
                        source = "Archon.gg Meta Builds (23.6% popularity, 5,041 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 88.7,
                        totalRankings = 15329,
                        source = "Archon.gg Meta Builds (88.7% popularity, 15,329 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                        usage = 32.0,
                        totalRankings = 1244,
                        source = "Archon.gg Meta Builds (32.0% popularity, 1,244 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.6,
                        totalRankings = 2626,
                        source = "Archon.gg Meta Builds (17.6% popularity, 2,626 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMzMxMzAAAAAAAmNjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                        usage = 27.0,
                        totalRankings = 9993,
                        source = "Archon.gg Meta Builds (27.0% popularity, 9,993 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 21.5,
                        totalRankings = 2227,
                        source = "Archon.gg Meta Builds (21.5% popularity, 2,227 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 34.8,
                        totalRankings = 5195,
                        source = "Archon.gg Meta Builds (34.8% popularity, 5,195 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZjZmFzMzMzmNGbzMzMPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 19.1,
                        totalRankings = 1542,
                        source = "Archon.gg Meta Builds (19.1% popularity, 1,542 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 10.3,
                        totalRankings = 1513,
                        source = "Archon.gg Meta Builds (10.3% popularity, 1,513 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 14.9,
                        totalRankings = 7814,
                        source = "Archon.gg Meta Builds (14.9% popularity, 7,814 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZWmBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 14.5,
                        totalRankings = 2992,
                        source = "Archon.gg Meta Builds (14.5% popularity, 2,992 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 37.6,
                        totalRankings = 2640,
                        source = "Archon.gg Meta Builds (37.6% popularity, 2,640 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 33.4,
                        totalRankings = 1059,
                        source = "Archon.gg Meta Builds (33.4% popularity, 1,059 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 45.4,
                        totalRankings = 17920,
                        source = "Archon.gg Meta Builds (45.4% popularity, 17,920 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzgthZGz22mZmZMLmZYMzYZzwywMD",
                        usage = 52.4,
                        totalRankings = 2060,
                        source = "Archon.gg Meta Builds (52.4% popularity, 2,060 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 17.2,
                        totalRankings = 992,
                        source = "Archon.gg Meta Builds (17.2% popularity, 992 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 71.2,
                        totalRankings = 10343,
                        source = "Archon.gg Meta Builds (71.2% popularity, 10,343 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.8% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 37.9,
                        totalRankings = 2863,
                        source = "Archon.gg Meta Builds (37.9% popularity, 2,863 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 29.7,
                        totalRankings = 3363,
                        source = "Archon.gg Meta Builds (29.7% popularity, 3,363 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 37.5,
                        totalRankings = 2635,
                        source = "Archon.gg Meta Builds (37.5% popularity, 2,635 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 25.1,
                        totalRankings = 2484,
                        source = "Archon.gg Meta Builds (25.1% popularity, 2,484 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 36.6,
                        totalRankings = 3923,
                        source = "Archon.gg Meta Builds (36.6% popularity, 3,923 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.4,
                        totalRankings = 3171,
                        source = "Archon.gg Meta Builds (5.4% popularity, 3,171 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 14.8,
                        totalRankings = 11465,
                        source = "Archon.gg Meta Builds (14.8% popularity, 11,465 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 8.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (8.1% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 51.4,
                        totalRankings = 7353,
                        source = "Archon.gg Meta Builds (51.4% popularity, 7,353 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 34.3,
                        totalRankings = 4178,
                        source = "Archon.gg Meta Builds (34.3% popularity, 4,178 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 62.6,
                        totalRankings = 2197,
                        source = "Archon.gg Meta Builds (62.6% popularity, 2,197 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMz2MYMzYmZmZYGegxMzMMzMz0yMmtZAAAAAAw2yYGMzwCsMbDAAAAzMDAGzmhBGYWYhWYzMA",
                        usage = 26.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.9% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 48.2,
                        totalRankings = 2295,
                        source = "Archon.gg Meta Builds (48.2% popularity, 2,295 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 28.0,
                        totalRankings = 7104,
                        source = "Archon.gg Meta Builds (28.0% popularity, 7,104 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 50.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.3% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 21.3,
                        totalRankings = 10603,
                        source = "Archon.gg Meta Builds (21.3% popularity, 10,603 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.5,
                        totalRankings = 774,
                        source = "Archon.gg Meta Builds (22.5% popularity, 774 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 34.7,
                        totalRankings = 2426,
                        source = "Archon.gg Meta Builds (34.7% popularity, 2,426 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 34.6,
                        totalRankings = 10397,
                        source = "Archon.gg Meta Builds (34.6% popularity, 10,397 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 21.1,
                        totalRankings = 927,
                        source = "Archon.gg Meta Builds (21.1% popularity, 927 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 48.7,
                        totalRankings = 9195,
                        source = "Archon.gg Meta Builds (48.7% popularity, 9,195 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 27.9,
                        totalRankings = 5278,
                        source = "Archon.gg Meta Builds (27.9% popularity, 5,278 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 79.2,
                        totalRankings = 12491,
                        source = "Archon.gg Meta Builds (79.2% popularity, 12,491 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 37.6,
                        totalRankings = 2013,
                        source = "Archon.gg Meta Builds (37.6% popularity, 2,013 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 15.6,
                        totalRankings = 3064,
                        source = "Archon.gg Meta Builds (15.6% popularity, 3,064 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 32.1,
                        totalRankings = 10871,
                        source = "Archon.gg Meta Builds (32.1% popularity, 10,871 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 31.0,
                        totalRankings = 2697,
                        source = "Archon.gg Meta Builds (31.0% popularity, 2,697 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 41.6,
                        totalRankings = 6324,
                        source = "Archon.gg Meta Builds (41.6% popularity, 6,324 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 26.0,
                        totalRankings = 2399,
                        source = "Archon.gg Meta Builds (26.0% popularity, 2,399 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 20.0,
                        totalRankings = 2423,
                        source = "Archon.gg Meta Builds (20.0% popularity, 2,423 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 15.7,
                        totalRankings = 7617,
                        source = "Archon.gg Meta Builds (15.7% popularity, 7,617 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 14.8,
                        totalRankings = 3380,
                        source = "Archon.gg Meta Builds (14.8% popularity, 3,380 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.5,
                        totalRankings = 2104,
                        source = "Archon.gg Meta Builds (38.5% popularity, 2,104 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 21.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (21.0% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 35.8,
                        totalRankings = 21709,
                        source = "Archon.gg Meta Builds (35.8% popularity, 21,709 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 30.1,
                        totalRankings = 2847,
                        source = "Archon.gg Meta Builds (30.1% popularity, 2,847 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 32.4,
                        totalRankings = 1039,
                        source = "Archon.gg Meta Builds (32.4% popularity, 1,039 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 54.0,
                        totalRankings = 7788,
                        source = "Archon.gg Meta Builds (54.0% popularity, 7,788 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 48.8,
                        totalRankings = 1099,
                        source = "Archon.gg Meta Builds (48.8% popularity, 1,099 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 22.3,
                        totalRankings = 4599,
                        source = "Archon.gg Meta Builds (22.3% popularity, 4,599 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 34.4,
                        totalRankings = 2336,
                        source = "Archon.gg Meta Builds (34.4% popularity, 2,336 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 24.3,
                        totalRankings = 3060,
                        source = "Archon.gg Meta Builds (24.3% popularity, 3,060 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 31.6,
                        totalRankings = 3611,
                        source = "Archon.gg Meta Builds (31.6% popularity, 3,611 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.0,
                        totalRankings = 3934,
                        source = "Archon.gg Meta Builds (37.0% popularity, 3,934 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.6,
                        totalRankings = 3890,
                        source = "Archon.gg Meta Builds (6.6% popularity, 3,890 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 37.3,
                        totalRankings = 15099,
                        source = "Archon.gg Meta Builds (37.3% popularity, 15,099 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.2,
                        totalRankings = 1381,
                        source = "Archon.gg Meta Builds (9.2% popularity, 1,381 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.1,
                        totalRankings = 6625,
                        source = "Archon.gg Meta Builds (41.1% popularity, 6,625 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 34.4,
                        totalRankings = 4985,
                        source = "Archon.gg Meta Builds (34.4% popularity, 4,985 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 70.9,
                        totalRankings = 2618,
                        source = "Archon.gg Meta Builds (70.9% popularity, 2,618 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 23.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (23.4% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.7,
                        totalRankings = 2067,
                        source = "Archon.gg Meta Builds (50.7% popularity, 2,067 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 31.5,
                        totalRankings = 8266,
                        source = "Archon.gg Meta Builds (31.5% popularity, 8,266 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 28.0,
                        totalRankings = 1466,
                        source = "Archon.gg Meta Builds (28.0% popularity, 1,466 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.6,
                        totalRankings = 9427,
                        source = "Archon.gg Meta Builds (18.6% popularity, 9,427 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (20.0% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 39.2,
                        totalRankings = 3061,
                        source = "Archon.gg Meta Builds (39.2% popularity, 3,061 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 34.2,
                        totalRankings = 10658,
                        source = "Archon.gg Meta Builds (34.2% popularity, 10,658 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 31.7,
                        totalRankings = 1166,
                        source = "Archon.gg Meta Builds (31.7% popularity, 1,166 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 43.4,
                        totalRankings = 10250,
                        source = "Archon.gg Meta Builds (43.4% popularity, 10,250 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 24.3,
                        totalRankings = 4960,
                        source = "Archon.gg Meta Builds (24.3% popularity, 4,960 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 91.0,
                        totalRankings = 7800,
                        source = "Archon.gg Meta Builds (91.0% popularity, 7,800 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGGDAAAAAAAAzMzsxMjZAAz2MMjZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 40.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (40.0% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzYZGzMz0MjZMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 15.1,
                        totalRankings = 1716,
                        source = "Archon.gg Meta Builds (15.1% popularity, 1,716 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNjxMMmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 49.7,
                        totalRankings = 5000,
                        source = "Archon.gg Meta Builds (49.7% popularity, 5,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 12.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (12.8% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMMLzsNzsMmZmZmFjxwMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 43.8,
                        totalRankings = 3495,
                        source = "Archon.gg Meta Builds (43.8% popularity, 3,495 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZb2MDzMzMzmNzYbmZm5BmZAAAAAA2CmNDjZG1MmFWmZGjZmBAAAAAAMAAAAAAgZbmlmlZW2AzAwCDG",
                        usage = 25.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.4% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMbGGNZamZWMbzMjxgBAAAAAghZAAAAgmZbWmZWGAALwAwiZGG",
                        usage = 7.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (7.4% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 20.9,
                        totalRankings = 2906,
                        source = "Archon.gg Meta Builds (20.9% popularity, 2,906 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzgBMGjZaYmJz2YZwMDjZ2mBMjZ2GzMbzMDmBmxMwGYBMDTgFwywA",
                        usage = 15.4,
                        totalRankings = 2105,
                        source = "Archon.gg Meta Builds (15.4% popularity, 2,105 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 41.6,
                        totalRankings = 1482,
                        source = "Archon.gg Meta Builds (41.6% popularity, 1,482 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 33.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (33.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 56.3,
                        totalRankings = 8713,
                        source = "Archon.gg Meta Builds (56.3% popularity, 8,713 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 39.9,
                        totalRankings = 1237,
                        source = "Archon.gg Meta Builds (39.9% popularity, 1,237 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZGzMMDzwYYmhxMmllZAAAAAAYAA",
                        usage = 25.3,
                        totalRankings = 395,
                        source = "Archon.gg Meta Builds (25.3% popularity, 395 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 50.8,
                        totalRankings = 6160,
                        source = "Archon.gg Meta Builds (50.8% popularity, 6,160 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.6,
                        totalRankings = 816,
                        source = "Archon.gg Meta Builds (40.6% popularity, 816 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 53.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.7% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 32.5,
                        totalRankings = 2348,
                        source = "Archon.gg Meta Builds (32.5% popularity, 2,348 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 49.5,
                        totalRankings = 1331,
                        source = "Archon.gg Meta Builds (49.5% popularity, 1,331 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 40.3,
                        totalRankings = 1452,
                        source = "Archon.gg Meta Builds (40.3% popularity, 1,452 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 34.7,
                        totalRankings = 2049,
                        source = "Archon.gg Meta Builds (34.7% popularity, 2,049 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MmhxYYAAAGAAAAAAASmZWMMDGzMzWbAADAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 5.5,
                        totalRankings = 1269,
                        source = "Archon.gg Meta Builds (5.5% popularity, 1,269 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 54.6,
                        totalRankings = 4979,
                        source = "Archon.gg Meta Builds (54.6% popularity, 4,979 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 5.9,
                        totalRankings = 272,
                        source = "Archon.gg Meta Builds (5.9% popularity, 272 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 54.6,
                        totalRankings = 3242,
                        source = "Archon.gg Meta Builds (54.6% popularity, 3,242 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 35.4,
                        totalRankings = 3235,
                        source = "Archon.gg Meta Builds (35.4% popularity, 3,235 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.2,
                        totalRankings = 1219,
                        source = "Archon.gg Meta Builds (79.2% popularity, 1,219 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMDAGzmhBGYWYhWYzMA",
                        usage = 43.0,
                        totalRankings = 460,
                        source = "Archon.gg Meta Builds (43.0% popularity, 460 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 44.0,
                        totalRankings = 1519,
                        source = "Archon.gg Meta Builds (44.0% popularity, 1,519 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 48.3,
                        totalRankings = 4777,
                        source = "Archon.gg Meta Builds (48.3% popularity, 4,777 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 55.2,
                        totalRankings = 773,
                        source = "Archon.gg Meta Builds (55.2% popularity, 773 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.7,
                        totalRankings = 4003,
                        source = "Archon.gg Meta Builds (20.7% popularity, 4,003 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 23.5,
                        totalRankings = 583,
                        source = "Archon.gg Meta Builds (23.5% popularity, 583 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 28.4,
                        totalRankings = 869,
                        source = "Archon.gg Meta Builds (28.4% popularity, 869 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 57.6,
                        totalRankings = 6892,
                        source = "Archon.gg Meta Builds (57.6% popularity, 6,892 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMMDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 30.0,
                        totalRankings = 320,
                        source = "Archon.gg Meta Builds (30.0% popularity, 320 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 58.5,
                        totalRankings = 4485,
                        source = "Archon.gg Meta Builds (58.5% popularity, 4,485 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 26.7,
                        totalRankings = 2627,
                        source = "Archon.gg Meta Builds (26.7% popularity, 2,627 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGxYmxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 82.1,
                        totalRankings = 12705,
                        source = "Archon.gg Meta Builds (82.1% popularity, 12,705 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 32.9,
                        totalRankings = 1990,
                        source = "Archon.gg Meta Builds (32.9% popularity, 1,990 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 17.4,
                        totalRankings = 3080,
                        source = "Archon.gg Meta Builds (17.4% popularity, 3,080 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                        usage = 18.1,
                        totalRankings = 11425,
                        source = "Archon.gg Meta Builds (18.1% popularity, 11,425 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 25.8,
                        totalRankings = 2700,
                        source = "Archon.gg Meta Builds (25.8% popularity, 2,700 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                        usage = 77.3,
                        totalRankings = 6366,
                        source = "Archon.gg Meta Builds (77.3% popularity, 6,366 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 57.1,
                        totalRankings = 2364,
                        source = "Archon.gg Meta Builds (57.1% popularity, 2,364 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 12.9,
                        totalRankings = 2407,
                        source = "Archon.gg Meta Builds (12.9% popularity, 2,407 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 16.2,
                        totalRankings = 8097,
                        source = "Archon.gg Meta Builds (16.2% popularity, 8,097 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 20.2,
                        totalRankings = 3309,
                        source = "Archon.gg Meta Builds (20.2% popularity, 3,309 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 39.0,
                        totalRankings = 2190,
                        source = "Archon.gg Meta Builds (39.0% popularity, 2,190 parses)"
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
                        usage = 21.5,
                        totalRankings = 21055,
                        source = "Archon.gg Meta Builds (21.5% popularity, 21,055 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 56.7,
                        totalRankings = 3126,
                        source = "Archon.gg Meta Builds (56.7% popularity, 3,126 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 22.8,
                        totalRankings = 1021,
                        source = "Archon.gg Meta Builds (22.8% popularity, 1,021 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 68.3,
                        totalRankings = 7783,
                        source = "Archon.gg Meta Builds (68.3% popularity, 7,783 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 39.9,
                        totalRankings = 1240,
                        source = "Archon.gg Meta Builds (39.9% popularity, 1,240 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 29.5,
                        totalRankings = 4527,
                        source = "Archon.gg Meta Builds (29.5% popularity, 4,527 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.7,
                        totalRankings = 2374,
                        source = "Archon.gg Meta Builds (31.7% popularity, 2,374 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 34.6,
                        totalRankings = 3167,
                        source = "Archon.gg Meta Builds (34.6% popularity, 3,167 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 20.2,
                        totalRankings = 3684,
                        source = "Archon.gg Meta Builds (20.2% popularity, 3,684 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.4,
                        totalRankings = 4132,
                        source = "Archon.gg Meta Builds (37.4% popularity, 4,132 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 3928,
                        source = "Archon.gg Meta Builds (5.6% popularity, 3,928 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 33.2,
                        totalRankings = 15267,
                        source = "Archon.gg Meta Builds (33.2% popularity, 15,267 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.4,
                        totalRankings = 1401,
                        source = "Archon.gg Meta Builds (7.4% popularity, 1,401 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 42.1,
                        totalRankings = 6753,
                        source = "Archon.gg Meta Builds (42.1% popularity, 6,753 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 27.3,
                        totalRankings = 4852,
                        source = "Archon.gg Meta Builds (27.3% popularity, 4,852 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 59.1,
                        totalRankings = 2531,
                        source = "Archon.gg Meta Builds (59.1% popularity, 2,531 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 27.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.5% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjxy0YGjxMGjZ8AzMzMMmtZxYGbzMjZmZMYsMbDAAAgZGMAGzmhBGYWYhWsBD",
                        usage = 26.5,
                        totalRankings = 2015,
                        source = "Archon.gg Meta Builds (26.5% popularity, 2,015 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.0,
                        totalRankings = 7984,
                        source = "Archon.gg Meta Builds (32.0% popularity, 7,984 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAWmmZGssYmZmhxMz2wyMzEYYWmZAAGD",
                        usage = 40.8,
                        totalRankings = 1424,
                        source = "Archon.gg Meta Builds (40.8% popularity, 1,424 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 20.7,
                        totalRankings = 9674,
                        source = "Archon.gg Meta Builds (20.7% popularity, 9,674 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.6,
                        totalRankings = 1265,
                        source = "Archon.gg Meta Builds (20.6% popularity, 1,265 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 37.8,
                        totalRankings = 2678,
                        source = "Archon.gg Meta Builds (37.8% popularity, 2,678 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 34.9,
                        totalRankings = 10760,
                        source = "Archon.gg Meta Builds (34.9% popularity, 10,760 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                        usage = 21.8,
                        totalRankings = 1261,
                        source = "Archon.gg Meta Builds (21.8% popularity, 1,261 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 48.5,
                        totalRankings = 10624,
                        source = "Archon.gg Meta Builds (48.5% popularity, 10,624 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 22.4,
                        totalRankings = 5086,
                        source = "Archon.gg Meta Builds (22.4% popularity, 5,086 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMGmZAmZmZmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBGG",
                        usage = 77.6,
                        totalRankings = 4529,
                        source = "Archon.gg Meta Builds (77.6% popularity, 4,529 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMzMGmxMzMTzYmZMMGAAAAAAAAmZmZDzYGAwsNDzMz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 60.1,
                        totalRankings = 572,
                        source = "Archon.gg Meta Builds (60.1% popularity, 572 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMzMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 26.6,
                        totalRankings = 1243,
                        source = "Archon.gg Meta Builds (26.6% popularity, 1,243 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNjxMMmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 42.7,
                        totalRankings = 3257,
                        source = "Archon.gg Meta Builds (42.7% popularity, 3,257 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDzMbzMYsNjZegZMDmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 13.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (13.6% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzMDwmxwA",
                        usage = 92.8,
                        totalRankings = 1657,
                        source = "Archon.gg Meta Builds (92.8% popularity, 1,657 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2AzMjaGzyYZmZMMMAAAAAAwAAAAA0MLzyMz2AAWgZmBwCzwA",
                        usage = 67.6,
                        totalRankings = 741,
                        source = "Archon.gg Meta Builds (67.6% popularity, 741 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZYMjZGLegZGmFLDMbwoJamZWmZbmZMmxAAAAAAghxAW2mZDjZbAMBAAAsZMDALGYA",
                        usage = 7.9,
                        totalRankings = 581,
                        source = "Archon.gg Meta Builds (7.9% popularity, 581 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 23.0,
                        totalRankings = 2769,
                        source = "Archon.gg Meta Builds (23.0% popularity, 2,769 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMzAjxYmGmZysNzyMmZmZGzsMDYGjthZ2mZGYAGsALjRjtBwMAshB",
                        usage = 32.0,
                        totalRankings = 1103,
                        source = "Archon.gg Meta Builds (32.0% popularity, 1,103 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 41.6,
                        totalRankings = 1823,
                        source = "Archon.gg Meta Builds (41.6% popularity, 1,823 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 26.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.4% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzMMzyMzMzgZMTmxMmxMzwMjZYMMzwYY2WmBbAAAAAAwMA",
                        usage = 35.0,
                        totalRankings = 5270,
                        source = "Archon.gg Meta Builds (35.0% popularity, 5,270 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjmZmxwMDMMLmZwwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 79.4,
                        totalRankings = 1071,
                        source = "Archon.gg Meta Builds (79.4% popularity, 1,071 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                        usage = 23.9,
                        totalRankings = 142,
                        source = "Archon.gg Meta Builds (23.9% popularity, 142 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 69.7,
                        totalRankings = 3831,
                        source = "Archon.gg Meta Builds (69.7% popularity, 3,831 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMzMzMLeAGzMMNmZMAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 31.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (31.5% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmFDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 57.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.0% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 33.2,
                        totalRankings = 1754,
                        source = "Archon.gg Meta Builds (33.2% popularity, 1,754 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 82.2,
                        totalRankings = 1091,
                        source = "Archon.gg Meta Builds (82.2% popularity, 1,091 parses)"
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
                        usage = 32.2,
                        totalRankings = 1965,
                        source = "Archon.gg Meta Builds (32.2% popularity, 1,965 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLjZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGzMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 8.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (8.1% popularity, 1,000 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 66.8,
                        totalRankings = 2352,
                        source = "Archon.gg Meta Builds (66.8% popularity, 2,352 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADswMjZGjxMzYGmtZmZmZGAAAAAAAAAAwsYZ2GMzMYWYMDGDWMbmGTsMwMDAEgZb2WAjNbAAA",
                        usage = 7.0,
                        totalRankings = 301,
                        source = "Archon.gg Meta Builds (7.0% popularity, 301 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.6,
                        totalRankings = 3007,
                        source = "Archon.gg Meta Builds (56.6% popularity, 3,007 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 49.0,
                        totalRankings = 1485,
                        source = "Archon.gg Meta Builds (49.0% popularity, 1,485 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 60.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (60.6% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzMMzMWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 43.9,
                        totalRankings = 378,
                        source = "Archon.gg Meta Builds (43.9% popularity, 378 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGDbzMzMzMDYsMbDAAAAzgBwY2MMwAzCL0iNMD",
                        usage = 43.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.8% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbLMz0wMzMbDLzMzgZZYWGzMmZMzsBA",
                        usage = 47.3,
                        totalRankings = 2473,
                        source = "Archon.gg Meta Builds (47.3% popularity, 2,473 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAz2kBmlFzMzMmZMzGWmZmGsMWYmBAYMA",
                        usage = 60.2,
                        totalRankings = 352,
                        source = "Archon.gg Meta Builds (60.2% popularity, 352 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 24.0,
                        totalRankings = 3553,
                        source = "Archon.gg Meta Builds (24.0% popularity, 3,553 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 23.0,
                        totalRankings = 786,
                        source = "Archon.gg Meta Builds (23.0% popularity, 786 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 68.7,
                        totalRankings = 332,
                        source = "Archon.gg Meta Builds (68.7% popularity, 332 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 50.2,
                        totalRankings = 4736,
                        source = "Archon.gg Meta Builds (50.2% popularity, 4,736 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWmZGGLjZmxmZmBDGGAAAAAAAmxsNYAbxA2MjhNYgZYjGGWA",
                        usage = 34.4,
                        totalRankings = 215,
                        source = "Archon.gg Meta Builds (34.4% popularity, 215 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 66.5,
                        totalRankings = 2800,
                        source = "Archon.gg Meta Builds (66.5% popularity, 2,800 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 23.3,
                        totalRankings = 1758,
                        source = "Archon.gg Meta Builds (23.3% popularity, 1,758 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMGLDzMzMzMmZGZGjZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 46.2,
                        totalRankings = 11211,
                        source = "Archon.gg Meta Builds (46.2% popularity, 11,211 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 70.2,
                        totalRankings = 1972,
                        source = "Archon.gg Meta Builds (70.2% popularity, 1,972 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 18.6,
                        totalRankings = 2934,
                        source = "Archon.gg Meta Builds (18.6% popularity, 2,934 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 69.0,
                        totalRankings = 9797,
                        source = "Archon.gg Meta Builds (69.0% popularity, 9,797 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 36.9,
                        totalRankings = 2516,
                        source = "Archon.gg Meta Builds (36.9% popularity, 2,516 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 59.3,
                        totalRankings = 5723,
                        source = "Archon.gg Meta Builds (59.3% popularity, 5,723 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 56.3,
                        totalRankings = 2126,
                        source = "Archon.gg Meta Builds (56.3% popularity, 2,126 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 24.7,
                        totalRankings = 2289,
                        source = "Archon.gg Meta Builds (24.7% popularity, 2,289 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 15.9,
                        totalRankings = 7231,
                        source = "Archon.gg Meta Builds (15.9% popularity, 7,231 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 24.9,
                        totalRankings = 2951,
                        source = "Archon.gg Meta Builds (24.9% popularity, 2,951 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 35.9,
                        totalRankings = 1921,
                        source = "Archon.gg Meta Builds (35.9% popularity, 1,921 parses)"
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
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 53.7,
                        totalRankings = 19913,
                        source = "Archon.gg Meta Builds (53.7% popularity, 19,913 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 70.2,
                        totalRankings = 2667,
                        source = "Archon.gg Meta Builds (70.2% popularity, 2,667 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 55.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.7% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 72.5,
                        totalRankings = 7348,
                        source = "Archon.gg Meta Builds (72.5% popularity, 7,348 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 50.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.2% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 41.9,
                        totalRankings = 4195,
                        source = "Archon.gg Meta Builds (41.9% popularity, 4,195 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 36.5,
                        totalRankings = 2215,
                        source = "Archon.gg Meta Builds (36.5% popularity, 2,215 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 30.0,
                        totalRankings = 2817,
                        source = "Archon.gg Meta Builds (30.0% popularity, 2,817 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 62.8,
                        totalRankings = 3255,
                        source = "Archon.gg Meta Builds (62.8% popularity, 3,255 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.0,
                        totalRankings = 3630,
                        source = "Archon.gg Meta Builds (37.0% popularity, 3,630 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 5.6,
                        totalRankings = 3557,
                        source = "Archon.gg Meta Builds (5.6% popularity, 3,557 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 72.1,
                        totalRankings = 13399,
                        source = "Archon.gg Meta Builds (72.1% popularity, 13,399 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.6,
                        totalRankings = 1245,
                        source = "Archon.gg Meta Builds (8.6% popularity, 1,245 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 40.7,
                        totalRankings = 6216,
                        source = "Archon.gg Meta Builds (40.7% popularity, 6,216 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 25.6,
                        totalRankings = 4411,
                        source = "Archon.gg Meta Builds (25.6% popularity, 4,411 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.4,
                        totalRankings = 2623,
                        source = "Archon.gg Meta Builds (72.4% popularity, 2,623 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 37.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (37.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.4,
                        totalRankings = 1651,
                        source = "Archon.gg Meta Builds (53.4% popularity, 1,651 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 32.2,
                        totalRankings = 7194,
                        source = "Archon.gg Meta Builds (32.2% popularity, 7,194 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 59.9,
                        totalRankings = 1293,
                        source = "Archon.gg Meta Builds (59.9% popularity, 1,293 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.2,
                        totalRankings = 8729,
                        source = "Archon.gg Meta Builds (19.2% popularity, 8,729 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.6% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.6,
                        totalRankings = 2798,
                        source = "Archon.gg Meta Builds (76.6% popularity, 2,798 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.2,
                        totalRankings = 9619,
                        source = "Archon.gg Meta Builds (41.2% popularity, 9,619 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 65.2,
                        totalRankings = 1097,
                        source = "Archon.gg Meta Builds (65.2% popularity, 1,097 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 43.2,
                        totalRankings = 9230,
                        source = "Archon.gg Meta Builds (43.2% popularity, 9,230 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 20.6,
                        totalRankings = 4562,
                        source = "Archon.gg Meta Builds (20.6% popularity, 4,562 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 67.6,
                        totalRankings = 6604,
                        source = "Archon.gg Meta Builds (67.6% popularity, 6,604 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.6,
                        totalRankings = 1043,
                        source = "Archon.gg Meta Builds (72.6% popularity, 1,043 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMzMzwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 25.8,
                        totalRankings = 1630,
                        source = "Archon.gg Meta Builds (25.8% popularity, 1,630 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 82.8,
                        totalRankings = 4686,
                        source = "Archon.gg Meta Builds (82.8% popularity, 4,686 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 29.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (29.4% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWGLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYjZmxAbGDD",
                        usage = 68.8,
                        totalRankings = 2807,
                        source = "Archon.gg Meta Builds (68.8% popularity, 2,807 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBmZZmZMzsNbjx2MmxMzAAAAAAsFMbwYmRNjZhlZmxYGzAAAAAAADMAAAAAAz2MLNLzssBmBgFzgB",
                        usage = 46.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.7% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDAMay0MzsMz2MzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCjBgFzgB",
                        usage = 6.9,
                        totalRankings = 1010,
                        source = "Archon.gg Meta Builds (6.9% popularity, 1,010 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 21.3,
                        totalRankings = 3261,
                        source = "Archon.gg Meta Builds (21.3% popularity, 3,261 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 27.1,
                        totalRankings = 1737,
                        source = "Archon.gg Meta Builds (27.1% popularity, 1,737 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.6,
                        totalRankings = 1766,
                        source = "Archon.gg Meta Builds (36.6% popularity, 1,766 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 36.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (36.2% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 73.2,
                        totalRankings = 8518,
                        source = "Archon.gg Meta Builds (73.2% popularity, 8,518 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 84.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (84.1% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 38.8,
                        totalRankings = 309,
                        source = "Archon.gg Meta Builds (38.8% popularity, 309 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 79.5,
                        totalRankings = 5841,
                        source = "Archon.gg Meta Builds (79.5% popularity, 5,841 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.6,
                        totalRankings = 889,
                        source = "Archon.gg Meta Builds (46.6% popularity, 889 parses)"
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
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZWmWmtZWGAAAAmhNA",
                        usage = 31.7,
                        totalRankings = 2235,
                        source = "Archon.gg Meta Builds (31.7% popularity, 2,235 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 50.0,
                        totalRankings = 1405,
                        source = "Archon.gg Meta Builds (50.0% popularity, 1,405 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 79.8,
                        totalRankings = 1238,
                        source = "Archon.gg Meta Builds (79.8% popularity, 1,238 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 35.3,
                        totalRankings = 2219,
                        source = "Archon.gg Meta Builds (35.3% popularity, 2,219 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBDDAAwAAAAAAAQyMzihZGGjZ2CAwAAMD2GAAAAwMzy2SbzMWMwAwMMDjB",
                        usage = 3.4,
                        totalRankings = 1192,
                        source = "Archon.gg Meta Builds (3.4% popularity, 1,192 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 85.0,
                        totalRankings = 4161,
                        source = "Archon.gg Meta Builds (85.0% popularity, 4,161 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                        usage = 4.5,
                        totalRankings = 354,
                        source = "Archon.gg Meta Builds (4.5% popularity, 354 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 56.4,
                        totalRankings = 3697,
                        source = "Archon.gg Meta Builds (56.4% popularity, 3,697 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDmZeAAAAAAAAAAAAAjxGMzMLbbMzYmZmZZwsxMzMjZjBGjhZxsN1MDWgZmBACwsNbLgZjFAbzA",
                        usage = 19.6,
                        totalRankings = 2435,
                        source = "Archon.gg Meta Builds (19.6% popularity, 2,435 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 74.1,
                        totalRankings = 1773,
                        source = "Archon.gg Meta Builds (74.1% popularity, 1,773 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 71.9,
                        totalRankings = 420,
                        source = "Archon.gg Meta Builds (71.9% popularity, 420 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 51.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.7% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbLMz0wMzMbDLzMzgZZYWGzMmZMzsBA",
                        usage = 50.0,
                        totalRankings = 4143,
                        source = "Archon.gg Meta Builds (50.0% popularity, 4,143 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 69.9,
                        totalRankings = 685,
                        source = "Archon.gg Meta Builds (69.9% popularity, 685 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 21.5,
                        totalRankings = 4298,
                        source = "Archon.gg Meta Builds (21.5% popularity, 4,298 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.7,
                        totalRankings = 566,
                        source = "Archon.gg Meta Builds (17.7% popularity, 566 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 81.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (81.0% popularity, 1,000 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 54.5,
                        totalRankings = 6243,
                        source = "Archon.gg Meta Builds (54.5% popularity, 6,243 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 64.6,
                        totalRankings = 316,
                        source = "Archon.gg Meta Builds (64.6% popularity, 316 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 38.5,
                        totalRankings = 4091,
                        source = "Archon.gg Meta Builds (38.5% popularity, 4,091 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMGAYGbAGYDWWMaMDgZDzshZG",
                        usage = 26.1,
                        totalRankings = 2468,
                        source = "Archon.gg Meta Builds (26.1% popularity, 2,468 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 66.5,
                        totalRankings = 6113,
                        source = "Archon.gg Meta Builds (66.5% popularity, 6,113 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 59.2,
                        totalRankings = 1266,
                        source = "Archon.gg Meta Builds (59.2% popularity, 1,266 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 15.7,
                        totalRankings = 2255,
                        source = "Archon.gg Meta Builds (15.7% popularity, 2,255 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 57.8,
                        totalRankings = 5691,
                        source = "Archon.gg Meta Builds (57.8% popularity, 5,691 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 28.6,
                        totalRankings = 1615,
                        source = "Archon.gg Meta Builds (28.6% popularity, 1,615 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 60.6,
                        totalRankings = 3515,
                        source = "Archon.gg Meta Builds (60.6% popularity, 3,515 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 45.5,
                        totalRankings = 1373,
                        source = "Archon.gg Meta Builds (45.5% popularity, 1,373 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.5,
                        totalRankings = 1385,
                        source = "Archon.gg Meta Builds (23.5% popularity, 1,385 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 14.7,
                        totalRankings = 3824,
                        source = "Archon.gg Meta Builds (14.7% popularity, 3,824 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGmBMYMTzYmJjxyMzMzwYmtZAzYmNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 27.2,
                        totalRankings = 2280,
                        source = "Archon.gg Meta Builds (27.2% popularity, 2,280 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 38.7,
                        totalRankings = 1326,
                        source = "Archon.gg Meta Builds (38.7% popularity, 1,326 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 16.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.5% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmxMDzMMwYmZgZMbLzwsBAAAAAAzA",
                        usage = 36.4,
                        totalRankings = 9974,
                        source = "Archon.gg Meta Builds (36.4% popularity, 9,974 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxYmZgZMLmZwYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 35.9,
                        totalRankings = 1735,
                        source = "Archon.gg Meta Builds (35.9% popularity, 1,735 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 50.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (50.6% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 36.1,
                        totalRankings = 4796,
                        source = "Archon.gg Meta Builds (36.1% popularity, 4,796 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 53.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (53.1% popularity, 1,000 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 44.0,
                        totalRankings = 2418,
                        source = "Archon.gg Meta Builds (44.0% popularity, 2,418 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 37.0,
                        totalRankings = 1562,
                        source = "Archon.gg Meta Builds (37.0% popularity, 1,562 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 36.7,
                        totalRankings = 1879,
                        source = "Archon.gg Meta Builds (36.7% popularity, 1,879 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 53.4,
                        totalRankings = 2185,
                        source = "Archon.gg Meta Builds (53.4% popularity, 2,185 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 43.2,
                        totalRankings = 2413,
                        source = "Archon.gg Meta Builds (43.2% popularity, 2,413 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 9.8,
                        totalRankings = 2321,
                        source = "Archon.gg Meta Builds (9.8% popularity, 2,321 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 72.9,
                        totalRankings = 8065,
                        source = "Archon.gg Meta Builds (72.9% popularity, 8,065 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (9.6% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 44.3,
                        totalRankings = 4040,
                        source = "Archon.gg Meta Builds (44.3% popularity, 4,040 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 35.4,
                        totalRankings = 3018,
                        source = "Archon.gg Meta Builds (35.4% popularity, 3,018 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 72.3,
                        totalRankings = 1748,
                        source = "Archon.gg Meta Builds (72.3% popularity, 1,748 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 30.4,
                        totalRankings = 833,
                        source = "Archon.gg Meta Builds (30.4% popularity, 833 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 54.0,
                        totalRankings = 1099,
                        source = "Archon.gg Meta Builds (54.0% popularity, 1,099 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLmZmGmZGbDLmZGMGmlxMjZGzMbA",
                        usage = 38.9,
                        totalRankings = 4558,
                        source = "Archon.gg Meta Builds (38.9% popularity, 4,558 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 37.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 19.4,
                        totalRankings = 4794,
                        source = "Archon.gg Meta Builds (19.4% popularity, 4,794 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (19.5% popularity, 1,000 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 78.0,
                        totalRankings = 1600,
                        source = "Archon.gg Meta Builds (78.0% popularity, 1,600 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 43.2,
                        totalRankings = 6440,
                        source = "Archon.gg Meta Builds (43.2% popularity, 6,440 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 47.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (47.9% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 42.1,
                        totalRankings = 5719,
                        source = "Archon.gg Meta Builds (42.1% popularity, 5,719 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 27.0,
                        totalRankings = 2932,
                        source = "Archon.gg Meta Builds (27.0% popularity, 2,932 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxwwMzMzMjZmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 97.0,
                        totalRankings = 1519,
                        source = "Archon.gg Meta Builds (97.0% popularity, 1,519 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 25.0,
                        totalRankings = 188,
                        source = "Archon.gg Meta Builds (25.0% popularity, 188 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxYZGzMz0MjZMGzYAAAAgZmZmZmZmZzMzYAAAjZmZGAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 22.8,
                        totalRankings = 965,
                        source = "Archon.gg Meta Builds (22.8% popularity, 965 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 57.1,
                        totalRankings = 1068,
                        source = "Archon.gg Meta Builds (57.1% popularity, 1,068 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmxYYmZZMMjtZMzDMzMjBjZmZzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 10.6,
                        totalRankings = 218,
                        source = "Archon.gg Meta Builds (10.6% popularity, 218 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDY2GLzMDwMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 86.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (86.1% popularity, 1,000 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsNWmZGjZMDAAAAAAMAAAAANzysMzsNAgFYmZAswgB",
                        usage = 49.6,
                        totalRankings = 345,
                        source = "Archon.gg Meta Builds (49.6% popularity, 345 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMzMzy8AMmZwYxMMjFLDAMay0MzsMz2MzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 10.1,
                        totalRankings = 99,
                        source = "Archon.gg Meta Builds (10.1% popularity, 99 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMbjlZmhhZAAAAAADAYAAAAAAz2MbNLzsZjZmZAmNMaA",
                        usage = 36.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (36.7% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 28.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (28.2% popularity, 1,000 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 35.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (35.8% popularity, 1,000 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 37.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (37.3% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 79.9,
                        totalRankings = 1551,
                        source = "Archon.gg Meta Builds (79.9% popularity, 1,551 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 67.0,
                        totalRankings = 203,
                        source = "Archon.gg Meta Builds (67.0% popularity, 203 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 38.3,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (38.3% popularity, 47 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 40.8,
                        totalRankings = 1616,
                        source = "Archon.gg Meta Builds (40.8% popularity, 1,616 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 47.9,
                        totalRankings = 188,
                        source = "Archon.gg Meta Builds (47.9% popularity, 188 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZwMzoxYmxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 62.4,
                        totalRankings = 165,
                        source = "Archon.gg Meta Builds (62.4% popularity, 165 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 17.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (17.4% popularity, 1,000 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 78.5,
                        totalRankings = 683,
                        source = "Archon.gg Meta Builds (78.5% popularity, 683 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmhZZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYmhZG2mBAwGAYWmlmZmZBwM",
                        usage = 49.7,
                        totalRankings = 581,
                        source = "Archon.gg Meta Builds (49.7% popularity, 581 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 39.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (39.6% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MzMzMYYAAAGAAAAAAASmZWMMDGDzWbAwYAAmBbDAAAAYmZZbptZGLGYAYmxMMG",
                        usage = 18.6,
                        totalRankings = 393,
                        source = "Archon.gg Meta Builds (18.6% popularity, 393 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 89.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (89.6% popularity, 1,000 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAADsNzMjxYMmZGzsZ2mZmZmBAAAAAAAAAAwysMbDmZGMLMMGjhZhlZamJWAzMAQAmtZbDM2sBAA",
                        usage = 6.8,
                        totalRankings = 59,
                        source = "Archon.gg Meta Builds (6.8% popularity, 59 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 55.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (55.3% popularity, 1,000 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 39.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (39.6% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.4,
                        totalRankings = 804,
                        source = "Archon.gg Meta Builds (79.4% popularity, 804 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 85.5,
                        totalRankings = 62,
                        source = "Archon.gg Meta Builds (85.5% popularity, 62 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 48.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (48.2% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbLMz0wMzMbDLzMzgZZYWGzMmZMzsBA",
                        usage = 59.1,
                        totalRankings = 1126,
                        source = "Archon.gg Meta Builds (59.1% popularity, 1,126 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 73.2,
                        totalRankings = 153,
                        source = "Archon.gg Meta Builds (73.2% popularity, 153 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 34.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (34.0% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 44.0,
                        totalRankings = 100,
                        source = "Archon.gg Meta Builds (44.0% popularity, 100 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.4,
                        totalRankings = 124,
                        source = "Archon.gg Meta Builds (77.4% popularity, 124 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 60.9,
                        totalRankings = 1766,
                        source = "Archon.gg Meta Builds (60.9% popularity, 1,766 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGmZWmZGGGMjNzMDGmhBAAAAAAgHYMLzMzAWCjttBWADYGmAzgNA",
                        usage = 73.7,
                        totalRankings = 38,
                        source = "Archon.gg Meta Builds (73.7% popularity, 38 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 70.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (70.1% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMYG2mZGMMDDAAAAAAsMAAzYDwAbwyiRjZAMbYmNmZG",
                        usage = 14.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (14.2% popularity, 1,000 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 51.8,
                        totalRankings = 5142,
                        source = "Archon.gg Meta Builds (51.8% popularity, 5,142 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 50.8,
                        totalRankings = 1092,
                        source = "Archon.gg Meta Builds (50.8% popularity, 1,092 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 15.9,
                        totalRankings = 1975,
                        source = "Archon.gg Meta Builds (15.9% popularity, 1,975 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 66.2,
                        totalRankings = 4667,
                        source = "Archon.gg Meta Builds (66.2% popularity, 4,667 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 29.7,
                        totalRankings = 1305,
                        source = "Archon.gg Meta Builds (29.7% popularity, 1,305 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 62.6,
                        totalRankings = 2744,
                        source = "Archon.gg Meta Builds (62.6% popularity, 2,744 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 64.5,
                        totalRankings = 1071,
                        source = "Archon.gg Meta Builds (64.5% popularity, 1,071 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 23.4,
                        totalRankings = 1050,
                        source = "Archon.gg Meta Builds (23.4% popularity, 1,050 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAAbGa2YMNzAMLzsMzMMMDAAAAAYAADAAAAAY2mZrZZmNbMmZAmNMaA",
                        usage = 15.9,
                        totalRankings = 3136,
                        source = "Archon.gg Meta Builds (15.9% popularity, 3,136 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGmBMYMTzYmJjxyMzMzwYmtZAzYmNmZ2mZGMDMjZgNwCYGmALglhB",
                        usage = 33.5,
                        totalRankings = 1858,
                        source = "Archon.gg Meta Builds (33.5% popularity, 1,858 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzY2mZGAMjZgFwCYGmAbwmhB",
                        usage = 36.7,
                        totalRankings = 1143,
                        source = "Archon.gg Meta Builds (36.7% popularity, 1,143 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 17.8,
                        totalRankings = 833,
                        source = "Archon.gg Meta Builds (17.8% popularity, 833 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 53.9,
                        totalRankings = 8005,
                        source = "Archon.gg Meta Builds (53.9% popularity, 8,005 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 77.2,
                        totalRankings = 1365,
                        source = "Archon.gg Meta Builds (77.2% popularity, 1,365 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 49.5,
                        totalRankings = 834,
                        source = "Archon.gg Meta Builds (49.5% popularity, 834 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 53.4,
                        totalRankings = 3947,
                        source = "Archon.gg Meta Builds (53.4% popularity, 3,947 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 45.8,
                        totalRankings = 962,
                        source = "Archon.gg Meta Builds (45.8% popularity, 962 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 48.2,
                        totalRankings = 1895,
                        source = "Archon.gg Meta Builds (48.2% popularity, 1,895 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 36.8,
                        totalRankings = 1253,
                        source = "Archon.gg Meta Builds (36.8% popularity, 1,253 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 40.9,
                        totalRankings = 1563,
                        source = "Archon.gg Meta Builds (40.9% popularity, 1,563 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 56.0,
                        totalRankings = 1780,
                        source = "Archon.gg Meta Builds (56.0% popularity, 1,780 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 47.1,
                        totalRankings = 1925,
                        source = "Archon.gg Meta Builds (47.1% popularity, 1,925 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASzMzihZGGjxWbAwYAAmBbDAAAAYmZZbptZGLGYAYMmxwA",
                        usage = 14.4,
                        totalRankings = 1734,
                        source = "Archon.gg Meta Builds (14.4% popularity, 1,734 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 79.6,
                        totalRankings = 6364,
                        source = "Archon.gg Meta Builds (79.6% popularity, 6,364 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.7,
                        totalRankings = 965,
                        source = "Archon.gg Meta Builds (6.7% popularity, 965 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 43.2,
                        totalRankings = 3385,
                        source = "Archon.gg Meta Builds (43.2% popularity, 3,385 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 31.9,
                        totalRankings = 2336,
                        source = "Archon.gg Meta Builds (31.9% popularity, 2,336 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 77.4,
                        totalRankings = 1445,
                        source = "Archon.gg Meta Builds (77.4% popularity, 1,445 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 32.9,
                        totalRankings = 636,
                        source = "Archon.gg Meta Builds (32.9% popularity, 636 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 57.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (57.0% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZmBbLmZmGmZGbDLmZGMGmlxMjZGzMbA",
                        usage = 41.6,
                        totalRankings = 3695,
                        source = "Archon.gg Meta Builds (41.6% popularity, 3,695 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 41.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (41.2% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2WmtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 18.4,
                        totalRankings = 3958,
                        source = "Archon.gg Meta Builds (18.4% popularity, 3,958 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.2,
                        totalRankings = 947,
                        source = "Archon.gg Meta Builds (22.2% popularity, 947 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 81.0,
                        totalRankings = 1101,
                        source = "Archon.gg Meta Builds (81.0% popularity, 1,101 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 51.7,
                        totalRankings = 5184,
                        source = "Archon.gg Meta Builds (51.7% popularity, 5,184 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 51.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.7% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                        usage = 46.3,
                        totalRankings = 4730,
                        source = "Archon.gg Meta Builds (46.3% popularity, 4,730 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 28.2,
                        totalRankings = 2274,
                        source = "Archon.gg Meta Builds (28.2% popularity, 2,274 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMjxYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 94.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (94.1% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxYZGzMzMNjxMGGDAAAAAAAAzMzsgZMDAY2mhZmZbmZGMDwiZxwADMbM0YBDYmBwA",
                        usage = 28.6,
                        totalRankings = 56,
                        source = "Archon.gg Meta Builds (28.6% popularity, 56 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYMDzYmxYZYmZmmZMzMGzYAAAAgZmZmZmZMbmZGDAAYMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 5.1,
                        totalRankings = 672,
                        source = "Archon.gg Meta Builds (5.1% popularity, 672 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 73.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (73.3% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmhZYYZmhZsNjZmZMDGzyMzsZmxMDGAAAAglZxMGmNmGYmZwG",
                        usage = 7.1,
                        totalRankings = 56,
                        source = "Archon.gg Meta Builds (7.1% popularity, 56 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUGNjxMD8AmlxyMzAMjxyMbzYZMzYmZxYmxMzYDLMADw22YDTzMLDAAAA2MzMjB2MwA",
                        usage = 81.1,
                        totalRankings = 556,
                        source = "Archon.gg Meta Builds (81.1% popularity, 556 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwwAzMqZMLjlZmxYGzAAAAAAADAAAAQzsMLzMbDAYBmZGALMYA",
                        usage = 57.5,
                        totalRankings = 120,
                        source = "Archon.gg Meta Builds (57.5% popularity, 120 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMmZWGjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 53.6,
                        totalRankings = 28,
                        source = "Archon.gg Meta Builds (53.6% popularity, 28 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAYmZmxy2YmZsY2GeAGbbzssYbGAAAAAAAAAAAALGa2MjpZGgZZmlZmhhZAAAAAADAYAAAAAAz2MbNLzsZjxMDwsBaA",
                        usage = 28.6,
                        totalRankings = 718,
                        source = "Archon.gg Meta Builds (28.6% popularity, 718 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMAGjZaYmJjxyMzMzwYmtZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 27.1,
                        totalRankings = 763,
                        source = "Archon.gg Meta Builds (27.1% popularity, 763 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMDsAWAzwEYD2MMA",
                        usage = 36.1,
                        totalRankings = 893,
                        source = "Archon.gg Meta Builds (36.1% popularity, 893 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgBzMLzMzMjZ2AAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZ2GzMwMbzYwCsMGGbDgZQshxA",
                        usage = 42.1,
                        totalRankings = 392,
                        source = "Archon.gg Meta Builds (42.1% popularity, 392 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZMbDzyMDmxMmZZMzMDmxMZGzYmZmZYmxMMGmZghZbZGsBAAAAAAzA",
                        usage = 66.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (66.3% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDjhZxMjxYmB22MzMjZxMDzMzMLbYWGMD",
                        usage = 60.2,
                        totalRankings = 98,
                        source = "Archon.gg Meta Builds (60.2% popularity, 98 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMDDzMjZYGGDzMMGmllZG2AAAAAgBAA",
                        usage = 30.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (30.0% popularity, 10 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 66.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (66.7% popularity, 1,000 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 51.4,
                        totalRankings = 107,
                        source = "Archon.gg Meta Builds (51.4% popularity, 107 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsY4BegZGNGzMmZMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 31.9,
                        totalRankings = 47,
                        source = "Archon.gg Meta Builds (31.9% popularity, 47 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 32.6,
                        totalRankings = 728,
                        source = "Archon.gg Meta Builds (32.6% popularity, 728 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMiZGYGmBw2MzMMbjxwsMTAAAAAAALWmllZbmZCAAWA",
                        usage = 82.9,
                        totalRankings = 363,
                        source = "Archon.gg Meta Builds (82.9% popularity, 363 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBjZYWmZGzMAAAAAAAAAAAYZZY0MzMwMMsww2MzMMbMzws8ATAAsMmZYGmtZAAssMLLz2MzEAAGA",
                        usage = 53.6,
                        totalRankings = 211,
                        source = "Archon.gg Meta Builds (53.6% popularity, 211 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAGAAAAbzMzMmxMDmZWmZYZGMz2mptYmlZMzMMwslBAMAYDYjZbGmZZ2mZmtGAAAgFAwGjxMmZA",
                        usage = 45.4,
                        totalRankings = 771,
                        source = "Archon.gg Meta Builds (45.4% popularity, 771 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZM2mZmZmxYYAAAAAAAAAAQbZMLGmZGjhZrNAYMAAzgtBAAAAMzsst02MjFDMAMDzwYA",
                        usage = 9.8,
                        totalRankings = 133,
                        source = "Archon.gg Meta Builds (9.8% popularity, 133 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 84.4,
                        totalRankings = 468,
                        source = "Archon.gg Meta Builds (84.4% popularity, 468 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmFLz2DgZmBzCDDzYYWMbz0YilZAmZBLEGzyAM2wCAAA",
                        usage = 14.8,
                        totalRankings = 27,
                        source = "Archon.gg Meta Builds (14.8% popularity, 27 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmhZMMLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 47.1,
                        totalRankings = 682,
                        source = "Archon.gg Meta Builds (47.1% popularity, 682 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMDzMDAAAAAAAAAAAAjxGMzMLbbjZGzMzMLDmNmZmZMbMAjhZxsN1MDWgZmBACwsNbbgZjFAbzA",
                        usage = 40.9,
                        totalRankings = 618,
                        source = "Archon.gg Meta Builds (40.9% popularity, 618 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWGsMDAAAAAAttNzMmZmBzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 78.1,
                        totalRankings = 379,
                        source = "Archon.gg Meta Builds (78.1% popularity, 379 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmZmZmZYGGMjhZmZmWmxsNDAAAAAA22mZmhZmxCsMbDAAAAzMDYgNYGjGzGgtBWMA",
                        usage = 72.2,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (72.2% popularity, 18 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZM22mZmZmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 50.5,
                        totalRankings = 560,
                        source = "Archon.gg Meta Builds (50.5% popularity, 560 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbLmZmGmZmZbYZGzgZZYWGzMmZMzsBA",
                        usage = 43.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.5% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzy0MzgtFGzMYMz2wyMzkNWGmlZGAgxA",
                        usage = 80.8,
                        totalRankings = 52,
                        source = "Archon.gg Meta Builds (80.8% popularity, 52 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 33.5,
                        totalRankings = 798,
                        source = "Archon.gg Meta Builds (33.5% popularity, 798 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjYWMwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 53.8,
                        totalRankings = 13,
                        source = "Archon.gg Meta Builds (53.8% popularity, 13 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 53.3,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (53.3% popularity, 15 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 67.9,
                        totalRankings = 1057,
                        source = "Archon.gg Meta Builds (67.9% popularity, 1,057 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMGz2sssMzMAAAADmGGzyYGLjlBzYzMzghZYAAAAAAA4BGzyMzMglwYbbgFwAmhJwMYDA",
                        usage = 40.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (40.0% popularity, 20 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMMzygZWYmZGzwMMz22MjZmZBYmZGzMWGGmZmBAAAxYbbgFwAmhJwMsBA",
                        usage = 71.8,
                        totalRankings = 924,
                        source = "Archon.gg Meta Builds (71.8% popularity, 924 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhxsZmZZwYMTDLzMDjlBzw2MzwMMYAAAAAAglxAAzstBYgNYZxoxMAmNY2gZA",
                        usage = 6.7,
                        totalRankings = 536,
                        source = "Archon.gg Meta Builds (6.7% popularity, 536 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 9.1,
                    totalRankings = 19624,
                    source = "Archon.gg Mythic+ Meta Builds (9.1% popularity, 19,624 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGjxwYmZmZmhZmRzMGjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                    usage = 75.6,
                    totalRankings = 88451,
                    source = "Archon.gg Mythic+ Meta Builds (75.6% popularity, 88,451 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 60.3,
                    totalRankings = 6651,
                    source = "Archon.gg Mythic+ Meta Builds (60.3% popularity, 6,651 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZmZMzMjhJDzAAAAAAAmFjxMjZmZbMzGWmZwYYssNbzghx2GTYGzMDDL",
                    usage = 51.5,
                    totalRankings = 63740,
                    source = "Archon.gg Mythic+ Meta Builds (51.5% popularity, 63,740 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 40.0,
                    totalRankings = 25210,
                    source = "Archon.gg Mythic+ Meta Builds (40.0% popularity, 25,210 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 71.0,
                    totalRankings = 20188,
                    source = "Archon.gg Mythic+ Meta Builds (71.0% popularity, 20,188 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 62.6,
                    totalRankings = 8536,
                    source = "Archon.gg Mythic+ Meta Builds (62.6% popularity, 8,536 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 21.5,
                    totalRankings = 22991,
                    source = "Archon.gg Mythic+ Meta Builds (21.5% popularity, 22,991 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 5.5,
                    totalRankings = 59868,
                    source = "Archon.gg Mythic+ Meta Builds (5.5% popularity, 59,868 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0wMTmtZWmxMzMzYmlZAGzsNmZMzMwAjBLwyY0YbAMDAbYG",
                    usage = 17.8,
                    totalRankings = 14223,
                    source = "Archon.gg Mythic+ Meta Builds (17.8% popularity, 14,223 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDAAAmZYMjxwMxYGAAAYbmZmmxyMzMGzAAwY2swCMwMM0gxCMA",
                    usage = 33.6,
                    totalRankings = 9138,
                    source = "Archon.gg Mythic+ Meta Builds (33.6% popularity, 9,138 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMbjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 17.9,
                    totalRankings = 3657,
                    source = "Archon.gg Mythic+ Meta Builds (17.9% popularity, 3,657 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYsAAAAAAgZGbzgZmBzMMzyMzMzgZMTmxMmxMzwMDDjhZGmlhZbZGsBAAAAAAzA",
                    usage = 29.9,
                    totalRankings = 116216,
                    source = "Archon.gg Mythic+ Meta Builds (29.9% popularity, 116,216 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZMzMMjMjxwMDzywssMD2GmxYZbzMzMmFzMMmZmlNDLDzM",
                    usage = 41.3,
                    totalRankings = 10672,
                    source = "Archon.gg Mythic+ Meta Builds (41.3% popularity, 10,672 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZYMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 40.3,
                    totalRankings = 5509,
                    source = "Archon.gg Mythic+ Meta Builds (40.3% popularity, 5,509 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZbGMDzMLwDYmhx0MzyMAAAAAAMAgZmplZbZGAAbAAAAAAsBgxgZWmlZMzYMDzMzMjZMLjB",
                    usage = 51.4,
                    totalRankings = 41649,
                    source = "Archon.gg Mythic+ Meta Builds (51.4% popularity, 41,649 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbGMDzMLGeAzMMNmZMzAAAAAAYAAzMTLzyyMAAbmZGMmZMzYWMLjhZmNzsNjtZgBAAAAAAA",
                    usage = 23.7,
                    totalRankings = 4026,
                    source = "Archon.gg Mythic+ Meta Builds (23.7% popularity, 4,026 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZwMMzsAjZGNGzDMmZmhhZwDMzMzMzMzMzMmZmxMzyMNzsMLAAAwCAAAAAAmNAAAAAAAA",
                    usage = 36.9,
                    totalRankings = 13899,
                    source = "Archon.gg Mythic+ Meta Builds (36.9% popularity, 13,899 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 49.4,
                    totalRankings = 19572,
                    source = "Archon.gg Mythic+ Meta Builds (49.4% popularity, 19,572 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxsYZmlxsY2GzM2wmtZjZjZzyMzyCDNzMDMDzAYbmZGmNmZYWegJAAAAAz202sNzysBAAAAbA",
                    usage = 13.1,
                    totalRankings = 11760,
                    source = "Archon.gg Mythic+ Meta Builds (13.1% popularity, 11,760 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 28.3,
                    totalRankings = 11747,
                    source = "Archon.gg Mythic+ Meta Builds (28.3% popularity, 11,747 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLzMmZZ2mZmlGAAAgFAD2MDMMA",
                    usage = 19.4,
                    totalRankings = 16859,
                    source = "Archon.gg Mythic+ Meta Builds (19.4% popularity, 16,859 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMzMzMLbzMzYmtxwAAAMAAAAAAA0WzMzihZGGzwWbAADMAAbDAAAAYmZbbptZGLMYAYwMMG",
                    usage = 11.9,
                    totalRankings = 61020,
                    source = "Archon.gg Mythic+ Meta Builds (11.9% popularity, 61,020 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 30.3,
                    totalRankings = 56910,
                    source = "Archon.gg Mythic+ Meta Builds (30.3% popularity, 56,910 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgtZmZMGjxMzYmNz2MzMzMAAAAAAAAAAAWmlZbwMzgZhhxYMMLbPgZaMxyAzMAQAmtZbDM2sBAA",
                    usage = 20.0,
                    totalRankings = 28170,
                    source = "Archon.gg Mythic+ Meta Builds (20.0% popularity, 28,170 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 18.0,
                    totalRankings = 11084,
                    source = "Archon.gg Mythic+ Meta Builds (18.0% popularity, 11,084 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 32.9,
                    totalRankings = 14803,
                    source = "Archon.gg Mythic+ Meta Builds (32.9% popularity, 14,803 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 80.2,
                    totalRankings = 6750,
                    source = "Archon.gg Mythic+ Meta Builds (80.2% popularity, 6,750 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGzMzMDzwDMmZmhZmZmWmxsNDAAAAAA2WmZGMzYWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 50.2,
                    totalRankings = 4633,
                    source = "Archon.gg Mythic+ Meta Builds (50.2% popularity, 4,633 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 44.8,
                    totalRankings = 11802,
                    source = "Archon.gg Mythic+ Meta Builds (44.8% popularity, 11,802 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzY2mlxMgZmZAAAAAAbmxwGsAzwQjNAwsNNDYDzMNMzMz2MWmxMYWGLWmZMYYmtBA",
                    usage = 37.0,
                    totalRankings = 38055,
                    source = "Archon.gg Mythic+ Meta Builds (37.0% popularity, 38,055 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBswMzMDzYmtZsMzMZhlxyYmBAYMA",
                    usage = 31.7,
                    totalRankings = 6493,
                    source = "Archon.gg Mythic+ Meta Builds (31.7% popularity, 6,493 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 21.5,
                    totalRankings = 79219,
                    source = "Archon.gg Mythic+ Meta Builds (21.5% popularity, 79,219 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMbglZAAAAAAAAwMsA",
                    usage = 29.4,
                    totalRankings = 3024,
                    source = "Archon.gg Mythic+ Meta Builds (29.4% popularity, 3,024 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                    usage = 50.0,
                    totalRankings = 16402,
                    source = "Archon.gg Mythic+ Meta Builds (50.0% popularity, 16,402 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 11.0,
                    totalRankings = 33846,
                    source = "Archon.gg Mythic+ Meta Builds (11.0% popularity, 33,846 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMmZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0AWA",
                    usage = 26.7,
                    totalRankings = 2757,
                    source = "Archon.gg Mythic+ Meta Builds (26.7% popularity, 2,757 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsZmhZWGMzCzMzYGmhZ22mZMzMLAzMzYmxywwMzMAAAIGbbDsAGwMMBGsBA",
                    usage = 42.1,
                    totalRankings = 41975,
                    source = "Archon.gg Mythic+ Meta Builds (42.1% popularity, 41,975 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAAwYGzMzMzMmNjZZwYMaMLjZYsMmZG2mZGzADDAAAAAAsMGAYGbAGYDWWMaMDgZBmNYmB",
                    usage = 25.9,
                    totalRankings = 67892,
                    source = "Archon.gg Mythic+ Meta Builds (25.9% popularity, 67,892 parses)"
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
