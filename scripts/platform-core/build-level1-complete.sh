#!/usr/bin/env bash
set -euo pipefail

echo "======================================"
echo "JROC AI PLATFORM CORE LEVEL 1"
echo "======================================"

REQUIRED=(
  package.json
  wrangler.jsonc
)

for ITEM in "${REQUIRED[@]}"; do
  if [[ ! -e "$ITEM" ]]; then
    echo "Missing $ITEM"
    exit 1
  fi
done

mkdir -p \
  database/migrations \
  worker/auth \
  worker/api \
  worker/middleware \
  worker/lib \
  packages/users \
  packages/organizations \
  packages/rbac \
  packages/audit \
  packages/enterprise-graph \
  packages/notifications \
  tests

touch database/migrations/0001_core.sql
touch database/migrations/0002_auth.sql

touch worker/api/auth.ts
 touch worker/api/users.ts
 touch worker/api/organizations.ts
 touch worker/api/audit.ts
 touch worker/api/graph.ts

touch worker/middleware/auth.ts

touch packages/users/service.ts
 touch packages/organizations/service.ts
 touch packages/rbac/service.ts
 touch packages/audit/service.ts
 touch packages/enterprise-graph/service.ts
 touch packages/notifications/service.ts

touch tests/auth.test.ts
 touch tests/users.test.ts
 touch tests/organizations.test.ts

echo "Running Build Validation..."
npm run build

echo "Level 1 Complete"

echo ""
echo "Next Phase:"
echo "Stage 2 AI Model Router"
