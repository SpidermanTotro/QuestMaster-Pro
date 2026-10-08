# Changelog

All notable changes to QuestMaster Pro are documented here.

## Unreleased

### Changed

- Replaced stale project-status and promotional documents with concise maintenance documentation.
- Standardized user-facing branding on QuestMaster Pro while retaining compatibility identifiers.
- Replaced promotional runtime text with factual status and feature messages.
- Updated the validation workflow to the current checkout action and disabled persisted credentials.

### Fixed

- Removed a redundant Lua compatibility assignment that caused Luacheck to fail.

## 1.1.0 - 2026-07-18

### Added

- Patch detection for Retail Midnight and supported Classic clients.
- Verified Midnight zone metadata without speculative IDs or routes.
- TOC manifest integrity validation.
- Offline startup simulation for all Lua files in TOC order.

### Fixed

- Addon load order and initialization across renamed folders.
- Shared `AzerothPilot`, `QuestMasterPro`, and `QMP` namespace compatibility.
- Runtime quest, map, reward, cooldown, UI texture, and XP tracker defects.
- Retail settings registration shadowed by the addon settings module.
- Lua 5.1 syntax and Luacheck configuration.

## 1.0.0 - 2025-11-09

### Added

- Initial modular addon structure.
- Guide engine, quest tracking, waypoint handling, and settings UI.
- Core data, route, class, profession, Mythic+, achievement, pet, mount, and gold-guide modules.
- Optional quest automation, debug support, and saved character progress.

Version numbers follow semantic versioning.
