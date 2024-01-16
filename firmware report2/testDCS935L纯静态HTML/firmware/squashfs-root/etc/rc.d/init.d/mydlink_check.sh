#!/bin/sh

md5sum="/usr/sbin/md5sum"
md5list="/home/mydlink_md5.txt"
default_agent_package="/home/mydlink.tgz"
mydlink_root="/mydlink"

version_show()
{
	version=`cat $mydlink_root/version|cut -d '=' -f 2`
	/usr/bin/logger -t ipcam "mydlink version: $version"
	echo "mydlink version: $version"
}

md5check()
{
	check_ret=0
	while read line; do
		file=`echo $line|cut -d ' ' -f 2`
		md5=`echo $line|cut -d ' ' -f 1`

		v=`$md5sum /mydlink/$file`
		if [ "$md5" == "$v" ]; then
			echo "    $file [ok]"
		else
			echo "    $file [fail]"
			check_ret=1
		fi
	done < $md5list
	return $check_ret
}

echo "check mydlink agent ..."
md5check
if [ $? == 0 ]; then
	version_show
else
	echo -n "re-install mydlink agent ... "
	rm -rf $mydlink_root/*
	tar -xzf $default_agent_package -C $mydlink_root
	echo "done"
	echo "  re-check mydlink agnet ..."
	md5check
	if [ $? == 0 ]; then
		version_show
	fi
fi

