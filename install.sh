#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "need root"
	exit
fi

mkdir /opt/icefy/ -p
cp main.sh /opt/icefy/
cp ignore /opt/icefy/
cp icefy /opt/icefy/
cp icefy.service /opt/icefy/
ln -s /opt/icefy/icefy.service /etc/systemd/system/
ln -s /opt/icefy/icefy /usr/bin/
systemctl enable icefy.service