#!/bin/sh
#
# Copyright (C) 2010 DreamBox.org.cn
#
#

. /lib/ralink.sh

status_led=""
preinit_led=""

led_set_attr() {
	[ -f "/sys/class/leds/$1/$2" ] && echo "$3" > "/sys/class/leds/$1/$2"
}

preinit_led_set_timer() {
	led_set_attr $preinit_led "trigger" "timer"
	led_set_attr $preinit_led "delay_on" "$1"
	led_set_attr $preinit_led "delay_off" "$2"
}

preinit_led_off() {
	led_set_attr $preinit_led "trigger" "none"
	led_set_attr $preinit_led "brightness" 0
}

get_preinit_led() {
	case $(ralink_board_name) in
		RY-02)
			preinit_led="power:yellow"
			;;
	esac
}

status_led_set_timer() {
	led_set_attr $status_led "trigger" "timer"
	led_set_attr $status_led "delay_on" "$1"
	led_set_attr $status_led "delay_off" "$2"
}

status_led_on() {
	led_set_attr $status_led "trigger" "none"
	led_set_attr $status_led "brightness" 255
}

status_led_off() {
	led_set_attr $status_led "trigger" "none"
	led_set_attr $status_led "brightness" 0
}

get_status_led() {
	case $(ralink_board_name) in
		fonera20n)
			status_led="fonera20n:green:power"
			;;
		rt-n13)
			status_led="rt-n13:power"
			;;
		hg255d)
			status_led="hg255d:power"
			;;
		hg256)
			status_led="hg256:power"
			;;
		pbx20)
			status_led="pbx20:green:sys"
			;;
		pbx30)
			status_led="pbx30:green:sys"
			;;
		ap7620a)
			status_led="ap7620a:blue:sys"
			;;
		dir620)
			status_led="d-link:green:wps"
			;;
		wr8305rt)
			status_led="wr8305rt:sys"
			;;
		ry01 | \
		RY-1 | \
		RY-1A)
			status_led="ry01:sys"
			;;
		RY-02)
			status_led="power:blue"
			;;
		wap120nf)
			status_led="wap120nf:power"
			;;
		rt-n15)
			status_led="rt-n15:blue:power"
			;;
		rt-n10-plus)
			status_led="asus:green:wps"
			;;
		rt-n56u | wl-330n | wl-330n3g)
			status_led="asus:blue:power"
			;;
	esac
}

set_state() {
	get_preinit_led
	get_status_led

	case "$1" in
	preinit)
		insmod leds-gpio
		preinit_led_set_timer 200 200
		;;
	failsafe)
		preinit_led_off
		status_led_set_timer 50 50
		;;
	done)
		preinit_led_off
		status_led_on
		;;
	esac
}
