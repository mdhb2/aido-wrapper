---
description: Clean AIDO active state after docs and archive are present
---
You are executing the `aido-clean` workflow. Your purpose is to safely clean up active state files for a completed module.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.
3. Do not clean unless documentation and archival are complete.

**Procedure:**
1.  **Verify Pre-conditions:** Check for the existence of documentation (`.aido/modules/<module>.md`) and archive files (`.aido/archive/...`) for the active module. If they are missing, stop and report exactly what is missing.

2.  **Record Cleanup:** Before deleting anything, record the cleanup decision and final module state in a durable file within `.aido/`.

3.  **Clean Files:** If pre-conditions are met, reset or delete the content of the following active state files ONLY:
    - `.aido/task_plan.md`
    - `.aido/progress.md`
    - `.aido/test_report.md`
    - `.aido/active_module.md`

4.  **Do Not Touch:** Ensure you DO NOT clean the following directories:
    - `.aido/findings.md`
    - `.aido/modules/`
    - `.aido/archive/`
    - `.aido/reports/`

5.  **Conclude:** Report that the cleanup is complete.
