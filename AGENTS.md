# AND — Agent Not Detect — Multi-Platform Subagent System

7 specialized subagents. Auto-dispatched by keyword across 6 platforms.

## Agents

| # | Agent | Skills Dir | Keywords |
|---|-------|-----------|----------|
| 1 | AI-RESEARCH | `skills/ai-research` | research, vendor, system |
| 2 | AND CODING | `skills/and-coding` | code, build, reverse |
| 3 | AND SECURITY | `skills/and-security` | secure, pentest, analyze |
| 4 | AND DEVOPS | `skills/and-devops` | deploy, devops, docker |
| 5 | AND DOCUMENTS | `skills/and-documents` | document, excel, ppt |
| 6 | AND TRADING | `skills/and-trading` | trade, crypto, stock |
| 7 | AND INSTALLATION | `skills/and-installation` | install, path, package |

## Platform-Specific Dispatch

### Claude Code
Plugin: `.claude-plugin/plugin.json` + `hooks/hooks.json`
Dispatch: Claude Code natively loads skills directory on session start.
Agents appear as skills in `/skills` command.

### Codex CLI
Plugin: `.codex-plugin/plugin.json` + `.codex-plugin/AGENTS.md`
Dispatch: Use Codex Agent tool with `subagent_type: coder` or `explore`.
Load `skills/<agent>/SKILL.md` as agent prompt.

### Cursor
Plugin: `.cursor-plugin/plugin.json` + `.cursor-plugin/AGENTS.md`
Dispatch: Cursor reads skills directory from plugin manifest.
Agents available via Cursor agent selector.

### Kimi
Plugin: `.kimi-plugin/plugin.json`
Dispatch: Use Kimi `Agent` tool. `subagent_type: coder` for coding/devops/docs.
`subagent_type: explore` for research/security/trading.

### OpenCode
Plugin: `.opencode/plugins/and.js` (JavaScript plugin)
Install: Add to opencode.json plugin array.
Dispatch: OpenCode plugin auto-registers all 7 skills on init.

### Hermes (OpenClaw)
Auto-discovery: Reads `skills/*/SKILL.md` frontmatter.
Dispatch: OpenClaw natively triggers skills by keyword in SKILL.md description.

## Dispatch Rules
1. Single domain → dispatch matching agent
2. Multi-domain → parallel dispatch
3. Unknown → AI-RESEARCH first
