#!/usr/bin/env bash

pacman-key --init

echo "Populate keyrings"

pacman-key --populate archlinux

echo "Enable Chaotic-AUR keys"
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com

pacman-key --lsign-key FBA220DFC880C036

pacman-key --populate chaotic


echo "Enable ALHP keys"
pacman-key --recv-key 2E3B2B05A332A7DB9019797848998B4039BED1CA 

pacman-key --lsign-key 2E3B2B05A332A7DB9019797848998B4039BED1CA

pacman-key --populate alhp
