# AIDO Command Contracts

## aido-init
Create:
- `.aido/active_module.md`
- `.aido/task_plan.md`
- `.aido/findings.md`
- `.aido/decisions.md`
- `.aido/progress.md`
- `.aido/test_report.md`
- `.aido/specs/`
- `.aido/modules/`
- `.aido/reports/`
- `.aido/archive/task_plans/`
- `.aido/archive/progress/`
- `.aido/archive/decisions/`

## aido-brainstorm
Run role-based brainstorming with roles:
- Product Owner
- Engineering Manager
- Security Engineer
- QA Engineer
- Developer

Output should include:
- problem framing
- constraints
- acceptance criteria
- risk notes
- implementation direction

After brainstorming, auto-persist planning state to:
- `.aido/findings.md`
- `.aido/active_module.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

Recommend `aido-grill` as the next step.

## aido-grill
Use grill-with-docs style to challenge and deepen the brainstormed module.

Probe:
- unclear requirements
- domain terminology
- edge cases
- security assumptions
- testing strategy
- acceptance criteria
- implementation risks
- missing documentation context

After grilling, auto-refine:
- `.aido/findings.md`
- `.aido/decisions.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

## aido-plan-with-file
Use planning-with-files style to produce:
- `.aido/active_module.md`
- `.aido/specs/<module>-spec.md`
- `.aido/task_plan.md`

`task_plan.md` must only contain tasks for active module.

## aido-breakdown
Break active module into small phases.
Each phase must include:
- goal
- likely files
- tests
- done criteria
- status

After breakdown, auto-refine:
- `.aido/task_plan.md`
- `.aido/progress.md`
- `.aido/decisions.md`

## aido-execute-next
Execute only next `PENDING` phase with strict TDD flow:
1. write/update test first
2. implement minimal change
3. run test
4. update `.aido/progress.md`
5. update `.aido/test_report.md`
6. update `.aido/decisions.md`
7. update `.aido/task_plan.md`
8. update `.aido/findings.md` when new findings appear

## aido-document
Use code-documenter style to produce:
- `.aido/modules/<module>.md`
- `.aido/reports/<module>-doc-coverage.md`

Required sections in module doc:
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

After documentation, auto-refine:
- `.aido/progress.md`
- `.aido/task_plan.md`
- `.aido/decisions.md` when documentation reveals gaps or limitations

## aido-archive
Archive:
- `.aido/task_plan.md` -> `.aido/archive/task_plans/<YYYY-MM-DD>-<module>-task-plan.md`
- `.aido/progress.md` -> `.aido/archive/progress/<YYYY-MM-DD>-<module>-progress.md`
- `.aido/decisions.md` -> `.aido/archive/decisions/<YYYY-MM-DD>-<module>-decisions.md`

After archive, auto-refine:
- `.aido/progress.md`
- `.aido/decisions.md`
- `.aido/task_plan.md`

## aido-clean
Allow cleanup only if documentation and archive are present.
Before cleanup, record the cleanup decision in durable state.
Clean only:
- `.aido/task_plan.md`
- `.aido/progress.md`
- `.aido/test_report.md`
- `.aido/active_module.md`

Do not clean:
- `.aido/findings.md`
- `.aido/modules/`
- `.aido/archive/`
- `.aido/reports/`

## aido-status
Read `.aido/` and report:
- active module
- current phase
- completed phases
- next phase
- blockers
- whether cleanup is allowed

## aido-resume
Read `.aido/` and explain the next actionable step from latest state.
