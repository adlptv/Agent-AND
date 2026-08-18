#!/bin/bash
# AND ? Agent Not Detect ? Universal Installer (Unix/macOS)
set -e
REPO="$(cd "$(dirname "$0")" && pwd)"
SKILLS="$REPO/skills"
USER_HOME="$HOME"

echo ""
echo "=== AND ? Agent Not Detect v2.2.0 ==="
echo ""

# Claude Code
if command -v claude &>/dev/null; then
  echo "[Claude Code]"
  DEST="$HOME/.claude/and-skills"
  rm -rf "$DEST" 2>/dev/null
  cp -r "$SKILLS" "$DEST"
  cp "$REPO/.claude-plugin/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
  echo "  Skills -> $DEST"
fi

# Codex CLI
if command -v codex &>/dev/null; then
  echo "[Codex CLI]"
  DEST="$HOME/.codex/and-skills"
  rm -rf "$DEST" 2>/dev/null
  cp -r "$SKILLS" "$DEST"
  echo "  Skills -> $DEST"
fi

# OpenCode
if command -v opencode &>/dev/null; then
  echo "[OpenCode]"
  DEST="$HOME/.opencode/and-skills"
  rm -rf "$DEST" 2>/dev/null
  cp -r "$SKILLS" "$DEST"
  mkdir -p "$HOME/.opencode/plugins"
  cp "$REPO/.opencode/plugins/and.js" "$HOME/.opencode/plugins/and.js"
  echo "  Skills -> $DEST"
  echo "  Plugin -> $HOME/.opencode/plugins/"
fi

# Hermes Agent
if [ -n "$HERMES_HOME" ] && [ -d "$HERMES_HOME" ]; then
  HERMES_SKILLS="$HERMES_HOME/skills"
elif [ -d "$HOME/.hermes" ]; then
  HERMES_SKILLS="$HOME/.hermes/skills"
elif [ -d "$HOME/AppData/Local/hermes" ]; then
  HERMES_SKILLS="$HOME/AppData/Local/hermes/skills"
else
  HERMES_SKILLS=""
fi
if [ -n "$HERMES_SKILLS" ]; then
  echo "[Hermes Agent]"
  for d in "$SKILLS"/*/; do
    name=$(basename "$d")
    rm -rf "$HERMES_SKILLS/$name" 2>/dev/null
    cp -r "$d" "$HERMES_SKILLS/$name"
    echo "  Skill: $name"
  done
  mkdir -p "$(dirname "$HERMES_SKILLS")/skill-bundles"
  cp "$REPO/skill-bundles/and.yaml" "$(dirname "$HERMES_SKILLS")/skill-bundles/and.yaml"
  echo "  Bundle /and -> $(dirname "$HERMES_SKILLS")/skill-bundles/and.yaml"
  echo "  All 9 skills registered"
fi

echo ""
echo "=== Done. Restart your agent. ==="
