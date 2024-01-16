#!/bin/sh

pt_conf(){
	p_speed=`userconfig -read PAN_TILT Pan_Speed`
	t_speed=`userconfig -read PAN_TILT Tilt_Speed`
	p_step=`userconfig -read PAN_TILT Pan_Step`
	t_step=`userconfig -read PAN_TILT Tilt_Step`
	scan_speed=`userconfig -read PAN_TILT Scan_Speed`
	stay_time=`userconfig -read PAN_TILT Stay_Time`
	/usr/sbin/ptctrl -h -speed=$p_speed
	/usr/sbin/ptctrl -v -speed=$t_speed
	/usr/sbin/ptctrl -h -step=$p_step
	/usr/sbin/ptctrl -v -step=$t_step
	/usr/sbin/ptctrl -h -scanspeed=$scan_speed
	/usr/sbin/ptctrl -pstay=$stay_time
	echo "PT reload conf finished"
}

pt_ini(){
	pt_conf
	for i in 0 1 2 3 4 5 6 7
	do
		pan=`userconfig -read PAN_TILT PositionPan$i`
		tilt=`userconfig -read PAN_TILT PositionTilt$i`
		/usr/sbin/ptctrl -h -presetpos$i=$pan
		/usr/sbin/ptctrl -v -presetpos$i=$tilt
	done
	echo "PT reload preset finished"
	/usr/sbin/ptctrl -a -reset
	echo "PT reset finished"
	sleep 10
	
	startup=`userconfig -read PAN_TILT StartUp`
	echo "start up preset[0-8]: " $startup
	if [ "$startup" -ge 1 -a  "$startup" -le 8 ]; then
		/usr/sbin/ptctrl -preset=$(($startup-1))
	fi
}

case "$1" in
	saveconf)
		pt_conf
		;;
	*)
		pt_ini
		;;
esac
exit $?
