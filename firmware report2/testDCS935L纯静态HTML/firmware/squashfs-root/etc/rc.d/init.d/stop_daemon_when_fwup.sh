#!/bin/sh
/usr/bin/killall schboot 2>/dev/null 1>/dev/null
/usr/bin/killall upnp 2>/dev/null 1>/dev/null
/etc/init.d/upnp_igd-http.sh stop >/dev/null 2>&1
/etc/init.d/upnp_igd-https.sh stop >/dev/null 2>&1
/etc/init.d/upnp_igd-rtsp.sh stop >/dev/null 2>&1
/etc/init.d/eventd-0 stop 2>/dev/null 1>/dev/null
/etc/init.d/camsvr-0 stop 2>/dev/null 1>/dev/null
/etc/init.d/HNAPPushService-0 stop 2>/dev/null 1>/dev/null
/etc/init.d/hwmon-0 stop 2>/dev/null 1>/dev/null
/etc/init.d/bonjour-0 stop 2>/dev/null 1>/dev/null
/etc/init.d/llmnr-0 stop 2>/dev/null 1>/dev/null
/usr/bin/killall ntpclient 2>/dev/null 1>/dev/null
/usr/bin/killall wanip_detect 2>/dev/null 1>/dev/null
/usr/bin/killall udhcpc.sh 2>/dev/null 1>/dev/null
#if [ "$1" == "killagent" ]; then
/mydlink/opt.local stop 2>/dev/null 1>/dev/null
#fi
/etc/init.d/rtspd-0 stop 2>/dev/null 1>/dev/null
/etc/init.d/ntpc.sh stop 2>/dev/null 1>/dev/null
/usr/bin/killall netmgr 2>/dev/null 1>/dev/null
/usr/bin/killall wscd 2>/dev/null 1>/dev/null
/usr/bin/killall iwcontrol 2>/dev/null 1>/dev/null
/usr/bin/killall udhcpc 2>/dev/null 1>/dev/null
/usr/bin/killall ddp 2>/dev/null 1>/dev/null

sleep 3
