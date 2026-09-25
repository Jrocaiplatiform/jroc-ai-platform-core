#!/usr/bin/env bash
set -euo pipefail

mkdir -p \
  worker/auth \
  worker/auth/jwt \
  worker/auth/password-hashing \
  worker/auth/registration \
  worker/auth/login \
  worker/middleware
