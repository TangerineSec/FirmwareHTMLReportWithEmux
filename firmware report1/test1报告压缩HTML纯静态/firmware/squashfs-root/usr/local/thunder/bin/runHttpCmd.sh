#!/bin/sh

#Run Http Command

G_FULL_URL=$1

Main()
{
    uuid=$(cat /proc/sys/kernel/random/uuid)
    wget ${G_FULL_URL} -O /tmp/thunder/tmp_runhttpcmd_${uuid}
    ret=$(cat /tmp/thunder/tmp_runhttpcmd_${uuid})
    rm -f /tmp/thunder/tmp_runhttpcmd_${uuid}
    echo ${ret}
    exit 0
}

Main