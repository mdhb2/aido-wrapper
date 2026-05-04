#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/userxys/aido-skills-wrapper"
PLANNING_URL="https://github.com/othmanadi/planning-with-files"
DOCUMENTER_URL="https://github.com/Jeffallan/claude-skills"

print_header() {
  echo "=============================================="
  echo " AIDO Full Setup Installer (OpenCode)"
  echo "=============================================="
}

install_wrapper() {
  echo "[1/3] Installing aido-wrapper..."
  npx skills add "$REPO_URL" --skill aido-wrapper -a opencode -y
}

install_planning() {
  echo "[2/3] Installing planning-with-files..."
  npx skills add "$PLANNING_URL" -a opencode -y
}

install_documenter() {
  echo "[3/3] Installing code-documenter source skill pack..."
  npx skills add "$DOCUMENTER_URL" -a opencode -y
}

print_success() {
  echo
  echo "Setup complete. AIDO is ready."
  echo
  echo "Available AIDO commands:"
  echo "- aido-init"
  echo "- aido-brainstorm"
  echo "- aido-plan-with-file"
  echo "- aido-breakdown"
  echo "- aido-execute-next"
  echo "- aido-document"
  echo "- aido-archive"
  echo "- aido-clean"
  echo "- aido-status"
  echo "- aido-resume"
  echo
  echo "Tip: start with 'aido-init' then 'aido-brainstorm'."
}

main() {
  print_header
  install_wrapper
  install_planning
  install_documenter
  print_success
}

main "$@"
