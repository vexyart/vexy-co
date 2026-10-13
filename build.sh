#!/usr/bin/env bash
# this_file: build.sh
# Build the documentation site (docs/) from src_docs/.
# Usage: ./build.sh [all|docs]   (default: all)
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
target="${1:-all}"
case "$target" in
  all|docs) ;;
  *) echo "usage: $0 [all|docs]" >&2; exit 2 ;;
esac
src_docs/build.sh
