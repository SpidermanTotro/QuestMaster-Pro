# QuestMaster Pro — visual identity and repository migration

## Identity

- **Product / addon name:** QuestMaster Pro
- **Current maintained repository:** https://github.com/SpidermanTotro/azeroth-pilot-reloaded-Pro-
- **Proposed repository name:** `QuestMaster-Pro`
- **Resulting address after the owner renames it:** `https://github.com/SpidermanTotro/QuestMaster-Pro`
- **Not in scope:** `SpidermanTotro/QuestMasterPro` archival/recovery repository; `SpidermanTotro/azeroth-pilot-reloaded` legacy fork; the upstream Azeroth Pilot Reloaded project.

## Logo

The QuestMaster Pro mark is an original compass/waypoint emblem. Blue suggests navigation, gold highlights quest goals; it is not copied from an in-game texture or an existing addon brand.

- `assets/questmaster-pro-mark.svg` — square emblem/avatar
- `assets/questmaster-pro-lockup.svg` — horizontal README/banner logo
- Palette: deep navy `#080F25`, light cyan `#A2F0FF`, blue `#2366DB`, gold `#FFD468`.

The SVG assets are for GitHub and web use. **Do not change `## IconTexture` to an SVG path**: the WoW client requires a supported game texture format. A WoW-compatible texture should be added and smoke-tested on the target client separately.

## GitHub repository rename — manual administrator action

The connector used for this branding work does not expose a repository-rename operation. A repository administrator can complete the actual URL change:

1. Open **Settings → General → Repository name** for `SpidermanTotro/azeroth-pilot-reloaded-Pro-`.
2. Rename it to **QuestMaster-Pro**.
3. Confirm that the new URL resolves and that GitHub redirects existing links.
4. Only then update `## X-Website`, package metadata, CI/release links, and any hard-coded download URLs to the new canonical address. Do not preemptively publish broken links.
5. Update local clones: `git remote set-url origin https://github.com/SpidermanTotro/QuestMaster-Pro.git`.
6. Verify `git remote -v`, pull-request base branches, CI status checks, and release artifacts.

## Compatibility rules

Keep the installed folder name `QuestMasterPro`; do not rename the addon directory, TOC names, `AzerothPilot` internal namespace, existing saved-variable names, or the `/ap`, `/app`, and `/azerothpilot` aliases merely for branding. This prevents breaking existing installations and save data.

Current open work is stacked: PR #12 fixes startup/settings; PR #13 cleans repository metadata/docs on top of #12. The new branding changes should be reviewed after or on top of PR #13, not confused with the unrelated 330-route upstream APR dataset.

## Route and content accuracy

This identity refresh does not claim complete zone/quest coverage or change any quest IDs. Route availability and map accuracy require the applicable game-client data. Keep verification separate from visual design changes.
