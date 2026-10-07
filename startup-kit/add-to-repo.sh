#!/bin/bash
# Copies the startup kit into another repository so its cloud sessions get agent-browser.
# Usage: startup-kit/add-to-repo.sh /path/to/other-repo
set -euo pipefail

TARGET="${1:?usage: add-to-repo.sh /path/to/repo}"
KIT="$(cd "$(dirname "$0")" && pwd)"
HOOKS="$TARGET/.claude/hooks"
mkdir -p "$HOOKS"

cp "$KIT/setup.sh" "$HOOKS/agent-browser-setup.sh"
cat > "$HOOKS/session-start.sh" <<'HOOK'
#!/bin/bash
set -euo pipefail
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi
"$CLAUDE_PROJECT_DIR/.claude/hooks/agent-browser-setup.sh"
HOOK
chmod +x "$HOOKS/agent-browser-setup.sh" "$HOOKS/session-start.sh"

# Add the SessionStart hook to .claude/settings.json, keeping any existing settings.
node - "$TARGET/.claude/settings.json" <<'JS'
const fs = require("fs");
const file = process.argv[2];
const cmd = "$CLAUDE_PROJECT_DIR/.claude/hooks/session-start.sh";
const s = fs.existsSync(file) ? JSON.parse(fs.readFileSync(file, "utf8")) : {};
s.hooks ??= {};
s.hooks.SessionStart ??= [];
const has = s.hooks.SessionStart.some(g => (g.hooks || []).some(h => h.command === cmd));
if (!has) s.hooks.SessionStart.push({ hooks: [{ type: "command", command: cmd }] });
fs.writeFileSync(file, JSON.stringify(s, null, 2) + "\n");
JS

if ! grep -qs "agent-browser" "$TARGET/CLAUDE.md"; then
  [ -s "$TARGET/CLAUDE.md" ] && echo >> "$TARGET/CLAUDE.md"
  cat "$KIT/CLAUDE-snippet.md" >> "$TARGET/CLAUDE.md"
fi

echo "Startup kit added to $TARGET — commit .claude/ and CLAUDE.md there."
