# claude-skills

Shared Claude Code configuration and skills for all my projects.

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

| Skill | Source |
|---|---|
| brainstorming | obra/superpowers |
| requesting-code-review | obra/superpowers |
| subagent-driven-development | obra/superpowers |
| test-driven-development | obra/superpowers |
| writing-plans | obra/superpowers |
| clean-code | sickn33/antigravity-awesome-skills |
| security-best-practices | supercent-io/skills-template |
| agent-browser | vercel-labs/agent-browser |
| web-design-guidelines | vercel-labs/agent-skills |
| vercel-react-best-practices | vercel-labs/agent-skills |
| seo-audit | coreyhaines31/marketingskills |
| frontend-design | anthropics/skills |
