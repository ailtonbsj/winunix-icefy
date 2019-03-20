#!/bin/bash

cat /etc/passwd | grep -v 'syslog' | grep /home/ | awk '{split($0,a,":"); print a[1]":"a[6]}' > /tmp/ListOfUsers.ice
for reg in $(cat /tmp/ListOfUsers.ice); do
	
	user=$(echo $reg | cut -d ":" -f 1);
	folder=$(echo $reg | cut -d ":" -f 2);
	
	echo "Freezing user "$user
	cd $folder
	find . | grep -v "$(cat /opt/icefy/ignore)" | grep -v "\.$" > /tmp/ListToRemove.ice
	sed -i 's/ /\\ /g' /tmp/ListToRemove.ice
	xargs rm -rf < /tmp/ListToRemove.ice
	rsync -a --chown=$user:$user /etc/skel/ $folder/
	sed -i 's#/usr/software-center/postInstall##g' $folder/.config/lxsession/Lubuntu/autostart
	chown $user:$user $folder/.config/lxsession/Lubuntu/autostart

done







