---
description: Document the completed AIDO active module
---

Use the `aido-wrapper` skill and run `aido-document`.

Use code-documenter style to create:
- `.aido/modules/<module>.md`
- `.aido/reports/<module>-doc-coverage.md`

The module documentation must cover:
- purpose
- user flow
- related files
- components
- API endpoints
- services/helpers
- database/schema
- validation
- auth/session behavior
- error handling
- security notes
- tests
- extension notes
- known limitations

Auto-refine the plan files before finishing:
- update `.aido/progress.md`
- update `.aido/task_plan.md`
- update `.aido/decisions.md` when documentation reveals gaps or limitations
