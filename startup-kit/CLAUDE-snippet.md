## Browser automation

`agent-browser` is installed at session start (`.claude/hooks/session-start.sh`). Use it to
open, inspect, click through and screenshot web pages:

    agent-browser open https://example.com
    agent-browser snapshot -i            # interactive elements with @refs
    agent-browser click @e7              # act on a ref
    agent-browser screenshot shot.png
    agent-browser close

Run `agent-browser skills get core --full` for the full command reference.
