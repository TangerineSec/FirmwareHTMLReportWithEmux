#!/bin/sh
cmd="-l L -s 6 -o /www/luci-static/bootstrap/2wei.png http://www.xcloud.cc/download.html?code="
echo $cmd
/usr/local/xcloud/bin/qrencode $cmd$1
