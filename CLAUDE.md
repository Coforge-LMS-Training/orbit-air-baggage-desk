# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

- `uv sync` — install dependencies (Python 3.12, uv-managed)
- `uv run pytest` — run all tests
- `uv run pytest tests/test_claims.py` — run the claims tests

## Business rules

Response deadlines by tier: **gold 4 hours**, **silver 24 hours**, **standard 72 hours**.

## Git rules

- Never push, publish, or create or merge remote PRs. Commit only to local branches.
- Make small, logical commits. On each assignment branch, commit the tests before the feature code.

## Agent Log

After each branch, add an entry under `README.md` → `## Agent Log` with:
- the exact prompt used
- the Claude Code mode
- what Claude did
- what the user checked or changed

Record only what actually happened. Never invent entries or results; leave a field for the user to fill in if you don't know it.
