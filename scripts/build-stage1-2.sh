#!/usr/bin/env bash
set -euo pipefail

mkdir -p \
  worker/api/auth \
  worker/api/users \
  worker/api/organizations \
  worker/api/audit \
  worker/api/graph \
  worker/api/health
