# NoahOS 1.0 — Made by Noah Gray
Lightweight Debian 12 + XFCE with a macOS-inspired look (WhitSur theme, Inter font, Plank dock,
frosted-glass blur, rounded windows, Spotlight-style launcher, animated boot splash).

## Build
On Debian/Ubuntu with internet and ~15 GB free disk:
    tar xzf NoahOS-build-kit.tar.gz && cd noahos-build && sudo ./build.sh
Output: NoahOS-1.0.iso (20-40 min).

## Run in a VM
VirtualBox / VMware / QEMU: 2+ CPUs, 2-4 GB RAM, 128 MB video, 3D acceleration on.
Boots to auto-login as "noah" (password: live).

## Customize
Open "NoahOS Settings" in the dock. Edit config/includes.chroot to change defaults before building.

## Shortcuts
Super+Space Spotlight · Super+T Terminal · Super+E Files
