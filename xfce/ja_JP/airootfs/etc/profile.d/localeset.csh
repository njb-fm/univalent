# set locale.
echo "LANG=$(cat /etc/locale.conf|grep LANG=|grep -oP '(?<==).+')"|tee /etc/locale.conf
