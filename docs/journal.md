# Journal

Newest at the bottom.

- 2026-11-25, step 1: set up the repo after a grill session. Moved `IDEA.md` from the old `mission-control/` folder into `docs/`; the concierge is the "Later" part of that idea and comes first because it is cheaper. Verdict checked: a `CLAUDE.md` in a parent folder loads into every session below it (https://code.claude.com/docs/en/memory.md, read 2026-11-25), so the concierge got its own repo.
- 2026-11-25, step 2: `scripts/state.sh` prints the state table (last commit, days since, uncommitted files, ✅ count, last journal line). It counts ✅ instead of "x of y steps" because each project writes its plan differently. Check passed: 3 random rows matched `git log -1`. Text is cut by characters, not bytes, so Cyrillic stays whole. `.claude/settings.json` gives read access to all projects and session logs and denies `archive/`. Read-only is a rule in CLAUDE.md, not a setting: a deny on writes in Projects would also block this repo, because deny beats allow. airhint-science shows "no git": the sandbox hides its `.git`.
