#!/usr/bin/env bash
# Install all shared Claude Code skills into the current project.
# Run this from the root of any project: bash install-skills.sh
#
# Each `npx skills add` command is interactive (prompts for confirmation),
# so they run sequentially.

set -euo pipefail

echo "Installing Claude Code skills..."
echo ""

# obra/superpowers
echo "--- brainstorming ---"
npx skills add https://github.com/obra/superpowers --skill brainstorming

echo "--- requesting-code-review ---"
npx skills add https://github.com/obra/superpowers --skill requesting-code-review

echo "--- subagent-driven-development ---"
npx skills add https://github.com/obra/superpowers --skill subagent-driven-development

echo "--- test-driven-development ---"
npx skills add https://github.com/obra/superpowers --skill test-driven-development

echo "--- writing-plans ---"
npx skills add https://github.com/obra/superpowers --skill writing-plans

# sickn33/antigravity-awesome-skills
echo "--- clean-code ---"
npx skills add https://github.com/sickn33/antigravity-awesome-skills --skill clean-code

# vercel-labs
echo "--- agent-browser ---"
npx skills add https://github.com/vercel-labs/agent-browser --skill agent-browser

# currents-dev
echo "--- playwright-best-practices ---"
npx skills add https://github.com/currents-dev/playwright-best-practices-skill

echo ""
echo "All skills installed."
