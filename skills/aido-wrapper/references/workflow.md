# AIDO Workflow Policy

## Lifecycle
1. Initialize state with `aido-init`.
2. Clarify and align scope with `aido-brainstorm`.
3. Set active module and plan using `aido-plan-with-file`.
4. Split work into phases with `aido-breakdown`.
5. Execute one pending phase at a time with `aido-execute-next`.
6. Document module with `aido-document`.
7. Archive operational files with `aido-archive`.
8. Cleanup active files with `aido-clean`.

## State Contract
- Source of truth is `.aido/`.
- Only one active module at a time.
- `task_plan.md` is single-module and status-driven.

## Phase Statuses
- `PENDING`
- `IN_PROGRESS`
- `DONE`
- `BLOCKED`

## Completion Gate
Module is complete only if:
- all phases are `DONE`
- tests executed and logged
- docs generated
- archives created

## Cleanup Gate
`aido-clean` is allowed only when:
- `.aido/modules/<module>.md` exists
- `.aido/reports/<module>-doc-coverage.md` exists
- archived task plan exists
- archived progress exists
- archived decisions exists

If any requirement is missing, do not clean and report exact missing files.

## TDD Execution Rule
For each phase in `aido-execute-next`:
1. Red: add/update tests first.
2. Green: implement minimal passing change.
3. Refactor: optional safe cleanup.
4. Evidence: append results to `.aido/test_report.md`.
5. Traceability: log reasoning in `.aido/decisions.md` and progress in `.aido/progress.md`.
