#!/usr/bin/env bash
set -euo pipefail

ORIG_DIR="$(pwd)"

if command -v brew &>/dev/null; then
  echo "Linuxbrew already installed"
elif [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
  echo "Linuxbrew already installed (not in PATH)"
else
  echo "Installing Linuxbrew..."
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Cleanup - Return to original directory
cd "$ORIG_DIR"