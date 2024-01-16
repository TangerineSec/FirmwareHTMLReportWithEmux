#!/bin/sh

WAIT_TIMER=0
MAX_WAIT_TIME=2
DHCP_STATUS_FILE="/var/dhcp_status"
WPS_DHCP_IP_FILE="/var/wps_dhcp_ip"
LAN_IP_ADDR=`nvram get lan_ipaddr`

if test -n "$broadcast"; then
	BROADCAST="broadcast $broadcast"
	echo "Broadcast=$BROADCAST"
fi
	
if test -n "$subnet"; then
	NETMASK="netmask $subnet"
	echo "Netmask=$NETMASK"
fi

interface="vlan2"

WAN_TYPE=`nvram get wan_proto`
WAN_IFNAME=`nvram get wan0_ifname`
L2TP_IPADDR=`nvram get wan_l2tp_ipaddr`
if [ $WAN_TYPE == "pptp" -o $WAN_TYPE == "l2tp" ]; then
	interface="$WAN_IFNAME"
fi

case "$1" in
	deconfig)
		echo "DHCPC deconfig..."
		echo 0 > $DHCP_STATUS_FILE

		echo "Del default route (deconfig)..."
		route del default gateway $LAN_IP_ADDR dev $interface

		echo "Add default route..."
		route add default gateway $LAN_IP_ADDR dev $interface

		echo "set IP to 0.0.0.0"
		ifconfig $interface 0.0.0.0
	;;

	renew|bound)
		echo "DHCPC renew/bound..."
		echo 1 > $DHCP_STATUS_FILE

		echo "Del default route (renew/bound)..."
		route del default gateway $LAN_IP_ADDR dev $interface

		#for GUI redirecting webpage to the new IP
		echo $ip > $WPS_DHCP_IP_FILE
		echo "$ip $subnet" > "/var/tmp_dhcp_ip_mask"

		#write DHCP IP after GUI has been deleted WPS tmp file
		if [ -e $WPS_DHCP_IP_FILE ]; then
			#echo "Exist $WPS_DHCP_IP_FILE file"
			while [ "$WAIT_TIMER" -le "$MAX_WAIT_TIME" ]
			do
				sleep 1
				
				if [ ! -e $WPS_DHCP_IP_FILE ]; then
					echo "GUI is already. interface=$interface, IP=$ip"
					ifconfig $interface $ip $BROADCAST $NETMASK
					break
				fi
				
				WAIT_TIMER=`expr $WAIT_TIMER + 1`
				echo "ip=$ip, $WAIT_TIMER"
			done
		fi

		if [ -e $WPS_DHCP_IP_FILE ]; then
			echo "Got IP. interface=$interface, IP=$ip"
			ifconfig $interface $ip $BROADCAST $NETMASK

			#Tom.Hung 2013-4-10, support L2TP DHCP mode
			if [ $WAN_TYPE == "l2tp" ]; then
				sed "s/$L2TP_IPADDR/$ip/" /tmp/l2tp/openl2tpd.conf > /tmp/l2tp/openl2tpd_dhcp.conf
				openl2tpd -f -u 1701 -c /tmp/l2tp/openl2tpd_dhcp.conf &
			fi
			#Tom.Hung 2013-4-10 end
			#Tom.Hung 2013-4-11, PPTP DHCP mode dial up
			if [ $WAN_TYPE == "pptp" ]; then
				pppd_exist=`ps | grep pppd | grep -v grep`
				if [ "x$pppd_exist" == "x" ]; then
					pppd
				fi
			fi
			#Tom.Hung 2013-4-11 end

			rm -rf $WPS_DHCP_IP_FILE
		fi

		rm -rf $DHCP_STATUS_FILE
	;;
esac
