#!/bin/sh

#Check binding status

#return 0 ok(bound)
#return 1 need to re-bind
#return 2 not running or error
#return 3 not bound

mkdir /tmp/thunder
rm /tmp/thunder/getsysinfo_checkbindstatus
touch /tmp/thunder/getsysinfo_checkbindstatus
wget http://localhost:9000/syswakup -O /tmp/thunder/syswakeup_checkbindstatus
wget http://localhost:9000/getsysinfo -O /tmp/thunder/getsysinfo_checkbindstatus
ret=$(cat /tmp/thunder/getsysinfo)
if [ "$ret" != "" ]; then
	ret=$(cat /tmp/thunder/getsysinfo_checkbindstatus | cut -d "," -f5 | cut -d "\"" -f2)
  bounduser=$(cat /tmp/thunder/getsysinfo_checkbindstatus | cut -d "," -f8 | cut -d "\"" -f2)
	if [  "$ret" == ""  -a "$bounduser" != "" ]; then
    #(已绑定""$bounduser"")
		ret="0"
	elif [ "$ret" == ""  -a "$bounduser" == "" ]; then
    #迅雷远程未连接
    ret="1"
  elif [ "$ret" != ""  -a "$bounduser" == "" ]; then
    ret="3"
  else
      #ret!="" && bounduser!=""
      #迅雷远程连接错误
    ret="2"
  fi
else
  #迅雷远程未启动
	ret="2"
fi
echo $ret
exit 0