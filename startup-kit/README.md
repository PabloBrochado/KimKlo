# Startup kit

Gets [`agent-browser`](https://www.npmjs.com/package/agent-browser) working in Claude Code
cloud sessions, so Claude can open, test and screenshot web pages such as https://kimklo.com.

| File | What it does |
| --- | --- |
| `setup.sh` | Installs `agent-browser` and writes `~/.agent-browser/config.json` pointing at the session's pre-installed Chromium. Safe to rerun. |
| `add-to-repo.sh` | Copies the kit into another repo: a SessionStart hook, `.claude/settings.json` entry and a CLAUDE.md section. |
| `CLAUDE-snippet.md` | The usage notes `add-to-repo.sh` appends to CLAUDE.md. |

## Use it in every project (recommended)

In claude.ai, open the cloud environment menu in a session's title bar → **Edit** →
**Setup script**, and paste the contents of [`setup.sh`](setup.sh). Every new session in that
environment, for any repository, starts with `agent-browser` ready.

## Use it in one repository

This repo already runs the kit from `.claude/hooks/session-start.sh`. To add it to another
repo you have checked out:

    startup-kit/add-to-repo.sh /path/to/other-repo

then commit `.claude/` and `CLAUDE.md` in that repo. The hook takes effect once it is on the
repo's default branch.

## Check it works

    agent-browser open https://kimklo.com && agent-browser snapshot -i && agent-browser close
