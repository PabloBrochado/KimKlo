#!/bin/bash
# Runs the KimKlo startup kit (agent-browser) in Claude Code cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

"$CLAUDE_PROJECT_DIR/startup-kit/setup.sh"
