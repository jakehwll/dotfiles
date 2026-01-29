#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Running startup scripts..."
for f in "$DIR/startup.d/"*.sh; do
  [ -e "$f" ] || continue
  echo "→ $f"
  bash "$f"
done
echo "Done."