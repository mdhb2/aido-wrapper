#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/mdhb2/aido-wrapper"
PLANNING_URL="https://github.com/othmanadi/planning-with-files"
DOCUMENTER_URL="https://github.com/Jeffallan/claude-skills"
OPENCODE_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/opencode"
OPENCODE_COMMANDS_DIR="$OPENCODE_CONFIG_DIR/commands"
OPENCODE_COMMAND_DIR="$OPENCODE_CONFIG_DIR/command"

print_header() {
  echo "=============================================="
  echo " AIDO Full Setup Installer (OpenCode)"
  echo "=============================================="
}

install_wrapper() {
  echo "[1/4] Installing aido-wrapper..."
  echo "      Source: $REPO_URL"
  npx skills add "$REPO_URL" --skill aido-wrapper -a opencode -y
}

install_planning() {
  echo "[2/4] Installing planning-with-files..."
  npx skills add "$PLANNING_URL" -a opencode -y
}

install_documenter() {
  echo "[3/4] Installing code-documenter source skill pack..."
  npx skills add "$DOCUMENTER_URL" -a opencode -y
}

install_commands() {
  echo "[4/4] Installing AIDO OpenCode commands..."

  tmp_dir="$(mktemp -d)"
  trap 'rm -rf "$tmp_dir"' EXIT

  git clone --depth 1 "$REPO_URL" "$tmp_dir/aido-wrapper" >/dev/null 2>&1
  mkdir -p "$OPENCODE_COMMANDS_DIR"
  mkdir -p "$OPENCODE_COMMAND_DIR"
  cp "$tmp_dir/aido-wrapper"/opencode/commands/*.md "$OPENCODE_COMMANDS_DIR"/
  cp "$tmp_dir/aido-wrapper"/opencode/commands/*.md "$OPENCODE_COMMAND_DIR"/

  echo "      Commands installed to: $OPENCODE_COMMANDS_DIR"
  echo "      Compatibility copy: $OPENCODE_COMMAND_DIR"
}

print_success() {
  echo
  echo "Setup complete. AIDO is ready."
  echo
  echo "Available AIDO commands:"
  echo "- /aido-init"
  echo "- /aido-brainstorm"
  echo "- /aido-plan-with-file"
  echo "- /aido-breakdown"
  echo "- /aido-execute-next"
  echo "- /aido-document"
  echo "- /aido-archive"
  echo "- /aido-clean"
  echo "- /aido-status"
  echo "- /aido-resume"
  echo
  echo "Tip: start with '/aido-init' then '/aido-brainstorm'."
}

main() {
  print_header
  install_wrapper
  install_planning
  install_documenter
  install_commands
  print_success
}

main "$@"
