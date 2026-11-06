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

When a branch's work is complete, add its entry under `README.md` → `## Agent Log` in the same final commit, before the user pushes, with:
- the exact prompt used, verbatim; if it relies on earlier context, also note what it referred to
- the Claude Code mode
- what Claude did
- what the user checked or changed

Record only what actually happened. Never invent entries or results; leave a field for the user to fill in if you don't know it.
