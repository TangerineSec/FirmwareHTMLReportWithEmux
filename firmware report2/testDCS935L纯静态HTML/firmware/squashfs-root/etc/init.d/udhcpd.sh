#!/bin/sh
# /etc/rc.d/init.d/udhcpd.sh: start/stop the DHCP server.
# chkconfig: 2345 15 85
#

prog_name="udhcpd"
ifname="br0"
udhcpd_bin="/usr/sbin/udhcpd"
udhcpd_conf="/var/udhcpd.conf"
udhcpd_args="-Sf $udhcpd_conf"
leases_path="/var/lib/misc"
pidfile="/var/run/udhcpd-$ifname.pid"

service_script="/etc/init.d/service.sh"

start_udhcpd()
{
	echo "" > $udhcpd_conf

	ip=`userconfig -read DHCPD IP`
	netmask=`userconfig -read DHCPD SubnetMask`
	gateway=`userconfig -read DHCPD Gateway`
	dns0=`userconfig -read DHCPD DNS0`
	dhcp_start=`userconfig -read DHCPD DHCPStart`
	dhcp_end=`userconfig -read DHCPD DHCPEnd`
	lease_time=`userconfig -read DHCPD LeaseTime`

	ifconfig "$ifname" "$ip" netmask "$netmask"

	echo "max_leases 101" >> $udhcpd_conf
	echo "interface $ifname" >> $udhcpd_conf
	echo "start $dhcp_start" >> $udhcpd_conf
	echo "end $dhcp_end" >> $udhcpd_conf
	echo "opt subnet $netmask" >> $udhcpd_conf
	echo "opt lease $lease_time" >> $udhcpd_conf
	echo "opt router $gateway" >> $udhcpd_conf
	echo "opt dns $dns0" >> $udhcpd_conf
	echo "pidfile $pidfile" >> $udhcpd_conf

	echo "Start $parg_name ..."
	$udhcpd_bin $udhcpd_args >/dev/null &
}

start()
{
	mkdir -p $leases_path
	touch $leases_path/udhcpd.leases

	if [ ! -f $pidfile ]; then
		start_udhcpd
	fi
}

stop()
{
	echo "Stop $prog_name ..."
	killall $prog_name
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
		sleep 2
		start
		;;
	*)
		echo $"Usage $0 {start|stop|setip|restart}"
		exit 1
esac

exit $?

