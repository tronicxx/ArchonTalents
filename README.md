# Archon Talents - World of Warcraft Addon

[![GitHub release](https://img.shields.io/github/v/release/yourusername/archon-talents)](https://github.com/yourusername/archon-talents/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> Display the most popular talent builds from Archon.gg meta data directly in-game

## 🎯 Features

- **Raid Talent Builds**: View top talent builds for all Manaforge Omega bosses
- **Mythic+ Support**: Access meta builds for Mythic+ dungeons
- **Real-time Data**: Automatically updated talent data from Archon.gg
- **Clean Interface**: Professional, easy-to-use GUI with tabbed navigation
- **Minimap Integration**: Convenient minimap button with drag-and-drop support
- **Smart Detection**: Automatically detects your class and specialization

## 🚀 Quick Start

### Via WowUp (Recommended)
1. Download and install [WowUp](https://wowup.io/)
2. Click "Get Addons" → "Browse"
3. Search for "Archon Talents"
4. Click "Install"

### Manual Installation
1. Download the latest release from [GitHub Releases](https://github.com/yourusername/archon-talents/releases)
2. Extract the `ArchonTalents` folder to your `World of Warcraft/_retail_/Interface/AddOns/` directory
3. Restart World of Warcraft

## 📱 Usage

### Commands
- **`/archon`** - Open the talent GUI
- **`/archon hide`** - Hide the talent GUI
- **`/archon hide minimap`** - Hide the minimap button
- **`/archon show minimap`** - Show the minimap button
- **`/archon help`** - Show help information

### Interface
- **Raid Tab**: Select boss and difficulty to view talent builds
- **Mythic+ Tab**: View overall Mythic+ meta builds for your spec
- **Minimap Button**: Left-click to open GUI, drag to reposition

## 🔄 Data Updates

Talent data is automatically updated daily via our CI/CD pipeline, ensuring you always have access to the latest meta builds from Archon.gg.

## 📁 Files

- **`ArchonTalents.lua`** - Main addon logic and UI
- **`ArchonTalents.toc`** - Addon metadata and dependencies
- **`ArchonData.lua`** - Talent build data (auto-generated)
- **`embeds.xml`** - Embedded library dependencies
- **`Libs/`** - Required libraries (LibStub, LibDataBroker, LibDBIcon)

## 🛠️ Development

### Prerequisites
- Python 3.9+
- Git

### Local Development
```bash
git clone https://github.com/yourusername/archon-talents.git
cd archon-talents
python archon_combined_scraper.py
```

### Creating a Release
```bash
./create_release.sh 1.0.0
```

## 📊 Supported Content

### Raid: Manaforge Omega
- **Heroic & Mythic** difficulties
- All 8 bosses supported
- Class and specialization specific builds

### Mythic+
- **+10 Key Level** meta builds
- **All Dungeons** overall spec data
- Weekly updated rankings

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Archon.gg** for providing the talent build data
- **LibStub** and **LibDBIcon** developers for the excellent libraries
- **WowUp** team for making addon management easy

## 📞 Support

- **GitHub Issues**: [Report bugs or request features](https://github.com/yourusername/archon-talents/issues)
- **Discord**: Join our community server (link coming soon)
- **In-Game**: Use `/archon help` for command reference

---

**Made with ❤️ for the World of Warcraft community**
