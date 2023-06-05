#!/usr/bin/env bash

pacman-key --init

echo "Enable Chaotic-AUR keys"
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com

pacman-key --add /usr/share/pacman/keyrings/chaotic.gpg && pacman-key --lsign-key FBA220DFC880C036


echo "Populate Keys"
pacman-key --populate
