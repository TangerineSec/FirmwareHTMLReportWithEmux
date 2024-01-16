#!/bin/sh

xRouterLog 0 "Server.sh" "-" "in Server.sh"
export LD_LIBRARY_PATH=/usr/local/xcloud/lib:$LD_LIBRARY_PATH
space=""
ParamInput="$1"
Start() {
	servername=`ps | grep xCloudClient | grep -v grep | awk '{print $NF}'`
    if [ "/usr/local/xcloud/bin/xCloudClient" != "$servername" ]
	then
		/usr/local/xcloud/bin/xCloudClient &
		xRouterLog 0 "Server.sh" "-" "Start xCloudClient"
		echo started xCloudClient
    fi
	servername=`ps | grep Monitor.sh | grep -v grep | awk '{print $NF}'`
    if [ "/usr/local/xcloud/bin/Monitor.sh" != "$servername" ]
	then
		/usr/local/xcloud/bin/Monitor.sh &
		xRouterLog 0 "Server.sh" "-" "Start Monitor.sh"
		echo started Monitor
	fi	
}

Stop() {
	for PID in `/bin/ps | grep xCloudClient | grep -v grep | awk  '{print $1}'`
	do
		/bin/kill -9 $PID
		xRouterLog 0 "Server.sh" "-" "Stop xCloudClient"
		echo stop xCloudClient
	done
	
	for PID in `/bin/ps | grep Monitor.sh | grep -v grep | awk  '{print $1}'`
	do
		/bin/kill -9 $PID
		xRouterLog 0 "Server.sh" "-" "Stop Monitor.sh"
		echo stop Monitor.sh
	done
	sleep 2
}

Restart ()
{
	Stop
	Start
}

GetStatus()
{
	servername=`ps | grep xCloudClient | grep -v grep | awk '{print $NF}'`
    if [ "/usr/local/xcloud/bin/xCloudClient" != "$servername" ]
	then
		xRouterLog 0 "Server.sh" "-" "Status xCloudClient stop"
        echo xCloudClient not started.
    else
		xRouterLog 0 "Server.sh" "-" "Status xCloudClient start"
        echo xCloudClient started.
    fi
	servername=`ps | grep Monitor.sh | grep -v grep | awk '{print $NF}'`
    if [ "/usr/local/xcloud/bin/Monitor.sh" != "$servername" ]
	then
		xRouterLog 0 "Server.sh" "-" "Status Monitor.sh stop"
        echo Monitor.sh not started.
    else
		xRouterLog 0 "Server.sh" "-" "Status Monitor.sh start"
        echo Monitor.sh started.
    fi
}

if [ "start" = "$ParamInput" ]
then
	Start
	exit 0
fi


if [ "status" = "$ParamInput" ]
then
	GetStatus
	exit 0
fi


if [ "stop" = "$ParamInput" ]
then
    Stop
	exit 0
fi


if [ "restart" = "$ParamInput" ]
then
    Restart
	exit 0
fi