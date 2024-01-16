#!/bin/sh

time_protocol=`/usr/sbin/userconfig -read DATETIME Protocol`
intervel=`/usr/sbin/userconfig -read DATETIME SyncSchedule`
retry=3
#retrysleep=60
retrysleep=180
stopflag=0
case "$time_protocol" in
  1)
	kill `pidof ntpclient`
	hostname=`/usr/sbin/userconfig -read DATETIME NTPServerIP`
	if [ $? = 0 ] ; then
		kill `pidof ntpclient` 
		# some delay to avoid wireless connection not finished
		if [ -n "$1" ]; then
			sleep $1 
		fi
		while [ "$stopflag" -eq 0 ]; do
			ntpstate=`/usr/sbin/msger sinfo 1 sntpstate 0`
			if [ "$ntpstate" -gt "$intervel" ]; then
			   # ntpstate > interval; reset state
			   ntpstate=0
			   /usr/sbin/msger sinfo 0 sntpstate 0 0
			fi
			if [ "$ntpstate" -eq 0 ]; then
			   # ntpstate == 0; start connection
				synctime=$(($intervel * 3600))
				while [ "$retry" -gt 0 ]; do
			  		/usr/sbin/ntpclient -s -i 15 -h "$hostname"
					if [ $? != 0 ]; then
			  			/usr/sbin/ntpclient -s -i 15 -6 -h "$hostname"
					fi
					# if query is OK, set the hwclock and ntpstate = 1
					if [ $? = 0 ]; then
						#logger -t ipcam "NTP date/time setting finish"
						/usr/sbin/msger sinfo 0 sntpstate 0 1
						/usr/sbin/msger camsvr 0 ctimeupdate 0 1
						##/usr/sbin/rtcfg -w
						retry=0
					else
						#/usr/bin/logger -t ipcam "NTP date/time setting fail"
						sleep $retrysleep
					fi
				done
			else
			   # 0 < state < interval; waiting one hour each time
			   sleep 3600
			   ntpstate=$(($ntpstate + 1))
			   /usr/sbin/msger sinfo 0 sntpstate 0 $ntpstate
			fi	
		done
	fi
	;;

   *)
	echo "No protocol find"
	exit 1
esac
