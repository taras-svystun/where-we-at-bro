# where-we-at-bro

A read-only concierge over all of Taras's projects in `~/Documents/Projects`: it says which project matters now, where he stopped, and where something was done, so he never has to keep 20 projects in his head.

- `GLOSSARY.md`: the project's words. Use them in code, docs and commits.
- `docs/PLAN.md`: the plan and what we agreed. Read it when starting a step.
- `docs/journal.md`: what each finished step did and why.
- `docs/IDEA.md`: the bigger Mission Control idea (a role loop inside one project). Later stage, not this one.
- `README.md`: the commands, for Taras. Update it whenever a command changes.

## Rules of this project

- **Read-only outside this repo.** Never write, commit or run anything in another project. To act in a project, give a **handoff** (see GLOSSARY.md); Taras runs it himself.
- **Never read `archive/`.**
- **Facts from the state script, judgement from the model.** Do not guess a project's state; run `scripts/state.sh`.
- **`PORTFOLIO.md` holds only Taras's decisions**: at most 2 active projects and the deadlines, 10 lines at most. Never copy project state into it. Warn when a third project becomes active.
- Open a project in VS Code with `cd <path> && vs .` (Taras's alias), never `code .`.

## Finishing a step

A command is done when its row in `README.md` is updated and it was run once on the real projects, with the output shown to Taras.
