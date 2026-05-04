# AIDO Skills Wrapper (Multi-Platform)

`aido-wrapper` is a skill wrapper/orchestrator for AI development workflows compatible with **Google Antigravity**, **OpenCode**, **GitHub Copilot**, and **Gemini CLI**.

This wrapper combines:
- planning-with-files
- code-documenter
- grill-with-docs
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
6. grill-with-docs  
   https://skills.sh/mattpocock/skills/grill-with-docs

Install source: `https://github.com/mattpocock/skills --skill grill-with-docs`

## Install Wrapper Only

```bash
npx skills add https://github.com/mdhb2/aido-wrapper --skill aido-wrapper -a opencode
```

This installs the `aido-wrapper` skill only. It works across all supported AI assistants (Antigravity, Copilot, Gemini CLI, etc.).

## Install Full Setup

```bash
curl -fsSL https://raw.githubusercontent.com/mdhb2/aido-wrapper/refs/heads/master/scripts/install-aido.sh | bash
```

This installs:
- the `aido-wrapper` skill
- planning-with-files
- code-documenter
- grill-with-docs
- OpenCode command files for `/aido-*`

The installer copies command files to both OpenCode command locations for compatibility:
- `~/.config/opencode/commands/`
- `~/.config/opencode/command/`

## AIDO Commands

These are AI assistant slash commands. Run them inside your coding assistant with the leading `/`.

- `/aido-init`
- `/aido-brainstorm`
- `/aido-grill`
- `/aido-plan-with-file`
- `/aido-breakdown`
- `/aido-execute-next`
- `/aido-document`
- `/aido-archive`
- `/aido-clean`
- `/aido-status`
- `/aido-resume`

All commands use the `aido-*` prefix, and all workflow state is stored in `.aido/`.

Every AIDO command is file-first: it reads `.aido/`, performs its workflow step, and auto-refines the relevant `.aido/` files before finishing.

## Example Workflow

1. Run `/aido-init` to create the `.aido` state folder.
2. Run `/aido-brainstorm` for role-based brainstorming and initial file persistence.
3. Run `/aido-grill` to challenge assumptions and refine the plan with grill-with-docs.
4. Run `/aido-plan-with-file` when you need a manual plan re-sync.
5. Run `/aido-breakdown` to split the active module into small phases.
6. Repeat `/aido-execute-next` until all phases are completed with TDD.
7. Run `/aido-document` to generate module documentation and doc coverage.
8. Run `/aido-archive` to archive task plan, progress, and decisions.
9. Run `/aido-clean` to safely clean active state files.
10. Run `/aido-status` or `/aido-resume` anytime to continue from the latest state.

## Auto-Refine Policy

- `/aido-brainstorm` updates findings, active module, spec, and task plan.
- `/aido-grill` updates findings, decisions, spec, and task plan.
- `/aido-breakdown` updates task plan, progress, and decisions.
- `/aido-execute-next` updates task plan, progress, test report, decisions, and findings when needed.
- `/aido-document` updates module docs, doc coverage, progress, task plan, and decisions when needed.
- `/aido-archive` updates archive files, progress, decisions, and task plan.
- `/aido-clean` records cleanup state before clearing allowed active files.
- `/aido-status` and `/aido-resume` report state and recommend next actions without destructive cleanup.

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
- After a module is completed: document first (`/aido-document`), archive next (`/aido-archive`), then clean (`/aido-clean`).
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
