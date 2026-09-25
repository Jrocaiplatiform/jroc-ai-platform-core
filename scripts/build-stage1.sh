#!/usr/bin/env bash
set -euo pipefail

mkdir -p \
  packages/auth \
  packages/users \
  packages/organizations \
  packages/rbac \
  packages/audit \
  packages/notifications \
  packages/event-bus \
  packages/enterprise-graph \
  worker/api \
  worker/lib \
  worker/middleware \
  database/migrations \
  tests
