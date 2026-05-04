description: Report current AIDO workflow status
---
You are executing the `aido-status` workflow. Your purpose is to provide a concise summary of the current project state.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. This is a read-only operation. Do not modify any files.

**Procedure:**
1.  **Read State:** Read the contents of the `.aido/` directory.

2.  **Generate Report:** Provide a concise and actionable report covering:
    - Active module name
    - Current phase (from `task_plan.md` and `progress.md`)
    - List of completed phases
    - The next pending phase
    - Any identified blockers
    - Whether the module is ready for cleanup (docs and archives exist)

3.  **Handle Inconsistency:** If the state files seem inconsistent, report the issue and suggest steps for manual repair. Do not perform any destructive actions.
