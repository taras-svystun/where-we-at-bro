# Mission Control: operational context for a solo dev with an agent team

Paste after `/grill-me` to start.

## The pain
I work alone with AI agents in many roles: backend, QA, critic, architect, product,
customer research. Today I am the glue. I keep in my head where the project is, who acts
next, and what was decided. Context is lost between sessions and between projects.
(A startup CEO named this "operational context": the biggest problem of the AI era.)

## The idea
Each project has one live picture of its state, in files: the plan, what was done, what is
blocked, what was decided. A loop reads that picture and says what happens next:
backend builds -> QA checks -> critic reviews -> architect checks the design ->
brainstorm and feedback -> new plan -> product and customer view -> back to build.
Each role runs in its own clean session and writes its result back to the picture.
I watch and steer; I do not carry the state in my head.

Same mechanism as dont-paste-that: a written rule file plus the current state gives the
next allowed action. There it guards AI requests; here it guards the team's workflow.

## Later
Across all my local projects: one view of how each one handles security, agents and
architecture, so a lesson from one project reaches the others.

## Open questions to grill
- Which roles are worth a separate session, and which are one prompt?
- What triggers the next role: me, a hook, or the loop itself? How do I keep control?
- Where does the state live so every session reads it the same way?
- What is the smallest version I can use on one real project this week?
- How do I measure that it saves time?

## Working rules (same as the last session)
Cheapest check first. Each part has a "what breaks without it", or it goes. A critic in a
fresh context reviews the plan before building. Plan in docs/PLAN.md with a check per step.
