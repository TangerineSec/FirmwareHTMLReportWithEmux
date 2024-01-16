#!/bin/sh
#
# Copyright (C) 2010 OpenWrt.org
#


ralink_board_name() {
	local machine
	local name

	machine=$(awk 'BEGIN{FS="[ \t]+:[ \t]"} /machine/ {print $2}' /proc/cpuinfo)

	case "$machine" in
	*"La Fonera 2.0N")
		name="fonera20n"
		;;
	*"ASUS RT-N13")
		name="rt-n13"
		;;
	*"HuaWei HG255D")
		name="hg255d"
		;;
	*"Mercury MW305R")
		name="mw305r"
		;;
	*"SpeedyTel PBX20")
		name="pbx20"
		;;
	*"SpeedyTel PBX30")
		name="pbx30"
		;;
	*"RedWave AP7620A")
		name="ap7620a"
		;;
	*"D-Link DIR-620 B2")
		name="dir620"
		;;
	*"ZBT WR8305RT")
		name="wr8305rt"
		;;
	*"HuaWei HG256")
		name="hg256"
		;;
	*"ZyXEL WAP120NF")
		name="wap120nf"
		;;
	*"ZBT AP8100RT")
		name="ap8100rt"
		;;
	*"RT-N10+")
		name="rt-n10-plus"
		;;
	*"RT-N15")
		name="rt-n15"
		;;
	*"RT-N56U")
		name="rt-n56u"
		;;
	*"D-Team RY01")
		name="ry01"
		;;
	*"D-Team RY-1")
		name="RY-1"
		;;
	*"D-Team RY-1A")
		name="RY-1A"
		;;
	*"D-Team RY-02")
		name="RY-02"
		;;
	*)
		name="generic"
		;;
	esac

	echo $name
}
