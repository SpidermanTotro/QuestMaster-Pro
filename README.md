# QuestMaster Pro

QuestMaster Pro is an open-source World of Warcraft questing and guide addon. The project is under active development and currently focuses on safe startup, patch compatibility, guide infrastructure, navigation, and testable UI behavior.

## Current status

- Version: **1.1.0**
- Primary release folder: `QuestMasterPro`
- License: GPL-3.0
- Runtime: World of Warcraft's Lua 5.1 environment
- CI: Lua syntax, TOC integrity, startup simulation, and Luacheck

The repository contains working addon infrastructure and a mixture of implemented guide modules and sample/catalog data. Coverage varies by expansion and zone; do not treat the presence of a catalog entry as proof of a fully verified route.

## Supported clients

The TOC metadata currently covers Retail Midnight 12.0.7 and the active Classic client families. See [PATCH_SUPPORT.md](PATCH_SUPPORT.md) for the interface matrix and data-verification rules.

## Installation

1. Download or clone this repository.
2. Copy it to the appropriate World of Warcraft `Interface/AddOns` directory.
3. Name the addon folder `QuestMasterPro`.
4. Enable **QuestMaster Pro** at character selection.

See [INSTALLATION.md](INSTALLATION.md) for client-specific paths and troubleshooting.

## Commands

| Command | Purpose |
| --- | --- |
| `/qmp help` | Show the main command list |
| `/qmp start [guide-id]` | Start a guide or auto-detect one |
| `/qmp stop` | Stop the active guide |
| `/qmp next` / `/qmp prev` | Move through guide steps |
| `/qmp guides` | List loaded guides |
| `/qmp show` / `/qmp hide` | Control the guide window |
| `/qmp config` | Open addon settings |
| `/qmp reset` | Reset character guide progress |
| `/qmp version` | Display build information |
| `/xptrack` | Control the XP tracker |
| `/travel` | Open travel-optimizer commands |
| `/skipquest` | Open quest-analysis commands |
| `/gear` | Control the gear advisor |
| `/notify` | Control smart notifications |

The legacy `/ap`, `/azerothpilot`, and `/app` aliases remain available for compatibility.

## Repository layout

| Path | Purpose |
| --- | --- |
| `Core/` | Initialization, compatibility, storage, and feature services |
| `UI/` | Main window, navigation arrow, settings, and UI helpers |
| `Guides/` | Guide engine, quest tracking, and waypoint handling |
| `Data/` | Guide catalogs, routes, and patch-specific metadata |
| `tests/` | Offline World of Warcraft API shim and startup smoke test |
| `scripts/` | Local lint and development helpers |
| `EXERCISES/` | Optional Lua learning exercises |

The `AzerothPilot` Lua namespace, legacy slash commands, saved-variable names, and `AzerothPilotReloadedPro.toc` are retained to avoid breaking existing installations. User-facing branding is **QuestMaster Pro**.

## Validation

Pull requests run:

1. Lua 5.1 syntax checks for every Lua file.
2. Existence checks for files referenced by each root TOC manifest.
3. A 29-file startup simulation covering `ADDON_LOADED`, `PLAYER_LOGIN`, namespace compatibility, and Retail settings registration.
4. Luacheck 1.2.0 with zero-warning enforcement.

In-game testing is still required for behavior that depends on the live World of Warcraft client.

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting code or guide data. New quest IDs, map IDs, coordinates, and routes should come from live-client verification rather than prediction.

## License

QuestMaster Pro is distributed under the [GNU General Public License v3.0](LICENSE).
