---
description: Report current AIDO workflow status
---

Use the `aido-wrapper` skill and run `aido-status`.

Read `.aido/` and report:
- active module
- current phase
- completed phases
- next phase
- blockers
- whether cleanup is allowed

Keep the report concise and actionable.

If the state is inconsistent, report the repair steps. Do not perform destructive cleanup.
