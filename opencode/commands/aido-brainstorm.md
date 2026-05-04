---
description: Run AIDO role-based brainstorming for a module
---

Use the `aido-wrapper` skill. Treat this slash command as the `aido-brainstorm` workflow.

Do not run `aido-brainstorm` as a shell command.

User request:
`$ARGUMENTS`

Brainstorm using these roles:
- Product Owner
- Engineering Manager
- Security Engineer
- QA Engineer
- Developer

Produce a concise synthesis with scope, risks, acceptance criteria, and recommended implementation direction.

Auto-persist the brainstorm into `.aido/` before finishing:
- update `.aido/findings.md`
- update `.aido/active_module.md`
- update `.aido/specs/<module>-spec.md`
- update `.aido/task_plan.md`

Recommend `/aido-grill` as the next step to deepen the plan before breakdown.
