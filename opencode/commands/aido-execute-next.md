---
description: Execute the next pending AIDO phase with TDD
---
You are executing the `aido-execute-next` workflow. Your purpose is to implement the single next pending task from a plan.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.
3. A strict Test-Driven Development (TDD) flow is mandatory.

**Procedure:**
1.  **Identify Task:** Read `.aido/task_plan.md` and identify the *single* next phase with the status `PENDING`.

2.  **Execute with TDD:**
    a.  **Write Test:** Write or update a failing test that captures the requirements of the phase.
    b.  **Implement:** Write the minimal amount of code required to make the test pass.
    c.  **Run Test:** Execute the relevant tests to confirm success.

3.  **Auto-Refine State:** After implementation, you MUST update the state files:
    - Update `.aido/progress.md` with a summary of the work done.
    - Update `.aido/test_report.md` with the results of the test run.
    - Update `.aido/decisions.md` with any implementation choices.
    - Update the status of the completed phase in `.aido/task_plan.md` to `DONE`.
    - Update `.aido/findings.md` if any new discoveries were made.

4.  **Conclude:** Stop after completing the single phase. Do not automatically proceed to the next one.
