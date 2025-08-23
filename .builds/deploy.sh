#!/usr/bin/env bash

export CLOUDFLARE_ACCOUNT_ID=$(cat /tmp/cloudflare_id)
export CLOUDFLARE_API_TOKEN=$(cat /tmp/cloudflare_token)

npx wrangler@latest pages deploy public \
  --project-name=website \
  --commit-dirty=true \
  --branch=main
