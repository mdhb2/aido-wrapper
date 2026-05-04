---
description: Deepen and challenge the active AIDO module with grill-with-docs
---

Use the `aido-wrapper` skill and the `grill-with-docs` skill. Treat this slash command as the `aido-grill` workflow.

Do not run `aido-grill` as a shell command.

User request:
`$ARGUMENTS`

Read the current AIDO state from `.aido/`, especially:
- `.aido/findings.md`
- `.aido/active_module.md`
- `.aido/specs/`
- `.aido/task_plan.md`
- `.aido/decisions.md`

Challenge and deepen the module by probing:
- unclear requirements
- domain terminology
- hidden assumptions
- edge cases
- security implications
- test strategy
- acceptance criteria
- implementation risks
- missing documentation context

Auto-refine the plan files before finishing:
- update `.aido/findings.md`
- update `.aido/decisions.md`
- update `.aido/specs/<module>-spec.md`
- update `.aido/task_plan.md`

Do not implement code. Recommend `/aido-breakdown` or `/aido-plan-with-file` as the next step depending on whether the plan is stable.
