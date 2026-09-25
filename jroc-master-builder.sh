#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"
BUILD_DATE="$(date -u)"
REPORT_FILE="${REPORT_FILE:-build-report.txt}"

bash scripts/master-platform-core.sh
bash scripts/master-business-os.sh
bash scripts/master-chairman.sh

cat > "$REPORT_FILE" <<EOF
JROC AI BUILD REPORT

Created:
$BUILD_DATE

Platform:
Platform Core
Business OS
Chairman Edition

Repository Masters:
Platform Core
Business OS
Chairman Edition

Status:
SUCCESS
EOF

echo "Build report generated: $REPORT_FILE"
echo "JROC AI FULL PLATFORM BUILD COMPLETE"
