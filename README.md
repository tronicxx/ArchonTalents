# Archon Talents - World of Warcraft Addon

Display popular talent builds from Archon.gg and WarcraftLogs top 100 data directly in-game.

## Features

- **Raid Talent Builds** -- Top talent builds for all raid bosses (Heroic and Mythic)
- **Mythic+ Builds** -- Meta builds for Mythic+ content
- **WCL Top 100 Heatmap** -- Visual talent tree with color-coded node usage from WarcraftLogs top 100 rankings
- **Hero Talent Labels** -- Shows which hero talent subtree is dominant with usage percentages
- **Build Optimizer** -- Compare your current loadout against the meta build and apply changes
- **Auto Detection** -- Detects your class and specialization automatically
- **Minimap Button** -- Left-click to open, drag to reposition

## Installation

Download the latest release from [GitHub Releases](https://github.com/tronicxx/ArchonTalents/releases) and extract `ArchonTalents/` to `World of Warcraft/_retail_/Interface/AddOns/`.

Talent data is shipped with the addon and updated on a regular cadence via tagged releases -- no extra setup or credentials required.

## Usage

`/archon` or click the minimap button to open.

### Tabs
- **Raid** -- Select boss and difficulty to view the most popular talent build with a copyable loadout code
- **Mythic+** -- View the overall Mythic+ meta build for your spec
- **WCL Top 100** -- Talent tree heatmap showing how often each node is picked by the top 100 players

### Heatmap Legend
- Green (80%+) -- Nearly all top players pick this
- Yellow (50-80%) -- Common pick
- Orange (20-50%) -- Situational
- Red (<20%) -- Rarely picked
- Gray (0%) -- Not used by any top 100 player

## Data Sources

- [Archon.gg](https://www.archon.gg) -- Raid and Mythic+ talent builds
- [WarcraftLogs](https://www.warcraftlogs.com) -- Top 100 talent heatmap data
