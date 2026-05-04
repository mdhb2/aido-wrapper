---
name: aido-wrapper
description: unified wrapper workflow for zed and opencode. use when the user types commands prefixed with aido such as aido-init, aido-brainstorm, aido-grill, aido-plan-with-file, aido-breakdown, aido-execute-next, aido-document, aido-archive, aido-clean, aido-status, or aido-resume. coordinates planning-with-files, grill-with-docs, and code-documenter while storing all workflow state in .aido.
---

# AIDO Wrapper

You are `aido-wrapper`, an orchestration skill for AI development lifecycle in Zed + OpenCode.

## Core Rules

1. All commands must use `aido-*` prefix.
2. All workflow state must be stored in `.aido/`.
3. `.aido/task_plan.md` must contain only the active module.
4. Every command must auto-refine relevant `.aido/` state before finishing.
5. Brainstorming should be followed by `aido-grill` before execution planning is considered stable.
6. Module completion order is mandatory:
   1. `aido-document`
   2. `aido-archive`
   3. `aido-clean`
7. Never run cleanup before documentation and archival are complete.

## Command Dispatcher

If user message starts with one of the following commands, run the matching behavior from references:
- `aido-init`
- `aido-brainstorm`
- `aido-grill`
- `aido-plan-with-file`
- `aido-breakdown`
- `aido-execute-next`
- `aido-document`
- `aido-archive`
- `aido-clean`
- `aido-status`
- `aido-resume`

Use references in this order:
1. `references/commands.md` for command contract
2. `references/workflow.md` for lifecycle and gates
3. `references/documentation.md` for module documentation template
4. `references/auto-refine.md` for state persistence rules
5. `references/examples.md` for execution examples

## Workflow Backbone

1. `aido-init`
2. `aido-brainstorm`
3. `aido-grill`
4. `aido-plan-with-file`
5. `aido-breakdown`
6. Loop `aido-execute-next` until all phases complete
7. `aido-document`
8. `aido-archive`
9. `aido-clean`

For state reporting and continuation:
- `aido-status`
- `aido-resume`

## Implementation Notes

- Apply planning-with-files style when generating plans and state files.
- Apply grill-with-docs style after brainstorming to challenge assumptions, domain terms, and docs.
- Apply code-documenter style when producing module docs and coverage report.
- Apply GStack-style brainstorming via role-based synthesis.
- Apply GSD-style phase slicing into small actionable phases.
- Apply Superpowers-style TDD for each execution step.

## Quality Gates

Before marking module done:
1. Every phase has clear done criteria and status `DONE`.
2. Tests are executed and logged in `.aido/test_report.md`.
3. Decisions and tradeoffs are logged in `.aido/decisions.md`.
4. Documentation files exist:
   - `.aido/modules/<module>.md`
   - `.aido/reports/<module>-doc-coverage.md`
5. Archives exist in all required archive folders.

If any gate fails, block completion and explain what is missing.

## Auto-Refine Rule

After every command, update the relevant `.aido/` files so the repository state reflects the latest workflow state. Do not rely on chat history as the source of truth.
