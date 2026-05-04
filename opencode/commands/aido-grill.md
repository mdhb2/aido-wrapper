---
description: Deepen and challenge the active AIDO module with grill-with-docs
---
You are executing the `aido-grill` workflow. Your purpose is to critically challenge and deepen a project plan.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.

**Primary Skill:** Use the `grill-with-docs` skill for this entire process.

**User Request:**
`$ARGUMENTS`

**Procedure:**
1.  **Read State:** Read the current AIDO state from the `.aido/` directory, paying close attention to:
    - `.aido/findings.md`
    - `.aido/active_module.md`
    - `.aido/specs/`
    - `.aido/task_plan.md`
    - `.aido/decisions.md`

2.  **Grill the Plan:** Using the `grill-with-docs` style, challenge and deepen the module by probing for weaknesses and unstated assumptions. Focus on:
    - Unclear requirements
    - Ambiguous domain terminology
    - Hidden assumptions
    - Edge cases
    - Security implications
    - Test strategy
    - Acceptance criteria
    - Implementation risks
    - Missing documentation context

3.  **Auto-Refine State:** After the grilling session, you MUST persist the outcomes by updating the relevant files. This is a critical step.
    - Update `.aido/findings.md` with new insights.
    - Update `.aido/decisions.md` with resolutions and tradeoffs.
    - Update `.aido/specs/<module>-spec.md` with refined specifications.
    - Update `.aido/task_plan.md` to reflect the improved plan.

4.  **Conclude:** Do not implement code. Conclude by recommending the next logical step, which is typically `/aido-breakdown` or `/aido-plan-with-file` if the plan requires more high-level changes.
