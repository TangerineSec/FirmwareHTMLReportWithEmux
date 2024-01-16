#!/bin/sh

service_script="/etc/rc.d/init.d/service.sh"

iface="br0"
pidfile="/var/run/udhcpc.pid"
old_phylink="none"
phylink="none"
need_dhcp=1
dhcp_retry=3
need_restart_service=0
iChannel=0
ipAddr=""
dpch_ret=-1
temp1=0

get_phylink_status()
{
	netphy=`msger sinfo 1 net.phy 0|cut -d ' ' -f 4`
	if [ $netphy -gt 3 ]; then
		netphy=$(($netphy-4))
	fi
	if [ $netphy = 0 ]; then
		phylink="none"
	elif [ $netphy = 1 ] || [ $netphy = 3 ]; then
		phylink="wired"
	elif [ $netphy = 2 ]; then
		phylink="wireless"
	fi
}

run_dhcp_process()
{
	hostname=`userconfig -read CAMSYSTEM CameraName`
	if [ -z "$hostname" ]; then
		hostname=`userconfig -read System ModelName`
	fi

	/bin/kill `pidof udhcpc`
	dhcp_count=0
	while [ $dhcp_count -lt $dhcp_retry ]; do
		echo "DHCP retry $dhcp_count ..."
		#udhcpc -n -i $iface -x hostname:"$hostname" -p $pidfile
		ifconfig $iface up
                if [ "$ipAddr" == "" ];then
                        /sbin/udhcpc -n -i $iface -H "$hostname" -p $pidfile
                else
                        /sbin/udhcpc -n -r "$ipAddr" -i $iface -H "$hostname" -p $pidfile
                fi

		retval=$?
		if [ $retval = 0 ]; then
			/usr/bin/logger -t ipcam "IP address acquire success"
			echo "IP address acquire success"
			need_dhcp=0
			break
		fi
		dhcp_count=$(($dhcp_count+1))
	done

	if [ $retval = 0 ]; then
		iChannel=`iwpriv wlan0-vxd get_mib channel | cut -d ':' -f 2`
		if [ "$iChannel" -gt "14" ]; then
			echo "====== phyBandSelect = 2 ====== wlan0-vxd Channel = $iChannel ======"
			/usr/bin/iwpriv wlan0 set_mib phyBandSelect=2
			/usr/bin/iwpriv wlan0-vxd set_mib phyBandSelect=2
			/usr/bin/iwpriv wlan0 set_mib antdiv_select=0
		else
			echo "====== phyBandSelect = 1 ====== wlan0-vxd Channel = $iChannel ======"
			/usr/bin/iwpriv wlan0 set_mib phyBandSelect=1
			/usr/bin/iwpriv wlan0-vxd set_mib phyBandSelect=1
			/usr/bin/iwpriv wlan0 set_mib antdiv_select=2
		fi
		return 1
	elif [ $phylink != $old_phylink ]; then
		/usr/bin/logger -t ipcam "IP address acquire fail, set to static network"
		echo "IP address acquire fail, set to static network"
		/etc/init.d/ipv4 default
		return 0
	fi
	return 255
}

#check dhcp client resident
check_dhcp_process()
{
        dhcp_pid=`pidof udhcpc`

        if [ $retval = 0 ]; then
                ipAddr="`/sbin/ifconfig $DEV | sed -nr 's/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'`"
        else
                ipAddr=""
        fi

        if [ -z "$dhcp_pid" ];then
                need_dhcp=1
        fi
}

detect_loop()
{
	while [ true ]
	do
		sleep 1
		get_phylink_status

		if [ $phylink = "none" ]; then
			need_dhcp=0
			if [ $old_phylink != "none" ]; then
				/usr/bin/logger -t ipcam "Lost network link."
				echo "Lost network link."
				/bin/kill `pidof udhcpc`
			fi
		elif [ $phylink != $old_phylink ]; then
			if [ $old_phylink = "none" ]; then
				/usr/bin/logger -t ipcam "Network link is recovered, try to run DHCP."
				echo "Network link is recovered, try to run DHCP."
			fi
			need_dhcp=1
			if [ $phylink = "wireless" ]; then
				temp1=`msger hwmon 0 offnetled 0 1 2`
				temp1=`msger hwmon 0 pwrled 0 1 5 0`
			fi
		fi

		if [ $need_dhcp = 1 ]; then
			run_dhcp_process
                        dhcp_ret=$?
                        if [ $dhcp_ret == 1 ] && [ $phylink = "wireless" ]; then
                            	echo "=== Get IP Finish ==="
				echo `date`
				temp1=`msger hwmon 0 offnetled 0 0 2`
				temp1=`msger hwmon 0 pwrled 0 1 0 5`
                        fi
			if [ $dhcp_ret == 0 ] || [ $dhcp_ret == 1 ]; then
				need_restart_service=1
			fi
                elif [ $phylink != "none"  ];then
                        check_dhcp_process
		fi

		old_phylink=$phylink
		if [ $need_restart_service = 1 ]; then
			need_restart_service=0
			$service_script restart &
		fi
	done
}

start() {
	need_restart_service=1
	detect_loop &
}

killproc() {
	pid=
	if [ -f /var/run/$1.pid ]; then
		local line p
		read line < /var/run/$1.pid
		kill $line
	fi
	rm -f /var/run/$1.pid
}

stop() {
	killproc udhcpc
	killall udhcpc.sh
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
		echo "Usage $0 {start|stop|restart}"
		exit 1
esac

exit $?
