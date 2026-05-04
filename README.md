# AIDO Skills Wrapper

`aido-wrapper` adalah skill wrapper/orchestrator untuk workflow AI development di Zed + OpenCode.

Wrapper ini menyatukan pola:
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
npx skills add https://github.com/userxys/aido-skills-wrapper --skill aido-wrapper -a opencode
```

## Install Full Setup

```bash
curl -fsSL https://raw.githubusercontent.com/userxys/aido-skills-wrapper/main/scripts/install-aido.sh | bash
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

Semua command menggunakan prefix `aido-*` dan seluruh state disimpan di `.aido/`.

## Example Workflow

1. Jalankan `aido-init` untuk membuat state folder `.aido`.
2. Jalankan `aido-brainstorm` untuk role-based brainstorming.
3. Jalankan `aido-plan-with-file` untuk membuat active module + spec + task plan.
4. Jalankan `aido-breakdown` untuk memecah active module menjadi fase kecil.
5. Ulangi `aido-execute-next` sampai semua fase selesai dengan TDD.
6. Jalankan `aido-document` untuk membuat dokumentasi modul dan doc coverage.
7. Jalankan `aido-archive` untuk arsip task plan, progress, dan decisions.
8. Jalankan `aido-clean` untuk bersihkan state aktif yang aman dibersihkan.
9. Jalankan `aido-status` atau `aido-resume` kapan pun untuk melanjutkan dari state terakhir.

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

- `.aido/task_plan.md` hanya boleh berisi active module.
- Setelah module selesai: dokumentasikan dulu (`aido-document`), archive dulu (`aido-archive`), baru cleanup (`aido-clean`).
- `aido-clean` hanya boleh menghapus:
  - `.aido/task_plan.md`
  - `.aido/progress.md`
  - `.aido/test_report.md`
  - `.aido/active_module.md`
- `aido-clean` tidak boleh menghapus:
  - `.aido/findings.md`
  - `.aido/modules/`
  - `.aido/archive/`
  - `.aido/reports/`
