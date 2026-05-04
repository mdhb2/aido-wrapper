---
description: Archive completed AIDO module workflow files
---

Use the `aido-wrapper` skill and run `aido-archive`.

Archive:
- `.aido/task_plan.md` to `.aido/archive/task_plans/<YYYY-MM-DD>-<module>-task-plan.md`
- `.aido/progress.md` to `.aido/archive/progress/<YYYY-MM-DD>-<module>-progress.md`
- `.aido/decisions.md` to `.aido/archive/decisions/<YYYY-MM-DD>-<module>-decisions.md`

Auto-refine the plan files before finishing:
- update `.aido/progress.md`
- update `.aido/decisions.md`
- update `.aido/task_plan.md`

Do not clean active files. Cleanup is handled by `/aido-clean`.
