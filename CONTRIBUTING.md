# Contributing to QuestMaster Pro

Thank you for helping improve QuestMaster Pro.

## Before opening a change

1. Search existing issues and pull requests.
2. Keep each change focused on one bug, feature, or data update.
3. Preserve the legacy `AzerothPilot` namespace, saved-variable names, and command aliases unless a migration plan accompanies the change.
4. Do not add speculative quest IDs, map IDs, coordinates, or routes.

## Bug reports

Include:

- QuestMaster Pro version
- WoW client and build
- Character level and faction when relevant
- Exact reproduction steps
- Expected and observed behavior
- Full Lua error text
- Other addons needed to reproduce the problem

## Code changes

- Target Lua 5.1 syntax.
- Follow the existing module and namespace layout.
- Keep functions focused and avoid unrelated formatting churn.
- Guard APIs that are unavailable on some supported clients.
- Add or extend an offline test when the behavior can be simulated.
- Test client-dependent behavior in game.

## Guide and route data

Every new data entry should identify how it was verified. For routes, include the supported client, faction, level range, quest IDs, map IDs, and coordinates used during testing.

Do not copy proprietary guide text or route data from commercial addons.

## Required validation

Before submitting a pull request:

```bash
./scripts/run-luacheck.sh
git diff --check
```

Also verify:

- Every Lua file parses under Lua 5.1.
- Both root TOC manifests reference existing files.
- XML files remain well formed.
- `tests/smoke.lua` passes with the files from `QuestMasterPro.toc`.

GitHub Actions repeats the syntax, manifest, startup, and Luacheck checks.

## Pull requests

Describe:

- What changed
- Why it changed
- What was tested
- Any live-client behavior that still needs manual verification

Keep user-facing claims factual and current. Avoid unverified completeness, pricing, savings, or competitor-comparison claims.

## License

By contributing, you agree that your contribution is licensed under GPL-3.0.
