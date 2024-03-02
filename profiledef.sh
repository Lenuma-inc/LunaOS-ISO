#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="lunaos"
iso_label="LOS_$(date --date="@$(date +%s)" +%Y%m)"
iso_publisher="Lenuma Team"
iso_application="LunaOS Live/Rescue DVD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
## GRUB
#bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.grub.esp' 'uefi-x64.grub.eltorito')
## systemd-boot
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
)
