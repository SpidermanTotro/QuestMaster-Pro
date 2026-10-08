# Installing QuestMaster Pro

## Manual installation

1. Download the repository ZIP or a release archive.
2. Extract the files.
3. Rename the extracted folder to `QuestMasterPro`.
4. Copy that folder into the client you want to use:

   - Retail: `World of Warcraft/_retail_/Interface/AddOns/`
   - Classic variants: the matching `_classic_*` client's `Interface/AddOns/` directory

5. Confirm this structure:

   ```text
   Interface/
   └── AddOns/
       └── QuestMasterPro/
           ├── QuestMasterPro.toc
           ├── Main.lua
           ├── Core/
           ├── Data/
           ├── Guides/
           └── UI/
   ```

6. Start World of Warcraft, open **AddOns** at character selection, and enable **QuestMaster Pro**.

## First checks

After logging in:

- Run `/qmp help` to confirm the addon loaded.
- Run `/qmp guides` to see the guide data available to the current build.
- Run `/qmp config` to open settings.
- Run `/qmp version` when reporting a problem.

## Troubleshooting

### The addon is missing from the AddOns list

- Confirm the folder is named exactly `QuestMasterPro`.
- Confirm `QuestMasterPro.toc` is directly inside that folder rather than one directory deeper.
- Confirm the folder is under the correct WoW client directory.
- Restart the client after changing addon files.

### The addon is marked out of date

Compare your client build with [PATCH_SUPPORT.md](PATCH_SUPPORT.md). Do not change interface numbers blindly; open an issue with the client version from `GetBuildInfo()`.

### A command or guide fails

Open a GitHub issue and include:

- QuestMaster Pro version from `/qmp version`
- WoW client and build
- Exact command or guide ID
- Reproduction steps
- Full Lua error text

Repository: https://github.com/SpidermanTotro/azeroth-pilot-reloaded-Pro-
