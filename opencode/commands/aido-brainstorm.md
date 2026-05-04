---
description: Run AIDO role-based brainstorming for a module
---
You are executing the `aido-brainstorm` workflow. Your purpose is to explore a new module or feature from multiple perspectives.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.

**User Request:**
`$ARGUMENTS`

**Procedure:**
1.  **Role-Based Brainstorming:** Conduct a brainstorming session using the following roles as perspectives:
    - Product Owner
    - Engineering Manager
    - Security Engineer
    - QA Engineer
    - Developer

2.  **Synthesize Findings:** Produce a concise synthesis of the brainstorming session. The output MUST include:
    - Scope definition
    - Identified risks
    - Acceptance criteria
    - A recommended implementation direction

3.  **Auto-Refine State:** After the session, you MUST persist the brainstormed plan into the `.aido/` directory by updating these files:
    - `.aido/findings.md`
    - `.aido/active_module.md`
    - `.aido/specs/<module>-spec.md`
    - `.aido/task_plan.md`

4.  **Conclude:** Recommend `/aido-grill` as the next logical step to challenge and deepen the plan before breaking it down into concrete tasks.
