#!/bin/sh
# This script is for HTTPS
#

service=HTTPS
userconfig=/usr/sbin/userconfig
binpath=/etc/init.d/upnp_igd.sh
portfile=/tmp/upnp_igd-https.port
intport=`$userconfig -read HTTPS Port`
extport=`$userconfig -read UPnP ExternHTTPSPort`

#
# Start UPNP
#
start() {
	enable1=`$userconfig -read UPnP EnablePortForward`
	enable2=`$userconfig -read HTTPS Enable`
	if [ "$enable1" = "0x00" ] || [ "$enable2" = "0x00" ]; then
		return 0
	fi

	echo "Starting UPnP port fowarding for $service ...."
	$binpath portmap "$extport" "$intport"
	retval=$?
	if [ $retval = 0 ]; then
		/usr/bin/logger -t ipcam "UPnP port mapping (int:$intport ext:$extport) success"
		echo "$extport" > $portfile
	elif [ $retval = 1 ]; then
		/usr/bin/logger -t ipcam "UPnP specific port(ext:$extport) already open"
	else
		/usr/bin/logger -t ipcam "UPnP port mapping (int:$intport ext:$extport) fail"
	fi
}

stop()
{
	if [ -e "$portfile" ]; then
		oldport=`cat $portfile`
		if [ ! -z "$oldport" ]; then
			echo "Starting UPnP port fowarding for $service ...."
			$binpath portdel "$oldport"
			retval=$?
			if [ $retval = 0 ]; then
				/usr/bin/logger -t ipcam "UPnP specific port(ext:$oldport) delete successfully"
			elif [ $retval = 1 ]; then
				/usr/bin/logger -t ipcam "UPnP specific port(ext:$oldport) is not open"
			fi
		fi
		rm -f "$portfile"
	fi
}

restart()
{
	stop
	start
}

case "$1" in
	start)
		start
		;;
	stop)
		stop
		;;
	restart)
		restart
		;;
	*)
		echo $"Usage $0 {start|stop|restart}"
		exit 1
esac

exit
