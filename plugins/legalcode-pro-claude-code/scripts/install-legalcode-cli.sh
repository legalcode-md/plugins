#!/usr/bin/env bash
set -euo pipefail

if ! command -v npm >/dev/null 2>&1; then
  echo "npm is required to install the Legalcode CLI." >&2
  exit 1
fi

LEGALCODE_CLI_PACKAGE="${LEGALCODE_CLI_PACKAGE:-legalcode}"

npm install -g "$LEGALCODE_CLI_PACKAGE"
legalcode --help

if [[ "${LEGALCODE_CLI_SKIP_LOGIN:-}" != "1" ]]; then
  echo
  echo "Legalcode CLI requires a Legalcode Pro account. Starting OAuth login..."
  legalcode login
else
  echo
  echo "Skipping login because LEGALCODE_CLI_SKIP_LOGIN=1. Run 'legalcode login' before using the CLI."
fi
