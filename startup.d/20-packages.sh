#!/usr/bin/env bash
set -euo pipefail

# nano
command -v nano &>/dev/null || brew install nano

# graphite
command -v gt &>/dev/null || brew install withgraphite/tap/graphite
