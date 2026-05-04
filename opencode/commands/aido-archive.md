---
description: Archive completed AIDO module workflow files
---
You are executing the `aido-archive` workflow. Your purpose is to archive the key artifacts of a completed module for future reference.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.

**Procedure:**
1.  **Identify Artifacts:** Locate the primary workflow files for the completed module.

2.  **Archive Files:** Copy the following files to the archive, renaming them with a timestamp (`YYYY-MM-DD`) and module name:
    - `.aido/task_plan.md` -> `.aido/archive/task_plans/<date>-<module>-task-plan.md`
    - `.aido/progress.md` -> `.aido/archive/progress/<date>-<module>-progress.md`
    - `.aido/decisions.md` -> `.aido/archive/decisions/<date>-<module>-decisions.md`

3.  **Auto-Refine State:** After archiving, update the state files to reflect completion:
    - `.aido/progress.md`
    - `.aido/decisions.md`
    - `.aido/task_plan.md`

4.  **Conclude:** Announce that the module has been archived. Do not clean the files; that is the job of `/aido-clean`.
