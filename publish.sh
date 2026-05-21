#!/usr/bin/env bash
# Publish the vault's Published/ folder to https://carolynqian.github.io
# Copies Published/ -> content/, then commits & pushes; GitHub Actions builds & deploys.
set -euo pipefail

VAULT_PUBLISHED="/Users/carolynqian/Library/CloudStorage/Dropbox/Obsidian Vaults/Default Vault/Published"
QUARTZ_DIR="/Users/carolynqian/GitRepos/carolynqian.github.io"

echo "==> Syncing Published/ -> content/"
rsync -a --delete \
  --exclude '.DS_Store' \
  --exclude '.obsidian/' \
  "$VAULT_PUBLISHED/" "$QUARTZ_DIR/content/"

echo "==> Committing & pushing (GitHub Actions will build & deploy)"
cd "$QUARTZ_DIR"
git add -A
git commit -m "Publish: $(date '+%Y-%m-%d %H:%M')" || { echo "==> Nothing new to publish."; exit 0; }
git push origin main

echo "==> Done. Site updates at https://carolynqian.github.io in ~1-2 min."
