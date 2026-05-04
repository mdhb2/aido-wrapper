---
description: Resume AIDO workflow from the latest state
---

Use the `aido-wrapper` skill. Treat this slash command as the `aido-resume` workflow.

Do not run `aido-resume` as a shell command.

Read `.aido/` and explain the next best action from the latest workflow state.

If no `.aido/` state exists, recommend starting with `aido-init`.

If state exists, recommend the next AIDO command and mention which `.aido/` files support that recommendation.
