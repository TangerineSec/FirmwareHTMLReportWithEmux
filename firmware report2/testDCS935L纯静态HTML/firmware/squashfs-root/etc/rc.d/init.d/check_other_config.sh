#!/bin/sh

if [ ! -f /mnt/flash/config/ipfilter.ini ]; then
	echo "missing ipfilter.ini, restore it!"
	cp -f /etc/ipfilter.ini /mnt/flash/config/
fi

if [ ! -f /mnt/flash/config/schedule.ini ]; then
	echo "missing schedule.ini, restore it!"
	cp -f /etc/schedule.ini /mnt/flash/config/
fi

if [ ! -f /mnt/flash/config/usr.ini ]; then
	echo "missing usr.ini, restore it!"
	cp -f /etc/usr.ini /mnt/flash/config/
fi

if [ ! -f /var/stunnel-https.conf ]; then
	echo "missing stunnel-https.conf, restore it!"
	cp -f /etc/stunnel-https.conf /var/
fi

if [ ! -f /var/stunnel-smtps.conf ]; then
	echo "missing stunnel-smtps.conf, restore it!"
	cp -f /etc/stunnel-smtps.conf /var/
fi

if [ ! -f /var/stunnel-smtps-snapshot.conf ]; then
	echo "missing stunnel-smtps-snapshot.conf, restore it!"
	cp -f /etc/stunnel-smtps-snapshot.conf /var/
fi

if [ ! -f /var/stunnel-smtps-test.conf ]; then
	echo "missing stunnel-smtps-test.conf, restore it!"
	cp -f /etc/stunnel-smtps-test.conf /var/
fi

if [ ! -f /mnt/flash/config/passwd ]; then
	echo "missing passwd, restore it!"
	cp -f /etc/passwd_default /mnt/flash/config/passwd
fi

if [ ! -f /mnt/flash/config/TZ ]; then
	echo "missing TZ, restore it!"
	cp -f /etc/TZ_default /mnt/flash/config/TZ
fi

if [ ! -f /mnt/flash/config/hnap_policy.xml ]; then
	echo "missing hnap_policy.xml, restore it!"
	cp -f /etc/hnap_policy.xml /mnt/flash/config/
fi

if [ ! -f /mnt/flash/config/hnap_module_profile.ini ]; then
	echo "missing hnap_module_profile.ini, restore it!"
	cp -f /etc/hnap_module_profile.ini /mnt/flash/config/
fi

if [ ! -f /mnt/flash/config/mdbcfg.ini ]; then
	echo "missing mdbcfg.ini, restore it!"
	cp -f /etc/mdbcfg.ini /mnt/flash/config/
fi
