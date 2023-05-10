#!/usr/bin/env bash

pacman-key --init

echo "Populate keyrings"

pacman-key --populate archlinux alhp

echo "Enable Chaotic-AUR keys"
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com

pacman-key --lsign-key FBA220DFC880C036

pacman-key --populate chaotic

