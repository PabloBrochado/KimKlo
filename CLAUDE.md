# KimKlo

Website: https://kimklo.com (Kim & Klóe). See README.md for the brand & character notice —
creative assets are proprietary, only code is MIT.

## Browser automation

`agent-browser` is installed by the startup kit (`startup-kit/`, run from `.claude/hooks/session-start.sh`) in cloud sessions. Use it to
check kimklo.com and any page being built here:

    agent-browser open https://kimklo.com
    agent-browser snapshot -i            # interactive elements with @refs
    agent-browser click @e7              # act on a ref
    agent-browser screenshot shot.png
    agent-browser close

Run `agent-browser skills get core --full` for the full command reference.
