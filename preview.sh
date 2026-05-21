#!/usr/bin/env bash
# Live-preview the Published/ folder locally at http://localhost:8080
# Reads the vault folder directly -- no copy, no publishing.
set -euo pipefail

cd "/Users/carolynqian/GitRepos/carolynqian.github.io"
npx quartz build --serve -d "/Users/carolynqian/Library/CloudStorage/Dropbox/Obsidian Vaults/Default Vault/Published"
