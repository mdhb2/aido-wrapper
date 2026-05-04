description: Resume AIDO workflow from the latest state
---
You are executing the `aido-resume` workflow. Your purpose is to determine and explain the next logical action based on the current project state.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. This is a read-only operation. Do not modify any files.

**Procedure:**
1.  **Read State:** Read the contents of the `.aido/` directory to understand the last completed step.

2.  **Determine Next Action:** Based on the state, recommend the next logical AIDO command to run.
    - If no `.aido/` state exists, recommend `/aido-init`.
    - If a brainstorm is done, recommend `/aido-grill`.
    - If a breakdown is done, recommend `/aido-execute-next`.
    - etc.

3.  **Provide Context:** Explain *why* you are recommending that specific command, referencing the files that support your recommendation (e.g., "Based on the completed `task_plan.md`, the next step is to execute the first pending phase with `/aido-execute-next`.").
