---
name: status
description: Show which projects matter now, where Taras stopped in each, and where his priorities and the facts disagree.
disable-model-invocation: true
model: opus
effort: medium
---

Answer "what should I work on now, and where did I stop?" in under 30 seconds of reading.

1. Run `scripts/state.sh`. Its rows are the facts; never guess a project's state.
2. Read `PORTFOLIO.md` (Taras's decisions) and `~/Documents/Projects/ask-bro/goals.md` (his goals).
3. For each active item in the portfolio, read the project's `docs/PLAN.md` and find the first step without ✅. A group (for example two folders that form one project) gets one entry.

Write the answer in Ukrainian, in this order:

- **Top 2**: for each, one line: the project, why now (the portfolio reason and the goal it serves), where Taras stopped (last commit or journal line, with its date), and the next step from the plan.
- **Disagreements**, only if there are any: an active item with no commit for 7+ days; a non-active project with work in the last 2 days; uncommitted files in an active project; more than 2 active items. One line each, with the fact from the table.
- **The rest**: one bullet per other project, sorted by days since its last commit, freshest first, with a text bar of one `▇` per 7 days (at least one). Example:
  ```
  - leads-dont-sleep  ▇▇ 9 д
  - true-story-bro    ▇▇▇▇▇▇▇▇ 55 д
  ```
  Projects without git go in one last bullet. No table unless Taras asks.

Stop there, under about 120 words. Do not suggest new projects or edit any file. To start work in a project, point to `/next <project>`.
