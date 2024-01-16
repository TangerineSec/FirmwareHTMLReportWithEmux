#!/bin/sh

mydlink_script="/mydlink/opt.local"

start()
{
	echo "Start some services ..."
	/etc/init.d/bonjour-0 start
	/etc/init.d/llmnr-0 start
	/etc/init.d/upnp-0 start
	/etc/init.d/upnp_igd-http.sh restart &
	/etc/init.d/upnp_igd-https.sh restart &
	/etc/init.d/upnp_igd-rtsp.sh restart &

	/etc/init.d/ntpc.sh restart &

	echo "mydlink start ..."
	$mydlink_script start
}

stop()
{
	echo "Stop some services ..."
	/etc/init.d/bonjour-0 stop
	/etc/init.d/llmnr-0 stop
	/etc/init.d/upnp-0 stop

	echo "mydlink stop ..."
	$mydlink_script stop
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
		sleep 1
		start
		;;
	*)
		echo $"Usage $ 0 {start|stop|restart}"
		exit 1
esac

exit $?
