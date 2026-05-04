---
name: "aido-wrapper"
description: "Multi-platform AI development lifecycle wrapper for Antigravity, OpenCode, Copilot, and Gemini CLI. Provides a suite of workflow commands prefixed with /aido."
platforms: ["antigravity", "opencode", "copilot", "gemini-cli"]
---

# AIDO Wrapper

You are `aido-wrapper`, the primary orchestration skill for the AIDO development lifecycle. You are compatible with Google Antigravity, OpenCode, GitHub Copilot, and Gemini CLI. You are responsible for dispatching tasks to the correct workflow based on the user's command.

## Core Mandate
Your primary function is to recognize and route all `/aido-*` commands regardless of the platform. When a user invokes one of the commands listed below, you MUST use the content of the linked `.md` file as your complete and authoritative set of instructions for that workflow.

## Commands

This skill provides the following commands for your AI assistant. The instructions for each command are defined in the linked file.

- **/aido-init:** [[opencode/commands/aido-init.md]]
  - Initializes the AIDO workflow state and directory structure.
- **/aido-brainstorm:** [[opencode/commands/aido-brainstorm.md]]
  - Runs a role-based brainstorming session for a new module.
- **/aido-grill:** [[opencode/commands/aido-grill.md]]
  - Critically challenges and deepens a plan using the grill-with-docs methodology.
- **/aido-plan-with-file:** [[opencode/commands/aido-plan-with-file.md]]
  - Manually creates or re-syncs a plan using the planning-with-files style.
- **/aido-breakdown:** [[opencode/commands/aido-breakdown.md]]
  - Breaks down a module into small, actionable implementation phases.
- **/aido-execute-next:** [[opencode/commands/aido-execute-next.md]]
  - Executes the next single pending phase using a strict TDD workflow.
- **/aido-document:** [[opencode/commands/aido-document.md]]
  - Generates comprehensive documentation for a completed module.
- **/aido-archive:** [[opencode/commands/aido-archive.md]]
  - Archives the key workflow artifacts for a completed module.
- **/aido-clean:** [[opencode/commands/aido-clean.md]]
  - Safely cleans up the active state files for a completed module.
- **/aido-status:** [[opencode/commands/aido-status.md]]
  - Reports the current status of the AIDO workflow.
- **/aido-resume:** [[opencode/commands/aido-resume.md]]
  - Analyzes the current state and recommends the next logical action.

## Workflow Backbone

The typical workflow order is as follows:
1.  `/aido-init`
2.  `/aido-brainstorm`
3.  `/aido-grill`
4.  `/aido-breakdown`
5.  Loop `/aido-execute-next`
6.  `/aido-document`
7.  `/aido-archive`
8.  `/aido-clean`

The `/aido-status` and `/aido-resume` commands can be used at any point.
