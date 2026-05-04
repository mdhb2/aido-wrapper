---
description: Execute the next pending AIDO phase with TDD
---

Use the `aido-wrapper` skill. Treat this slash command as the `aido-execute-next` workflow.

Do not run `aido-execute-next` as a shell command.

Execute only the next `PENDING` phase from `.aido/task_plan.md`.

Use strict TDD:
- write or update tests first
- implement the minimal change
- run relevant tests
- update `.aido/progress.md`
- update `.aido/test_report.md`
- update `.aido/decisions.md`
- update `.aido/task_plan.md`
- update `.aido/findings.md` when new findings appear

Do not start another phase after this phase is complete.
