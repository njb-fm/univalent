#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="budgivalent-en"
iso_label="UVE_2401B"
iso_publisher="RadioNewJapan"
iso_application="UVE Installation Drive"
iso_version="24.01"
install_dir="univa"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.grub.esp' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/univafirstrun.sh"]="0:0:755"
)
