# Autofix Tests

Run tests in a fix loop: run a test, analyze failures, fix, re-run, repeat until green. Then move to the next test.

**Trigger:** When the user asks to "autofix tests", "fix tests in a loop", "run and fix until green", or similar.

## Arguments

The user provides:
- **Test command**: The command to run tests (e.g., `npm run test:e2e`, `pytest`, `npm test`)
- **Filter flag** (optional): How to run a single test (e.g., `--grep`, `-k`, `--filter`). If not provided, ask.
- **Test list** (optional): Specific tests to run. If not provided, discover by running the full suite first.

## Process

```
1. Discovery    -> Get list of all tests
2. Per test     -> Run one test, fix if failed, re-run, repeat
3. Full suite   -> Run all tests together to catch cross-test issues
4. Report       -> Summary of what passed, what was fixed, what failed
```

### Step 1: Discovery

If no test list provided, run the full test command once to discover all test names and which ones fail. Parse the output to extract individual test identifiers.

### Step 2: Fix Loop (per test)

For each test:

```
attempts = 0
max_attempts = 3

while test fails AND attempts < max_attempts:
    1. Run the single test using the filter flag
    2. If it passes -> move to next test
    3. If it fails:
       a. Read the error output carefully
       b. Read the relevant test file and source file
       c. Identify the root cause (not the symptom)
       d. Fix the code
       e. Increment attempts
       f. Re-run the same test

if attempts == max_attempts:
    Mark as unfixable, report to user, continue to next test
```

**Root cause analysis, not symptom patching:**
- "Expected 50, got 100" -> Don't change the expected value. Ask: why is the actual value wrong?
- "Element not found" -> Don't add a wait. Ask: is the selector wrong? Is the element not rendered?
- "Timeout" -> Don't increase the timeout. Ask: why didn't the action complete?

**What to fix:**
- Test code (wrong selectors, wrong assertions, missing setup)
- Source code (bugs revealed by the test)
- Test infrastructure (shared state, fixture issues)

**What NOT to fix:**
- Don't weaken assertions (exact -> approximate, toBe -> toBeGreaterThan)
- Don't increase timeouts as a fix
- Don't skip tests
- Don't change expected values without understanding why the actual value is different

### Step 3: Full Suite

After all individual tests pass, run the full suite. Tests that pass individually may fail together due to:
- Shared state between tests
- Order-dependent behavior
- Resource contention

If failures occur, apply the same fix loop but now analyzing cross-test interactions.

### Step 4: Report

```
## Autofix Results

**Total tests:** N
**Passed first try:** N
**Fixed:** N (list what was fixed and why)
**Unfixable:** N (list what failed and why)

**Full suite:** PASS / FAIL
```

## Rules

- **One test at a time.** Never try to fix multiple tests simultaneously.
- **Read before fixing.** Always read the test file and the source file before making changes.
- **Fix the cause, not the symptom.** If a test expects 50 but gets 100, the fix is not to change 50 to 100.
- **Commit after each fix.** Small, atomic commits with clear messages describing what was fixed and why.
- **3 attempts max per test.** If you can't fix it in 3 tries, report it and move on.
- **Don't weaken tests.** If you find yourself making assertions less strict, stop and reconsider.
- **Check for shared state.** When tests pass individually but fail together, the issue is almost always shared mutable state.
