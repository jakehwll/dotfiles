#!/usr/bin/env bash
set -euo pipefail

BREW_BIN="$HOME/.linuxbrew/bin/brew"

if [ -x "$BREW_BIN" ]; then
  echo "Linuxbrew already installed"
else
  echo "Installing Linuxbrew..."
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi