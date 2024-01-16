#!/bin/sh
kill `pidof sleep`
# stop daemon
/etc/init.d/upnp_igd-http.sh stop&
/etc/init.d/upnp_igd-https.sh stop&
/etc/init.d/upnp_igd-rtsp.sh stop&
sleep 1
# stop ntp
kill `pidof ntpc`
# kill udhcpc
kill `cat /var/run/udhcpc.pid`

