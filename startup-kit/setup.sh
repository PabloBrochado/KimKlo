#!/bin/bash
# KimKlo startup kit: installs agent-browser and points it at the pre-installed Chromium.
# Safe to run any number of times. Works as a cloud environment "Setup script"
# or from a repo's SessionStart hook.
set -euo pipefail

if ! command -v agent-browser >/dev/null 2>&1; then
  npm install -g agent-browser >/dev/null 2>&1
fi

CHROME="$(ls -d /opt/pw-browsers/chromium-*/chrome-linux*/chrome 2>/dev/null | head -1 || true)"
if [ -n "$CHROME" ]; then
  mkdir -p "$HOME/.agent-browser"
  printf '{"executablePath":"%s"}\n' "$CHROME" > "$HOME/.agent-browser/config.json"
fi
