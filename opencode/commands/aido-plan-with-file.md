---
description: Create AIDO active module, spec, and task plan files
---

Use the `aido-wrapper` skill. Treat this slash command as the `aido-plan-with-file` workflow.

Do not run `aido-plan-with-file` as a shell command.

User request:
`$ARGUMENTS`

Use planning-with-files style to create or update:
- `.aido/active_module.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

Ensure `.aido/task_plan.md` contains only the active module.

This command is also the manual re-sync command. Use it whenever brainstorm, grill, breakdown, execution, documentation, archive, or cleanup reveals changes that should be reflected in the active module state.
