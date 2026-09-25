#!/usr/bin/env bash
set -e

mkdir -p \
packages/auth \
packages/users \
packages/organizations \
packages/rbac \
packages/audit \
packages/event-bus \
packages/notifications \
packages/licensing \
packages/enterprise-graph \
worker/api \
worker/lib \
worker/middleware \
database/migrations \
tests
