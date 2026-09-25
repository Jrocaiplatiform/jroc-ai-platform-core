#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

bash scripts/build-stage2.sh
bash scripts/build-stage3.sh
bash scripts/build-stage4.sh
bash scripts/build-stage5.sh
bash scripts/build-stage6.sh
bash scripts/build-stage7.sh

echo "Business OS Complete"
