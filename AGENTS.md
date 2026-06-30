# AND — Agent Not Detect — Self-Install Guide

You are an AI agent. When asked to install AND, follow these steps.

## Step 1: Clone
```bash
git clone https://github.com/adlptv/Agent-AND.git /tmp/agent-and
```

## Step 2: Detect Your Platform & Paths

Do NOT assume paths. Detect them:

### Identify yourself
Check your system prompt or tool environment. You are one of:
- **Claude Code** (Anthropic)
- **Codex CLI** (OpenAI)
- **Cursor**
- **OpenCode** (opencode.ai)
- **Kimi** (Moonshot)
- **Hermes / OpenClaw**
- **Gemini CLI** (Google)

### Find your install directory

| Platform | Where to look |
|----------|--------------|
| Claude Code | `~/.claude/` (all OS) |
| Codex CLI | `~/.codex/` (all OS) |
| Cursor | `~/.cursor/` or `~/.cursor-rules/` |
| OpenCode | `~/.config/opencode/` (Linux), `~/Library/Application Support/opencode/` (macOS), `%APPDATA%/opencode/` (Windows) |
| Kimi | Plugin loaded from `.kimi-plugin/` in repo |
| Hermes/OpenClaw | `~/.openclaw-autoclaw/skills/` |
| Gemini CLI | `~/.gemini/` |

### Verify the directory exists
```bash
# Example for OpenCode on Linux
ls ~/.config/opencode/opencode.json 2>/dev/null && echo "FOUND" || echo "NOT FOUND"

# Example for Claude Code
ls ~/.claude/ 2>/dev/null && echo "FOUND" || echo "NOT FOUND"
```

## Step 3: Install Skills to Correct Path

### Claude Code
```bash
SKILLS_DIR="$HOME/.claude/and-skills"
rm -rf "$SKILLS_DIR"
cp -r /tmp/agent-and/skills "$SKILLS_DIR"
cp /tmp/agent-and/.claude-plugin/CLAUDE.md "$HOME/.claude/CLAUDE.md"
echo "Claude Code: 7 agents installed to $SKILLS_DIR"
```

### Codex CLI
```bash
SKILLS_DIR="$HOME/.codex/and-skills"
rm -rf "$SKILLS_DIR"
cp -r /tmp/agent-and/skills "$SKILLS_DIR"
echo "Codex: 7 agents installed to $SKILLS_DIR"
```

### Cursor
```bash
SKILLS_DIR="$HOME/.cursor/and-skills"
rm -rf "$SKILLS_DIR"
cp -r /tmp/agent-and/skills "$SKILLS_DIR"
echo "Cursor: 7 agents installed to $SKILLS_DIR"
```

### OpenCode (Linux)
```bash
CONFIG_DIR="$HOME/.config/opencode"
if [ ! -d "$CONFIG_DIR" ]; then
  CONFIG_DIR="$HOME/.opencode"  # fallback
fi
SKILLS_DIR="$CONFIG_DIR/and-skills"
rm -rf "$SKILLS_DIR"
cp -r /tmp/agent-and/skills "$SKILLS_DIR"
mkdir -p "$CONFIG_DIR/plugins"
cp /tmp/agent-and/.opencode/plugins/and.js "$CONFIG_DIR/plugins/and.js"
echo "OpenCode: 7 agents installed to $SKILLS_DIR"
```

### OpenCode (macOS)
```bash
CONFIG_DIR="$HOME/Library/Application Support/opencode"
if [ ! -d "$CONFIG_DIR" ]; then
  CONFIG_DIR="$HOME/.config/opencode"
fi
SKILLS_DIR="$CONFIG_DIR/and-skills"
rm -rf "$SKILLS_DIR"
cp -r /tmp/agent-and/skills "$SKILLS_DIR"
mkdir -p "$CONFIG_DIR/plugins"
cp /tmp/agent-and/.opencode/plugins/and.js "$CONFIG_DIR/plugins/and.js"
```

### OpenCode (Windows)
```powershell
$CONFIG_DIR = "$env:APPDATA\opencode"
if (-not (Test-Path $CONFIG_DIR)) { $CONFIG_DIR = "$env:USERPROFILE\.opencode" }
$SKILLS_DIR = "$CONFIG_DIR\and-skills"
Remove-Item -Recurse -Force $SKILLS_DIR -ErrorAction SilentlyContinue
Copy-Item -Recurse /tmp/agent-and/skills $SKILLS_DIR
New-Item -ItemType Directory -Force "$CONFIG_DIR\plugins" | Out-Null
Copy-Item /tmp/agent-and/.opencode/plugins/and.js "$CONFIG_DIR\plugins\and.js"
```

### Hermes / OpenClaw
```bash
SKILLS_BASE="$HOME/.openclaw-autoclaw/skills"
for d in /tmp/agent-and/skills/*/; do
  name=$(basename "$d")
  rm -rf "$SKILLS_BASE/$name"
  cp -r "$d" "$SKILLS_BASE/$name"
done
echo "Hermes: 7 agents installed"
```
Restart: `openclaw gateway restart`

### Kimi
Kimi loads from `.kimi-plugin/plugin.json` in the cloned repo. Skills are in `skills/`. Use Kimi's `Agent` tool:
- `subagent_type: coder` for AND CODING, AND DEVOPS, AND DOCUMENTS, AND INSTALLATION
- `subagent_type: explore` for AI-RESEARCH, AND SECURITY, AND TRADING

## Step 4: Verify
List installed agents:
```bash
ls /tmp/agent-and/skills/
```
Tell the user: "AND v2.0.1 installed. 7 agents: AI-RESEARCH, AND CODING, AND SECURITY, AND DEVOPS, AND DOCUMENTS, AND TRADING, AND INSTALLATION. Restart your agent to use them."

## Step 5: Cleanup
```bash
rm -rf /tmp/agent-and
```

## AND Agents Reference

| Agent | Skills Dir | Purpose |
|-------|-----------|---------|
| AI-RESEARCH | skills/ai-research | AI vendor documentation (41 vendor files) |
| AND CODING | skills/and-coding | Full-stack, reverse engineering |
| AND SECURITY | skills/and-security | Security analysis, OWASP, pentesting |
| AND DEVOPS | skills/and-devops | Docker, K8s, CI/CD, cloud |
| AND DOCUMENTS | skills/and-documents | Word, Excel, PPT, PDF |
| AND TRADING | skills/and-trading | Crypto, stocks, forex |
| AND INSTALLATION | skills/and-installation | Packages, paths |

## Common Mistakes to Avoid
1. OpenCode: do NOT install to `~/.opencode/` — use `~/.config/opencode/` (Linux) or `%APPDATA%/opencode/` (Windows)
2. The plugin's skills path must match where skills are physically copied
3. Always verify directories exist before copying
