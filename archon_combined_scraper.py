#!/usr/bin/env python3
"""
Combined Archon.gg Build Scraper
Automatically fetch both raid and Mythic+ builds from Archon.gg for all classes/specs
Generates complete ArchonData.lua file for CI/CD deployment
"""

import requests
import re
import time
from datetime import datetime
from typing import Dict, Optional, List, Tuple

class ArchonCombinedScraper:
    def __init__(self):
        self.base_url = "https://www.archon.gg/wow/builds"
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        }
        
        # Boss mappings for raid content
        self.boss_mapping = {
            "Plexus Sentinel": "plexus-sentinel",
            "Loom'ithar": "loomithar", 
            "Soulbinder Naazindhri": "soulbinder-naazindhri",
            "Forgeweaver Araz": "forgeweaver-araz",
            "The Soul Hunters": "the-soul-hunters",
            "Fractillus": "fractillus",
            "Nexus-King Salhadaar": "nexus-king-salhadaar",
            "Dimensius": "dimensius"
        }
        
        # Class/spec mappings for raid URLs
        self.raid_class_spec_mapping = {
            "DEATHKNIGHT": {
                "Frost": "frost/death-knight",
                "Unholy": "unholy/death-knight", 
                "Blood": "blood/death-knight"
            },
            "DEMONHUNTER": {
                "Havoc": "havoc/demon-hunter",
                "Vengeance": "vengeance/demon-hunter"
            },
            "DRUID": {
                "Balance": "balance/druid",
                "Feral": "feral/druid",
                "Guardian": "guardian/druid",
                "Restoration": "restoration/druid"
            },
            "EVOKER": {
                "Devastation": "devastation/evoker",
                "Preservation": "preservation/evoker",
                "Augmentation": "augmentation/evoker"
            },
            "HUNTER": {
                "Beast Mastery": "beast-mastery/hunter",
                "Marksmanship": "marksmanship/hunter", 
                "Survival": "survival/hunter"
            },
            "MAGE": {
                "Arcane": "arcane/mage",
                "Fire": "fire/mage",
                "Frost": "frost/mage"
            },
            "MONK": {
                "Brewmaster": "brewmaster/monk",
                "Mistweaver": "mistweaver/monk",
                "Windwalker": "windwalker/monk"
            },
            "PALADIN": {
                "Holy": "holy/paladin",
                "Protection": "protection/paladin",
                "Retribution": "retribution/paladin"
            },
            "PRIEST": {
                "Discipline": "discipline/priest",
                "Holy": "holy/priest",
                "Shadow": "shadow/priest"
            },
            "ROGUE": {
                "Assassination": "assassination/rogue",
                "Outlaw": "outlaw/rogue",
                "Subtlety": "subtlety/rogue"
            },
            "SHAMAN": {
                "Elemental": "elemental/shaman",
                "Enhancement": "enhancement/shaman",
                "Restoration": "restoration/shaman"
            },
            "WARLOCK": {
                "Affliction": "affliction/warlock",
                "Demonology": "demonology/warlock",
                "Destruction": "destruction/warlock"
            },
            "WARRIOR": {
                "Arms": "arms/warrior",
                "Fury": "fury/warrior",
                "Protection": "protection/warrior"
            }
        }
        
        # Mythic+ class/spec mappings (URL format)
        self.mythicplus_class_specs = {
            "death-knight": ["blood", "frost", "unholy"],
            "demon-hunter": ["havoc", "vengeance"],
            "druid": ["balance", "feral", "guardian", "restoration"],
            "evoker": ["devastation", "preservation", "augmentation"],
            "hunter": ["beast-mastery", "marksmanship", "survival"],
            "mage": ["arcane", "fire", "frost"],
            "monk": ["brewmaster", "mistweaver", "windwalker"],
            "paladin": ["holy", "protection", "retribution"],
            "priest": ["discipline", "holy", "shadow"],
            "rogue": ["assassination", "outlaw", "subtlety"],
            "shaman": ["elemental", "enhancement", "restoration"],
            "warlock": ["affliction", "demonology", "destruction"],
            "warrior": ["arms", "fury", "protection"]
        }
        
        # Class name conversion for data file format
        self.class_name_mapping = {
            "death-knight": "DEATHKNIGHT",
            "demon-hunter": "DEMONHUNTER", 
            "druid": "DRUID",
            "evoker": "EVOKER",
            "hunter": "HUNTER",
            "mage": "MAGE",
            "monk": "MONK",
            "paladin": "PALADIN",
            "priest": "PRIEST",
            "rogue": "ROGUE",
            "shaman": "SHAMAN",
            "warlock": "WARLOCK",
            "warrior": "WARRIOR"
        }
        
        # Spec name conversion (capitalize first letter)
        self.spec_name_mapping = {
            "affliction": "Affliction",
            "arcane": "Arcane",
            "arms": "Arms", 
            "assassination": "Assassination",
            "augmentation": "Augmentation",
            "balance": "Balance",
            "beast-mastery": "Beast Mastery",
            "blood": "Blood",
            "brewmaster": "Brewmaster",
            "demonology": "Demonology",
            "destruction": "Destruction",
            "devastation": "Devastation",
            "discipline": "Discipline",
            "elemental": "Elemental",
            "enhancement": "Enhancement",
            "feral": "Feral",
            "fire": "Fire",
            "frost": "Frost",
            "fury": "Fury",
            "guardian": "Guardian",
            "havoc": "Havoc",
            "holy": "Holy",
            "marksmanship": "Marksmanship",
            "mistweaver": "Mistweaver",
            "outlaw": "Outlaw",
            "preservation": "Preservation",
            "protection": "Protection",
            "restoration": "Restoration",
            "retribution": "Retribution",
            "shadow": "Shadow",
            "subtlety": "Subtlety",
            "survival": "Survival",
            "unholy": "Unholy",
            "vengeance": "Vengeance",
            "windwalker": "Windwalker"
        }

    def scrape_raid_build(self, class_name: str, spec_name: str, boss_name: str, difficulty: str = "heroic") -> Optional[Dict]:
        """
        Get raid build data for a specific class/spec/boss combination
        """
        # Get the URL path for this class/spec
        if class_name not in self.raid_class_spec_mapping:
            print(f"❌ Unknown class: {class_name}")
            return None
            
        if spec_name not in self.raid_class_spec_mapping[class_name]:
            print(f"❌ Unknown spec: {spec_name} for {class_name}")
            return None
            
        spec_path = self.raid_class_spec_mapping[class_name][spec_name]
        
        # Get the boss slug
        if boss_name not in self.boss_mapping:
            print(f"❌ Unknown boss: {boss_name}")
            return None
            
        boss_slug = self.boss_mapping[boss_name]
        
        # Build the URL
        url = f"{self.base_url}/{spec_path}/raid/overview/{difficulty}/{boss_slug}"
        
        print(f"  🔍 {class_name} {spec_name} - {boss_name} ({difficulty})")
        
        try:
            response = requests.get(url, headers=self.headers)
            
            if response.status_code != 200:
                print(f"    ❌ Failed: {response.status_code}")
                return None
            
            # Look for the export code in the HTML
            html_content = response.text
            
            # Search for the exportCodeParams pattern
            pattern = r'"exportCodeParams":\s*{\s*"kind":\s*"pre-loaded",\s*"exportCode":\s*"([^"]+)"'
            match = re.search(pattern, html_content)
            
            if match:
                export_code = match.group(1)
                
                # Extract popularity and sample size with multiple patterns
                popularity = None
                sample_size = None
                
                # Pattern 1: Look for "Spec & Hero Popularity" section
                popularity_patterns = [
                    r'Spec & Hero Popularity[^0-9]*(\d+\.\d+)%',
                    r'(\d+\.\d+)%[^0-9]*Spec & Hero Popularity',
                    r'popularity[^0-9]*(\d+\.\d+)%',
                    r'(\d+\.\d+)%[^0-9]*popularity'
                ]
                
                for pattern in popularity_patterns:
                    pop_match = re.search(pattern, html_content, re.IGNORECASE)
                    if pop_match:
                        popularity = float(pop_match.group(1))
                        break
                
                # Pattern 2: Look for total parses
                sample_patterns = [
                    r'Total Parses:\s*([0-9,]+)',
                    r'([0-9,]+)\s*Total Parses',
                    r'parses[^0-9]*([0-9,]+)',
                    r'([0-9,]+)[^0-9]*parses'
                ]
                
                for pattern in sample_patterns:
                    sample_match = re.search(pattern, html_content, re.IGNORECASE)
                    if sample_match:
                        sample_size = int(sample_match.group(1).replace(',', ''))
                        break
                
                # Use defaults if not found
                if popularity is None:
                    popularity = 0.0
                if sample_size is None:
                    sample_size = 0
                    
                result = {
                    "loadoutCode": export_code,
                    "usage": popularity,
                    "totalRankings": sample_size,
                    "source": f"Archon.gg Meta Builds ({popularity}% popularity, {sample_size:,} parses)"
                }
                
                print(f"    ✅ {popularity}% usage, {sample_size:,} parses")
                return result
            else:
                print(f"    ❌ No export code found")
                return None
                
        except Exception as e:
            print(f"    ❌ Error: {e}")
            return None

    def scrape_mythicplus_build(self, class_url: str, spec_url: str, key_level: int = 10) -> Optional[Dict]:
        """
        Scrape a single Mythic+ build for a class/spec combination
        """
        # Construct the Mythic+ URL
        url = f"{self.base_url}/{spec_url}/{class_url}/mythic-plus/overview/{key_level}/all-dungeons/this-week"
        
        print(f"  🔍 {class_url} {spec_url} - M+{key_level}")
        
        try:
            response = requests.get(url, headers=self.headers)
            response.raise_for_status()
            
            html_content = response.text
            
            # Search for the exportCodeParams pattern
            export_pattern = r'"exportCodeParams":\s*{\s*"kind":\s*"pre-loaded",\s*"exportCode":\s*"([^"]+)"'
            export_match = re.search(export_pattern, html_content)
            
            if not export_match:
                print(f"    ❌ No export code found")
                return None
                
            export_code = export_match.group(1)
            
            # Extract popularity with multiple patterns
            popularity = None
            popularity_patterns = [
                r'Spec & Hero Popularity[^0-9]*(\d+\.\d+)%',
                r'(\d+\.\d+)%[^0-9]*Spec & Hero Popularity',
                r'popularity[^0-9]*(\d+\.\d+)%',
                r'(\d+\.\d+)%[^0-9]*popularity'
            ]
            
            for pattern in popularity_patterns:
                pop_match = re.search(pattern, html_content, re.IGNORECASE)
                if pop_match:
                    popularity = float(pop_match.group(1))
                    break
            
            # Extract total parses with multiple patterns
            total_parses = None
            sample_patterns = [
                r'Total Parses:\s*([0-9,]+)',
                r'([0-9,]+)\s*Total Parses',
                r'parses[^0-9]*([0-9,]+)',
                r'([0-9,]+)[^0-9]*parses'
            ]
            
            for pattern in sample_patterns:
                sample_match = re.search(pattern, html_content, re.IGNORECASE)
                if sample_match:
                    total_parses = int(sample_match.group(1).replace(',', ''))
                    break
            
            # Use defaults if not found
            if popularity is None:
                popularity = 0.0
            if total_parses is None:
                total_parses = 0
            
            print(f"    ✅ {popularity}% usage, {total_parses:,} parses")
            
            return {
                'exportCode': export_code,
                'usage': popularity,
                'totalRankings': total_parses,
                'source': f'Archon.gg Mythic+ Meta Builds ({popularity}% popularity, {total_parses:,} parses)'
            }
            
        except requests.RequestException as e:
            print(f"    ❌ Request failed: {e}")
            return None
        except Exception as e:
            print(f"    ❌ Parse error: {e}")
            return None

    def scrape_all_raid_builds(self, difficulties: List[str] = ["heroic", "mythic"]) -> Dict:
        """
        Scrape raid builds for all classes, specs, bosses, and difficulties
        """
        print("🏰 Starting raid build collection...")
        
        raid_data = {}
        successful_builds = 0
        failed_builds = 0
        
        # Initialize structure for all bosses first
        for boss_name in self.boss_mapping.keys():
            raid_data[boss_name] = {}
            for difficulty in difficulties:
                difficulty_key = difficulty.title()
                raid_data[boss_name][difficulty_key] = {}
        
        for boss_name in self.boss_mapping.keys():
            print(f"\n🎯 Processing {boss_name}...")
            
            for difficulty in difficulties:
                difficulty_display = difficulty.title()
                print(f"  📊 {difficulty_display} difficulty...")
                
                for class_name, specs in self.raid_class_spec_mapping.items():
                    for spec_name in specs.keys():
                        build_data = self.scrape_raid_build(class_name, spec_name, boss_name, difficulty)
                        
                        if build_data:
                            # Use proper capitalization for difficulty in data structure
                            difficulty_key = difficulty.title()
                            if class_name not in raid_data[boss_name][difficulty_key]:
                                raid_data[boss_name][difficulty_key][class_name] = {}
                            
                            raid_data[boss_name][difficulty_key][class_name][spec_name] = {
                                'loadoutCode': build_data['loadoutCode'],
                                'usage': build_data['usage'],
                                'totalRankings': build_data['totalRankings'],
                                'source': build_data['source']
                            }
                            successful_builds += 1
                        else:
                            failed_builds += 1
                        
                        # Small delay to be nice to the server
                        time.sleep(0.1)
        
        print(f"\n🏰 Raid Collection Complete!")
        print(f"✅ Successful: {successful_builds}")
        print(f"❌ Failed: {failed_builds}")
        print(f"📈 Success Rate: {successful_builds/(successful_builds+failed_builds)*100:.1f}%")
        
        return raid_data

    def scrape_all_mythicplus_builds(self, key_level: int = 10) -> Dict:
        """
        Scrape Mythic+ builds for all classes and specs
        """
        print(f"\n🔥 Starting Mythic+ build collection for +{key_level} keys...")
        
        mythicplus_data = {}
        successful_builds = 0
        failed_builds = 0
        
        for class_url, specs in self.mythicplus_class_specs.items():
            class_key = self.class_name_mapping[class_url]
            print(f"\n📋 Processing {class_key}...")
            
            if class_key not in mythicplus_data:
                mythicplus_data[class_key] = {}
            
            for spec_url in specs:
                spec_key = self.spec_name_mapping[spec_url]
                
                build_data = self.scrape_mythicplus_build(class_url, spec_url, key_level)
                
                if build_data:
                    mythicplus_data[class_key][spec_key] = {
                        'loadoutCode': build_data['exportCode'],
                        'usage': build_data['usage'],
                        'totalRankings': build_data['totalRankings'],
                        'source': build_data['source']
                    }
                    successful_builds += 1
                else:
                    failed_builds += 1
                
                # Small delay to be nice to the server
                time.sleep(0.1)
        
        print(f"\n🔥 Mythic+ Collection Complete!")
        print(f"✅ Successful: {successful_builds}")
        print(f"❌ Failed: {failed_builds}")
        print(f"📈 Success Rate: {successful_builds/(successful_builds+failed_builds)*100:.1f}%")
        
        return mythicplus_data

    def generate_lua_data_file(self, raid_data: Dict, mythicplus_data: Dict, output_file: str = "ArchonData.lua") -> None:
        """
        Generate the complete ArchonData.lua file with both raid and mythic+ data
        """
        print(f"\n📝 Generating {output_file}...")
        
        current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S UTC")
        version = int(time.time())  # Unix timestamp as version
        
        with open(output_file, 'w', encoding='utf-8') as f:
            # File header
            f.write("-- WCL Spec Swap Data File\n")
            f.write(f"-- Generated: {current_time}\n")
            f.write(f"-- Version: {version}\n")
            f.write("-- Source: Archon.gg Meta Builds\n\n")
            
            # Version checking and initialization
            f.write("local function UpdateSpecData()\n")
            f.write(f"    local dataVersion = {version}\n")
            f.write("    local lastUpdated = \"" + current_time + "\"\n")
            f.write("    local forceRefresh = false\n\n")
            
            f.write("    -- Check if we need to update\n")
            f.write("    if WCLSpecSwapDB and WCLSpecSwapDB.version and WCLSpecSwapDB.version >= dataVersion and not forceRefresh then\n")
            f.write("        return -- Data is up to date\n")
            f.write("    end\n\n")
            
            f.write("    -- Enhanced version checking with Mythic+ data validation\n")
            f.write("    local needsUpdate = false\n")
            f.write("    if not WCLSpecSwapDB then\n")
            f.write("        needsUpdate = true\n")
            f.write("    elseif not WCLSpecSwapDB.version or WCLSpecSwapDB.version < dataVersion then\n")
            f.write("        needsUpdate = true\n")
            f.write("    elseif not WCLSpecSwapDB.specData then\n")
            f.write("        needsUpdate = true\n")
            f.write("    elseif not WCLSpecSwapDB.specData[\"Mythic+\"] then\n")
            f.write("        needsUpdate = true\n")
            f.write("    else\n")
            f.write("        -- Check for presence of key Mythic+ data\n")
            f.write("        local mythicData = WCLSpecSwapDB.specData[\"Mythic+\"]\n")
            f.write("        if not mythicData.DEATHKNIGHT or not mythicData.MAGE or not mythicData.WARRIOR then\n")
            f.write("            needsUpdate = true\n")
            f.write("        end\n")
            f.write("    end\n\n")
            
            f.write("    if not needsUpdate and not forceRefresh then\n")
            f.write("        return\n")
            f.write("    end\n\n")
            
            f.write("    -- Initialize database structure\n")
            f.write("    if not WCLSpecSwapDB then\n")
            f.write("        WCLSpecSwapDB = {}\n")
            f.write("    end\n\n")
            
            f.write("    WCLSpecSwapDB.version = dataVersion\n")
            f.write("    WCLSpecSwapDB.lastUpdated = lastUpdated\n")
            f.write("    WCLSpecSwapDB.dataSource = \"bundled\"\n\n")
            
            # Start spec data structure
            f.write("    WCLSpecSwapDB.specData = {\n")
            
            # Write raid data
            for boss_name, boss_data in raid_data.items():
                f.write(f"        [\"{boss_name}\"] = {{\n")
                
                for difficulty, diff_data in boss_data.items():
                    if diff_data:  # Only write if there's data
                        f.write(f"            [\"{difficulty}\"] = {{\n")
                        
                        for class_name, class_data in diff_data.items():
                            f.write(f"                [\"{class_name}\"] = {{\n")
                            
                            for spec_name, spec_data in class_data.items():
                                f.write(f"                    [\"{spec_name}\"] = {{\n")
                                f.write(f"                        loadoutCode = \"{spec_data['loadoutCode']}\",\n")
                                f.write(f"                        usage = {spec_data['usage']},\n")
                                f.write(f"                        totalRankings = {spec_data['totalRankings']},\n")
                                f.write(f"                        source = \"{spec_data['source']}\"\n")
                                f.write("                    },\n")
                            
                            f.write("                },\n")
                        
                        f.write("            },\n")
                
                f.write("        },\n")
            
            # Write Mythic+ data
            f.write("        [\"Mythic+\"] = {\n")
            
            for class_name, class_data in mythicplus_data.items():
                f.write(f"            [\"{class_name}\"] = {{\n")
                
                for spec_name, spec_data in class_data.items():
                    f.write(f"                [\"{spec_name}\"] = {{\n")
                    f.write(f"                    loadoutCode = \"{spec_data['loadoutCode']}\",\n")
                    f.write(f"                    usage = {spec_data['usage']},\n")
                    f.write(f"                    totalRankings = {spec_data['totalRankings']},\n")
                    f.write(f"                    source = \"{spec_data['source']}\"\n")
                    f.write("                },\n")
                
                f.write("            },\n")
            
            f.write("        }\n")  # End Mythic+ section
            f.write("    }\n\n")  # End specData
            
            # Add delayed refresh mechanism
            f.write("    -- Schedule a delayed refresh to handle loading conflicts\n")
            f.write("    C_Timer.After(1, function()\n")
            f.write("        if WCLSpecSwap and WCLSpecSwap.UpdateDisplay then\n")
            f.write("            WCLSpecSwap:UpdateDisplay()\n")
            f.write("        end\n")
            f.write("    end)\n")
            f.write("end\n\n")
            
            # Call the update function
            f.write("-- Execute the update\n")
            f.write("UpdateSpecData()\n")
        
        print(f"✅ {output_file} generated successfully!")
        print(f"📊 Raid bosses: {len(raid_data)}")
        print(f"📊 Mythic+ classes: {len(mythicplus_data)}")
        print(f"🔢 Version: {version}")

def main():
    scraper = ArchonCombinedScraper()
    
    print("🤖 ARCHON.GG COMBINED BUILD SCRAPER")
    print("=" * 60)
    print(f"🕐 Started at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    
    try:
        # Scrape raid builds (both heroic and mythic difficulties)
        raid_data = scraper.scrape_all_raid_builds(difficulties=["heroic", "mythic"])
        
        # Scrape Mythic+ builds
        mythicplus_data = scraper.scrape_all_mythicplus_builds(key_level=10)
        
        # Generate the complete ArchonData.lua file
        scraper.generate_lua_data_file(raid_data, mythicplus_data)
        
        print(f"\n🎉 SCRAPING COMPLETE!")
        print(f"📁 Files generated:")
        print(f"   - ArchonData.lua (addon data file)")
        print(f"🕐 Finished at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        
    except Exception as e:
        print(f"\n❌ SCRAPING FAILED: {e}")
        raise

if __name__ == "__main__":
    main()
