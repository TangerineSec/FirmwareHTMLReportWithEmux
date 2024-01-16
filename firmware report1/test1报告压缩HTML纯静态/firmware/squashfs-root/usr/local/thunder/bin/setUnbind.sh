#!/bin/sh

#Unbind activiation code

wget http://localhost:9000/unbind -O /tmp/thunder/unbind.log > /dev/null
/usr/local/thunder/appshell stop > /dev/null
sleep 1

rm -f /usr/local/thunder/cfg/etm.cfg > /dev/null
rm -f /usr/local/thunder/cfg/download.cfg > /dev/null
rm -f /usr/local/thunder/cfg/*cid* > /dev/null

/usr/local/thunder/appshell start > /dev/null
sleep 1
wget http://localhost:9000/unbind -O /tmp/thunder/unbind.log > /dev/null
/usr/local/thunder/appshell stop > /dev/null
sleep 1
rm -f /mnt/sd??/ThunderDB/* > /dev/null

/usr/local/thunder/appshell start > /dev/null

sleep 1
wget http://localhost:9000/unbind -O /tmp/thunder/unbind.log > /dev/null

echo "0"
exit 0
