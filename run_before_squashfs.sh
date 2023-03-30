#!/usr/bin/env bash

# Made by Fernando "maroto"
# Run anything in the filesystem right before being "mksquashed"
# ISO-NEXT specific cleanup removals and additions (08-2021 + 10-2021) @killajoe and @manuel
# refining and changes november 2021 @killajoe and @manuel

work_dir="/home/norz3n/hybridlinux-iso-work"

# Adapted from AIS. An excellent bit of code!
# all pathes must be in quotation marks "path/to/file/or/folder" for now.

arch_chroot() {
    arch-chroot "${work_dir}/x86_64/airootfs" /bin/bash -c "${1}"
}

do_merge() {

arch_chroot "$(cat << EOF

echo "##############################"
echo "# start chrooted commandlist #"
echo "##############################"

# Init & Populate keys
pacman-key --init
pacman-key --populate archlinux
pacman -Sy

# Prepare livesession settings and user
sed -i 's/#\(en_US\.UTF-8\)/\1/' "/etc/locale.gen"
locale-gen
ln -sf "/usr/share/zoneinfo/UTC" "/etc/localtime"

# Create home directory
mkdir /home/hybrid

# Add builddate to motd:
cat "/usr/lib/hybrid-release" >> "/etc/motd"
echo "------------------" >> "/etc/motd"

# Enable systemd services
echo "Enabling base services"
systemctl enable NetworkManager.service systemd-timesyncd.service bluetooth.service
echo "Enabling virtualization services"
systemctl enable vboxservice.service vmtoolsd.service vmware-vmblock-fuse.service
echo "Setting graphical target by default"
systemctl set-default graphical.target

# Clean pacman log and package cache
rm "/var/log/pacman.log"
# pacman -Scc seem to fail so:
rm -rf "/var/cache/pacman/pkg/"

echo "############################"
echo "# end chrooted commandlist #"
echo "############################"

EOF
)"
}

#################################
########## STARTS HERE ##########
#################################

do_merge
