---
description: Initialize AIDO workflow state in .aido
---
You are executing the `aido-init` workflow. Your purpose is to create the necessary directory and file structure for the AIDO process.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All state is stored in the `.aido/` directory.

**Procedure:**
Create the following directory and file structure in the current project. If a file or directory already exists, do not overwrite or delete it.

- `.aido/`
  - `active_module.md`
  - `task_plan.md`
  - `findings.md`
  - `decisions.md`
  - `progress.md`
  - `test_report.md`
  - `specs/` (directory)
  - `modules/` (directory)
  - `reports/` (directory)
  - `archive/`
    - `task_plans/` (directory)
    - `progress/` (directory)
    - `decisions/` (directory)

**Conclude:** Report the list of created files and directories.
