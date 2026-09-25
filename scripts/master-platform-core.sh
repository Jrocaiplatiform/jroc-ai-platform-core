#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

bash scripts/build-stage1.sh
bash scripts/build-stage1-1.sh
bash scripts/build-stage1-2.sh
bash scripts/build-stage1-3.sh

echo "Platform Core Complete"
