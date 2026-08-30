# QuestMaster Pro development container

The development container installs Lua 5.1, LuaRocks, and Luacheck for local validation.

## Use

1. Open the repository in a compatible Codespaces or devcontainer environment.
2. Reopen the project in the container.
3. Run:

   ```bash
   ./scripts/run-luacheck.sh
   ```

The GitHub Actions workflow additionally checks Lua syntax, TOC manifests, and offline addon startup.

The optional pre-commit helper is available at `scripts/pre-commit.sh`; review it before copying it into `.git/hooks/`.
