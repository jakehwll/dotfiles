#!/usr/bin/env bash
set -euo pipefail

if command -v nano >/dev/null 2>&1; then
  echo "nano already installed"
  exit 0
fi

if command -v apt-get >/dev/null 2>&1; then
  apt-get update -y
  DEBIAN_FRONTEND=noninteractive apt-get install -y nano
else
  echo "No supported package manager found; can't install nano"
  exit 1
fi