#!/usr/bin/env bash
echo "Enable Chaotic-AUR keys"
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com

pacman-key --lsign-key FBA220DFC880C036

