#!/bin/bash
# AND ? Agent Not Detect ? Universal Installer (Unix/macOS)
set -e
REPO="$(cd "$(dirname "$0")" && pwd)"
SKILLS="$REPO/skills"
USER_HOME="$HOME"

echo ""
echo "=== AND ? Agent Not Detect v2.1.0 ==="
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

echo ""
echo "=== Done. Restart your agent. ==="
