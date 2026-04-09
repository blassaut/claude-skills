# CLAUDE.md - Shared Workflow Rules

These rules apply to every project that imports this configuration.

## Writing Style

- Never use em dashes (`--`). Use regular hyphens (`-`) instead.

## Git Workflow

- **Branch per feature** - Always create a new branch before starting any dev work. Never work directly on `main`.
- **Verify branch before committing** - Always check which branch you're on before committing, especially after context switches. Run `git branch` or `git status` first.
- **Never push to main** - Always use feature branches and pull requests. No direct pushes to `main` or `master`.
- **Code review before push** - Always run a code review (using the `/review` skill or equivalent) before pushing a branch.

## Full Dev Workflow

For any non-trivial work, follow this sequence:

1. **Branch** - Create a feature branch from `main`
2. **TDD** - Write tests first, then implementation
3. **Clean code** - Review for quality, reuse, and efficiency
4. **Code review** - Run a review pass before pushing
5. **Security check** - Audit for common vulnerabilities
6. **Best QA practices** - Use playwright best practices
7. **Tests** - Ensure all tests pass
8. **Commit + Push** - Commit with a clear message, push the branch, open a PR
