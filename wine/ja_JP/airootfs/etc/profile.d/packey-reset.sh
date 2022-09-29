# reset pacman's keyrings

rm -rf /etc/pacman.d/gnupg
pacman-key --init
pacman-key --populate archlinux
