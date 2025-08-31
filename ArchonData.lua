-- Archon Talents Data File
-- Generated: 2025-08-31 08:05:59 UTC
-- Version: 1756645559
-- Source: Archon.gg Meta Builds

local function UpdateSpecData()
    local dataVersion = 1756645559
    local lastUpdated = "2025-08-31 08:05:59 UTC"
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
                        usage = 24.6,
                        totalRankings = 25267,
                        source = "Archon.gg Meta Builds (24.6% popularity, 25,267 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 63.9,
                        totalRankings = 8356,
                        source = "Archon.gg Meta Builds (63.9% popularity, 8,356 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.1,
                        totalRankings = 6037,
                        source = "Archon.gg Meta Builds (19.1% popularity, 6,037 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 39.8,
                        totalRankings = 25050,
                        source = "Archon.gg Meta Builds (39.8% popularity, 25,050 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 41.3,
                        totalRankings = 8169,
                        source = "Archon.gg Meta Builds (41.3% popularity, 8,169 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmlMGzMwDYWGLzMDwMGLzsNjFmZmZmlZMzYmZshFGgBYbbsgpZmlBAAAAbmZmBYzAD",
                        usage = 29.6,
                        totalRankings = 14046,
                        source = "Archon.gg Meta Builds (29.6% popularity, 14,046 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 71.9,
                        totalRankings = 6010,
                        source = "Archon.gg Meta Builds (71.9% popularity, 6,010 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.8,
                        totalRankings = 3710,
                        source = "Archon.gg Meta Builds (30.8% popularity, 3,710 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 21.1,
                        totalRankings = 16855,
                        source = "Archon.gg Meta Builds (21.1% popularity, 16,855 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 21.8,
                        totalRankings = 11067,
                        source = "Archon.gg Meta Builds (21.8% popularity, 11,067 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 38.6,
                        totalRankings = 4953,
                        source = "Archon.gg Meta Builds (38.6% popularity, 4,953 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 6.4,
                        totalRankings = 1264,
                        source = "Archon.gg Meta Builds (6.4% popularity, 1,264 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 78.4,
                        totalRankings = 22558,
                        source = "Archon.gg Meta Builds (78.4% popularity, 22,558 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.5,
                        totalRankings = 15139,
                        source = "Archon.gg Meta Builds (71.5% popularity, 15,139 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 66.9,
                        totalRankings = 2397,
                        source = "Archon.gg Meta Builds (66.9% popularity, 2,397 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 42.5,
                        totalRankings = 23140,
                        source = "Archon.gg Meta Builds (42.5% popularity, 23,140 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 46.2,
                        totalRankings = 1659,
                        source = "Archon.gg Meta Builds (46.2% popularity, 1,659 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZwMmxsYgZGNGzMmhhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 27.4,
                        totalRankings = 11269,
                        source = "Archon.gg Meta Builds (27.4% popularity, 11,269 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 29.1,
                        totalRankings = 6673,
                        source = "Archon.gg Meta Builds (29.1% popularity, 6,673 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMbMzwsYCAAAAAAYxyssMbzMTAAwGA",
                        usage = 24.0,
                        totalRankings = 8368,
                        source = "Archon.gg Meta Builds (24.0% popularity, 8,368 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 49.2,
                        totalRankings = 9106,
                        source = "Archon.gg Meta Builds (49.2% popularity, 9,106 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 32.6,
                        totalRankings = 9946,
                        source = "Archon.gg Meta Builds (32.6% popularity, 9,946 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 12.8,
                        totalRankings = 7944,
                        source = "Archon.gg Meta Builds (12.8% popularity, 7,944 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 58.4,
                        totalRankings = 27430,
                        source = "Archon.gg Meta Builds (58.4% popularity, 27,430 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 9.4,
                        totalRankings = 3975,
                        source = "Archon.gg Meta Builds (9.4% popularity, 3,975 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 38.3,
                        totalRankings = 17162,
                        source = "Archon.gg Meta Builds (38.3% popularity, 17,162 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 42.8,
                        totalRankings = 15982,
                        source = "Archon.gg Meta Builds (42.8% popularity, 15,982 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 67.7,
                        totalRankings = 12991,
                        source = "Archon.gg Meta Builds (67.7% popularity, 12,991 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 83.8,
                        totalRankings = 2532,
                        source = "Archon.gg Meta Builds (83.8% popularity, 2,532 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.0,
                        totalRankings = 2931,
                        source = "Archon.gg Meta Builds (53.0% popularity, 2,931 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 19.1,
                        totalRankings = 16588,
                        source = "Archon.gg Meta Builds (19.1% popularity, 16,588 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 65.0,
                        totalRankings = 4482,
                        source = "Archon.gg Meta Builds (65.0% popularity, 4,482 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 11.3,
                        totalRankings = 23979,
                        source = "Archon.gg Meta Builds (11.3% popularity, 23,979 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.4,
                        totalRankings = 3996,
                        source = "Archon.gg Meta Builds (20.4% popularity, 3,996 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.0,
                        totalRankings = 13263,
                        source = "Archon.gg Meta Builds (76.0% popularity, 13,263 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 35.7,
                        totalRankings = 15630,
                        source = "Archon.gg Meta Builds (35.7% popularity, 15,630 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 49.5,
                        totalRankings = 3664,
                        source = "Archon.gg Meta Builds (49.5% popularity, 3,664 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 58.4,
                        totalRankings = 16698,
                        source = "Archon.gg Meta Builds (58.4% popularity, 16,698 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 25.6,
                        totalRankings = 9836,
                        source = "Archon.gg Meta Builds (25.6% popularity, 9,836 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYmxwwMzMzMjZmZixMzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 51.8,
                        totalRankings = 3003,
                        source = "Archon.gg Meta Builds (51.8% popularity, 3,003 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 72.7,
                        totalRankings = 1548,
                        source = "Archon.gg Meta Builds (72.7% popularity, 1,548 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 31.6,
                        totalRankings = 1048,
                        source = "Archon.gg Meta Builds (31.6% popularity, 1,048 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 64.7,
                        totalRankings = 3210,
                        source = "Archon.gg Meta Builds (64.7% popularity, 3,210 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 32.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (32.6% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 30.2,
                        totalRankings = 1856,
                        source = "Archon.gg Meta Builds (30.2% popularity, 1,856 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 87.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (87.0% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 14.8,
                        totalRankings = 459,
                        source = "Archon.gg Meta Builds (14.8% popularity, 459 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.9,
                        totalRankings = 2088,
                        source = "Archon.gg Meta Builds (24.9% popularity, 2,088 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaMzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 29.2,
                        totalRankings = 2146,
                        source = "Archon.gg Meta Builds (29.2% popularity, 2,146 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.0,
                        totalRankings = 1246,
                        source = "Archon.gg Meta Builds (41.0% popularity, 1,246 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 9.1,
                        totalRankings = 474,
                        source = "Archon.gg Meta Builds (9.1% popularity, 474 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 85.1,
                        totalRankings = 2104,
                        source = "Archon.gg Meta Builds (85.1% popularity, 2,104 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 77.8,
                        totalRankings = 2151,
                        source = "Archon.gg Meta Builds (77.8% popularity, 2,151 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 57.3,
                        totalRankings = 365,
                        source = "Archon.gg Meta Builds (57.3% popularity, 365 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 64.1,
                        totalRankings = 4038,
                        source = "Archon.gg Meta Builds (64.1% popularity, 4,038 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 43.2,
                        totalRankings = 722,
                        source = "Archon.gg Meta Builds (43.2% popularity, 722 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 46.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (46.3% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 32.7,
                        totalRankings = 1411,
                        source = "Archon.gg Meta Builds (32.7% popularity, 1,411 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 39.0,
                        totalRankings = 1459,
                        source = "Archon.gg Meta Builds (39.0% popularity, 1,459 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 55.9,
                        totalRankings = 1232,
                        source = "Archon.gg Meta Builds (55.9% popularity, 1,232 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 43.0,
                        totalRankings = 1631,
                        source = "Archon.gg Meta Builds (43.0% popularity, 1,631 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 10.5,
                        totalRankings = 1173,
                        source = "Archon.gg Meta Builds (10.5% popularity, 1,173 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 71.6,
                        totalRankings = 2375,
                        source = "Archon.gg Meta Builds (71.6% popularity, 2,375 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMbDwYDLAAA",
                        usage = 5.5,
                        totalRankings = 343,
                        source = "Archon.gg Meta Builds (5.5% popularity, 343 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.9,
                        totalRankings = 2809,
                        source = "Archon.gg Meta Builds (30.9% popularity, 2,809 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 43.2,
                        totalRankings = 2338,
                        source = "Archon.gg Meta Builds (43.2% popularity, 2,338 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 76.5,
                        totalRankings = 2282,
                        source = "Archon.gg Meta Builds (76.5% popularity, 2,282 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 90.9,
                        totalRankings = 548,
                        source = "Archon.gg Meta Builds (90.9% popularity, 548 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 53.1,
                        totalRankings = 880,
                        source = "Archon.gg Meta Builds (53.1% popularity, 880 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 44.1,
                        totalRankings = 2458,
                        source = "Archon.gg Meta Builds (44.1% popularity, 2,458 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 72.0,
                        totalRankings = 950,
                        source = "Archon.gg Meta Builds (72.0% popularity, 950 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 15.5,
                        totalRankings = 2777,
                        source = "Archon.gg Meta Builds (15.5% popularity, 2,777 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 19.4,
                        totalRankings = 521,
                        source = "Archon.gg Meta Builds (19.4% popularity, 521 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.9,
                        totalRankings = 1677,
                        source = "Archon.gg Meta Builds (80.9% popularity, 1,677 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 41.0,
                        totalRankings = 2744,
                        source = "Archon.gg Meta Builds (41.0% popularity, 2,744 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 55.2,
                        totalRankings = 507,
                        source = "Archon.gg Meta Builds (55.2% popularity, 507 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhhNzMWmxgZWYmZGzwMMz22YMzMLYGzMzYmZWGGeAzMAAAIGbbDsAGwMMBmhNA",
                        usage = 58.9,
                        totalRankings = 2557,
                        source = "Archon.gg Meta Builds (58.9% popularity, 2,557 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMTDLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmNM2wMD",
                        usage = 16.6,
                        totalRankings = 1443,
                        source = "Archon.gg Meta Builds (16.6% popularity, 1,443 parses)"
                    },
                },
            },
        },
        ["Loom'ithar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 26.9,
                        totalRankings = 24955,
                        source = "Archon.gg Meta Builds (26.9% popularity, 24,955 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 64.6,
                        totalRankings = 8460,
                        source = "Archon.gg Meta Builds (64.6% popularity, 8,460 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.8,
                        totalRankings = 5907,
                        source = "Archon.gg Meta Builds (19.8% popularity, 5,907 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 36.0,
                        totalRankings = 24618,
                        source = "Archon.gg Meta Builds (36.0% popularity, 24,618 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 38.4,
                        totalRankings = 7926,
                        source = "Archon.gg Meta Builds (38.4% popularity, 7,926 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmlMGzMwDYWGLzMDwMGLzsNjFmZmZmlZMzYmZshFGgBYbbsgpZmlBAAAAbmZmBYzAD",
                        usage = 29.3,
                        totalRankings = 13910,
                        source = "Archon.gg Meta Builds (29.3% popularity, 13,910 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 71.5,
                        totalRankings = 5882,
                        source = "Archon.gg Meta Builds (71.5% popularity, 5,882 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 30.3,
                        totalRankings = 3488,
                        source = "Archon.gg Meta Builds (30.3% popularity, 3,488 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.4,
                        totalRankings = 16559,
                        source = "Archon.gg Meta Builds (23.4% popularity, 16,559 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 20.9,
                        totalRankings = 10975,
                        source = "Archon.gg Meta Builds (20.9% popularity, 10,975 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.5,
                        totalRankings = 4933,
                        source = "Archon.gg Meta Builds (39.5% popularity, 4,933 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 7.2,
                        totalRankings = 1262,
                        source = "Archon.gg Meta Builds (7.2% popularity, 1,262 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 77.7,
                        totalRankings = 21961,
                        source = "Archon.gg Meta Builds (77.7% popularity, 21,961 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.1,
                        totalRankings = 14596,
                        source = "Archon.gg Meta Builds (71.1% popularity, 14,596 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 68.8,
                        totalRankings = 2307,
                        source = "Archon.gg Meta Builds (68.8% popularity, 2,307 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 44.7,
                        totalRankings = 23334,
                        source = "Archon.gg Meta Builds (44.7% popularity, 23,334 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 44.2,
                        totalRankings = 1603,
                        source = "Archon.gg Meta Builds (44.2% popularity, 1,603 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZwMmxsYgZGNGzMmhhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 29.0,
                        totalRankings = 10924,
                        source = "Archon.gg Meta Builds (29.0% popularity, 10,924 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 29.6,
                        totalRankings = 6600,
                        source = "Archon.gg Meta Builds (29.6% popularity, 6,600 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBw2MzMMbMzwsYCAAAAAAYxyssMbzMTAAwGA",
                        usage = 26.7,
                        totalRankings = 8222,
                        source = "Archon.gg Meta Builds (26.7% popularity, 8,222 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 50.2,
                        totalRankings = 8852,
                        source = "Archon.gg Meta Builds (50.2% popularity, 8,852 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.3,
                        totalRankings = 9774,
                        source = "Archon.gg Meta Builds (33.3% popularity, 9,774 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 13.1,
                        totalRankings = 7662,
                        source = "Archon.gg Meta Builds (13.1% popularity, 7,662 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 58.1,
                        totalRankings = 26673,
                        source = "Archon.gg Meta Builds (58.1% popularity, 26,673 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 8.5,
                        totalRankings = 3640,
                        source = "Archon.gg Meta Builds (8.5% popularity, 3,640 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 37.8,
                        totalRankings = 17074,
                        source = "Archon.gg Meta Builds (37.8% popularity, 17,074 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 53.3,
                        totalRankings = 15818,
                        source = "Archon.gg Meta Builds (53.3% popularity, 15,818 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 68.3,
                        totalRankings = 13118,
                        source = "Archon.gg Meta Builds (68.3% popularity, 13,118 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 83.3,
                        totalRankings = 2473,
                        source = "Archon.gg Meta Builds (83.3% popularity, 2,473 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.3,
                        totalRankings = 2871,
                        source = "Archon.gg Meta Builds (52.3% popularity, 2,871 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 20.2,
                        totalRankings = 16380,
                        source = "Archon.gg Meta Builds (20.2% popularity, 16,380 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 64.1,
                        totalRankings = 4376,
                        source = "Archon.gg Meta Builds (64.1% popularity, 4,376 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 12.3,
                        totalRankings = 23690,
                        source = "Archon.gg Meta Builds (12.3% popularity, 23,690 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 21.9,
                        totalRankings = 3747,
                        source = "Archon.gg Meta Builds (21.9% popularity, 3,747 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.6,
                        totalRankings = 11536,
                        source = "Archon.gg Meta Builds (76.6% popularity, 11,536 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 31.8,
                        totalRankings = 17120,
                        source = "Archon.gg Meta Builds (31.8% popularity, 17,120 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 49.9,
                        totalRankings = 3533,
                        source = "Archon.gg Meta Builds (49.9% popularity, 3,533 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 57.0,
                        totalRankings = 16436,
                        source = "Archon.gg Meta Builds (57.0% popularity, 16,436 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 24.8,
                        totalRankings = 9653,
                        source = "Archon.gg Meta Builds (24.8% popularity, 9,653 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 47.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (47.9% popularity, 1,000 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 77.4,
                        totalRankings = 711,
                        source = "Archon.gg Meta Builds (77.4% popularity, 711 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 31.1,
                        totalRankings = 684,
                        source = "Archon.gg Meta Builds (31.1% popularity, 684 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 44.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (44.5% popularity, 1,000 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 24.9,
                        totalRankings = 257,
                        source = "Archon.gg Meta Builds (24.9% popularity, 257 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUs0MGzMAzyYZmZwwMGLzsNjlxMjZmFjZGzMjNswAMAbbjFMNzsMAAAAYzMzMGYzAD",
                        usage = 41.3,
                        totalRankings = 998,
                        source = "Archon.gg Meta Builds (41.3% popularity, 998 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 85.1,
                        totalRankings = 477,
                        source = "Archon.gg Meta Builds (85.1% popularity, 477 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 14.7,
                        totalRankings = 116,
                        source = "Archon.gg Meta Builds (14.7% popularity, 116 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.5% popularity, 1,000 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 31.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (31.2% popularity, 1,000 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 44.1,
                        totalRankings = 952,
                        source = "Archon.gg Meta Builds (44.1% popularity, 952 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAwMD4BMGTNMzMAAAAYGzsNmZWGzMwMbzYwCsMGGbDgZQshxA",
                        usage = 13.9,
                        totalRankings = 208,
                        source = "Archon.gg Meta Builds (13.9% popularity, 208 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 85.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (85.4% popularity, 1,000 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 72.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (72.9% popularity, 1,000 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 64.4,
                        totalRankings = 73,
                        source = "Archon.gg Meta Builds (64.4% popularity, 73 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 66.7,
                        totalRankings = 1269,
                        source = "Archon.gg Meta Builds (66.7% popularity, 1,269 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 43.1,
                        totalRankings = 160,
                        source = "Archon.gg Meta Builds (43.1% popularity, 160 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 48.8,
                        totalRankings = 410,
                        source = "Archon.gg Meta Builds (48.8% popularity, 410 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGmx2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 34.6,
                        totalRankings = 960,
                        source = "Archon.gg Meta Builds (34.6% popularity, 960 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 51.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (51.5% popularity, 1,000 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 75.1,
                        totalRankings = 692,
                        source = "Archon.gg Meta Builds (75.1% popularity, 692 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 45.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.1% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMYYAAAGAAAAAAASmZWMMzwYMzWbAwYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 6.1,
                        totalRankings = 652,
                        source = "Archon.gg Meta Builds (6.1% popularity, 652 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 77.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (77.4% popularity, 1,000 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzYYGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMbDwYDLAAA",
                        usage = 5.4,
                        totalRankings = 56,
                        source = "Archon.gg Meta Builds (5.4% popularity, 56 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 35.7,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (35.7% popularity, 1,000 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 69.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (69.8% popularity, 1,000 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 83.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (83.1% popularity, 1,000 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 99.3,
                        totalRankings = 137,
                        source = "Archon.gg Meta Builds (99.3% popularity, 137 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 54.1,
                        totalRankings = 290,
                        source = "Archon.gg Meta Builds (54.1% popularity, 290 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 49.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (49.0% popularity, 1,000 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 79.7,
                        totalRankings = 281,
                        source = "Archon.gg Meta Builds (79.7% popularity, 281 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 16.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (16.8% popularity, 1,000 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 31.8,
                        totalRankings = 22,
                        source = "Archon.gg Meta Builds (31.8% popularity, 22 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 73.8,
                        totalRankings = 42,
                        source = "Archon.gg Meta Builds (73.8% popularity, 42 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 51.2,
                        totalRankings = 1613,
                        source = "Archon.gg Meta Builds (51.2% popularity, 1,613 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 54.5,
                        totalRankings = 99,
                        source = "Archon.gg Meta Builds (54.5% popularity, 99 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 58.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.3% popularity, 1,000 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 18.1,
                        totalRankings = 980,
                        source = "Archon.gg Meta Builds (18.1% popularity, 980 parses)"
                    },
                },
            },
        },
        ["Soulbinder Naazindhri"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 43.5,
                        totalRankings = 23713,
                        source = "Archon.gg Meta Builds (43.5% popularity, 23,713 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYGz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 22.8,
                        totalRankings = 6580,
                        source = "Archon.gg Meta Builds (22.8% popularity, 6,580 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 19.3,
                        totalRankings = 5414,
                        source = "Archon.gg Meta Builds (19.3% popularity, 5,414 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 28.4,
                        totalRankings = 22635,
                        source = "Archon.gg Meta Builds (28.4% popularity, 22,635 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 30.3,
                        totalRankings = 7246,
                        source = "Archon.gg Meta Builds (30.3% popularity, 7,246 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzyYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALmZMAbGGD",
                        usage = 26.5,
                        totalRankings = 12749,
                        source = "Archon.gg Meta Builds (26.5% popularity, 12,749 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 13.1,
                        totalRankings = 5316,
                        source = "Archon.gg Meta Builds (13.1% popularity, 5,316 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 17.0,
                        totalRankings = 3138,
                        source = "Archon.gg Meta Builds (17.0% popularity, 3,138 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.7,
                        totalRankings = 15270,
                        source = "Archon.gg Meta Builds (23.7% popularity, 15,270 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 20.8,
                        totalRankings = 10213,
                        source = "Archon.gg Meta Builds (20.8% popularity, 10,213 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.4,
                        totalRankings = 4629,
                        source = "Archon.gg Meta Builds (39.4% popularity, 4,629 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 8.3,
                        totalRankings = 1154,
                        source = "Archon.gg Meta Builds (8.3% popularity, 1,154 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 30.2,
                        totalRankings = 19734,
                        source = "Archon.gg Meta Builds (30.2% popularity, 19,734 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                        usage = 34.0,
                        totalRankings = 13415,
                        source = "Archon.gg Meta Builds (34.0% popularity, 13,415 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 31.2,
                        totalRankings = 2094,
                        source = "Archon.gg Meta Builds (31.2% popularity, 2,094 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 48.3,
                        totalRankings = 21231,
                        source = "Archon.gg Meta Builds (48.3% popularity, 21,231 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 40.6,
                        totalRankings = 1533,
                        source = "Archon.gg Meta Builds (40.6% popularity, 1,533 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 26.6,
                        totalRankings = 10417,
                        source = "Archon.gg Meta Builds (26.6% popularity, 10,417 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 28.3,
                        totalRankings = 6119,
                        source = "Archon.gg Meta Builds (28.3% popularity, 6,119 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.7,
                        totalRankings = 7662,
                        source = "Archon.gg Meta Builds (25.7% popularity, 7,662 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 33.3,
                        totalRankings = 8170,
                        source = "Archon.gg Meta Builds (33.3% popularity, 8,170 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.8,
                        totalRankings = 8877,
                        source = "Archon.gg Meta Builds (33.8% popularity, 8,877 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.0,
                        totalRankings = 6868,
                        source = "Archon.gg Meta Builds (7.0% popularity, 6,868 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 22.0,
                        totalRankings = 24427,
                        source = "Archon.gg Meta Builds (22.0% popularity, 24,427 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.7,
                        totalRankings = 3230,
                        source = "Archon.gg Meta Builds (6.7% popularity, 3,230 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 36.7,
                        totalRankings = 16024,
                        source = "Archon.gg Meta Builds (36.7% popularity, 16,024 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 51.1,
                        totalRankings = 14679,
                        source = "Archon.gg Meta Builds (51.1% popularity, 14,679 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZDWmBAAAAAg22mZGMzYMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 65.5,
                        totalRankings = 11243,
                        source = "Archon.gg Meta Builds (65.5% popularity, 11,243 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 51.7,
                        totalRankings = 2393,
                        source = "Archon.gg Meta Builds (51.7% popularity, 2,393 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 45.9,
                        totalRankings = 3392,
                        source = "Archon.gg Meta Builds (45.9% popularity, 3,392 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 15.9,
                        totalRankings = 15100,
                        source = "Archon.gg Meta Builds (15.9% popularity, 15,100 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 36.6,
                        totalRankings = 4029,
                        source = "Archon.gg Meta Builds (36.6% popularity, 4,029 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 13.7,
                        totalRankings = 21646,
                        source = "Archon.gg Meta Builds (13.7% popularity, 21,646 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 20.2,
                        totalRankings = 3330,
                        source = "Archon.gg Meta Builds (20.2% popularity, 3,330 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 31.2,
                        totalRankings = 12933,
                        source = "Archon.gg Meta Builds (31.2% popularity, 12,933 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 27.6,
                        totalRankings = 13777,
                        source = "Archon.gg Meta Builds (27.6% popularity, 13,777 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 14.8,
                        totalRankings = 3022,
                        source = "Archon.gg Meta Builds (14.8% popularity, 3,022 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 40.1,
                        totalRankings = 15414,
                        source = "Archon.gg Meta Builds (40.1% popularity, 15,414 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 13.4,
                        totalRankings = 8759,
                        source = "Archon.gg Meta Builds (13.4% popularity, 8,759 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGzMGGmZmZmZMzMyMGjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 72.1,
                        totalRankings = 3204,
                        source = "Archon.gg Meta Builds (72.1% popularity, 3,204 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYGz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 25.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (25.3% popularity, 1,000 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYmxwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 26.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.5% popularity, 1,000 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 46.1,
                        totalRankings = 2833,
                        source = "Archon.gg Meta Builds (46.1% popularity, 2,833 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 11.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (11.3% popularity, 1,000 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBYWYZmZWYYmFzyMLzMbzMzMzMLmlxwgNsAgxy2MbYMbDgJAAAALMjBYzYGD",
                        usage = 65.6,
                        totalRankings = 1542,
                        source = "Archon.gg Meta Builds (65.6% popularity, 1,542 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbjZmFmZmZ2sxYbmZmxMDAAAAAwSwsZgZG1MmFWmZGjZmZAAAAAAAAAAAANzysMzsNAgFYmZAswgB",
                        usage = 26.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (26.9% popularity, 1,000 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 10.9,
                        totalRankings = 395,
                        source = "Archon.gg Meta Builds (10.9% popularity, 395 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.5,
                        totalRankings = 1982,
                        source = "Archon.gg Meta Builds (25.5% popularity, 1,982 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGzMmlZGmBmBjZaGzMNz2YZwwYMzyMgZM2YmZZmZwMgxMwGYBMDTgFwywA",
                        usage = 17.0,
                        totalRankings = 1912,
                        source = "Archon.gg Meta Builds (17.0% popularity, 1,912 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 42.6,
                        totalRankings = 1215,
                        source = "Archon.gg Meta Builds (42.6% popularity, 1,215 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 11.8,
                        totalRankings = 414,
                        source = "Archon.gg Meta Builds (11.8% popularity, 414 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 33.4,
                        totalRankings = 1711,
                        source = "Archon.gg Meta Builds (33.4% popularity, 1,711 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                        usage = 70.6,
                        totalRankings = 1784,
                        source = "Archon.gg Meta Builds (70.6% popularity, 1,784 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 23.6,
                        totalRankings = 318,
                        source = "Archon.gg Meta Builds (23.6% popularity, 318 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 71.9,
                        totalRankings = 3623,
                        source = "Archon.gg Meta Builds (71.9% popularity, 3,623 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 42.4,
                        totalRankings = 554,
                        source = "Archon.gg Meta Builds (42.4% popularity, 554 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 45.3,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.3% popularity, 1,000 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 33.1,
                        totalRankings = 1252,
                        source = "Archon.gg Meta Builds (33.1% popularity, 1,252 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 64.7,
                        totalRankings = 1363,
                        source = "Archon.gg Meta Builds (64.7% popularity, 1,363 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzYWmZMzMDAAAAAAAAAAALLDjYmBmBWWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 39.5,
                        totalRankings = 1046,
                        source = "Archon.gg Meta Builds (39.5% popularity, 1,046 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 44.7,
                        totalRankings = 1499,
                        source = "Archon.gg Meta Builds (44.7% popularity, 1,499 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMPgZWGLjZmZmx2MzMMGDDAAwAAAAAAAQyMzihZGGjZ2aDAYAAmBbDAAAAYmZZbptZGLGYAYGmhxA",
                        usage = 16.2,
                        totalRankings = 1024,
                        source = "Archon.gg Meta Builds (16.2% popularity, 1,024 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYzY22mZDAAAAAAj0MMMzYbGMbDjZbmltxMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 35.0,
                        totalRankings = 1977,
                        source = "Archon.gg Meta Builds (35.0% popularity, 1,977 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNmZYGjxMDzYsNzMzMzMDAAAAAAAAAAmFLzG2mZGMLMMmZMMbbPgZaMxyMAzsgFCjZZAGbYBAA",
                        usage = 3.7,
                        totalRankings = 294,
                        source = "Archon.gg Meta Builds (3.7% popularity, 294 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 33.6,
                        totalRankings = 2629,
                        source = "Archon.gg Meta Builds (33.6% popularity, 2,629 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 56.4,
                        totalRankings = 2092,
                        source = "Archon.gg Meta Builds (56.4% popularity, 2,092 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZZwyMAAAAAA022MzgZGMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 86.2,
                        totalRankings = 1383,
                        source = "Archon.gg Meta Builds (86.2% popularity, 1,383 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 65.5,
                        totalRankings = 533,
                        source = "Archon.gg Meta Builds (65.5% popularity, 533 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 43.8,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (43.8% popularity, 1,000 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMLA",
                        usage = 29.1,
                        totalRankings = 2127,
                        source = "Archon.gg Meta Builds (29.1% popularity, 2,127 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                        usage = 51.8,
                        totalRankings = 883,
                        source = "Archon.gg Meta Builds (51.8% popularity, 883 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 18.0,
                        totalRankings = 2539,
                        source = "Archon.gg Meta Builds (18.0% popularity, 2,539 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 17.2,
                        totalRankings = 320,
                        source = "Archon.gg Meta Builds (17.2% popularity, 320 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 53.1,
                        totalRankings = 2106,
                        source = "Archon.gg Meta Builds (53.1% popularity, 2,106 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 44.2,
                        totalRankings = 1900,
                        source = "Archon.gg Meta Builds (44.2% popularity, 1,900 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wMzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwiZMsBDMDb0AWA",
                        usage = 33.9,
                        totalRankings = 514,
                        source = "Archon.gg Meta Builds (33.9% popularity, 514 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 35.0,
                        totalRankings = 2158,
                        source = "Archon.gg Meta Builds (35.0% popularity, 2,158 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 25.2,
                        totalRankings = 1279,
                        source = "Archon.gg Meta Builds (25.2% popularity, 1,279 parses)"
                    },
                },
            },
        },
        ["Forgeweaver Araz"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 50.7,
                        totalRankings = 20671,
                        source = "Archon.gg Meta Builds (50.7% popularity, 20,671 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYGz2MzMYGgFzihBGY2YoxCGgZAMA",
                        usage = 21.8,
                        totalRankings = 5492,
                        source = "Archon.gg Meta Builds (21.8% popularity, 5,492 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 18.4,
                        totalRankings = 4633,
                        source = "Archon.gg Meta Builds (18.4% popularity, 4,633 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 32.8,
                        totalRankings = 19111,
                        source = "Archon.gg Meta Builds (32.8% popularity, 19,111 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 26.1,
                        totalRankings = 5643,
                        source = "Archon.gg Meta Builds (26.1% popularity, 5,643 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMbmlZ2mZWYmZGzyMGDzM2wCDwAstNWw0MzyAAAAgNzMmBsZYM",
                        usage = 12.7,
                        totalRankings = 11074,
                        source = "Archon.gg Meta Builds (12.7% popularity, 11,074 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                        usage = 27.4,
                        totalRankings = 4492,
                        source = "Archon.gg Meta Builds (27.4% popularity, 4,492 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 19.7,
                        totalRankings = 2268,
                        source = "Archon.gg Meta Builds (19.7% popularity, 2,268 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 23.4,
                        totalRankings = 11996,
                        source = "Archon.gg Meta Builds (23.4% popularity, 11,996 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 16.4,
                        totalRankings = 9090,
                        source = "Archon.gg Meta Builds (16.4% popularity, 9,090 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.3,
                        totalRankings = 3880,
                        source = "Archon.gg Meta Builds (39.3% popularity, 3,880 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 8.5,
                        totalRankings = 1019,
                        source = "Archon.gg Meta Builds (8.5% popularity, 1,019 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZGzMMzwwYMjhxMmtlZwGAAAAAAMDA",
                        usage = 41.2,
                        totalRankings = 16433,
                        source = "Archon.gg Meta Builds (41.2% popularity, 16,433 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 20.9,
                        totalRankings = 11012,
                        source = "Archon.gg Meta Builds (20.9% popularity, 11,012 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 28.7,
                        totalRankings = 1710,
                        source = "Archon.gg Meta Builds (28.7% popularity, 1,710 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 50.0,
                        totalRankings = 18807,
                        source = "Archon.gg Meta Builds (50.0% popularity, 18,807 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 39.7,
                        totalRankings = 1182,
                        source = "Archon.gg Meta Builds (39.7% popularity, 1,182 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMzMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 30.3,
                        totalRankings = 8446,
                        source = "Archon.gg Meta Builds (30.3% popularity, 8,446 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 28.6,
                        totalRankings = 5167,
                        source = "Archon.gg Meta Builds (28.6% popularity, 5,167 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 25.6,
                        totalRankings = 6403,
                        source = "Archon.gg Meta Builds (25.6% popularity, 6,403 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 29.3,
                        totalRankings = 7011,
                        source = "Archon.gg Meta Builds (29.3% popularity, 7,011 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 32.1,
                        totalRankings = 7291,
                        source = "Archon.gg Meta Builds (32.1% popularity, 7,291 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 7.5,
                        totalRankings = 5463,
                        source = "Archon.gg Meta Builds (7.5% popularity, 5,463 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 17.8,
                        totalRankings = 20191,
                        source = "Archon.gg Meta Builds (17.8% popularity, 20,191 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 6.5,
                        totalRankings = 2248,
                        source = "Archon.gg Meta Builds (6.5% popularity, 2,248 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 36.3,
                        totalRankings = 13368,
                        source = "Archon.gg Meta Builds (36.3% popularity, 13,368 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 51.4,
                        totalRankings = 12932,
                        source = "Archon.gg Meta Builds (51.4% popularity, 12,932 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxM2mBAAAAAgZZwyMAAAAAA022MzgZGMzMLz2MzMmBDzMzYmNLjZA2MLDMgFwywEYYB",
                        usage = 47.9,
                        totalRankings = 8903,
                        source = "Archon.gg Meta Builds (47.9% popularity, 8,903 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 53.7,
                        totalRankings = 1952,
                        source = "Archon.gg Meta Builds (53.7% popularity, 1,952 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 43.7,
                        totalRankings = 3811,
                        source = "Archon.gg Meta Builds (43.7% popularity, 3,811 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 23.3,
                        totalRankings = 13253,
                        source = "Archon.gg Meta Builds (23.3% popularity, 13,253 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 39.5,
                        totalRankings = 3356,
                        source = "Archon.gg Meta Builds (39.5% popularity, 3,356 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 13.0,
                        totalRankings = 17401,
                        source = "Archon.gg Meta Builds (13.0% popularity, 17,401 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 43.1,
                        totalRankings = 3126,
                        source = "Archon.gg Meta Builds (43.1% popularity, 3,126 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 32.3,
                        totalRankings = 8581,
                        source = "Archon.gg Meta Builds (32.3% popularity, 8,581 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYWWMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 22.0,
                        totalRankings = 13802,
                        source = "Archon.gg Meta Builds (22.0% popularity, 13,802 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 13.0,
                        totalRankings = 2326,
                        source = "Archon.gg Meta Builds (13.0% popularity, 2,326 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 32.5,
                        totalRankings = 13170,
                        source = "Archon.gg Meta Builds (32.5% popularity, 13,170 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 12.6,
                        totalRankings = 7176,
                        source = "Archon.gg Meta Builds (12.6% popularity, 7,176 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGjxwMDwMzMzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBGG",
                        usage = 82.9,
                        totalRankings = 700,
                        source = "Archon.gg Meta Builds (82.9% popularity, 700 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzYZGzMzMNMzMGzYAAAAAAAAYmZmNmZMDAY2mhZMbzMzgZAWMLGGYgZjhGLYAmBwA",
                        usage = 51.6,
                        totalRankings = 31,
                        source = "Archon.gg Meta Builds (51.6% popularity, 31 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwMMzYmZmZGLzYmZmmhhxwYAAAAgZmZmZmZmZzMzYAAAMzMzAAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 25.7,
                        totalRankings = 191,
                        source = "Archon.gg Meta Builds (25.7% popularity, 191 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwYmtZmZzysMGmZGGLbz2MYYssxEGmZGGWA",
                        usage = 54.5,
                        totalRankings = 554,
                        source = "Archon.gg Meta Builds (54.5% popularity, 554 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZkZmhZYmZbMMsNjZmxMjBz2MzsZmxMDGAAAAmtZwwYZhJMYmZwC",
                        usage = 6.7,
                        totalRankings = 30,
                        source = "Archon.gg Meta Builds (6.7% popularity, 30 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMmZZmtZmlxMjZmFjxwMjNswAMAbbjFMNzsMAAAAYzMjxAbGDD",
                        usage = 64.0,
                        totalRankings = 286,
                        source = "Archon.gg Meta Builds (64.0% popularity, 286 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMbzGjtZmZmHYmBAAAAAYLY2MYmZUzYWGLzMjhxMAAAAAAwAAAAA0MLzyMz2AAWAzMAWYwA",
                        usage = 53.3,
                        totalRankings = 137,
                        source = "Archon.gg Meta Builds (53.3% popularity, 137 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDMbGGNRzMzCLzMjxMAAAAAAghxAW2mZDjZZAMBAAAsZMzAYxYYA",
                        usage = 21.1,
                        totalRankings = 19,
                        source = "Archon.gg Meta Builds (21.1% popularity, 19 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZzMmmZAmlxyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 21.5,
                        totalRankings = 275,
                        source = "Archon.gg Meta Builds (21.5% popularity, 275 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBMGDTDzMZ2GLDmZYMzyMgZMz2YmZZmZwMwMmB2ALgZYCsAWGG",
                        usage = 13.5,
                        totalRankings = 645,
                        source = "Archon.gg Meta Builds (13.5% popularity, 645 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 44.7,
                        totalRankings = 311,
                        source = "Archon.gg Meta Builds (44.7% popularity, 311 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 18.7,
                        totalRankings = 134,
                        source = "Archon.gg Meta Builds (18.7% popularity, 134 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 58.6,
                        totalRankings = 493,
                        source = "Archon.gg Meta Builds (58.6% popularity, 493 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZGzMjZkZMGzMDMDLLzgtxMDz22mZmZMLmZYmZGLbGzyAD",
                        usage = 35.3,
                        totalRankings = 170,
                        source = "Archon.gg Meta Builds (35.3% popularity, 170 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gNYGGawyMzsMjZmxMzYmhBmZmZMbDAAAAAAoZMjZYmZMDzwYYmhxMssMD2AAAAAgBAA",
                        usage = 58.3,
                        totalRankings = 12,
                        source = "Archon.gg Meta Builds (58.3% popularity, 12 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbmZMDzMLeAGzMMmmZMAAAAAAYAAzMTLz22MAA2AAAAAAYDAjBzsMLzYmxYGmZmZGzYWGD",
                        usage = 83.8,
                        totalRankings = 872,
                        source = "Archon.gg Meta Builds (83.8% popularity, 872 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAAMbzYMjZmZBGzMMNmZWGAAAAAAMAgZmplZZbGAgNjZwYmxMjZxsMGmZYmtZsNzywAAAAAAAA",
                        usage = 41.7,
                        totalRankings = 24,
                        source = "Archon.gg Meta Builds (41.7% popularity, 24 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZwMMmFDmZGNGzMmxMMMDegZmZmZmZmZmxMzMmZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 52.9,
                        totalRankings = 34,
                        source = "Archon.gg Meta Builds (52.9% popularity, 34 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2mlHYiZb2mZGmNAAYZ2mWmtZWGAAAAmhNA",
                        usage = 31.3,
                        totalRankings = 323,
                        source = "Archon.gg Meta Builds (31.3% popularity, 323 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 53.6,
                        totalRankings = 233,
                        source = "Archon.gg Meta Builds (53.6% popularity, 233 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZmBAAAAAAAAAAgllhRMzAzwwCzYbmZGmNmZYWmJAAWGzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 38.7,
                        totalRankings = 230,
                        source = "Archon.gg Meta Builds (38.7% popularity, 230 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 41.0,
                        totalRankings = 332,
                        source = "Archon.gg Meta Builds (41.0% popularity, 332 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjhZWGLzMjZmx2MmxMGDDAAwAAAAAAAQbZMLGmZGjxMbtBAMAAzgtBAAAAMzsst02MjFzAAMDzwYA",
                        usage = 11.8,
                        totalRankings = 161,
                        source = "Archon.gg Meta Builds (11.8% popularity, 161 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbmZ22mZDAAAAAAjmmhhZGbzgZbYMbzwwgZYYZhNAAAYmptZZ2mBAsBMAYMmhZA",
                        usage = 27.7,
                        totalRankings = 220,
                        source = "Archon.gg Meta Builds (27.7% popularity, 220 parses)"
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
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLbwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 41.4,
                        totalRankings = 169,
                        source = "Archon.gg Meta Builds (41.4% popularity, 169 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 44.5,
                        totalRankings = 667,
                        source = "Archon.gg Meta Builds (44.5% popularity, 667 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 72.1,
                        totalRankings = 43,
                        source = "Archon.gg Meta Builds (72.1% popularity, 43 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMDAGzmhBGYWYhWYzMA",
                        usage = 47.8,
                        totalRankings = 23,
                        source = "Archon.gg Meta Builds (47.8% popularity, 23 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2GzMjttZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 44.9,
                        totalRankings = 490,
                        source = "Archon.gg Meta Builds (44.9% popularity, 490 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZGMbLMz0YGzMLYZmxYzYYWGzMmZMzsBA",
                        usage = 54.9,
                        totalRankings = 545,
                        source = "Archon.gg Meta Builds (54.9% popularity, 545 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZglFzMzMMjZ2mxyMzEsMMmZAAGD",
                        usage = 83.0,
                        totalRankings = 53,
                        source = "Archon.gg Meta Builds (83.0% popularity, 53 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 33.7,
                        totalRankings = 246,
                        source = "Archon.gg Meta Builds (33.7% popularity, 246 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZDsMDAAAAAAAAmxsB",
                        usage = 41.3,
                        totalRankings = 46,
                        source = "Archon.gg Meta Builds (41.3% popularity, 46 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 75.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (75.0% popularity, 4 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 55.9,
                        totalRankings = 948,
                        source = "Archon.gg Meta Builds (55.9% popularity, 948 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmZmHY2mtllxMAAAADmGGzyYGGLjZmxmZmhZwwAAAAAAAwMmtBDYLGwmZMsBDMDb0wwCA",
                        usage = 18.8,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (18.8% popularity, 16 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsMmhxygZWYmZGzwMMzy2MjZmZDzMzYYmZWGGMjBAAAhB2glFjGzAYWgxCA",
                        usage = 31.9,
                        totalRankings = 414,
                        source = "Archon.gg Meta Builds (31.9% popularity, 414 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZwYMTDLjZYsMmZG2mZGGYYAAAAAAglxAAzYDwAbwyiRjZAMbYmNmxA",
                        usage = 18.0,
                        totalRankings = 317,
                        source = "Archon.gg Meta Builds (18.0% popularity, 317 parses)"
                    },
                },
            },
        },
        ["The Soul Hunters"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 53.6,
                        totalRankings = 19883,
                        source = "Archon.gg Meta Builds (53.6% popularity, 19,883 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZjZGzAAmtZYmZ2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 27.4,
                        totalRankings = 5048,
                        source = "Archon.gg Meta Builds (27.4% popularity, 5,048 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 20.8,
                        totalRankings = 4367,
                        source = "Archon.gg Meta Builds (20.8% popularity, 4,367 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 32.9,
                        totalRankings = 18771,
                        source = "Archon.gg Meta Builds (32.9% popularity, 18,771 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 21.9,
                        totalRankings = 5321,
                        source = "Archon.gg Meta Builds (21.9% popularity, 5,321 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzyYZmZAzMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwCzYA2MwA",
                        usage = 83.6,
                        totalRankings = 10634,
                        source = "Archon.gg Meta Builds (83.6% popularity, 10,634 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLY2M8AmZUzYWGLzMjxMmBAAAAAAGAAAAgmZZWmZ2GAwCYGAWYwA",
                        usage = 53.5,
                        totalRankings = 4023,
                        source = "Archon.gg Meta Builds (53.5% popularity, 4,023 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 12.0,
                        totalRankings = 2083,
                        source = "Archon.gg Meta Builds (12.0% popularity, 2,083 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 24.8,
                        totalRankings = 11703,
                        source = "Archon.gg Meta Builds (24.8% popularity, 11,703 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGzMmlZGmBMYMTzYmpZ2GLDGGjZWmBMjZ2GzMGzgZgZMDsA2AzwEYBsMMA",
                        usage = 12.2,
                        totalRankings = 8545,
                        source = "Archon.gg Meta Builds (12.2% popularity, 8,545 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.8,
                        totalRankings = 3897,
                        source = "Archon.gg Meta Builds (39.8% popularity, 3,897 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 7.9,
                        totalRankings = 1054,
                        source = "Archon.gg Meta Builds (7.9% popularity, 1,054 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 39.8,
                        totalRankings = 15191,
                        source = "Archon.gg Meta Builds (39.8% popularity, 15,191 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 31.8,
                        totalRankings = 11103,
                        source = "Archon.gg Meta Builds (31.8% popularity, 11,103 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMGWgNYGGawyMzsMzMzMmxYmZmBjxMjZBAAAAAAoZMjZMzMMDzwYYmhxwssMD2AAAAAgBAA",
                        usage = 12.3,
                        totalRankings = 1550,
                        source = "Archon.gg Meta Builds (12.3% popularity, 1,550 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 64.6,
                        totalRankings = 17544,
                        source = "Archon.gg Meta Builds (64.6% popularity, 17,544 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
                        usage = 39.8,
                        totalRankings = 2013,
                        source = "Archon.gg Meta Builds (39.8% popularity, 2,013 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 23.0,
                        totalRankings = 7805,
                        source = "Archon.gg Meta Builds (23.0% popularity, 7,805 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 26.8,
                        totalRankings = 5059,
                        source = "Archon.gg Meta Builds (26.8% popularity, 5,059 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 34.1,
                        totalRankings = 6302,
                        source = "Archon.gg Meta Builds (34.1% popularity, 6,302 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 22.4,
                        totalRankings = 6668,
                        source = "Archon.gg Meta Builds (22.4% popularity, 6,668 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.8,
                        totalRankings = 7170,
                        source = "Archon.gg Meta Builds (33.8% popularity, 7,170 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.4,
                        totalRankings = 5209,
                        source = "Archon.gg Meta Builds (8.4% popularity, 5,209 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                        usage = 30.2,
                        totalRankings = 19016,
                        source = "Archon.gg Meta Builds (30.2% popularity, 19,016 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 5.0,
                        totalRankings = 2167,
                        source = "Archon.gg Meta Builds (5.0% popularity, 2,167 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 35.6,
                        totalRankings = 13037,
                        source = "Archon.gg Meta Builds (35.6% popularity, 13,037 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMeAAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 33.2,
                        totalRankings = 12254,
                        source = "Archon.gg Meta Builds (33.2% popularity, 12,254 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 70.7,
                        totalRankings = 9319,
                        source = "Archon.gg Meta Builds (70.7% popularity, 9,319 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 57.2,
                        totalRankings = 2034,
                        source = "Archon.gg Meta Builds (57.2% popularity, 2,034 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 29.6,
                        totalRankings = 2726,
                        source = "Archon.gg Meta Builds (29.6% popularity, 2,726 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 23.7,
                        totalRankings = 12367,
                        source = "Archon.gg Meta Builds (23.7% popularity, 12,367 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwsYGGMGzsNmlZmpZjlxyYmBAYMA",
                        usage = 45.6,
                        totalRankings = 3061,
                        source = "Archon.gg Meta Builds (45.6% popularity, 3,061 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 17.4,
                        totalRankings = 16773,
                        source = "Archon.gg Meta Builds (17.4% popularity, 16,773 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 49.1,
                        totalRankings = 4701,
                        source = "Archon.gg Meta Builds (49.1% popularity, 4,701 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsNjZmZMmxwMzMzMwMAAA",
                        usage = 14.6,
                        totalRankings = 4941,
                        source = "Archon.gg Meta Builds (14.6% popularity, 4,941 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 40.9,
                        totalRankings = 14789,
                        source = "Archon.gg Meta Builds (40.9% popularity, 14,789 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMz2stsMmBAAAYw0wYWGzwYZMzM2MzMmZwwAAAAAAAwMmtBDYLGwmZMsADMDb0AWA",
                        usage = 15.3,
                        totalRankings = 2354,
                        source = "Archon.gg Meta Builds (15.3% popularity, 2,354 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhxsMmhxyYmZWYmZGzghZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                        usage = 31.6,
                        totalRankings = 12568,
                        source = "Archon.gg Meta Builds (31.6% popularity, 12,568 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 14.6,
                        totalRankings = 6901,
                        source = "Archon.gg Meta Builds (14.6% popularity, 6,901 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZmZMzMixMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 66.4,
                        totalRankings = 113,
                        source = "Archon.gg Meta Builds (66.4% popularity, 113 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzYMzwMmZmZaGzMjhxMAAAAAAAAmZmZjZGzAAmtZYmZ2mZmBzAsZWMMwAzGDNWAgZAMA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzMzMGLzYmZmmZMjxwYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 37.8,
                        totalRankings = 37,
                        source = "Archon.gg Meta Builds (37.8% popularity, 37 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 60.4,
                        totalRankings = 149,
                        source = "Archon.gg Meta Builds (60.4% popularity, 149 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGLjxMjtZYmZMDmZWmZmNzMmZwAAAAAsMLmxwsw0AzMjxG",
                        usage = 50.0,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (50.0% popularity, 6 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtmxYmBeAzCLzMDwMLmlZWmZ2mZmZmZWMLjhBbYhBYssNzGGz2AYCAAAwiZGDwmxwA",
                        usage = 96.4,
                        totalRankings = 55,
                        source = "Archon.gg Meta Builds (96.4% popularity, 55 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2AmZUzYWGLzMjxMGAAAAAAwAAAAA0MLzyMz2AAWgZmBwCzwA",
                        usage = 60.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (60.0% popularity, 10 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMYmZMGLeghZmFLDYDGNZamZWMLzMjxMMAAAAAAMMDAAAA0MbzyMzyAAYhZGAWMDG",
                        usage = 50.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (50.0% popularity, 4 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMWmZGGmBAAAAAMAgBAAAAAMbzs1sMzmNGzMDY2woB",
                        usage = 23.1,
                        totalRankings = 121,
                        source = "Archon.gg Meta Builds (23.1% popularity, 121 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMzYmBwYMTDzMNz2YZGGGjZWmBMjZ2GzMLzMDmBmxMwCYBMDTgFwywA",
                        usage = 26.9,
                        totalRankings = 156,
                        source = "Archon.gg Meta Builds (26.9% popularity, 156 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 41.3,
                        totalRankings = 160,
                        source = "Archon.gg Meta Builds (41.3% popularity, 160 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWmBzsMzMzMmBAAAAAYAAwMDAGTNjZmBAAAAzYmtxMzyYmBmxMwYWswCMwMM0ALYMA",
                        usage = 23.4,
                        totalRankings = 64,
                        source = "Archon.gg Meta Builds (23.4% popularity, 64 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxYZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 45.0,
                        totalRankings = 20,
                        source = "Archon.gg Meta Builds (45.0% popularity, 20 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsEYWAAAAAAAAAAAAAgZMjZmZmZMjMzMGmZghZxMjxwMjZbbzMzMmFzMMmZssBLDzM",
                        usage = 77.7,
                        totalRankings = 166,
                        source = "Archon.gg Meta Builds (77.7% popularity, 166 parses)"
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
                        usage = 64.3,
                        totalRankings = 42,
                        source = "Archon.gg Meta Builds (64.3% popularity, 42 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAMgZbGjZMjZxDwYmhpxMjBAAAAAADAYmZaZWWmBAYzYGMmZMzYWMLjZMzwMbzYbmFMAAAAAAA",
                        usage = 45.7,
                        totalRankings = 247,
                        source = "Archon.gg Meta Builds (45.7% popularity, 247 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAAbmNjxMMmNDzMzoxYmxYMMzMDzMzMzMmZmZmZmZgZWmpZmtZBAAAWAAAAAAwAAAAAAAAA",
                        usage = 75.0,
                        totalRankings = 4,
                        source = "Archon.gg Meta Builds (75.0% popularity, 4 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwoxMjNmhxGD2mZmhZZMzYziJmtZbmZY2AAglZbaZ2mZZAAAAYG2A",
                        usage = 27.7,
                        totalRankings = 101,
                        source = "Archon.gg Meta Builds (27.7% popularity, 101 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 83.3,
                        totalRankings = 60,
                        source = "Archon.gg Meta Builds (83.3% popularity, 60 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmxYZmxMzMAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyYGmZG2mBAwGAYWmlmZmZBwM",
                        usage = 64.0,
                        totalRankings = 25,
                        source = "Archon.gg Meta Builds (64.0% popularity, 25 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 27.2,
                        totalRankings = 125,
                        source = "Archon.gg Meta Builds (27.2% popularity, 125 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZmZmZmx2MmZmZZMMAAADAAAAAAAJzMLGmBjhZrNAgBGAzgtBAAAAMzsst0yMjFDMAMDzwYA",
                        usage = 5.6,
                        totalRankings = 36,
                        source = "Archon.gg Meta Builds (5.6% popularity, 36 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAyssNzstsNzYxY22MbDAAAAAAzWamFDzM2mBz2wY2mZZbMDGMsswGAAAMz02sMbzAA2AGAMGzwA",
                        usage = 39.5,
                        totalRankings = 38,
                        source = "Archon.gg Meta Builds (39.5% popularity, 38 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 26.0,
                        totalRankings = 131,
                        source = "Archon.gg Meta Builds (26.0% popularity, 131 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjxDAAAAAAAAAAAAYMWGMzMbLbMzMzMzMLDmNmZmZMbMAjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                        usage = 58.8,
                        totalRankings = 170,
                        source = "Archon.gg Meta Builds (58.8% popularity, 170 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttNzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                        usage = 90.9,
                        totalRankings = 44,
                        source = "Archon.gg Meta Builds (90.9% popularity, 44 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwDMmZMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                        usage = 78.6,
                        totalRankings = 14,
                        source = "Archon.gg Meta Builds (78.6% popularity, 14 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYMmxYMjHYmZmhxsNLGzYbmZmZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
                        usage = 41.5,
                        totalRankings = 94,
                        source = "Archon.gg Meta Builds (41.5% popularity, 94 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbYmphZmZ2GWmZmZY2GmlxMjZGzMbA",
                        usage = 60.0,
                        totalRankings = 145,
                        source = "Archon.gg Meta Builds (60.0% popularity, 145 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMjtZmZegZmlZGYAAAAAAAAAA2AsZGDbwCMDDNYBAzykZwssYGjxYMzGWmZmmNWGLjZGAgxA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 30.1,
                        totalRankings = 153,
                        source = "Archon.gg Meta Builds (30.1% popularity, 153 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAgZmZmZmhY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 60.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (60.0% popularity, 5 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZMzMjxMGmZmZmBzMAAA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjY2MwsZmZYWmtZwMzsYGzyiZGAAAAwMDLzMLzYBGYWMaMDgZDbYAAAAAAAMmZmBA",
                        usage = 52.3,
                        totalRankings = 333,
                        source = "Archon.gg Meta Builds (52.3% popularity, 333 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmZmHY2mtllxMAAAADmGGzyMzwYZMzM2MzMYwwAAAAAAAwMmtBDYLGwmZMsBDMDb0wwCA",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMaMMmlZmhxyAzCzMzwMjhZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                        usage = 78.3,
                        totalRankings = 46,
                        source = "Archon.gg Meta Builds (78.3% popularity, 46 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMMzMmZmNjZZwYMTDLzMDjlBzw2MzghZYAAAAAAglxAAzYDwAbwyiRjZAMbwsxYG",
                        usage = 13.8,
                        totalRankings = 116,
                        source = "Archon.gg Meta Builds (13.8% popularity, 116 parses)"
                    },
                },
            },
        },
        ["Fractillus"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZGjZmZyMGzMMDMMDmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZgZM",
                        usage = 29.5,
                        totalRankings = 16899,
                        source = "Archon.gg Meta Builds (29.5% popularity, 16,899 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 66.4,
                        totalRankings = 6172,
                        source = "Archon.gg Meta Builds (66.4% popularity, 6,172 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 21.9,
                        totalRankings = 4211,
                        source = "Archon.gg Meta Builds (21.9% popularity, 4,211 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 47.3,
                        totalRankings = 16822,
                        source = "Archon.gg Meta Builds (47.3% popularity, 16,822 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 35.4,
                        totalRankings = 4993,
                        source = "Archon.gg Meta Builds (35.4% popularity, 4,993 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmlmxYmBGzyYZmZAmxYZmtZswMzMzsMjZGzMjNsAgBYbbsgpZmlBAAAAbMjBYzYYA",
                        usage = 29.2,
                        totalRankings = 10014,
                        source = "Archon.gg Meta Builds (29.2% popularity, 10,014 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 76.2,
                        totalRankings = 3923,
                        source = "Archon.gg Meta Builds (76.2% popularity, 3,923 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 29.8,
                        totalRankings = 1931,
                        source = "Archon.gg Meta Builds (29.8% popularity, 1,931 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 25.1,
                        totalRankings = 10489,
                        source = "Archon.gg Meta Builds (25.1% popularity, 10,489 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 26.6,
                        totalRankings = 8390,
                        source = "Archon.gg Meta Builds (26.6% popularity, 8,390 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 36.9,
                        totalRankings = 3475,
                        source = "Archon.gg Meta Builds (36.9% popularity, 3,475 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzMWGYmlZmZmxMAAAAAAAAgZAjxYqhZmBAAAAzYmtxMzyYmBmZbGDWglxwYbAMDiNMG",
                        usage = 8.6,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (8.6% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 77.6,
                        totalRankings = 14082,
                        source = "Archon.gg Meta Builds (77.6% popularity, 14,082 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 69.6,
                        totalRankings = 10558,
                        source = "Archon.gg Meta Builds (69.6% popularity, 10,558 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 65.2,
                        totalRankings = 1430,
                        source = "Archon.gg Meta Builds (65.2% popularity, 1,430 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 51.2,
                        totalRankings = 17530,
                        source = "Archon.gg Meta Builds (51.2% popularity, 17,530 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.5,
                        totalRankings = 1020,
                        source = "Archon.gg Meta Builds (42.5% popularity, 1,020 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 33.2,
                        totalRankings = 6950,
                        source = "Archon.gg Meta Builds (33.2% popularity, 6,950 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 31.3,
                        totalRankings = 4737,
                        source = "Archon.gg Meta Builds (31.3% popularity, 4,737 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 28.1,
                        totalRankings = 5788,
                        source = "Archon.gg Meta Builds (28.1% popularity, 5,788 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 50.3,
                        totalRankings = 6305,
                        source = "Archon.gg Meta Builds (50.3% popularity, 6,305 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 33.9,
                        totalRankings = 6493,
                        source = "Archon.gg Meta Builds (33.9% popularity, 6,493 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsMzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.9,
                        totalRankings = 4841,
                        source = "Archon.gg Meta Builds (8.9% popularity, 4,841 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 58.2,
                        totalRankings = 17462,
                        source = "Archon.gg Meta Builds (58.2% popularity, 17,462 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsQYMLDwYDLAAA",
                        usage = 7.6,
                        totalRankings = 1925,
                        source = "Archon.gg Meta Builds (7.6% popularity, 1,925 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 36.5,
                        totalRankings = 12035,
                        source = "Archon.gg Meta Builds (36.5% popularity, 12,035 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 41.8,
                        totalRankings = 11784,
                        source = "Archon.gg Meta Builds (41.8% popularity, 11,784 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAY2glZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 72.7,
                        totalRankings = 9631,
                        source = "Archon.gg Meta Builds (72.7% popularity, 9,631 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 88.7,
                        totalRankings = 1698,
                        source = "Archon.gg Meta Builds (88.7% popularity, 1,698 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.3,
                        totalRankings = 2187,
                        source = "Archon.gg Meta Builds (52.3% popularity, 2,187 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 24.2,
                        totalRankings = 12035,
                        source = "Archon.gg Meta Builds (24.2% popularity, 12,035 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 67.8,
                        totalRankings = 2839,
                        source = "Archon.gg Meta Builds (67.8% popularity, 2,839 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 15.1,
                        totalRankings = 15072,
                        source = "Archon.gg Meta Builds (15.1% popularity, 15,072 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 22.3,
                        totalRankings = 2379,
                        source = "Archon.gg Meta Builds (22.3% popularity, 2,379 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 76.7,
                        totalRankings = 8793,
                        source = "Archon.gg Meta Builds (76.7% popularity, 8,793 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 40.4,
                        totalRankings = 11849,
                        source = "Archon.gg Meta Builds (40.4% popularity, 11,849 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWMzwMGMjNzMDzwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 46.8,
                        totalRankings = 2233,
                        source = "Archon.gg Meta Builds (46.8% popularity, 2,233 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 59.0,
                        totalRankings = 11620,
                        source = "Archon.gg Meta Builds (59.0% popularity, 11,620 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNzMLDzYMaMLjZsMWGYYbmZwYeghBAAAAAAWGAgZsBYgNYZxoxMAmFM2wMD",
                        usage = 21.0,
                        totalRankings = 6382,
                        source = "Archon.gg Meta Builds (21.0% popularity, 6,382 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzYMzYZYmZmZmxMzIGzMzwMwwMYmZmZGAAAAAAAAAAAMW2GYALglhJwYBzMzYmBmxA",
                        usage = 39.1,
                        totalRankings = 138,
                        source = "Archon.gg Meta Builds (39.1% popularity, 138 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 75.3,
                        totalRankings = 328,
                        source = "Archon.gg Meta Builds (75.3% popularity, 328 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZGzYGGLzYmZmmZMzMGzYAAAAgZmZmZmZmZzMzYAAAMzMzMAAAgBGYGjGLbA2GwGAzgNA",
                        usage = 34.7,
                        totalRankings = 121,
                        source = "Archon.gg Meta Builds (34.7% popularity, 121 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZGzMzgZmZMmJmZGAAAAAAwsMmxMMGLjZ2wyMmxMjhlNYZ2MjhZjpxYmZmBb",
                        usage = 68.4,
                        totalRankings = 367,
                        source = "Archon.gg Meta Builds (68.4% popularity, 367 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzY7BMjZGMAAAAALziZMMbMNwMzgN",
                        usage = 12.5,
                        totalRankings = 16,
                        source = "Archon.gg Meta Builds (12.5% popularity, 16 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 46.8,
                        totalRankings = 124,
                        source = "Archon.gg Meta Builds (46.8% popularity, 124 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBMzomxsMWmZGjZmZAAAAAAgBAAAAoZWmlZmtBAsAmZAswgB",
                        usage = 89.5,
                        totalRankings = 133,
                        source = "Archon.gg Meta Builds (89.5% popularity, 133 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDMgRTmmZmFzyMzYMDDAAAAAAjZGAAAAoZ2mlZmlBAwCMAsYmhB",
                        usage = 33.3,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (33.3% popularity, 15 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.1,
                        totalRankings = 217,
                        source = "Archon.gg Meta Builds (22.1% popularity, 217 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWGzMzw8AzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 29.4,
                        totalRankings = 361,
                        source = "Archon.gg Meta Builds (29.4% popularity, 361 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 43.6,
                        totalRankings = 275,
                        source = "Archon.gg Meta Builds (43.6% popularity, 275 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZbMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 14.6,
                        totalRankings = 89,
                        source = "Archon.gg Meta Builds (14.6% popularity, 89 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYYMmZZmZYGzglhZmxMzMzkZMjZMzMjZGzwYYMMLD2WmBbAAAAAAwMA",
                        usage = 84.7,
                        totalRankings = 85,
                        source = "Archon.gg Meta Builds (84.7% popularity, 85 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 71.8,
                        totalRankings = 390,
                        source = "Archon.gg Meta Builds (71.8% popularity, 390 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMjZYGGDzMMGmNzgNAAAAAYAA",
                        usage = 45.5,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (45.5% popularity, 11 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAYwMLzyMzMjxMmZmZmxMsMG",
                        usage = 61.7,
                        totalRankings = 593,
                        source = "Archon.gg Meta Builds (61.7% popularity, 593 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZYMLGGzMMNmZWmBAAAAAgBAMzMtMLbzAAsZMDGzMmZMLmlxMmZYmtZYmFMAAAAAAA",
                        usage = 29.4,
                        totalRankings = 17,
                        source = "Archon.gg Meta Builds (29.4% popularity, 17 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZ8AmhxsZYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 56.0,
                        totalRankings = 25,
                        source = "Archon.gg Meta Builds (56.0% popularity, 25 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTMbz2MzwsBAALz20ysNzyAAAAwMsB",
                        usage = 28.0,
                        totalRankings = 239,
                        source = "Archon.gg Meta Builds (28.0% popularity, 239 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstMzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 44.8,
                        totalRankings = 165,
                        source = "Archon.gg Meta Builds (44.8% popularity, 165 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMDbzMzwsxMDzyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 65.7,
                        totalRankings = 108,
                        source = "Archon.gg Meta Builds (65.7% popularity, 108 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 42.3,
                        totalRankings = 260,
                        source = "Archon.gg Meta Builds (42.3% popularity, 260 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZmZmZmx2MzMmBzYAAAAAAAAAAQbZMmhZGGjZ2CAwAGgB2GAAAAwMzy2SbzMWMwAYMDjhB",
                        usage = 6.5,
                        totalRankings = 93,
                        source = "Archon.gg Meta Builds (6.5% popularity, 93 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 75.5,
                        totalRankings = 159,
                        source = "Archon.gg Meta Builds (75.5% popularity, 159 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDzYMmZYmN2mZmZmZmBAAAAAAAAAAzysMbDmZGMLMMYMMLLPgZaMxyAYmFsQYMLDwYDLAAA",
                        usage = 21.4,
                        totalRankings = 14,
                        source = "Archon.gg Meta Builds (21.4% popularity, 14 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 42.1,
                        totalRankings = 247,
                        source = "Archon.gg Meta Builds (42.1% popularity, 247 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 31.5,
                        totalRankings = 295,
                        source = "Archon.gg Meta Builds (31.5% popularity, 295 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZz2YGADsAzY0Y2AsNgNA",
                        usage = 83.5,
                        totalRankings = 321,
                        source = "Archon.gg Meta Builds (83.5% popularity, 321 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 94.4,
                        totalRankings = 18,
                        source = "Archon.gg Meta Builds (94.4% popularity, 18 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmBMWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 61.4,
                        totalRankings = 44,
                        source = "Archon.gg Meta Builds (61.4% popularity, 44 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNzMMbLmZmGzYmZBLzMGMGmlxMjZGzMbA",
                        usage = 57.5,
                        totalRankings = 407,
                        source = "Archon.gg Meta Builds (57.5% popularity, 407 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 82.4,
                        totalRankings = 34,
                        source = "Archon.gg Meta Builds (82.4% popularity, 34 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY22mtZWmhFbmZBGwAmFmAjFz8AmNmZbmZmJz2CzMNmhZ2wyMmBjhZZMAAwA",
                        usage = 24.7,
                        totalRankings = 251,
                        source = "Archon.gg Meta Builds (24.7% popularity, 251 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMbmxMDAYGLwAziRjZAMbglZAAAAAAAAgxsB",
                        usage = 16.7,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (16.7% popularity, 6 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 97.4,
                        totalRankings = 38,
                        source = "Archon.gg Meta Builds (97.4% popularity, 38 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzYsYmBAAAAmZGLLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 58.2,
                        totalRankings = 615,
                        source = "Archon.gg Meta Builds (58.2% popularity, 615 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWGzwMmhZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 54.5,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (54.5% popularity, 11 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttxYmZWwMmZmxMzsMM8AmZAAAQM22GYBMgZYCMYDA",
                        usage = 62.3,
                        totalRankings = 329,
                        source = "Archon.gg Meta Builds (62.3% popularity, 329 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZmZYsMww2Mzgx8ADDAAAAAAsMGAYGbAGYDWWMaMDgZDjNMzA",
                        usage = 43.6,
                        totalRankings = 236,
                        source = "Archon.gg Meta Builds (43.6% popularity, 236 parses)"
                    },
                },
            },
        },
        ["Nexus-King Salhadaar"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYmZMzwwMzMzMMmRmxMjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 63.2,
                        totalRankings = 9919,
                        source = "Archon.gg Meta Builds (63.2% popularity, 9,919 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 56.3,
                        totalRankings = 2613,
                        source = "Archon.gg Meta Builds (56.3% popularity, 2,613 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMzwMmZmpZGzYmxMGAAAAYmZmZmZmZ2MzMGAAAzMzMDAAAYgBmxoxyGgtBsBwMYDA",
                        usage = 26.4,
                        totalRankings = 2901,
                        source = "Archon.gg Meta Builds (26.4% popularity, 2,901 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 35.5,
                        totalRankings = 9582,
                        source = "Archon.gg Meta Builds (35.5% popularity, 9,582 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbzMDzgBAAAAYZWMjhZjpBmZGsB",
                        usage = 28.3,
                        totalRankings = 2232,
                        source = "Archon.gg Meta Builds (28.3% popularity, 2,232 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 24.1,
                        totalRankings = 5798,
                        source = "Archon.gg Meta Builds (24.1% popularity, 5,798 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBjZG1MmlxyMzYMjBAAAAAAMAAAAANzysMzsNAgFwMAswMM",
                        usage = 29.0,
                        totalRankings = 2240,
                        source = "Archon.gg Meta Builds (29.0% popularity, 2,240 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 18.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (18.5% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 22.3,
                        totalRankings = 5335,
                        source = "Archon.gg Meta Builds (22.3% popularity, 5,335 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 34.0,
                        totalRankings = 5628,
                        source = "Archon.gg Meta Builds (34.0% popularity, 5,628 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.4,
                        totalRankings = 2519,
                        source = "Archon.gg Meta Builds (39.4% popularity, 2,519 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 8.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (8.2% popularity, 1,000 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 47.5,
                        totalRankings = 7417,
                        source = "Archon.gg Meta Builds (47.5% popularity, 7,417 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMD222MzMjZxMDzMzMLbGzygB",
                        usage = 49.8,
                        totalRankings = 6169,
                        source = "Archon.gg Meta Builds (49.8% popularity, 6,169 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 58.1,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (58.1% popularity, 1,000 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 46.4,
                        totalRankings = 11402,
                        source = "Archon.gg Meta Builds (46.4% popularity, 11,402 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.3,
                        totalRankings = 941,
                        source = "Archon.gg Meta Builds (42.3% popularity, 941 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 42.7,
                        totalRankings = 2791,
                        source = "Archon.gg Meta Builds (42.7% popularity, 2,791 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 29.4,
                        totalRankings = 2992,
                        source = "Archon.gg Meta Builds (29.4% popularity, 2,992 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 38.9,
                        totalRankings = 4001,
                        source = "Archon.gg Meta Builds (38.9% popularity, 4,001 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 44.8,
                        totalRankings = 3557,
                        source = "Archon.gg Meta Builds (44.8% popularity, 3,557 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 37.1,
                        totalRankings = 3771,
                        source = "Archon.gg Meta Builds (37.1% popularity, 3,771 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 10.4,
                        totalRankings = 2636,
                        source = "Archon.gg Meta Builds (10.4% popularity, 2,636 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 56.2,
                        totalRankings = 9502,
                        source = "Archon.gg Meta Builds (56.2% popularity, 9,502 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 4.4,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (4.4% popularity, 1,000 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsNAA",
                        usage = 29.3,
                        totalRankings = 7278,
                        source = "Archon.gg Meta Builds (29.3% popularity, 7,278 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 55.0,
                        totalRankings = 6854,
                        source = "Archon.gg Meta Builds (55.0% popularity, 6,854 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 79.8,
                        totalRankings = 5250,
                        source = "Archon.gg Meta Builds (79.8% popularity, 5,250 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 81.0,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (81.0% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 50.8,
                        totalRankings = 1841,
                        source = "Archon.gg Meta Builds (50.8% popularity, 1,841 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAmtpZAbMzMNMzMz2wyMzMY2GsMzMjZGzMbA",
                        usage = 29.8,
                        totalRankings = 7056,
                        source = "Archon.gg Meta Builds (29.8% popularity, 7,056 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzMjtZmZGsNzYZMAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 44.5,
                        totalRankings = 1509,
                        source = "Archon.gg Meta Builds (44.5% popularity, 1,509 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 17.8,
                        totalRankings = 7454,
                        source = "Archon.gg Meta Builds (17.8% popularity, 7,454 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDz2AAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 37.5,
                        totalRankings = 1175,
                        source = "Archon.gg Meta Builds (37.5% popularity, 1,175 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 77.5,
                        totalRankings = 4186,
                        source = "Archon.gg Meta Builds (77.5% popularity, 4,186 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 31.8,
                        totalRankings = 8231,
                        source = "Archon.gg Meta Builds (31.8% popularity, 8,231 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmHY2mlllZGAAAADmmxw2YGLDzwM2MzMYYGGAAAAAAAegxsMzMDYJM22GYBMgZYCMD2A",
                        usage = 25.7,
                        totalRankings = 1054,
                        source = "Archon.gg Meta Builds (25.7% popularity, 1,054 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 46.7,
                        totalRankings = 7476,
                        source = "Archon.gg Meta Builds (46.7% popularity, 7,476 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 17.1,
                        totalRankings = 3610,
                        source = "Archon.gg Meta Builds (17.1% popularity, 3,610 parses)"
                    },
                },
            },
            ["Mythic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZGzMzMGGmZmZmZMzMyMGjhZGgZmZmZmZmBAAAAAAAAAAAjltBGwCYZYCMWwMzMmZghB",
                        usage = 100.0,
                        totalRankings = 11,
                        source = "Archon.gg Meta Builds (100.0% popularity, 11 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMzMxMzAAAAAAAmNzMmBmZbmZ2sMLjhZmhxy2sNDGGLbMhhZmhhF",
                        usage = 83.3,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (83.3% popularity, 6 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmlMGzMwDYWGLzMDwMGLzsNjlxMjZmlZMzYmZshFGgBYbbshpZmlBAAAAbmZmBYzAD",
                        usage = 66.7,
                        totalRankings = 3,
                        source = "Archon.gg Meta Builds (66.7% popularity, 3 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBjZG1MmlxyMzYMjBAAAAAAMAAAAANzysMzsNAgFYmBgFGM",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsNoZzMmmZMwsMWmZGGmZAAAAAAAgBAAAAAMbzs0sMzmNmZGADMaA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGzMgxYYaYmJjxyMzMzwYmlZAzYmtxMz2MzgZgZMDsBWAzwEYBsMMA",
                        usage = 100.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (100.0% popularity, 2 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAwMDj5BwYGhZAAAAmZGxsNzMzyMzAgZMDsAWAzwEYD2MMA",
                        usage = 20.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (20.0% popularity, 5 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxMbzMzgZ8AzMLzMzMMDAAAAAAAAMzAeAjxUDzMDAAAAmxMbjZmlxMDMz2MGsALjhx2AYGEbYMA",
                        usage = 60.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (60.0% popularity, 10 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZYMzMzMjZ0MjxYmZgZMLmZwYmBbbbmZmxsYmhZmZsshZZYM",
                        usage = 71.4,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (71.4% popularity, 7 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzgZMjZxDwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmxMjxMMzMzMmxsMG",
                        usage = 66.7,
                        totalRankings = 15,
                        source = "Archon.gg Meta Builds (66.7% popularity, 15 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgx2wMmxsMjtxMzAAAAAAAwyCGxMjFmhxGD2mZmhZZMzYbWMxsNbzgZ2AAglZbaZ2mZZAAAAYG2A",
                        usage = 50.0,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (50.0% popularity, 6 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswQzMzAzwMYw2MzMMbjxwsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYMDzyMzYmZAAAAAAAAAAAYZZYEzMwMgFzM2mZmhZbYGmlZCAglxMDwsNDAgllZZZWmZmAAwwM",
                        usage = 50.0,
                        totalRankings = 2,
                        source = "Archon.gg Meta Builds (50.0% popularity, 2 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MJmxMmZGGY2yAAGwgNgNmlZMzsMbzMzWDAAAwCAYjxwYmB",
                        usage = 33.3,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (33.3% popularity, 6 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAYkmZxwMjtZwsNMLz2MMMYwwyCbAYAAmZabWmtZAAbADAmZMjBA",
                        usage = 100.0,
                        totalRankings = 1,
                        source = "Archon.gg Meta Builds (100.0% popularity, 1 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZZbM1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 28.6,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (28.6% popularity, 7 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzsMGzYMMMzMzwY2mlZMz2yMzYmZGwYZ2GAAAAmBDgxsZYgBmFWoFbwA",
                        usage = 42.9,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (42.9% popularity, 7 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsMNzMMbLMz0YGzMLYZmZGMGmlxMjZGzMbA",
                        usage = 85.7,
                        totalRankings = 7,
                        source = "Archon.gg Meta Builds (85.7% popularity, 7 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMYW2mtZWmB2MzCMgBMLMBGLmZMbM2mZmZystwMTjZYmFsMzMDGDzyYAAgB",
                        usage = 40.0,
                        totalRankings = 5,
                        source = "Archon.gg Meta Builds (40.0% popularity, 5 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 60.0,
                        totalRankings = 10,
                        source = "Archon.gg Meta Builds (60.0% popularity, 10 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzMmZmhxsZmZZwYMTDLzMDjlBzw2MzghZYAAAAAAglxAAzstBYgNYZxoxMAmNY2gZA",
                        usage = 33.3,
                        totalRankings = 6,
                        source = "Archon.gg Meta Builds (33.3% popularity, 6 parses)"
                    },
                },
            },
        },
        ["Dimensius"] = {
            ["Heroic"] = {
                ["DEATHKNIGHT"] = {
                    ["Frost"] = {
                        loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDgZYGzMGLDzMzMzMmZGxYmZGmBGmBzMzMzAAAAAAAAAAAgxy2ADYBsMMBGLYmZmZmBmxA",
                        usage = 52.0,
                        totalRankings = 6554,
                        source = "Archon.gg Meta Builds (52.0% popularity, 6,554 parses)"
                    },
                    ["Unholy"] = {
                        loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjxwMmZmZaYmZmxMGAAAAAAAAmZmZhZGzAAmtZMzY2mZmBzAsYWMMwAzGDNWAgZAMA",
                        usage = 54.2,
                        totalRankings = 2105,
                        source = "Archon.gg Meta Builds (54.2% popularity, 2,105 parses)"
                    },
                    ["Blood"] = {
                        loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwgZYGzMGLzYmZmmZMjZGGDAAAAMzMzMzMzMbmZGDAAgZmZmBAAAMwAzY0YZDw2A2AMzgNA",
                        usage = 30.4,
                        totalRankings = 2330,
                        source = "Archon.gg Meta Builds (30.4% popularity, 2,330 parses)"
                    },
                },
                ["DEMONHUNTER"] = {
                    ["Havoc"] = {
                        loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzYMzMjZmJmZGAAAAAAwsZMbzwMzsNzMbWmlxwMzwYZb2mBDjlNmwwMzAWA",
                        usage = 40.5,
                        totalRankings = 6757,
                        source = "Archon.gg Meta Builds (40.5% popularity, 6,757 parses)"
                    },
                    ["Vengeance"] = {
                        loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
                        usage = 28.5,
                        totalRankings = 1379,
                        source = "Archon.gg Meta Builds (28.5% popularity, 1,379 parses)"
                    },
                },
                ["DRUID"] = {
                    ["Balance"] = {
                        loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtMGzMwDYWYZmZAzMGLzsNjlxMjZmFjZGzMjNswAMAbbjNMNzsMAAAAYzMzMGYzAD",
                        usage = 25.2,
                        totalRankings = 3920,
                        source = "Archon.gg Meta Builds (25.2% popularity, 3,920 parses)"
                    },
                    ["Feral"] = {
                        loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwsBjZG1MmlxyMzYMjBAAAAAAMAAAAANzysMzsNAgFwMAsYGM",
                        usage = 78.4,
                        totalRankings = 1401,
                        source = "Archon.gg Meta Builds (78.4% popularity, 1,401 parses)"
                    },
                    ["Guardian"] = {
                        loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMMmZwYxMMzsYZAgRTmmZmlZ2mZGjZYAAAAAAYMzAAAAANz2sMzsMAAWYMAsYGM",
                        usage = 11.7,
                        totalRankings = 965,
                        source = "Archon.gg Meta Builds (11.7% popularity, 965 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZb4BYstNz2itZAAAAAAAAAAAAsZoZjx0MDwsMzyMzwwMAAAAAgBAMAAAAAgZbmtmlZ2sxYmBY2woB",
                        usage = 18.6,
                        totalRankings = 3749,
                        source = "Archon.gg Meta Builds (18.6% popularity, 3,749 parses)"
                    },
                },
                ["EVOKER"] = {
                    ["Devastation"] = {
                        loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMMzsYGMgBjZaGzMZMWmZmZGGzsNDYGzsNmZWmZGMDMjZgNwCYGmALglhB",
                        usage = 35.1,
                        totalRankings = 3950,
                        source = "Archon.gg Meta Builds (35.1% popularity, 3,950 parses)"
                    },
                    ["Preservation"] = {
                        loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZGzixMbjZGAAgZMjhxYGhZAAAAmZmJzsNzYWmZGAMjZgFwCYGmAbwmhB",
                        usage = 39.6,
                        totalRankings = 2096,
                        source = "Archon.gg Meta Builds (39.6% popularity, 2,096 parses)"
                    },
                    ["Augmentation"] = {
                        loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgxYbmZmxyAzsMzMzMmZDAAAAAAAAzMgHwYM1wMzAAAAgZMz2YmZZMzAzsNjBLwyYYsNAmBxGGD",
                        usage = 8.3,
                        totalRankings = 749,
                        source = "Archon.gg Meta Builds (8.3% popularity, 749 parses)"
                    },
                },
                ["HUNTER"] = {
                    ["Beast Mastery"] = {
                        loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjxMLzMDzYGsMMzMGzMzkZMjZMzMMzYGGDjhZZY2WmBbAAAAAAwMA",
                        usage = 37.1,
                        totalRankings = 5149,
                        source = "Archon.gg Meta Builds (37.1% popularity, 5,149 parses)"
                    },
                    ["Marksmanship"] = {
                        loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAYMbDMgBMbsFYWAAAAAAAAAAAAAgZMjZmZmhZ0MjxwMDMMLLzglxMDstZmZGziZGmZmZW2MmlBzA",
                        usage = 67.0,
                        totalRankings = 4216,
                        source = "Archon.gg Meta Builds (67.0% popularity, 4,216 parses)"
                    },
                    ["Survival"] = {
                        loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawyMzsMjZmxMzYMMGmZmZMbDAAAAAAoZMjZMzMMDzwYYmhxwstMD2AAAAAgBAA",
                        usage = 56.4,
                        totalRankings = 699,
                        source = "Archon.gg Meta Builds (56.4% popularity, 699 parses)"
                    },
                },
                ["MAGE"] = {
                    ["Arcane"] = {
                        loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZ8AjZxwYmhx0MjZAAAAAAYAAzMTLz2yMAA2AAAAAAAAGDmZZWmZmZMmhZmZmxMsMG",
                        usage = 48.8,
                        totalRankings = 7833,
                        source = "Archon.gg Meta Builds (48.8% popularity, 7,833 parses)"
                    },
                    ["Fire"] = {
                        loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzgZmZMLGYmhpxMjZAAAAAAYAAzMTLzyyMAAbGzgxMjZGziZZMMzwMbzwMLDDAAAAAAA",
                        usage = 42.0,
                        totalRankings = 820,
                        source = "Archon.gg Meta Builds (42.0% popularity, 820 parses)"
                    },
                    ["Frost"] = {
                        loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhxsYYmZGNGjxMjhZmZYmZmZmxMzMzMzMDMzyMNzsNLAAAwCAAAAAAGAAAAAAAAA",
                        usage = 42.3,
                        totalRankings = 1683,
                        source = "Archon.gg Meta Builds (42.3% popularity, 1,683 parses)"
                    },
                },
                ["MONK"] = {
                    ["Brewmaster"] = {
                        loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGAAAAAAAWWAxMDMDDMGbzMzYmlhZsNLzEz2sNzMMbAAwysNtMbzsMAAAAMDbA",
                        usage = 27.5,
                        totalRankings = 2095,
                        source = "Archon.gg Meta Builds (27.5% popularity, 2,095 parses)"
                    },
                    ["Mistweaver"] = {
                        loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxswMwGmxMzyDwmtZZmZz2sstNzsswMamZGYGmBD2mZmhZbMGsYCAAAAAAYxyssMbzMTAAwCA",
                        usage = 39.7,
                        totalRankings = 3049,
                        source = "Archon.gg Meta Builds (39.7% popularity, 3,049 parses)"
                    },
                    ["Windwalker"] = {
                        loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMAmZMLzMmZGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzgZG2mBAwGAYWmlmZmZBwM",
                        usage = 33.9,
                        totalRankings = 2394,
                        source = "Archon.gg Meta Builds (33.9% popularity, 2,394 parses)"
                    },
                },
                ["PALADIN"] = {
                    ["Holy"] = {
                        loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZmxMmZwMzyMDLzgZ22MtFzYGzMDDMbZAADYwGwGzyMmZWmtZmZrBAAAYBAsZYYMDA",
                        usage = 41.3,
                        totalRankings = 2625,
                        source = "Archon.gg Meta Builds (41.3% popularity, 2,625 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMMzyYZMzMzM2mZmhBDDAAwAAAAAAAQyMzyMMzwYM2aDAGDAwMYbAAAAAzMLbLtNzYxMYAYGmhxA",
                        usage = 8.0,
                        totalRankings = 1748,
                        source = "Archon.gg Meta Builds (8.0% popularity, 1,748 parses)"
                    },
                    ["Retribution"] = {
                        loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAamltZmtltxYbMz22MbAAAAAAY00MMMzYbGMbDzysNDDDmhhlF2AAAgZm2mlZbGAwGwAgxYGmB",
                        usage = 61.3,
                        totalRankings = 6452,
                        source = "Archon.gg Meta Builds (61.3% popularity, 6,452 parses)"
                    },
                },
                ["PRIEST"] = {
                    ["Discipline"] = {
                        loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAgNzMDGjxMDzsx2MzMzMzMAAAAAAAAAAYWmlZbwMzgZhxMMjBLsNTjJWmBYmFsRYMLDwYDLAAA",
                        usage = 4.6,
                        totalRankings = 867,
                        source = "Archon.gg Meta Builds (4.6% popularity, 867 parses)"
                    },
                    ["Holy"] = {
                        loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgxYmZbmZGzYwMzM2mhZAAAAwsYZ2G2mZGMLMmxMjBLLwMmaWAYmFsQYMLDwYBWYxsMAA",
                        usage = 30.5,
                        totalRankings = 5532,
                        source = "Archon.gg Meta Builds (30.5% popularity, 5,532 parses)"
                    },
                    ["Shadow"] = {
                        loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMGAAAAAAAAAAAAjxygZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2GA",
                        usage = 59.7,
                        totalRankings = 4310,
                        source = "Archon.gg Meta Builds (59.7% popularity, 4,310 parses)"
                    },
                },
                ["ROGUE"] = {
                    ["Assassination"] = {
                        loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhxMYAAAAAAYWglZAAAAAAottZmxMzMGzMzysNzMjZwwMzMmZzyYGADsAzY0Y2AsNgNA",
                        usage = 82.8,
                        totalRankings = 3868,
                        source = "Archon.gg Meta Builds (82.8% popularity, 3,868 parses)"
                    },
                    ["Outlaw"] = {
                        loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGMjhZmZmWmxsNDAAAAAAsNzMDzMjFYZ2GAAAAmZGwAbwMGNmNAbDsYG",
                        usage = 77.2,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (77.2% popularity, 1,000 parses)"
                    },
                    ["Subtlety"] = {
                        loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzsMGzYMMMzMzwY2mlZMjtZmZmZmxAWmtBAAAgZwAYMbGGYgZhFaxGM",
                        usage = 52.5,
                        totalRankings = 1174,
                        source = "Archon.gg Meta Builds (52.5% popularity, 1,174 parses)"
                    },
                },
                ["SHAMAN"] = {
                    ["Elemental"] = {
                        loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAwiZWgBMgZjJwsAAsNNDMbYmphZmZ2GzyMzMYWGmlxMjZGzMbA",
                        usage = 34.2,
                        totalRankings = 4787,
                        source = "Archon.gg Meta Builds (34.2% popularity, 4,787 parses)"
                    },
                    ["Enhancement"] = {
                        loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDmZGjtZmZGsNzYZYAAAAAAAAAAbA2MjhNYBmhhGsAALTzMDWWMzMzwYmZbYZmZCMMLzMAAjB",
                        usage = 45.9,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (45.9% popularity, 1,000 parses)"
                    },
                    ["Restoration"] = {
                        loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMmZZMY2MbzsMDL2MzCMgBMLMBGLmZMbMz2MzMTmtFmZaMDzshlZMDGDzyYAAgB",
                        usage = 20.3,
                        totalRankings = 5123,
                        source = "Archon.gg Meta Builds (20.3% popularity, 5,123 parses)"
                    },
                },
                ["WARLOCK"] = {
                    ["Affliction"] = {
                        loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZMziZmxyMzMLGmZAAzYBGYWMaMDgZBsMDAAAAAAAAmxsB",
                        usage = 52.9,
                        totalRankings = 1196,
                        source = "Archon.gg Meta Builds (52.9% popularity, 1,196 parses)"
                    },
                    ["Demonology"] = {
                        loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYGzw2MzsMjZmZMmxwMzYMMzMAAA",
                        usage = 80.3,
                        totalRankings = 1101,
                        source = "Archon.gg Meta Builds (80.3% popularity, 1,101 parses)"
                    },
                    ["Destruction"] = {
                        loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFDzMzsMzY2WMzAAAAAzMDLzMLzAGzYYBGYbYhGLYAAAAAAAMMmBA",
                        usage = 49.0,
                        totalRankings = 6981,
                        source = "Archon.gg Meta Builds (49.0% popularity, 6,981 parses)"
                    },
                },
                ["WARRIOR"] = {
                    ["Arms"] = {
                        loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAAMjZmxMmZ2mlllZGAAAADmGmZWmZGmxgZsZmZwwMMAAAAAAA8AjZZmZGgwYbbgFwAmhJwAbA",
                        usage = 27.5,
                        totalRankings = 1000,
                        source = "Archon.gg Meta Builds (27.5% popularity, 1,000 parses)"
                    },
                    ["Fury"] = {
                        loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQjhZmNzMMjBzswMzMmhZYmttZGzMzCmxMzMmZsMMYmZAAAQM22GYBMgZYCMYDA",
                        usage = 41.0,
                        totalRankings = 5328,
                        source = "Archon.gg Meta Builds (41.0% popularity, 5,328 parses)"
                    },
                    ["Protection"] = {
                        loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAA02AAAAwMzYmZmZYmNjZZYGjZaYZMDjlBG2mZGMmHYYAAAAAAglBAYGbAGYDWWMaMDgZDzsxMzA",
                        usage = 16.6,
                        totalRankings = 2427,
                        source = "Archon.gg Meta Builds (16.6% popularity, 2,427 parses)"
                    },
                },
            },
        },
        ["Mythic+"] = {
            ["DEATHKNIGHT"] = {
                ["Blood"] = {
                    loadoutCode = "CoPAAAAAAAAAAAAAAAAAAAAAAwwYmZYGzMzwMmZmpZGDzMmxAAAAAzMzMzMzMzmZmxAAAYmZmBAAAYgBmxoxyGglBsBwMYDA",
                    usage = 14.2,
                    totalRankings = 36003,
                    source = "Archon.gg Mythic+ Meta Builds (14.2% popularity, 36,003 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CsPAAAAAAAAAAAAAAAAAAAAAAMDwMzYGjZGGmZmZmhxMamxMjhxAmZmZmZmZmBAAAAAAAAAAAgNzihBGY2YohNMzMjZGYYA",
                    usage = 37.0,
                    totalRankings = 164663,
                    source = "Archon.gg Mythic+ Meta Builds (37.0% popularity, 164,663 parses)"
                },
                ["Unholy"] = {
                    loadoutCode = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMDzYmxwMzMzMTDzYMzMGAAAAAAAAmZmZDzYmBAsNDzY2mZmxYGgFzihBGY2YoxCGgZAMA",
                    usage = 55.7,
                    totalRankings = 33371,
                    source = "Archon.gg Mythic+ Meta Builds (55.7% popularity, 33,371 parses)"
                },
            },
            ["DEMONHUNTER"] = {
                ["Havoc"] = {
                    loadoutCode = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmFjxMMzMbjZ2wyMDGDjltZbGMM22YCzYmZYYB",
                    usage = 39.5,
                    totalRankings = 109618,
                    source = "Archon.gg Mythic+ Meta Builds (39.5% popularity, 109,618 parses)"
                },
                ["Vengeance"] = {
                    loadoutCode = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMMDzMbjxMsNDzMmZMY2mZmNzMmZYGAAAAmtZwwYZhJMYmhxC",
                    usage = 42.7,
                    totalRankings = 115964,
                    source = "Archon.gg Mythic+ Meta Builds (42.7% popularity, 115,964 parses)"
                },
            },
            ["DRUID"] = {
                ["Balance"] = {
                    loadoutCode = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUmtGGzMAzCLzMzCDjFzyMLzMbzMzMzMLmlxwgNswAMW2mZDjZbAMBAAAYxMjBYzYGD",
                    usage = 72.8,
                    totalRankings = 60247,
                    source = "Archon.gg Mythic+ Meta Builds (72.8% popularity, 60,247 parses)"
                },
                ["Feral"] = {
                    loadoutCode = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJY2MwMjaGzCLzMzyYGzAAAAAAADAAAAQzsMLzMbDAYBmZAYhBD",
                    usage = 55.9,
                    totalRankings = 28692,
                    source = "Archon.gg Mythic+ Meta Builds (55.9% popularity, 28,692 parses)"
                },
                ["Guardian"] = {
                    loadoutCode = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLDYzwoJyMziZbmZWGzYAAAAAAwwYALbzshxsMAmAAAA2MmBgFjhB",
                    usage = 31.0,
                    totalRankings = 45643,
                    source = "Archon.gg Mythic+ Meta Builds (31.0% popularity, 45,643 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYxMzMzsY2GDGLLjtFbzAAAAAAAAAAAAYbQ2gJDzMjZxsMzYZGzMDAAAAAAAMAAAAAgZbmtmtZWsxYGYYWAN",
                    usage = 12.4,
                    totalRankings = 109254,
                    source = "Archon.gg Mythic+ Meta Builds (12.4% popularity, 109,254 parses)"
                },
            },
            ["EVOKER"] = {
                ["Devastation"] = {
                    loadoutCode = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzYmxsMzYmBmxYYaYmpZ2GLDGGjZWmBMzMz2YmxYGMDMjZgFwGYGmALglhB",
                    usage = 21.5,
                    totalRankings = 47132,
                    source = "Archon.gg Mythic+ Meta Builds (21.5% popularity, 47,132 parses)"
                },
                ["Preservation"] = {
                    loadoutCode = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2GDwMzYWMzMbDYAAwMjZMzMGmJGzAAAAbzMzkx2MjxYGAAGzmFWgBmhhGMWgB",
                    usage = 33.6,
                    totalRankings = 19003,
                    source = "Archon.gg Mythic+ Meta Builds (33.6% popularity, 19,003 parses)"
                },
                ["Augmentation"] = {
                    loadoutCode = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGGYmlZMzMmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMLjZGDzsZMYBWGDjtBwMI2wYA",
                    usage = 24.2,
                    totalRankings = 6774,
                    source = "Archon.gg Mythic+ Meta Builds (24.2% popularity, 6,774 parses)"
                },
            },
            ["HUNTER"] = {
                ["Beast Mastery"] = {
                    loadoutCode = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAAAAAYMjZeALzMDzMGsMjZmxYmZmMjZMjZmhZGzwYYMMLDz2yMYDAAAAAAmB",
                    usage = 62.8,
                    totalRankings = 80344,
                    source = "Archon.gg Mythic+ Meta Builds (62.8% popularity, 80,344 parses)"
                },
                ["Marksmanship"] = {
                    loadoutCode = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGNWGAzG2AAAAAAAAAAAAAgZMjZMzMMjmZMGGDzywssMD2GDzMLbbbzMGYmZMzMzswYWGmZA",
                    usage = 46.9,
                    totalRankings = 82460,
                    source = "Archon.gg Mythic+ Meta Builds (46.9% popularity, 82,460 parses)"
                },
                ["Survival"] = {
                    loadoutCode = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMzYMGzMmFAAAAAAgmxMmxMzwMMDjhZGGDzyyMYDAAAAAGAA",
                    usage = 18.4,
                    totalRankings = 15114,
                    source = "Archon.gg Mythic+ Meta Builds (18.4% popularity, 15,114 parses)"
                },
            },
            ["MAGE"] = {
                ["Arcane"] = {
                    loadoutCode = "C4DAAAAAAAAAAAAAAAAAAAAAAYMLmtZwMjZmF4BMzwYamxMAAAAAAMAgZmplZbbGAAbAAAAAAsBgxgZWmlZMzYMDzMzMjZMLjB",
                    usage = 52.0,
                    totalRankings = 126208,
                    source = "Archon.gg Mythic+ Meta Builds (52.0% popularity, 126,208 parses)"
                },
                ["Fire"] = {
                    loadoutCode = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzgZGzMLAzMjpxMjZGAAAAAADAYmZaZW2mBAYzMzgxMDzYWMLjhZmNzsNjlZWwAAAAAAAA",
                    usage = 24.4,
                    totalRankings = 7145,
                    source = "Archon.gg Mythic+ Meta Builds (24.4% popularity, 7,145 parses)"
                },
                ["Frost"] = {
                    loadoutCode = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNDmhZmFPAMzoxYmZZmZGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAY2AAAAAAAAA",
                    usage = 40.3,
                    totalRankings = 54342,
                    source = "Archon.gg Mythic+ Meta Builds (40.3% popularity, 54,342 parses)"
                },
            },
            ["MONK"] = {
                ["Brewmaster"] = {
                    loadoutCode = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAgxGmxMmlZsNmZGDAAAAAAwyCGxMDMzmxGw2MzMMbDzYzyMxsNbzMDzGAAsBAAAMbzSzMzswMsB",
                    usage = 30.1,
                    totalRankings = 62807,
                    source = "Archon.gg Mythic+ Meta Builds (30.1% popularity, 62,807 parses)"
                },
                ["Mistweaver"] = {
                    loadoutCode = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAghFLzsMmFz2MmxG2WWmtxDgZbZZmZZhxEzMwMMDDsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAgNA",
                    usage = 16.3,
                    totalRankings = 29364,
                    source = "Archon.gg Mythic+ Meta Builds (16.3% popularity, 29,364 parses)"
                },
                ["Windwalker"] = {
                    loadoutCode = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYAMzM2mZMzMDAAAAAAAAAAALLDjYmhxMMswM2mZmhZjZGsMTAAsMmhZmhtZAAsBAmlZpZmZWAMD",
                    usage = 33.8,
                    totalRankings = 30675,
                    source = "Archon.gg Mythic+ Meta Builds (33.8% popularity, 30,675 parses)"
                },
            },
            ["PALADIN"] = {
                ["Holy"] = {
                    loadoutCode = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMjlZMLzMsMDmZbz0WMjZMzMMwslBAMwAbAbMLmxMLz2Mzs0AAAAsAYwmZghhB",
                    usage = 34.0,
                    totalRankings = 39815,
                    source = "Archon.gg Mythic+ Meta Builds (34.0% popularity, 39,815 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZGzsNmxAAAMAAAAAAA0WzMzihZGGD2aDAGDMAAbDAAAAYmZZbptZGLMYAYwMbYA",
                    usage = 7.6,
                    totalRankings = 102874,
                    source = "Archon.gg Mythic+ Meta Builds (7.6% popularity, 102,874 parses)"
                },
                ["Retribution"] = {
                    loadoutCode = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRmltZmtltZGbGz2mZbAAAAAAY2aaGGmZsNDmthxsNzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
                    usage = 33.2,
                    totalRankings = 116783,
                    source = "Archon.gg Mythic+ Meta Builds (33.2% popularity, 116,783 parses)"
                },
            },
            ["PRIEST"] = {
                ["Discipline"] = {
                    loadoutCode = "CAQAAAAAAAAAAAAAAAAAAAAAAAglZmZwYMmBzsZ2mZmZmZmBAAAAAAAAAAWsMbDmZGMLMmxYMYxsNTzMxiBYmNsQYMLDwYDLAAA",
                    usage = 10.8,
                    totalRankings = 86572,
                    source = "Archon.gg Mythic+ Meta Builds (10.8% popularity, 86,572 parses)"
                },
                ["Holy"] = {
                    loadoutCode = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAzmxDMGjZYGzMmZmx2MzMAAAAglZZ2GMzMYWYWmxgBLsxMzUzCAzsgFCjZZAGLwCGLDA",
                    usage = 18.0,
                    totalRankings = 18747,
                    source = "Archon.gg Mythic+ Meta Builds (18.0% popularity, 18,747 parses)"
                },
                ["Shadow"] = {
                    loadoutCode = "CIQAAAAAAAAAAAAAAAAAAAAAAMMMAAAAAAAAAAAAYMWGjZmZbZjZmZmZmZZwsxMzMjZjBGjhZxsN1MDWwMAzsZZY2MAkxYBA2mB",
                    usage = 29.2,
                    totalRankings = 62270,
                    source = "Archon.gg Mythic+ Meta Builds (29.2% popularity, 62,270 parses)"
                },
            },
            ["ROGUE"] = {
                ["Assassination"] = {
                    loadoutCode = "CMQAAAAAAAAAAAAAAAAAAAAAAYmZMzMmBAAAAAAYWmxsMDAAAAAAttMzMYmBzMzysNYMmZmZmZmZYzyYGgNzyADYBsNMBGWGA",
                    usage = 76.9,
                    totalRankings = 60913,
                    source = "Archon.gg Mythic+ Meta Builds (76.9% popularity, 60,913 parses)"
                },
                ["Outlaw"] = {
                    loadoutCode = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZGmZmZYGegxMzMMzMz0yMmtZAAAAAAw22MzgZmZWglZbAAAAYmZAwY2MMwAzCL0CbGA",
                    usage = 47.5,
                    totalRankings = 16115,
                    source = "Archon.gg Mythic+ Meta Builds (47.5% popularity, 16,115 parses)"
                },
                ["Subtlety"] = {
                    loadoutCode = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNLGzstMzMmZmBMWmlBAAAgZwAYMbGGYgZhFaxGM",
                    usage = 36.4,
                    totalRankings = 18454,
                    source = "Archon.gg Mythic+ Meta Builds (36.4% popularity, 18,454 parses)"
                },
            },
            ["SHAMAN"] = {
                ["Elemental"] = {
                    loadoutCode = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYb2WmZmZGz2sMGMMDDAAAAAYzMG2gFYGGasBAmtpZwYjxMNMzMjZsMjZsYWGLWMzMzYYmtBA",
                    usage = 15.9,
                    totalRankings = 69728,
                    source = "Archon.gg Mythic+ Meta Builds (15.9% popularity, 69,728 parses)"
                },
                ["Enhancement"] = {
                    loadoutCode = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMzDMDzMz8AzMLzMYZAAAAAAAAAA2AsZGDbwCMDDNYBAzykBmlFzYwYMz2wyMz0swyMLjZGAgxA",
                    usage = 49.7,
                    totalRankings = 22434,
                    source = "Archon.gg Mythic+ Meta Builds (49.7% popularity, 22,434 parses)"
                },
                ["Restoration"] = {
                    loadoutCode = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZmZbmthZegZzsNWMjFLmZBGwAmFmAjFMzsYZmtZmhMbwMNmZYYsYMjFzyYZWmZAAwA",
                    usage = 23.6,
                    totalRankings = 170179,
                    source = "Archon.gg Mythic+ Meta Builds (23.6% popularity, 170,179 parses)"
                },
            },
            ["WARLOCK"] = {
                ["Affliction"] = {
                    loadoutCode = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAmZMzyMjxyMzMLmxMDAYGLwAziRjZAMLglZAAAAAAAAwMsA",
                    usage = 32.3,
                    totalRankings = 16674,
                    source = "Archon.gg Mythic+ Meta Builds (32.3% popularity, 16,674 parses)"
                },
                ["Demonology"] = {
                    loadoutCode = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzYwMAAA",
                    usage = 18.5,
                    totalRankings = 64094,
                    source = "Archon.gg Mythic+ Meta Builds (18.5% popularity, 64,094 parses)"
                },
                ["Destruction"] = {
                    loadoutCode = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMzsYGzyyMzAAAAAYmtlZmlZsADMLGNmBwshNMAAAAAAAmxYGAA",
                    usage = 13.1,
                    totalRankings = 57988,
                    source = "Archon.gg Mythic+ Meta Builds (13.1% popularity, 57,988 parses)"
                },
            },
            ["WARRIOR"] = {
                ["Arms"] = {
                    loadoutCode = "CcEAAAAAAAAAAAAAAAAAAAAAAghZmxMmxMzystsMmBAAAYw0wMzyYGGLjZmxiZmhZwwAAAAAAAwMmtBDYLGwmZMsADMDb0AWA",
                    usage = 32.1,
                    totalRankings = 13919,
                    source = "Archon.gg Mythic+ Meta Builds (32.1% popularity, 13,919 parses)"
                },
                ["Fury"] = {
                    loadoutCode = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMaMwsMmhxyAzCzMzMzMjhZW2mZMzMbYmZGDzMzywgZMAAAIMwGssY0YGAzCMWAA",
                    usage = 38.9,
                    totalRankings = 51723,
                    source = "Archon.gg Mythic+ Meta Builds (38.9% popularity, 51,723 parses)"
                },
                ["Protection"] = {
                    loadoutCode = "CkEAAAAAAAAAAAAAAAAAAAAAAkBAAAgxMMzMzMzMbmZWGMGjGzyYGGLjZmhtZmxMwwAAAAAAALDAwM2AMwGssY0YGAzCMbMjZA",
                    usage = 12.1,
                    totalRankings = 109988,
                    source = "Archon.gg Mythic+ Meta Builds (12.1% popularity, 109,988 parses)"
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
