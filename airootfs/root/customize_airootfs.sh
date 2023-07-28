#!/usr/bin/env bash

pacman-key --init

echo "Enable Chaotic-AUR keys"
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com

pacman-key --lsign-key 3056513887B78AEB


echo "Populate Keys"
pacman-key --populate
