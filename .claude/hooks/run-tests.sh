#!/usr/bin/env bash
# Stop hook: run pytest; exit 2 sends Claude back to work if tests fail.
cd "$CLAUDE_PROJECT_DIR" || exit 0
out=$(uv run pytest -q 2>&1); rc=$?
# 0 = all passed, 5 = no tests collected yet (setup branch)
if [ "$rc" -eq 0 ] || [ "$rc" -eq 5 ]; then exit 0; fi
echo "pytest failed (exit $rc). Fix the code, not the tests:" >&2
echo "$out" | tail -n 40 >&2
exit 2
