# claude-skills

Shared Claude Code configuration and skills for Web3 QA projects.

## What's included

- **CLAUDE.md** - Workflow rules (branching, TDD, code review, no em dashes, etc.)
- **install-skills.sh** - Script to install all shared Claude Code skills

## Usage

### 1. Install skills into a project

From your project root:

```bash
bash /path/to/claude-skills/install-skills.sh
```

Or copy the script into your project and run it:

```bash
cp /path/to/claude-skills/install-skills.sh .
bash install-skills.sh
```

### 2. Copy CLAUDE.md rules

Copy or reference the CLAUDE.md into your project to apply the shared workflow rules:

```bash
cp /path/to/claude-skills/CLAUDE.md .
```

Then add any project-specific instructions below the shared ones.

## Skills included

### Planning and workflow

| Skill | Source | Why |
|---|---|---|
| brainstorming | obra/superpowers | Explore intent, requirements, and design before jumping into implementation |
| writing-plans | obra/superpowers | Design multi-step implementation plans from specs or requirements |
| subagent-driven-development | obra/superpowers | Parallelize independent tasks using specialized sub-agents |

### Code quality

| Skill | Source | Why |
|---|---|---|
| clean-code | sickn33/antigravity-awesome-skills | Review code for reuse, quality, and efficiency (Uncle Bob principles) |
| requesting-code-review | obra/superpowers | Run a structured code review before pushing any branch |

### Testing

| Skill | Source | Why |
|---|---|---|
| test-driven-development | obra/superpowers | Write tests first, then implementation - core QA workflow |
| playwright-best-practices | currents-dev/playwright-best-practices-skill | Synpress is Playwright-based - directly applicable to dApp E2E testing |

### Automation and ops

| Skill | Source | Why |
|---|---|---|
| agent-browser | vercel-labs/agent-browser | Automate browser interactions for dApp E2E flows with wallet mocking |
