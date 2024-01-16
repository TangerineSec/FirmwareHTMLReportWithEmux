#!/bin/sh

AUTO_APMODE_CONFIG_KEY="/mnt/flash/config/auto_apmode_config_key"

default_flicker()
{
	flicker=`cfg -a r -p /mnt/flash/config image_default.ini Image flicker` 
	if [ ! -z "$flicker" ]; then
		if [ "$flicker" == "1" ]; then
			userconfig -write CAMERA_IMAGE Flicker 1
		elif [ "$flicker" == "2" ]; then
			userconfig -write CAMERA_IMAGE Flicker 2
		else
			userconfig -write CAMERA_IMAGE Flicker 0
		fi
	fi
}

default_wifi()
{
	mac=`rtkmib mac|tr '[a-z]' '[A-Z]'`
	modelname=`/usr/sbin/userconfig -read System ModelName`
	ssid=$modelname"-"`echo $mac|cut -d: -f 5``echo $mac|cut -d: -f 6`
	userconfig -write WIRELESS_AP SSID $ssid

	if [ -f  $AUTO_APMODE_CONFIG_KEY ]; then
		psk=`dlinkpsk`
		if [ ! -z "$psk" ]; then
			userconfig -write WIRELESS_AP PreSharedKey $psk
		fi
	fi
}

custom_default()
{
	default_flicker
	default_wifi
}

mkdir -p /mnt/flash/config
cp -f /etc/ipfilter.ini /mnt/flash/config/
cp -f /etc/schedule.ini /mnt/flash/config/
cp -f /etc/usr.ini /mnt/flash/config/
cp -f /etc/passwd_default /mnt/flash/config/passwd
cp -f /etc/TZ_default /mnt/flash/config/TZ
cp -f /etc/hnap_policy.xml /mnt/flash/config/
cp -f /etc/hnap_module_profile.ini /mnt/flash/config/
cp -f /etc/mdbcfg.ini /mnt/flash/config/
rm -f /mnt/flash/config/events.log

custom_default

