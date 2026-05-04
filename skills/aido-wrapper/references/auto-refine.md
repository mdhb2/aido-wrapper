# AIDO Auto-Refine State Rules

All AIDO commands are file-first. Each command must read `.aido/`, perform its work, and persist the updated state before finishing.

## Global Rule
- Use `.aido/` as the source of truth.
- Keep `.aido/task_plan.md` scoped to the active module only.
- Append durable findings to `.aido/findings.md`.
- Append decisions and tradeoffs to `.aido/decisions.md`.
- Keep `.aido/progress.md` current after workflow movement.
- Keep `.aido/test_report.md` current after test execution.

## Command Persistence Map

### aido-brainstorm
After brainstorming, auto-persist planning state:
- `.aido/findings.md`
- `.aido/active_module.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

### aido-grill
After grill-with-docs questioning, auto-refine:
- `.aido/findings.md`
- `.aido/decisions.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

### aido-plan-with-file
Always write:
- `.aido/active_module.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

### aido-breakdown
After breakdown, auto-refine:
- `.aido/task_plan.md`
- `.aido/progress.md`
- `.aido/decisions.md`

### aido-execute-next
After executing one phase, auto-refine:
- `.aido/task_plan.md`
- `.aido/progress.md`
- `.aido/test_report.md`
- `.aido/decisions.md`
- `.aido/findings.md` when new findings appear

### aido-document
After documentation, auto-refine:
- `.aido/modules/<module>.md`
- `.aido/reports/<module>-doc-coverage.md`
- `.aido/progress.md`
- `.aido/task_plan.md`
- `.aido/decisions.md` when documentation reveals gaps or limitations

### aido-archive
After archive, auto-refine:
- `.aido/archive/task_plans/<YYYY-MM-DD>-<module>-task-plan.md`
- `.aido/archive/progress/<YYYY-MM-DD>-<module>-progress.md`
- `.aido/archive/decisions/<YYYY-MM-DD>-<module>-decisions.md`
- `.aido/progress.md`
- `.aido/decisions.md`
- `.aido/task_plan.md`

### aido-clean
Before cleanup, record the cleanup decision. Then clean only allowed active files:
- `.aido/task_plan.md`
- `.aido/progress.md`
- `.aido/test_report.md`
- `.aido/active_module.md`

Never clean:
- `.aido/findings.md`
- `.aido/modules/`
- `.aido/archive/`
- `.aido/reports/`

### aido-status and aido-resume
Read state and report the next action. They may identify repair steps, but must not perform destructive cleanup.
