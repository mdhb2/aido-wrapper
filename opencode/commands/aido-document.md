---
description: Document the completed AIDO active module
---
You are executing the `aido-document` workflow. Your purpose is to generate comprehensive documentation for a completed module.

**Core Principles:**
1. This is a slash command workflow, not a shell executable.
2. All workflow state is read from and written to the `.aido/` directory.

**Procedure:**
1.  **Analyze Module:** Review the completed module's code and related files in `.aido/`.

2.  **Generate Documentation:** Using a `code-documenter` style, create two documentation files:
    a.  `.aido/modules/<module>.md`: A detailed technical document covering:
        - purpose, user flow, related files, components, API endpoints, services/helpers, database/schema, validation, auth/session behavior, error handling, security notes, tests, extension notes, and known limitations.
    b.  `.aido/reports/<module>-doc-coverage.md`: A report on documentation coverage.

3.  **Auto-Refine State:** If documentation reveals gaps, update the relevant state files:
    - `.aido/progress.md`
    - `.aido/task_plan.md`
    - `.aido/decisions.md`

4.  **Conclude:** Announce the completion of the documentation.
