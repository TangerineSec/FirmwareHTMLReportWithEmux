#!/bin/sh

binpath=/usr/sbin/upnp_igd
userconfig=/usr/sbin/userconfig
model=`$userconfig -read CAMSYSTEM CameraName`
if [ -z "$model" ]; then
	model=`$userconfig -read INFO ModelName`
fi

wan_service=IP

# commands
GetSpecificPortMap=0
AddPortMap=1
GetExternalIP=2
DelPortMap=3
GetDefaultService=4

portmap()
{
	# query the port is available
	$binpath $1 $GetSpecificPortMap $2 TCP >/dev/null 2>&1
	retval=$?
	# TP-Link will return 402 for GetSpecificPortMapping
	if [ $retval = 0 ]; then
		# specific port is open
		return 1
	elif [ $retval = 202 -o $retval = 146 ]; then # ret is 714(406) - (256*2) = 202:)
		# the port is empty, set port map now!
		$binpath $1 $AddPortMap $2 TCP $model $3 >/dev/null 2>&1
		retval=$?
		if [ $retval = 0 ]; then
			return 0
		fi
	fi

	return 2
}

portdel()
{
	# query the port is available
	$binpath $1 $GetSpecificPortMap $2 TCP >/dev/null 2>&1
	retval=$?
	# TP-Link will return 402 for GetSpecificPortMapping
	if [ $retval = 202 -o $retval = 146 ]; then # ret is 714(406) - (256*2) = 202:)
		# specific port is open
		return 1
	elif [ $retval = 0 ]; then
		$binpath $1 $DelPortMap $2 TCP >/dev/null 2>&1
		retval=$?
		if [ $retval == 0 ]; then
			return 0
		fi
	fi

	return 2
}

specific() {
	# speficy port
	if [ ! -z "$1" ]; then
		$binpath $wan_service $GetSpecificPortMap $1 TCP
		return $?
	fi
	return 0
}

# get external IP address
getextip() {
	# specify service type
	if [ -n "$1" ]; then
		wan_service=$1
	fi
	$binpath $wan_service $GetExternalIP
	return $?
}

case "$1" in
	portmap)
		# portmap IP ExtPort IntPort
		portmap $wan_service $2 $3
		;;
	portdel)
		# portdel IP ExtPort
		portdel $wan_service $2
		;;
	specific)
		specific $2
		;;
	getextip)
		getextip $2
		;;
	*)
		echo $"Usage $0 {portmap|portdel|specific|getextip}"
		exit 1
esac

exit $?
