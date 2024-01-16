#!/bin/sh

###### Command definitions #####

XCLOUD_SHARE_CONFIG_FILE="/usr/local/xcloud/etc/.share.conf"
XCLOUD_SHARE_CONFIG_FILEI_TEMP="/usr/local/xcloud/etc/.share.conf.temp"

VOLUME=`df -h| grep $1 | awk  '{print $6}' | sed -n '1p'`
if [ ! -z $VOLUME ]
then
	if [ ! -d ${VOLUME}/xcloud ]
	then
		mkdir -p ${VOLUME}/xcloud
	fi
	if [ ! -d ${VOLUME}/xcloud/music ]
	then
	mkdir -p ${VOLUME}/xcloud/music
	fi
	if [ ! -d ${VOLUME}/xcloud/video ]
	then
		mkdir -p ${VOLUME}/xcloud/video
	fi
	if [ ! -d ${VOLUME}/xcloud/docs ]
	then
		mkdir -p ${VOLUME}/xcloud/docs
	fi
	if [ ! -d ${VOLUME}/xcloud/pic ]
	then
		mkdir -p ${VOLUME}/xcloud/pic
	fi
	if [ ! -d ${VOLUME}/xcloud/pic/instant ]
	then
		mkdir -p ${VOLUME}/xcloud/pic/instant
	fi
	echo "[DEFAULT]" > $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT = $VOLUME/xcloud" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_PIC = $VOLUME/xcloud/pic" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_INSTANT = $VOLUME/xcloud/pic/instant" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_MUSIC = $VOLUME/xcloud/music" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_VIDEO = $VOLUME/xcloud/video" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_DOC = $VOLUME/xcloud/docs" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "[SHARELIST]" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	mv $XCLOUD_SHARE_CONFIG_FILEI_TEMP $XCLOUD_SHARE_CONFIG_FILE
	chmod 755 $XCLOUD_SHARE_CONFIG_FILE
else
	echo "[DEFAULT]" > $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT = " >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_PIC = " >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_INSTANT = " >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_MUSIC = " >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_VIDEO = " >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "DEFAULT_DOC = " >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	echo "[SHARELIST]" >> $XCLOUD_SHARE_CONFIG_FILEI_TEMP
	mv $XCLOUD_SHARE_CONFIG_FILEI_TEMP $XCLOUD_SHARE_CONFIG_FILE
	chmod 755 $XCLOUD_SHARE_CONFIG_FILE
fi
#start samba share
#init
#echo "config samba" >> /tmp/samba
#echo "	option 'name'			'xRouter'" >> /tmp/samba
#echo "	option 'workgroup'		'WORKGROUP'" >> /tmp/samba
#echo "	option 'description'		'xRouter'" >> /tmp/samba
#echo "	option 'homes'			'1'" >> /tmp/samba
#mnt=0
#for sharefile in `mount | awk  '{print $3}'`
#do
#	mnt=`expr ${mnt} + 1`
#	echo "config sambashare" >> /tmp/samba
#	echo "        option 'name'			'xRouter_MNT_${1}'" >> /tmp/samba
#	echo "        option 'path'			'${2}'" >> /tmp/samba
#	echo "        option 'read_only'		'no'" >> /tmp/samba
#	echo "        option 'guest_ok'		'yes'" >> /tmp/samba
#	echo "        option 'create_mask'		'0700'" >> /tmp/samba
#	echo "        option 'dir_mask'		'0700'" >> /tmp/samba
#done
#/bin/cat /tmp/samba >> /etc/config/samba
#/bin/rm -rf /tmp/samba
exit 0
