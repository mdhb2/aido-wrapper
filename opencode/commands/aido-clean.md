---
description: Clean AIDO active state after docs and archive are present
---

Use the `aido-wrapper` skill and run `aido-clean`.

Clean only if documentation and archive files exist for the active module.

Before cleanup, record the cleanup decision and final module state in durable `.aido/` files.

Clean:
- `.aido/task_plan.md`
- `.aido/progress.md`
- `.aido/test_report.md`
- `.aido/active_module.md`

Do not clean:
- `.aido/findings.md`
- `.aido/modules/`
- `.aido/archive/`
- `.aido/reports/`

If cleanup is not allowed, explain exactly which required files are missing.
