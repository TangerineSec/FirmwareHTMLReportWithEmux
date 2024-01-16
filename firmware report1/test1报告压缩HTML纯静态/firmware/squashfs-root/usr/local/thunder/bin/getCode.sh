#!/bin/sh

#Get activiation code

mkdir /tmp/thunder
rm /tmp/thunder/getsysinfo
touch /tmp/thunder/getsysinfo
wget http://localhost:9000/getsysinfo -O /tmp/thunder/getsysinfo
actcode=$(cat /tmp/thunder/getsysinfo)
if [ "$actcode" != "" ]; then
	actcode=$(cat /tmp/thunder/getsysinfo | cut -d "," -f5 | cut -d "\"" -f2)
  bounduser=$(cat /tmp/thunder/getsysinfo | cut -d "," -f8 | cut -d "\"" -f2)
	if [  "$actcode" == ""  -a "$bounduser" != "" ]; then
    #(已绑定""$actcode"")
		actcode="(已绑定""$actcode"")"
	elif [ "$actcode" == ""  -a "$bounduser" == "" ]; then
    #迅雷远程未连接
    actcode=""
  elif [ "$actcode" != ""  -a "$bounduser" == "" ]; then
    nothing=""
  else
      #actcode!="" && bounduser!=""
      #迅雷远程连接错误
    actcode=""
  fi
else
  #迅雷远程未启动
	actcode=""
fi
echo $actcode