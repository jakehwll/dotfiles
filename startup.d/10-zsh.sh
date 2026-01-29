#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ZSHRC="$HOME/.zshrc"

START_MARK="# ### DOTFILES START ###"
END_MARK="# ### DOTFILES END ###"

# Remove old block if it exists
if grep -q "$START_MARK" "$ZSHRC" 2>/dev/null; then
  sed -i.bak "/$START_MARK/,/$END_MARK/d" "$ZSHRC"
fi

# Append fresh block
{
  echo "$START_MARK"
  # zsh commands
  cat "$DOTFILES_DIR/zsh/editor.zsh"
  cat "$DOTFILES_DIR/zsh/history.zsh"
  cat "$DOTFILES_DIR/zsh/homebrew.zsh"
  echo "$END_MARK"
} >> "$ZSHRC"

echo "✅ .zshrc updated"