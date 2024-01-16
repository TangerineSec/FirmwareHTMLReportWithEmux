#!/bin/sh

net_up()
{
	msger hwmon 0 netled 0 1 5 5
}

net_down()
{
	msger hwmon 0 netled 0 1 0 1
}

wps_init()
{
	msger hwmon 0 wpsled 0 1 0 1
}

wps_process()
{
	msger hwmon 0 wpsled 0 1 5 5
}

wps_success()
{
	msger hwmon 0 wpsled 0 1 0 1
}

ap_on()
{
	msger hwmon 0 apled 0 1 1 0
}

ap_off()
{
	msger hwmon 0 apled 0 1 0 1
}

case "$1" in
	netup)
		net_up
		;;
	netdown)
		netdown
		;;
	wpsinit)
		wps_init
		;;
	wpsproc)
		wps_process
		;;
	wpsok)
		wps_success
		;;
	apon)
		ap_on
		;;
	apoff)
		ap_off
		;;
	*)
		echo "Usage: $0 {netup|netdown|wpsinit|wpsproc|wpsok|apon|apoff}"
		exit 1
esac

exit 0

