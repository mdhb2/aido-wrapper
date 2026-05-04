---
description: Break the active AIDO module into small implementation phases
---
You are executing the `aido-breakdown` workflow. Your purpose is to break a high-level plan into small, actionable implementation phases.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.

**Procedure:**
1.  **Read State:** Read the current plan from `.aido/active_module.md`, `.aido/specs/`, and `.aido/task_plan.md`.

2.  **Breakdown into Phases:** Decompose the active module into small, sequential phases. Each phase in the plan MUST include:
    - **goal:** A clear, one-sentence objective.
    - **likely files:** A list of files expected to be modified.
    - **tests:** A description of the testing strategy.
    - **done criteria:** A clear definition of "done" for the phase.
    - **status:** The initial status, which must be `PENDING`. Other valid statuses are `IN_PROGRESS`, `DONE`, or `BLOCKED`.

3.  **Auto-Refine State:** Persist the detailed plan by updating the following files:
    - `.aido/task_plan.md` (with the new phase breakdown)
    - `.aido/progress.md`
    - `.aido/decisions.md` (with any decisions made about scope, order, or risk)

4.  **Conclude:** Recommend `/aido-execute-next` as the next logical step.
