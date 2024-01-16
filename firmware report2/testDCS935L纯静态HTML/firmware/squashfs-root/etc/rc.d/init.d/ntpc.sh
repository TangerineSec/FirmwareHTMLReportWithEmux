#!/bin/sh

#
# Start ntpc
#
start() {
	echo "Starting ntpc..."
	/etc/init.d/ntpcdo.sh &
}

stop() {
	/bin/kill `pidof ntpcdo.sh`
	/bin/kill `pidof ntpclient`
}

restart() {
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

exit $?
