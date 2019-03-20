#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "need root"
	exit
fi

mkdir /opt/icefy/ -p
cp main.sh /opt/icefy/
cp ignore /opt/icefy/
cp icefy.service /etc/systemd/system/

#systemctl enable icefy.service --now