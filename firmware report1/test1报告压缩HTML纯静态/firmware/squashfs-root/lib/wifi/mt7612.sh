#!/bin/sh
append DRIVERS "mt7612"

. /lib/wifi/ralink_common.sh

prepare_mt7612() {
	prepare_ralink_wifi rai0
}

scan_mt7612() {
	scan_ralink_wifi rai0 mt76x2e
}

disable_mt7612() {
	disable_ralink_wifi rai0
}

enable_mt7612() {
	enable_ralink_wifi rai0
}

detect_mt7612() {
	detect_ralink_wifi rai0 mt76x2e
}
