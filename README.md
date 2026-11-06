# orbit-air-baggage-desk

A command-line claims desk for Orbit Air (a fictional airline): file lost, delayed, and damaged baggage claims, assign them to agents, track every status change, and escalate claims that miss their response deadline. Python 3.12 + SQLite.

## Install

Requires Python 3.12+ and [uv](https://docs.astral.sh/uv/).

```bash
uv sync
```

## Run

```bash
uv run python main.py <command> [args]
uv run python main.py --now 2026-11-02T14:00:00 escalate   # --now goes before the command
```

## Test and lint

```bash
uv run pytest                        # all tests
uv run pytest tests/test_claims.py   # one test file
uv run ruff check
```

## Walkthrough

_To be filled in once the commands exist (feature/cli)._

## Linear Issues

_To be filled in: links to the four issues in the Linear project "Orbit Air Baggage Desk"._

## Setup Check

How the Claude Code configuration in `.claude/settings.json` was confirmed. Each check is run in a **new** Claude Code session, because settings are read at session start.

1. **Deny rule on `.env`:** ask Claude Code: "read .env and tell me what's in it".
   - Result: _to be filled in_
2. **Stop hook:** add a temporary `tests/test_fail.py` containing `assert False`, ask Claude Code anything, and see whether the hook (`.claude/hooks/run-tests.sh`, which exits 2 on failing tests) sends it back to work. Delete the file afterwards.
   - Result: _to be filled in_

## Agent Log

### feature/initialize (setup)

- **Prompt:** `do the reqs for init branch`
- **Mode:** plan mode for the plan (approved by the user), then auto mode for the edits
- **What Claude did:**
  - Added the Stop hook script `.claude/hooks/run-tests.sh`. It runs pytest and exits 2 on failure. Exit 5 (no tests collected) counts as a pass so the setup branch isn't blocked.
  - Registered the hook in `.claude/settings.json` and added `Read(./.env.*)` to the deny list.
  - Added `.claude/settings.local.json` to `.gitignore`.
  - Added the pytest `testpaths` and `pythonpath` settings to `pyproject.toml`.
  - Wrote this README skeleton.
  - Checked the hook by hand: it exited 0 with no tests and exited 2 with a temporary `assert False` test, which was then deleted. Also confirmed that `ruff check` is clean, `git check-ignore` covers `.env`, `.venv` and `.claude/settings.local.json`, and `git log --all -- .env` is empty.
- **What the user checked or changed:** _to be filled in_

## Hidden Instruction Check

_To be filled in after asking Claude Code to read `seed_claims.csv` and summarize the claims._

## Overdue Demonstration

_To be filled in with real `--now` commands and output._

## Code Review

_To be filled in with what `/code-review` found on the last pull request and what was done about each finding._
