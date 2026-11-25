#!/usr/bin/env bash
# NoahOS ISO builder — made by Noah Gray
set -euo pipefail
[ "$EUID" -eq 0 ] || { echo "Run with: sudo ./build.sh"; exit 1; }
cd "$(dirname "$0")"
apt-get update
apt-get install -y live-build debootstrap xorriso squashfs-tools
lb clean --purge 2>/dev/null || true
lb config \
  --distribution bookworm --architectures amd64 \
  --binary-images iso-hybrid --debian-installer none \
  --archive-areas "main contrib non-free non-free-firmware" \
  --bootappend-live "boot=live components quiet splash username=noah hostname=noahos" \
  --iso-application "NoahOS" --iso-publisher "Made by Noah Gray" \
  --iso-volume "NoahOS" --memtest none --apt-recommends false
lb build
mv -f live-image-amd64.hybrid.iso NoahOS-1.0.iso
echo; echo "Done -> $(pwd)/NoahOS-1.0.iso"
