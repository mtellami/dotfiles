#!/bin/bash

VAULT="/home/mtellami/Home/ObsidianVault"

cd "$VAULT" || exit 1

# Nothing to sync
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
    exit 0
fi

# Stage changes
git add .

# Commit
git commit -m "sync: $(date '+%Y-%m-%d %H:%M:%S')"

# Wait until GitHub is reachable
until git ls-remote origin HEAD >/dev/null 2>&1; do
    sleep 5
done

# Get remote changes first
git pull --rebase

# Push
if git push; then
    notify-send "Obsidian Sync" "Vault synced successfully"
else
    notify-send -u critical "Obsidian Sync" "Failed to push to GitHub"
    exit 1
fi
