#
# Copyright (C) 2013 lintel<lintel.huang@gmail.com>
#

. /lib/ralink.sh

PART_NAME=firmware
RAMFS_COPY_DATA=/lib/ralink.sh
#USE_REFRESH=1

get_cap() {
	cpu=`cat /proc/cpuinfo | awk '/system type/{print $5}'`
	size=`cat /proc/mtd | awk '/fullflash/{print $2}'`
	if [ $size = "01000000" ]; then
		if [ $cpu = "MT7620A" ]; then
			echo RY-02
		else
			echo RY-1A
		fi
	else
		echo RY-1
	fi
}

get_key() {	
	get_image "$@" | dd skip=1 ibs=32 count=1 2>/dev/null
}

check_type() {
	local key="$(get_key "$1")"
	local cap=$(get_cap)
	local result=""
	local type=""

	type=`echo "$key" | grep 'xRouter Linux'`
	if [ -n "$type" ]; then
		result=Generic
		echo $result
		return 1
	fi 
	
	type=`echo "$key" | grep 'RY-1[^0-9a-zA-Z]'`
	if [ -n "$type" ]; then
		result=`echo $cap | grep 'RY-1$'`
	fi

	type=`echo "$key" | grep 'RY-1A[^0-9a-zA-Z]'`
	if [ -n "$type" ]; then
		result=`echo $cap | grep 'RY-1A$'`
	fi
	
	type=`echo "$key" | grep 'RY-02[^0-9a-zA-Z]'`
	if [ -n "$type" ]; then
		result=`echo $cap | grep 'RY-02$'`
	fi
		
	echo $result
}

platform_check_image() {
	local board=$(ralink_board_name)
	local magic="$(get_magic_long "$1")"

	[ "$ARGC" -gt 1 ] && return 1

	case "$board" in
	rt-n56u | \
	rt-n13 | \
	ry01   | \
	RY-1 | \
	RY-1A | \
	RY-02 | \
	hg255d | \
	hg256 | \
	wap120nf | \
	ap8100rt | \
	pbx20 | \
	pbx30 | \
	ap7620a | \
	mw305r | \
	dir620 )
		[ "$magic" != "27051956" ] && {
			echo "Invalid image type."
			return 1
		}
		[ -z $(check_type $1) ] && {
			echo "Invalid image type."
			return 1
		}
		return 0
		;;
	dir-645)
		[ "$magic" != "5ea3a417" ] && {
			echo "Invalid image type."
			return 1
		}
		return 0
		;;
	esac

	echo "Sysupgrade is not yet supported on $board."
	return 1
}

platform_do_upgrade() {
	local board=$(ralink_board_name)

	case "$board" in
	*)
		default_do_upgrade "$ARGV"
		;;
	esac
}

disable_watchdog() {
	killall watchdog
	( ps | grep -v 'grep' | grep '/dev/watchdog' ) && {
		echo 'Could not disable watchdog'
		return 1
	}
}

append sysupgrade_pre_upgrade disable_watchdog
