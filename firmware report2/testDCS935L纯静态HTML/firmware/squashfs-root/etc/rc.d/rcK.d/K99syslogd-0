#!/bin/sh
#
# syslogd: This start/stop syslogd.
#
# chkconfig: 2345 01 99
#

prog="syslogd"
binpath="/sbin/syslogd"
options="-C -m 0"

start()
{
	echo "Start $prog ... "
	$binpath $options
}

stop()
{
	echo "Stop $prog ... "
	killall $prog
}

case "$1" in
	start)
		start
		;;
	stop)
		stop
		;;
	restart)
		stop
		start
		;;
	*)
		echo "Usage: $0 {start|stop|restart}"
		exit 1
esac

exit 0
