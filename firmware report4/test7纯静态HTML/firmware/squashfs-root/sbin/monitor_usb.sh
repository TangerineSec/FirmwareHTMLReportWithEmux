#!/bin/sh

SLEEP_TIME=$1
daemon_launched="0"
smb_enable=`nvram get smb_enable`
ftp_enable=`nvram get ftp_enable`

if [ "$SLEEP_TIME" == "" ]; then
	SLEEP_TIME=5
fi

### Monitor USB storage status ###
while [ 1 ]
do
	usb_dev=`ls '/dev' | grep '^sd'`
	mount_dir=`ls '/tmp/media' | grep 'sd'`
	device=`cat /proc/bus/usb/devices | grep 'Ver=' | grep -v 'hub'`
	### Turn on/off USB LED
	if [ "$device" != "" ]; then
		um_gpio set 8 0
	else
		um_gpio set 8 1
	fi

	if [ "$mount_dir" != "" ]; then
		### Found mounted directory ###
		if [ "$usb_dev" != "" ]; then
			## USB storage exist, launch file sharing daemon if needed...
			if [ "$daemon_launched" == "0" ]; then
				## Daemon is not running, launch it...
				if [ "$ftp_enable" == "1" ]; then
					KC_FTP &
				fi
				if [ "$smb_enable" == "1" ]; then
					KC_SMB &
				fi
			fi
			daemon_launched="1"
		else
			## USB storage does not exist, abnormal situation happen
			## Try to remove file sharing daemon...
			if [ "$daemon_launched" != "0" ]; then
				## Daemon is running, kill it...
				echo "Abnormal situation happen, try to remove SMB & FTP daemon..." > /dev/console
				killall -9 KC_FTP
				killall -9 KC_SMB
			fi
			daemon_launched="0"

			## Troubleshooting!! Try to remove unusable directory...
			echo "Try to remove unusable directory..." > /dev/console
			for mnt_dev in $mount_dir; do
				umount /tmp/media/$mnt_dev
				rmdir /tmp/media/$mnt_dev
			done
		fi
	else
		### No storage ###
		if [ "$daemon_launched" != "0" ]; then
			## Daemon is running, kill it...
			killall -9 KC_FTP
			killall -9 KC_SMB
		fi
		daemon_launched="0"
	fi

	sleep $SLEEP_TIME
done
