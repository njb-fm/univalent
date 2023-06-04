#!/bin/bash

LAYOUT=$(localectl | sed -n 3p | sed -e "s/X11 Layout://g" | sed 's/^ *\| *$//')

sed -e s/"'xkb', '.*'"/"'xkb', '$LAYOUT'"/g -i /etc/dconf/db/local.d/00-default
dconf update

sed -e s/"Default Layout=.*"/"Default Layout=$LAYOUT"/g -i /usr/share/gunivalent/fcitx5-profile
sed -e s/"DefaultIM=.*"/"DefaultIM=anthy"/g -i /usr/share/gunivalent/fcitx5-profile
sed -e s/"Name=keyboard-.*"/"Name=keyboard-$LAYOUT"/g -i /usr/share/gunivalent/fcitx5-profile

homedir="/home/*"
dirs=`find dir_path -maxdepth 0 -type d`

for dir in $dirs;
do
	user=${dir:6}
	cp /usr/share/gunivalent/fcitx5-profile $dir/.config/fcitx5/profile
	chown -R $user:$user $dir
	chown -R $user:$user $dir/.config/fcitx5/profile
done

mkdir -p /etc/skel/.config/fcitx5
cp /usr/share/gunivalent/fcitx5-profile /etc/skel/.config/fcitx5/profile

systemctl disable univafirstrun.service
rm -f /usr/local/bin/univafirstrun.sh /usr/lib/systemd/system/univafirstrun.service
