---
description: Create AIDO active module, spec, and task plan files
---
You are executing the `aido-plan-with-file` workflow. This is a manual workflow for creating or re-syncing a plan.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.

**User Request:**
`$ARGUMENTS`

**Procedure:**
1.  **Interpret Request:** Use the user's request to understand the goal.
2.  **Generate Plan:** Using a `planning-with-files` style, create or update the core planning documents.
    - `.aido/active_module.md`
    - `.aido/specs/<module>-spec.md`
    - `.aido/task_plan.md`
3.  **Ensure Focus:** The `.aido/task_plan.md` file MUST only contain tasks for the single active module.

**Note:** This command serves as the manual re-sync command. Use it whenever other workflows reveal a need to change the high-level plan.
