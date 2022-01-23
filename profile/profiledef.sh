#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="xyarchlinux"
iso_label="XYARCH_$(date +%Y%m)"
iso_publisher="xylous <xylous.e@gmail.com>"
iso_application="custom Arch Linux profile"
iso_version="$(date +%Y.%m.%d)"
install_dir="xyarch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
    ["/etc/shadow"]="0:0:400"
    ["/usr/local/bin/jimmy"]="0:0:755"
)
