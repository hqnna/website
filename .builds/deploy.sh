#!/usr/bin/env bash

CLOUDFLARE_ACCOUNT_ID=$(cat /tmp/cloudflare_id)
CLOUDFLARE_API_TOKEN=$(cat /tmp/cloudflare_token)

npx wrangler@latest pages deploy public \
  --project-name=website \
  --commit-dirty=true \
  --branch=main
