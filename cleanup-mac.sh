 #!/usr/bin/env bash

echo "Before..."
df -h

echo "Starting cleanup..."
docker system prune -a
rm -r ~/Library/Caches/*
rm -r ~/Library/Application\ Support/Google/GoogleUpdater/crx_cache/
rm -rf ~/Library/Application\ Support/Signal/update-cache
rm -rf ~/Library/Application\ Support/Signal/attachments.noindex
pnpm store prune
go clean -modcache

echo "Cleanup done!"
df -h
