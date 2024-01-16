# this file will be included in 
# 	/lib/wifi/mt{chipname}.sh

repair_wireless_uci() {
	echo "repair_wireless_uci" >> /tmp/mt76xx.sh.log
	vifs=`uci show wireless | grep "=wifi-iface" | sed -n "s/=wifi-iface//gp"`
	echo $vifs >> /tmp/mt76xx.sh.log

	ifn5g=0
	ifn2g=0
	for vif in $vifs; do
		local netif nettype device netif_new
		echo  "<<<<<<<<<<<<<<<<<" >> /tmp/mt76xx.sh.log
		netif=`uci -q get ${vif}.ifname`
		nettype=`uci -q get ${vif}.network`
		device=`uci -q get ${vif}.device`
		if [ "$device" == "" ]; then
			echo "device cannot be empty!!" >> /tmp/mt76xx.sh.log
			return
		fi
		echo "device name $device!!" >> /tmp/mt76xx.sh.log
		echo "netif $netif" >> /tmp/mt76xx.sh.log
		echo "nettype $nettype" >> /tmp/mt76xx.sh.log
	
		case "$device" in
			mt7620 | mt7602 )
				netif_new="ra"${ifn2g}
				ifn2g=$(( $ifn2g + 1 ))
				;;
			mt7610 | mt7612 )
				netif_new="rai"${ifn5g}
				ifn5g=$(( $ifn5g + 1 ))
				;;
			* )
				echo "device $device not recognized!! " >> /tmp/mt76xx.sh.log
				;;
		esac					
	
		echo "ifn5g = ${ifn5g}, ifn2g = ${ifn2g}" >> /tmp/mt76xx.sh.log
		echo "netif_new = ${netif_new}" >> /tmp/mt76xx.sh.log
			
		if [ "$netif" == "" ]; then
			echo "ifname empty, we'll fix it with ${netif_new}" >> /tmp/mt76xx.sh.log
			uci -q set ${vif}.ifname=${netif_new}
		fi
		if [ "$nettype" == "" ]; then
			nettype="lan"
			echo "nettype empty, we'll fix it with ${nettype}" >> /tmp/mt76xx.sh.log
			uci -q set ${vif}.network=${nettype}
		fi
		echo  ">>>>>>>>>>>>>>>>>" >> /tmp/mt76xx.sh.log
    done
	uci changes >> /tmp/mt76xx.sh.log
	uci commit
}


sync_uci_with_dat() {
	echo "sync_uci_with_dat($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	local device="$1"
	local datpath="$2"
	local needreinit=0
	config_get vifs "$device" vifs
	config_get channel $device channel
	config_get hidessid $device hidessid
	config_get macpolicy $device macpolicy
	config_get maclist $device maclist
	[ "$channel" = "auto" ] && {
		channel=0
	}
	sed -i "s/Channel=.*$/Channel=${channel}/g" ${datpath}
	if [ "$channel" = "0" ];then
		sed -i "s/AutoChannelSelect=\([0-9]\)/AutoChannelSelect=2/g" ${datpath}
	else
		sed -i "s/AutoChannelSelect=\([0-9]\)/AutoChannelSelect=0/g" ${datpath}
	fi
	sed -i "s/HideSSID=\([0-9]\)/HideSSID=${hidessid}/g" ${datpath}
	if [ "$macpolicy" == "allow" ]; then
		ra_macpolicy=1
	elif [ "$macpolicy" == "reject" ]; then
		ra_macpolicy=2
	else
		ra_macpolicy=0
	fi
	sed -i "s/AccessPolicy0=\([0-9]\)/AccessPolicy0=${ra_macpolicy}/g" ${datpath}
	sed -i "s/AccessControlList0=/AccessControlList0=${maclist}/g" ${datpath}
	local i=0
	for vif in $vifs; do
		config_get ssid_uci $vif ssid
		i=$(( $i + 1 ))
		ssid_dat=`sed -n -r "s/SSID${i}=([0-9]*)/\1/p" ${datpath}`
		echo "vif=$vif, ssid_uci=${ssid_uci}, ssid_dat=${ssid_dat}" >> /tmp/mt76xx.sh.log
		if [ "${ssid_uci}" != "${ssid_dat}" ]; then
			sed -i "s/SSID${i}=.*$/SSID${i}=${ssid_uci}/g" ${datpath}
		fi
	done
	nn=`sed -n -r "s/(BssidNum=)([0-9]+)/\2/p" ${datpath}`
	sed -i "s/BssidNum=\([0-9]\)/BssidNum=${i}/g" ${datpath}
	echo "uci vif n=$i,  dat ssid n=${nn}" >> /tmp/mt76xx.sh.log

	if [ "$nn" != "$i" ]; then
		return 1
	fi
	return 0

}



# $1=device, $2=module
reinit_wifi() {
	echo "reinit_wifi($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	local device="$1"
	config_get vifs "$device" vifs
	for vif in $vifs; do
		config_get ifname $vif ifname
		ifconfig $ifname down
	done
	#for ifn in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do
	#       echo "ifconfig ${1}${ifn} down"
	#	ifconfig ${1}${ifn} down
	#done
	echo "rmmod $2" >> /tmp/mt76xx.sh.log
	rmmod $2
	echo "insmod $2" >> /tmp/mt76xx.sh.log
	insmod $2
	for vif in $vifs; do
		config_get ifname $vif ifname
		config_get disabled $vif disabled
		if [ "$disabled" == "1" ]; then
			continue
		else
			ifconfig $ifname up
		fi
	done
	#for ifn in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do
	#       echo "ifconfig ${1}${ifn} up" >> /tmp/mt76xx.sh.log
	#	ifconfig ${1}${ifn} up
	#done

}

prepare_ralink_wifi() {
	echo "prepare_ralink_wifi($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	local device=$1
	config_get channel $device channel
	config_get ssid $2 ssid
	config_get mode $device mode
	config_get ht $device ht
	config_get country $device country
	config_get regdom $device regdom

	# HT40 mode can be enabled only in bgn (mode = 9), gn (mode = 7)
	# or n (mode = 6).
	HT=0
	[ "$mode" = 6 -o "$mode" = 7 -o "$mode" = 9 ] && [ "$ht" != "20" ] && HT=1

	# In HT40 mode, a second channel is used. If EXTCHA=0, the extra
	# channel is $channel + 4. If EXTCHA=1, the extra channel is
	# $channel - 4. If the channel is fixed to 1-4, we'll have to
	# use + 4, otherwise we can just use - 4.
	EXTCHA=0
	[ "$channel" != auto ] && [ "$channel" -lt "5" ] && EXTCHA=1
	
}

scan_ralink_wifi() {
	local device="$1"
	local module="$2"
	echo "scan_ralink_wifi($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	repair_wireless_uci
	config_get type $device type
	sync_uci_with_dat $device /etc/Wireless/$type/$type.dat
	if [ "$?" == "1" ]; then
		echo "rmmod-insmod $module driver!" >> /tmp/wifi.log
		reinit_wifi $device $module
	fi

}

disable_ralink_wifi() {
	echo "disable_ralink_wifi($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	local device="$1"
	config_get vifs "$device" vifs
	for vif in $vifs; do
		config_get ifname $vif ifname
		ifconfig $ifname down
	done

	# kill any running ap_clients
	killall ap_client || true
}

enable_ralink_wifi() {
	echo "enable_ralink_wifi($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	local device="$1" dmode channel
	config_get dmode $device mode
	config_get channel $device channel
	config_get vifs "$device" vifs
#	config_get disabled "$device" disabled
#	[ "$disabled" == "1" ] && return
	for vif in $vifs; do
		local ifname encryption key ssid mode hidden
		config_get ifname $vif ifname
		[ "$ifname" == "ra0" ] &&  prepare_$device $device $vif
		config_get encryption $vif encryption
		config_get key $vif key
		config_get ssid $vif ssid
#		config_get wpa_crypto $vif wpa_crypto
		config_get hidden $vif hidden
		config_get mode $vif mode
		config_get wps $vif wps
		config_get isolate $vif isolate
		config_get disabled $vif disabled
		if [ "$disabled" == "1" ]; then
			continue
		else
			ifconfig $ifname up
		fi

		# Skip this interface if no SSID was configured
		[ "$ssid" -a "$ssid" != "off" ] || continue

		[ "$mode" == "sta" ] && {
			case "$encryption" in
				WEP|wep)
					# $key contains the key index,
					# so lookup the actual key to
					# use
					config_get key $vif "key$key"
					;;
			esac
			ap_client "$ssid" "$key" >/dev/null 2>/dev/null </dev/null &
		}
		[ "$mode" == "sta" ] || {
			[ "$dmode" == "6" ] && wpa_crypto="aes"
			ifconfig $ifname up
			case "$encryption" in
				psk*|wpa*|WPA*|Mixed|mixed)
					local enc="OPEN"
					local crypto="NONE"
					case "$encryption" in
					    *mixed*|*Mixed*) enc=WPAPSKWPA2PSK crypto=TKIPAES;;
					    psk2*|WPA2|wpa2) enc=WPA2PSK crypto=TKIPAES;;
					    psk*|WPA|WPA1|wpa|wpa1) enc=WPAPSK crypto=TKIPAES;;
					esac
					case "$encryption" in
					    *tkip+ccmp) crypto=TKIPAES;;
					    *tkip) crypto=TKIP;;
					    *ccmp) crypto=AES;;
					esac
					iwpriv $ifname set AuthMode=$enc
					iwpriv $ifname set EncrypType=$crypto
					iwpriv $ifname set IEEE8021X=0
					iwpriv $ifname set "SSID=${ssid}"
					iwpriv $ifname set "WPAPSK=${key}"
#					iwpriv $ifname set DefaultKeyID=2
					iwpriv $ifname set "SSID=${ssid}"
#					if [ "$wps" == "1" ]; then
#						iwpriv $ifname set WscConfMode=7
#					else
#						iwpriv $ifname set WscConfMode=0
#					fi
					;;
				WEP*|wep*)
					local enc="OPEN"
					local crypto="WEP"
					case "$encryption" in
					    *open) enc=OPEN;;
					    *shared) enc=SHARED;;
					esac
					iwpriv $ifname set AuthMode=$enc
					iwpriv $ifname set EncrypType=$crypto
					for idx in 1 2 3 4; do
						config_get keyn $vif key${idx}
						# openwrt add prefix "s:" to wep key to indicate ASCII mode
						keyn=${keyn#*s:}
						[ -n "$keyn" ] && iwpriv $ifname set "Key${idx}=${keyn}"
					done
					iwpriv $ifname set DefaultKeyID=${key}
					iwpriv $ifname set "SSID=${ssid}"
					iwpriv $ifname set WscConfMode=0
					iwpriv $ifname set WscModeOption=0
					;;
				none|open)
					iwpriv $ifname set AuthMode=OPEN
					iwpriv $ifname set EncrypType=NONE
					iwpriv $ifname set WscConfMode=0
					;;
			esac
		}

		local net_cfg bridge
		net_cfg="$(find_net_config "$vif")"
		[ -z "$net_cfg" ] || {
			bridge="$(bridge_interface "$net_cfg")"
			config_set "$vif" bridge "$bridge"
			start_net "$ifname" "$net_cfg"
		}

		# If isolation is requested, disable forwarding between
		# wireless clients (both within the same BSSID and
		# between BSSID's, though the latter is probably not
		# relevant for our setup).
		iwpriv $ifname set NoForwarding="${isolate:-0}"
		iwpriv $ifname set NoForwardingBTNBSSID="${isolate:-0}"

		set_wifi_up "$vif" "$ifname"
		
		iwpriv $ifname set Channel=$channel
	done
}

detect_ralink_wifi() {
	echo "detect_ralink_wifi($1,$2,$3,$4)" >> /tmp/mt76xx.sh.log
	local channel
	local device="$1"
	local module="$2"
	local ifname
	cd /sys/module/
	[ -d $module ] || return
	config_get channel $device channel
	[ -z "$channel" ] || return
	case "$device" in
		mt7620 | mt7602 )
			ifname="ra0"
			;;
		mt7610 | mt7612 )
			ifname="rai0"
			;;
		* )
			echo "device $device not recognized!! " >> /tmp/mt76xx.sh.log
			;;
	esac					
	cat <<EOF
config wifi-device	$device
	option type     $device
	option vendor   ralink
	option channel  auto

config wifi-iface
	option device   $device
	option ifname	$ifname
	option network  lan
	option mode     ap
	option ssid OpenWrt-$device
	option encryption wpa2
	option key      12345678
EOF
}



