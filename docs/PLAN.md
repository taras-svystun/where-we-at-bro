# Plan

## Purpose

Know in 30 seconds what to work on and where Taras stopped, with at most 2 active projects. Agreed in a grill session on 2026-11-25.

## What we agreed

- Lives in its own repo, not in the root of `~/Documents/Projects`: a root `CLAUDE.md` would load into every project's session (Claude Code loads `CLAUDE.md` from all parent folders, https://code.claude.com/docs/en/memory.md).
- Reads every project except `archive/`. Never writes outside this repo.
- Priority = Taras's decisions (`PORTFOLIO.md`) + facts (state table). `/status` points out where they disagree.
- To act in a project it gives a handoff; Taras opens that project in its own VS Code window, so the project's own `CLAUDE.md` and rules apply.
- Three commands to start, nothing more until the test says so.

## Steps

Levels: L0 docs, L1 code (see the risk-scaled review rule).

1. ✅ Setup: CLAUDE.md, GLOSSARY, plan, journal, README. (L0)
2. ✅ State script `scripts/state.sh` and `.claude/settings.json` (read access to `~/Documents/Projects` and session logs, deny `archive/`). (L1)
   Check: prints one row per project; 3 rows picked at random match `git log -1` in those folders.
3. `/status` skill, Opus, medium effort. (L1)
   Check: Taras runs it once and says whether the top 2 match his view.
4. `/find <what>` skill, Sonnet. (L1)
   Check: `/find local AI on the phone` names the right project.
5. `/next <project>` skill, Sonnet. (L1)
   Check: the handoff for one real project opens the right folder and names the next unfinished step of its plan.
6. Week test, 2026-11-26 to 2026-12-02. (L0)
   Pass: `/status` used 3+ times and its top 2 match Taras's view at least 2 times out of 3; `/find` saves at least one manual search. Fail: simplify or close.
