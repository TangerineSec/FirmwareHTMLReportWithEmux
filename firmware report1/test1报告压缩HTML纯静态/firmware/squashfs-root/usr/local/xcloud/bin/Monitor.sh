#!/bin/sh
#***********************************************
# File Name  : Monitor.sh
# Description: 
# Make By    :lqf/200309129@163.com
# Date Time  :2012/07/13 
#***********************************************
space=""
sleeptime=5
timeout = 30
tmptm=0
xRouterLog 0 "Monitor.sh" "-" "in Monitor.sh"
while [ 1 ]
do
    sleep $sleeptime
    servernam=`ps | grep xCloudClient | grep -v grep | awk '{print $NF}'`
    if [ "" == "$servernam" ]
    then
#		if [ tmptm <= timeout ]
#		then
#			tmptm = tmptm + 5
#			continue
#		fi
#		for PID in `/bin/ps | grep xCloudClient | grep -v grep | awk  '{print $1}'`
#		do
#			/bin/kill -9 $PID
#		done
#		sleep 2

        /usr/local/xcloud/bin/xCloudClient &
		xRouterLog 0 "Monitor.sh" "-" "start xCloudClient"
    fi
#	tmptm = 0
done
