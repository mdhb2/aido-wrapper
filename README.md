# AIDO Skills Wrapper

`aido-wrapper` is a skill wrapper/orchestrator for AI development workflows in Zed + OpenCode.

This wrapper combines:
- planning-with-files
- code-documenter
- GStack-style brainstorming
- GSD-style phase breakdown
- Superpowers-style TDD execution

## Supporting Skills and References

1. planning-with-files  
   https://github.com/othmanadi/planning-with-files
2. code-documenter  
   https://github.com/Jeffallan/claude-skills/blob/main/skills/code-documenter/SKILL.md
3. GStack reference  
   https://github.com/garrytan/gstack
4. Superpowers reference  
   https://github.com/obra/superpowers
5. GSD reference  
   https://github.com/gsd-build/get-shit-done

## Install Wrapper Only

```bash
npx skills add https://github.com/mdhb2/aido-wrapper --skill aido-wrapper -a opencode
```

## Install Full Setup

```bash
curl -fsSL https://raw.githubusercontent.com/mdhb2/aido-wrapper/main/scripts/install-aido.sh | bash
```

## AIDO Commands

- `aido-init`
- `aido-brainstorm`
- `aido-plan-with-file`
- `aido-breakdown`
- `aido-execute-next`
- `aido-document`
- `aido-archive`
- `aido-clean`
- `aido-status`
- `aido-resume`

All commands use the `aido-*` prefix, and all workflow state is stored in `.aido/`.

## Example Workflow

1. Run `aido-init` to create the `.aido` state folder.
2. Run `aido-brainstorm` for role-based brainstorming.
3. Run `aido-plan-with-file` to create the active module, spec, and task plan.
4. Run `aido-breakdown` to split the active module into small phases.
5. Repeat `aido-execute-next` until all phases are completed with TDD.
6. Run `aido-document` to generate module documentation and doc coverage.
7. Run `aido-archive` to archive task plan, progress, and decisions.
8. Run `aido-clean` to safely clean active state files.
9. Run `aido-status` or `aido-resume` anytime to continue from the latest state.

## .aido Folder Structure

```text
.aido/
  active_module.md
  task_plan.md
  findings.md
  decisions.md
  progress.md
  test_report.md
  specs/
  modules/
  reports/
  archive/
    task_plans/
    progress/
    decisions/
```

## Cleanup Policy

- `.aido/task_plan.md` must contain only the active module.
- After a module is completed: document first (`aido-document`), archive next (`aido-archive`), then clean (`aido-clean`).
- `aido-clean` is allowed to remove only:
  - `.aido/task_plan.md`
  - `.aido/progress.md`
  - `.aido/test_report.md`
  - `.aido/active_module.md`
- `aido-clean` must not remove:
  - `.aido/findings.md`
  - `.aido/modules/`
  - `.aido/archive/`
  - `.aido/reports/`
