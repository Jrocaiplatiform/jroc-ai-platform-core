#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

bash scripts/build-stage8.sh
bash scripts/build-stage9.sh

echo "Chairman Edition Complete"
