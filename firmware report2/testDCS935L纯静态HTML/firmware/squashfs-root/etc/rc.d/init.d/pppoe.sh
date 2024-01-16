#!/bin/sh

start() {
	# change pppoe interface depend on current connect policy
	DEV=ppp0
	PPPoEEnable=`userconfig -read NETWORK_V4 PPPoEEnable`
	PPPoEUID=`userconfig -read NETWORK_V4 PPPoEUID`
	PPPoEPWD=`userconfig -read NETWORK_V4 PPPoEPWD`
	if [ $PPPoEEnable == "0x01" ]; then
		#log
		logger -t ipcam "PPPoE start"
		mkdir -p /var/config
		rm -rf /var/config/ppp
		cp -rf /etc/ppp_config /var/config/ppp
		cfg -a w -p /var/config/ppp/ pppoe.conf "" "USER" $PPPoEUID
		cfg -a w -p /var/config/ppp/ pppoe.conf "" "ETH" "br0"
		echo -ne "\""$PPPoEUID"\"	*	\""$PPPoEPWD"\"\n" > /var/config/ppp/pap-secrets
		echo -ne "\""$PPPoEUID"\"   *       \""$PPPoEPWD"\"\n" > /var/config/ppp/chap-secrets
		cfg -a w ddns.conf "" interface $DEV
		pppoe-start
	fi
}

stop() {
	logger -t ipcam "PPPoE stop"
	pppoe-stop
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
