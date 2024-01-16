#!/bin/sh

latest_version=`/usr/sbin/cfg -a r -p /etc RTS5826.ini RTS5826 version`
echo "5826 firmware latest version is [$latest_version]"
now_version=`/usr/sbin/rscam_uvc --fw_version | sed -n '2p'`
echo "5826 firmware in camera version is [$now_version]"

if [ "$latest_version" != "$now_version" ]; then
	echo "5826 firmware is not mapping, upgrade 5826 firmware now!"
	/usr/sbin/rscam_uvc -d /dev/video0 --download /home/RTS5826_FW.bin
	if [ "$?" = "0" ]; then
		echo "upgrade 5826 firmware success"
	else
		echo "upgrade 5826 firmware failed"
	fi
	sleep 3
else
	echo "5826 firmware is the latest now!"
fi
