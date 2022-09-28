#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="uvgl-cinnamon-ja"
iso_label="UVGL_CNMN_JA_$(date +%y.%m.%d)_ALPHA1"
iso_publisher="RadioNewJapan"
iso_application="UVGL Installation Drive"
iso_version="$(date +%y.%m.%d).a1"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/bin/wine-installer"]="0:0:755"
  ["/etc/profile.d/packey-reset.sh"]="0:0:644"
  ["/etc/profile.d/packey-reset.csh"]="0:0:644"
)