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

# supercent-io/skills-template
echo "--- security-best-practices ---"
npx skills add https://github.com/supercent-io/skills-template --skill security-best-practices

# vercel-labs
echo "--- agent-browser ---"
npx skills add https://github.com/vercel-labs/agent-browser --skill agent-browser

echo "--- web-design-guidelines ---"
npx skills add https://github.com/vercel-labs/agent-skills --skill web-design-guidelines

echo "--- vercel-react-best-practices ---"
npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices

# coreyhaines31/marketingskills
echo "--- seo-audit ---"
npx skills add https://github.com/coreyhaines31/marketingskills --skill seo-audit

# anthropics/skills
echo "--- frontend-design ---"
npx skills add https://github.com/anthropics/skills --skill frontend-design

echo ""
echo "All skills installed."
