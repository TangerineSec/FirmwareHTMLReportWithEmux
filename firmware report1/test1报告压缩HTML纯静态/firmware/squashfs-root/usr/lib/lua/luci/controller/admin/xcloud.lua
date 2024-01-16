
module("luci.controller.admin.xcloud", package.seeall) 

require "luci.http"
require "luci.template"
require 'luci.sys'

function index()
	entry({"admin", "xcloud"},template("admin_xcloud/xcloud"))

	entry({"admin", "xcloud", "refresh"},call("refresh"))

	entry({"admin","xcloud","showimg"},call("showimg"),nil)
	entry({"admin","xcloud","appsbanner"},call("appsbanner"),nil)
	entry({"admin","xcloud","mask"},call("mask"),nil)

	entry({"admin", "xcloud", "xcloudstatus"},template("admin_xcloud/xcloudstatus"))
	entry({"admin", "xcloud", "pluginstatus"},template("admin_xcloud/appsbanner"))

	entry({"admin", "xcloud","macfilter"},template("admin_xcloud/macfilter"),nil)
	entry({"admin", "xcloud","macfilter","macfiltersave"},call("macfiltersave"),nil)

	entry({"admin", "xcloud","qos"},template("admin_xcloud/qos"),nil)
	entry({"admin", "xcloud","qosmac"},template("admin_xcloud/qosmac"),nil)
	entry({"admin", "xcloud","qos","changeqositems"},call("changeqositems"),nil)
	entry({"admin", "xcloud","qos","qossave"},call("qossave"),nil)
	entry({"admin", "xcloud","qos","qosnetsave"},call("qosnetsave"),nil)

	entry({"admin", "xcloud","clonemac"},template("admin_xcloud/clonemac"),nil)
	entry({"admin", "xcloud","clonemac","savemacclone"},call("savemacclone"),nil)
	entry({"admin", "xcloud","clonemac","getcurmac"},call("getcurmac"),nil)	

	entry({"admin", "xcloud","restart"},template("admin_xcloud/restart"),nil)
	entry({"admin", "xcloud","restart","startrestart"},call("startrestart"),nil)

	entry({"admin", "xcloud","firmware"},template("admin_xcloud/firmware"),nil)
	entry({"admin", "xcloud","firmware","upload"},call("uploadfirmware"),nil)
	entry({"admin", "xcloud","firmware","uploading"},call("uploading"),nil)
	entry({"admin", "xcloud","firmware","onkey"},call("onkey"),nil)
	entry({"admin", "xcloud","firmware","downrate"},call("downrate"),nil)
	entry({"admin", "xcloud","firmware","downcancel"},call("downcancel"),nil)

	entry({"admin", "xcloud", "wifi"},call("wifisetup"),nil)	
	entry({"admin", "xcloud", "setupreturn"},template("admin_xcloud/setup"),nil)	
	entry({"admin", "xcloud", "wifinfo_24"},template("admin_xcloud/wireless_24"),nil)
	entry({"admin", "xcloud", "wifinfo_5"},template("admin_xcloud/wireless_5"),nil)
	
	entry({"admin", "xcloud", "usbinfo"},call('usbopt'),nil)
	entry({"admin", "xcloud", "usbinfo", "usbtimer"},call('usbtimer'),nil)
	entry({"admin", "xcloud", "usbinfo", "usbadd"},call('usbadd'),nil)
	entry({"admin", "xcloud", "usbinfo", "usbremove"},call('usbremove'),nil)
	entry({"admin", "xcloud", "usbinfo", "usbaddmain"},call('usbaddmain'),nil)
	entry({"admin", "xcloud", "usbinfo", "usbremovemain"},call('usbremovemain'),nil)
	
	entry({"admin", "xcloud", "wdsopt"},template("admin_xcloud/wdsopt"),nil)
	entry({"admin", "xcloud", "wdslist"},call('wdslist'),nil)
	entry({"admin", "xcloud", "wdsstart"},call('wdsstart'),nil)
	entry({"admin", "xcloud", "wdsturns"},call('wdsturns'),nil)
	entry({"admin", "xcloud", "wds_stop"},call('wds_stop'),nil)

	entry({"admin", "xcloud", "lan"},template("admin_xcloud/lansetup"),nil)
	entry({"admin", "xcloud", "appsetup"},template("admin_xcloud/appsetup"),nil)
	entry({"admin", "xcloud", "appsetupselect"},call('appselect'),nil)
	entry({"admin", "xcloud", "appsetup", "appchecknow"},call("appchecknow"),nil)
	entry({"admin", "xcloud", "appsetup", "appupload"},call("appupload"),nil)
	entry({"admin", "xcloud", "appsetup", "startinstall"},call("appstartinstall"),nil)
	entry({"admin", "xcloud", "appsetup", "appuninstall"},call("appuninstall"),nil)

	entry({"admin", "xcloud", "app_xcloud"},template("admin_xcloud/app_xcloud"))

	entry({"admin", "xcloud", "fastsetup"},template("admin_xcloud/fast_setup"))	

	entry({"admin", "xcloud", "fileview"}, call("file_view"),nil)
	entry({"admin", "xcloud", "fileview", "fileviewlist"}, call("fileviewlist"),nil)
	entry({"admin", "xcloud", "fileview", "downloadfile"}, call("downloadfile"),nil)
	entry({"admin", "xcloud", "fileview", "lanipaddrcheck"}, call("landownloadcheck"),nil)

	entry({"admin", "xcloud", "lansetup1"}, call("lansetup1"),nil)
	entry({"admin", "xcloud", "lansetupselect"}, call("lanselect"),nil)

	entry({"admin", "xcloud", "lansetup2dhcp"}, call("landhcp"),nil)

	entry({"admin", "xcloud", "lanipaddrsetup"}, call("lansetup"),nil)

	entry({"admin", "xcloud", "wifisafe"},call("wifiSafe"),nil)
	entry({"admin", "xcloud", "testSocket"},call("testSocket"),nil)
	entry({"admin", "xcloud", "loginout"},call("loginout"),nil)
	entry({"admin", "xcloud", "loginin"},call("loginin"),nil)
	entry({"admin", "xcloud", "wantypechange"},call("wanchange"),nil)
	entry({"admin", "xcloud", "wanchkconnect"},call("wanchkconnect"),nil)
	entry({"admin", "xcloud", "wiresetup"},call("wiresetup"),nil)
	entry({"admin", "xcloud", "orderTest"},call("orderTests"),nil)

	entry({"admin", "xcloud", "pluginssetup"},call("pluginssetup"),nil)

	------------------------¨¦€??¡±¡§??¡¯???
	entry({"admin", "xcloud", "jqscripts"},call("jqscripts"),nil)
	entry({"admin", "xcloud", "jsscripts"},call("jsscripts"),nil)
	entry({"admin", "xcloud", "comcss"},call("comcss"),nil)
	entry({"admin", "xcloud", "comimg"},call("comimg"),nil)
	entry({"admin", "xcloud", "customimg"},call("customimg"),nil)
	entry({"admin", "xcloud", "comskip"},call("comskip"),nil)
	entry({"admin", "xcloud", "comreturn"},alias("admin", "xcloud"),nil)
	entry({"admin", "xcloud", "comcmd"},call("comcmd"),nil)
	entry({"admin", "xcloud", "baidupan"},call("baidupan"),nil)

	----------------------??¡¯??? * arias
	entry({"admin", "xcloud", "arias"},call("arias"),nil)

	----------------------??¨¨?¡ã?¡À?o?
	entry({"admin", "xcloud", "getVersion"}, call("getVersion"),nil)

	----------------------??¨¨??¦Ì??¡Á¡ä¨¬?
	entry({"admin", "xcloud", "get_iso_status"}, call("get_iso_status"), nil)

	----------------------»ñÈ¡USB¸öÊý
	entry({"admin", "xcloud", "get_usb_nums"}, call("get_usb_nums"), nil)

	----------------------»ñÈ¡USBÁÐ±í
	entry({"admin", "xcloud", "get_usb_device"}, call("get_usb_device"), nil)

	----------------------»ñÈ¡USBÊÇ·ñ¹ÒÔØ
	entry({"admin", "xcloud", "get_mount_status"}, call("get_mount_status"), nil)

	----------------------¼ì²âWAN¿ÚÊÇ·ñÄÜÉÏÍøºÍ¹¤×÷×´Ì¬
	entry({"admin", "xcloud", "wan_check"}, call("wan_check"), nil)

	----------------------GBK²âÊÔ
	entry({"admin", "xcloud", "gbk_test"}, call("gbk_test"), nil)

	----------------------开关DHCP
	entry({"admin", "xcloud", "dhcp_opt"}, call("dhcp_opt"), nil)

	----------------------重启
	entry({"admin", "xcloud", "reboot_router"}, call("reboot_router"), nil)

	--------
	entry({"admin", "xcloud","setpasswd"},template("admin_xcloud/setpasswd"),nil)	
	entry({"admin", "xcloud","setpasswd","change"},call("setPassword"),nil)	

	entry({"admin", "xcloud","hardsleep"},template("admin_xcloud/hardsleep"),nil)	
	entry({"admin", "xcloud","hardsleep","change"},call("hardsleep"),nil)

	----------------------flashops
	entry({"admin", "xcloud", "flashops"}, template("admin_xcloud/flashops"), nil)
	entry({"admin", "xcloud", "flashops_reset"}, template("admin_xcloud/flashops_reset"), nil)
	entry({"admin", "xcloud", "flashops_restore"}, call("flashops_restore"), nil)

	----------------check pppd.log
	entry({"admin", "xcloud", "check_pppd"}, call("check_pppd"), nil)
end

function Split(szFullString, szSeparator)  
	local nFindStartIndex = 1  
	local nSplitIndex = 1  
	local nSplitArray = {}
	while true do  
	   local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
	   if not nFindLastIndex then  
	    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
	    break  
	   end  
	   nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
	   nFindStartIndex = nFindLastIndex + string.len(szSeparator)
	   nSplitIndex = nSplitIndex + 1  
	end  
	return nSplitArray  
end

function refresh()
	local o = {}
	o['result'] = 'success'

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function comskip()
	require "luci.http"

	local path = luci.http.formvalue('page')
	local file = nixio.fs.readfile(path)
	luci.http.write(file)
end

function comcmd()
	require  "luci.http"

	local vars = luci.http.formvalue()
	local command = ""
	local comm_para = " "

	for k,v in pairs(vars) do
		if k ~= 'cmd' then
			comm_para = comm_para .. v .. " "
		else
			command = v
		end
	end

	local data = luci.sys.exec(command..comm_para)

	local o = {}
	o['result'] = 'success'
	o['resdata'] = data or 'success'

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function arias()
	require "luci.http"
	require "luci.sys"

	local flag = luci.http.formvalue('flag')
	local o = {}
	if flag == 'init' then
		local data = luci.sys.exec('/opt/app/aria2/script/confshell current')
		o['total'] = data
	elseif flag == 'default' then
		luci.sys.exec('/opt/app/aria2/script/confshell load')
		o['result'] = 'success'
	elseif flag == 'save' then
		local dirname = luci.http.formvalue('d_dir')
		local downnum = luci.http.formvalue('d_num')
		local upspeed = luci.http.formvalue('uspeed')
		local downspeed = luci.http.formvalue('dspeed')

		luci.sys.exec('/opt/app/aria2/script/setconf '..dirname..' '..downnum..' '..upspeed..' '..downspeed)
		o['result'] = 'success'
	elseif flag == 'checkstatus' then
		local res=luci.sys.exec('/opt/app/aria2/script/confshell state')
		local tmpword = string.len(res)

		if tmpword == 3 then
			o['result'] = 'failed'
		else
			o['result'] = 'success'
		end
	elseif flag == 'stopserve' then
		local res=luci.sys.exec('/opt/app/aria2/appshell stop')

		o['result'] = 'success'
	end

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function baidupan()
	require "luci.http"
	require "luci.sys"

	local flag = luci.http.formvalue('flag')
	local path = ""
	local o = {}

	if flag == 'sync' then
		local file = ""
		
		path = "/opt/app/baidu_pan/html/sync.htm"
		file = nixio.fs.readfile(path)
		luci.http.prepare_content("text/html")
		luci.http.write(file)
	elseif flag == 'home' then
		local file = ""
		
		path = "/opt/app/baidu_pan/html/home.htm"
		file = nixio.fs.readfile(path)
		luci.http.prepare_content("text/html")
		luci.http.write(file)
	elseif flag == 'access' then
		local code = luci.http.formvalue('code')
		local res = ""

		if code ~= "" then
			-- ?¡ë¡ì¨¨??accesstoken?¡±?????¡®???¡è
			res = luci.sys.exec("/opt/app/baidu_pan/bin/getaccess.sh "..code)
			res = string.sub(res,1,string.len(res)-1)

			if res == '0' then
				o['result'] = 'success'
			end
		else
			res = luci.sys.exec("/opt/app/baidu_pan/bin/check_token.sh")
			res = string.sub(res,1,string.len(res)-1)

			if res == '0' then
				o['result'] = 'success'
			else
				o['result'] = 'failed'
			end
		end
		luci.http.prepare_content("application/json")
    	luci.http.write_json(o)
	elseif flag == 'logout' then
		path = "/opt/app/baidu_pan/html/index.htm"
	
		luci.http.prepare_content("text/html")
		file = nixio.fs.readfile(path)
		luci.http.write(file)
	elseif flag =='upload' then
		local uploaddata = luci.http.formvalue('dir')
		local t = Split(uploaddata,"////")
		
		table.remove(t)
		local str = ""
		for _,v in pairs(t) do
			luci.sys.exec('/opt/app/baidu_pan/bin/xcloudpan.sh ./xcloud_pan \"cmd=\'upload\';remotedir=\'\';localdir=\''..v..'\'\"')
		end

		local returnstr = luci.sys.exec('/opt/app/baidu_pan/bin/getuploadfiles')

		luci.sys.exec('/opt/app/baidu_pan/bin/clearuploadfiles')
		o['result'] = returnstr
		luci.http.prepare_content("application/json")
    	luci.http.write_json(o)
	elseif flag == 'download' then
		luci.sys.exec('/opt/app/baidu_pan/bin/xcloudpan.sh ./xcloud_pan \"cmd=\'down\';remotedir=\'xcloud\';localdir=\'\'\"')
		o['result'] = 'success'
		luci.http.prepare_content("application/json")
    	luci.http.write_json(o)
	end
end

function customimg()
	require "luci.http"

	local getpath = luci.http.formvalue('path')
	local path = "/opt/app/"..getpath

	local file = nixio.fs.readfile(path)
	luci.http.write(file)
end

function comimg()
	require "luci.http"

	local getpath = luci.http.formvalue('path')
	local path = "/www/luci-static/bootstrap/"..getpath

	local file = nixio.fs.readfile(path)
	luci.http.write(file)
end

function comcss()
	require "luci.http"

	local getpath = luci.http.formvalue('path')
	local path = "/opt/app/"..getpath

	local file = nixio.fs.readfile(path)
	luci.http.write(file)
end

function jsscripts()
	require "luci.http"
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local path = "/www/luci-static/resources/xcloud.js"

	local file = nixio.fs.readfile(path)
	luci.http.write(file)	
end

function jqscripts()
	require "luci.http"
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local path = "/www/luci-static/resources/jquery-1.8.2.min.js"

	local file = nixio.fs.readfile(path)
	luci.http.write(file)
end

function pluginssetup()
	require "luci.http"

	local sys = require "luci.sys"
	local fs  = require "luci.fs"	

	local path = luci.http.formvalue('path')

	path = string.sub(path,1,string.len(path)-1)

	path = path .. '/html/index.htm'

	luci.http.header("Accept-Ranges","bytes")
	luci.http.header("Content-type","text/html; charset=UTF-8")

	local file = nixio.fs.readfile(path)
	luci.http.prepare_content('text/html')

	luci.http.write(file)
end

function mask()
	require "luci.http"
	require "luci.template"
	
	local word = luci.http.formvalue('str')

	luci.template.render('admin_xcloud/mask',{content=word})
end

function getcurmac()
	local data = luci.sys.exec('cat /proc/net/arp')

	local o = {}
	o['result'] = data
	luci.http.prepare_content("application/json")
	luci.http.write_json(o)
end

function savemacclone()
	local uci = require "luci.model.uci".cursor()
	local mac = luci.http.formvalue('mac')

	local macaddr = uci.get('network','wan','macaddr') or ''
	
	luci.sys.exec("uci set network.wan.macaddr='"..mac.."'")
	luci.sys.exec('uci commit')

	local o = {}
	o['result'] = 'success'
	luci.http.prepare_content("application/json")
	luci.http.write_json(o)

	luci.sys.exec('/etc/init.d/network restart')
end

function optshowimg(id)
	require "luci.sys"
	local appsetup = luci.sys.exec('/usr/local/app/ReadInstallPlugin NEED ID IntallPath')

	local applength = string.len(appsetup)

	local appsetupdata = {}
	
	if applength ~= 3 then
		appsetupdata = Split(appsetup,"////")
	
		local tmp = {}
		local tmpimg
		for i,v in pairs (appsetupdata) do
			tmp = Split(v,",")

			if id == tmp[1] then
				tmpimg = string.sub(tmp[2],1,string.len(tmp[2])-1)
				return tmpimg
			end	
		end
	end

	return ''
end

function showimg()
	require "luci.http"
	local sys = require "luci.sys"
	local fs  = require "luci.fs"		

	local id = luci.http.formvalue('id')
    local path = optshowimg(id)

	local flag = luci.http.formvalue('small') or ''

	if (flag ~= "") then
		path = path ..  '/icon/small.png'
	else
		path = path ..  '/icon/large.jpg'
	end

	local name = fs.basename(path)
	local size = nixio.fs.stat(path).size

	luci.http.header("Accept-Ranges","bytes")
	luci.http.header("Content-type","application/octet-stream")
	luci.http.header("Content-Length",size)
	luci.http.header("Content-Disposition","attachment;filename='"..name.."';")

	local file = nixio.fs.readfile(path)
	luci.http.write(file)
end

function appstartinstall()
	require "luci.sys"
	require "luci.http"

	local flag = luci.http.formvalue('type')
	local res = ""
	local path = ""

	if flag == '1' then
		path = luci.http.formvalue('dir') or ''
		res = luci.sys.exec("/usr/local/app/xipk update ".. path)
	elseif flag == '2' then
		path = "/opt/plugins.ipkg"
		res = luci.sys.exec("/usr/local/app/xipk install ".. path)
	end 

	local o = {}
	o['result'] = res
	luci.http.prepare_content("application/json")
	luci.http.write_json(o)
	--luci.sys.exec("mtd -r write /tmp/firmware.img firmware")
end

function appuninstall()
	require "luci.sys"
	require "luci.http"

	local unid = luci.http.formvalue('uid')
	local res = ""

	res = luci.sys.exec("/usr/local/app/xipk uninstall "..unid)

	local o = {}
	o['result'] = res
	--o['result'] = unid
	luci.http.prepare_content("application/json")
	luci.http.write_json(o)
end

function appchecknow()
	local res = luci.sys.call("/usr/local/app/xipk CheckInstallRun")
	
	local o = {}
	o['result'] = tostring(res)
	luci.http.prepare_content("application/json")
	luci.http.write_json(o)	
end

function appupload()
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local image_tmp   = "/opt/plugins.ipkg"
	--local image_tmp
	local fp

	--local res = luci.sys.exec("/usr/local/app/xipk CheckInstallRun")
	local result = "success"
	
	luci.http.setfilehandler(
		function(meta, chunk, eof)
			if not fp then
				--image_tmp = "/opt/"..meta.file
				if meta and meta.name == "installplug" then
					fp = io.open(image_tmp, "w")
				else
					fp = io.popen(restore_cmd, "w")
				end
			end
			if chunk then
				fp:write(chunk)
			end
			if eof then
				fp:close()
			end
		end
	)

	if luci.http.formvalue("installplug") then
		nixio.fs.stat(image_tmp)
	end
	
	--luci.http.write(image_tmp)
	luci.http.write(result)
end

function appselect()
	require "luci.http"
	require "luci.template"
	local flag = luci.http.formvalue('choose')

	if flag == 'install' then
		luci.template.render('admin_xcloud/appsetuppart1')
	else
		luci.template.render('admin_xcloud/appsetuppart2')
	end
end

function lansetup()
	require "luci.http"
	local uci = require "luci.model.uci".cursor()
	local data = luci.http.formvalue('data')
	local o = {}

	o = Split(data,"|||")
	table.remove(o)

	uci:delete_all('dhcp','host')

	local n = {}
	for _,v in pairs(o) do
		n = Split(v,"||")

		uci:section('dhcp','host',nil,{
				name 	=n[1],
				mac 	=n[2],
				ip 		=n[3]
			})
	end
	uci:save('dhcp')
	uci:commit('dhcp')

	local a = {}
	a['result'] = 'success'
	luci.http.prepare_content("application/json")
    luci.http.write_json(a)

	luci.sys.exec('/etc/init.d/network restart')
end

function dhcp_opt()
	require "luci.http"
	local flag = luci.http.formvalue('flag')
	local uci = require "luci.model.uci".cursor()
	local o = {}

	if flag == '0' then
		luci.sys.exec('uci del dhcp.lan.start')
		luci.sys.exec('uci del dhcp.lan.limit')
		luci.sys.exec('uci del dhcp.lan.leasetime')

		luci.sys.exec("uci set dhcp.lan.ignore='1'")
	else
		luci.sys.exec("uci set dhcp.lan.start='100'")
		luci.sys.exec("uci set dhcp.lan.limit='150'")
		luci.sys.exec("uci set dhcp.lan.leasetime='12h'")	
		
		luci.sys.exec('uci del dhcp.lan.ignore')
	end

	local args = 'network,wireless,firewall,dhcp'
	local service
	local services = { }

	for service in args:gmatch("[%w_-]+") do
		services[#services+1] = service
	end

	local command = uci:apply(services, true)
	if nixio.fork() == 0 then
		local i = nixio.open("/dev/null", "r")
		local o = nixio.open("/dev/null", "w")

		nixio.dup(i, nixio.stdin)
		nixio.dup(o, nixio.stdout)

		i:close()
		o:close()

		nixio.exec("/bin/sh", unpack(command))
	else
		luci.sys.exec('sleep 6')
		local netmd = require "luci.model.network".init()
		if netmd:get_wannet() then
			o['result'] = 'success'
		else
			o['result'] = 'fail'
		end
		
		luci.http.prepare_content("application/json")
	    luci.http.write_json(o)
	end
end

function landhcp()
	require "luci.http"
	local flag = luci.http.formvalue('flag')
	local uci = require "luci.model.uci".cursor()
	local o = {}

	if flag == 'stop' then
		luci.sys.exec('uci del dhcp.lan.start')
		luci.sys.exec('uci del dhcp.lan.limit')
		luci.sys.exec('uci del dhcp.lan.leasetime')

		luci.sys.exec("uci set dhcp.lan.ignore='1'")
	else
		luci.sys.exec("uci set dhcp.lan.start='100'")
		luci.sys.exec("uci set dhcp.lan.limit='150'")
		luci.sys.exec("uci set dhcp.lan.leasetime='12h'")	
		
		luci.sys.exec('uci del dhcp.lan.ignore')
	end

	local args = 'network,wireless,firewall,dhcp'
	local service
	local services = { }

	for service in args:gmatch("[%w_-]+") do
		services[#services+1] = service
	end

	local command = uci:apply(services, true)
	if nixio.fork() == 0 then
		local i = nixio.open("/dev/null", "r")
		local o = nixio.open("/dev/null", "w")

		nixio.dup(i, nixio.stdin)
		nixio.dup(o, nixio.stdout)

		i:close()
		o:close()

		nixio.exec("/bin/sh", unpack(command))
	else
		o['result'] = 'success'
		luci.http.prepare_content("application/json")
	    luci.http.write_json(o)
	end
end

function lanselect()
	require "luci.http"
	require "luci.template"
	local flag = luci.http.formvalue('select')

	if flag == 'static' then
		luci.template.render('admin_xcloud/lansetuppart1')
	else
		luci.template.render('admin_xcloud/lansetuppart2')
	end
end

function lansetup1()
	require "luci.http"
	local uci = require "luci.model.uci".cursor()

	local ipaddr 	= luci.http.formvalue('ipaddr')
	local netmask 	= luci.http.formvalue('net')


	local o_ipaddr 	= uci.get('network','lan','ipaddr')
	local o_netmask = uci.get('network','lan','netmask')

--[[
	local o = {}
	o['result'] = o_ipaddr
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
]]
	if ipaddr ~= o_ipaddr or netmask ~= o_netmask then
		luci.sys.exec('uci set network.lan.ipaddr='..ipaddr)
		luci.sys.exec('uci set network.lan.netmask='..netmask)

		luci.sys.exec('uci commit')
		luci.sys.exec('/usr/local/localshell/updatehostip '..ipaddr)
	end

	local o = {}
	o['result'] = 'success'
	o['data'] = ipaddr
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function fork_exec(command)
	local pid = nixio.fork()
	if pid > 0 then
		return
	elseif pid == 0 then
		-- change to root dir
		nixio.chdir("/")

		-- patch stdin, out, err to /dev/null
		local null = nixio.open("/dev/null", "w+")
		if null then
			nixio.dup(null, nixio.stderr)
			nixio.dup(null, nixio.stdout)
			nixio.dup(null, nixio.stdin)
			if null:fileno() > 2 then
				null:close()
			end
		end

		-- replace with target command
		nixio.exec("/bin/sh", "-c", command)
	end
end

function macfiltersave()
	require 'luci.http'
	local flag = luci.http.formvalue('type')
	local o = {}
	local sel = 0
	local data = ' '
	local total = ""
	local t = {}
	local t1 = {}

	-- check hard version
	local hard_version = check_hard_version()

	if hard_version == 'RY-02' then
		-- stop
		if flag == '0' then
			luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy='0'")
			luci.sys.exec("uci set wireless.@wifi-device[1].macpolicy='0'")
			luci.sys.exec("uci set wireless.@wifi-device[0].maclist=' '")
			luci.sys.exec("uci set wireless.@wifi-device[1].maclist=' '")
		else
			sel = luci.http.formvalue('sel')
			data = luci.http.formvalue('tdata') or ' ';

			if data ~= '' then
				luci.sys.exec("uci set user.mfilter.macdata='"..data.."'")
			else
				luci.sys.exec("uci set user.mfilter.macdata=' '")
			end

			if sel ~= '0' then
				if sel == '1' then
					luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy=".."allow")
					luci.sys.exec("uci set wireless.@wifi-device[1].macpolicy=".."allow")
				elseif sel == '2' then
					luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy=".."reject")
					luci.sys.exec("uci set wireless.@wifi-device[1].macpolicy=".."reject")
				end

				t = Split(data,"||||")
				for _,v in ipairs(t) do
					t1 = Split(v,"|||")
					if t1[3] ~= '0' then
						if total == "" then
							total = t1[1];
						else
							total = total .. ";"..t1[1];
						end
					end
				end

				if total ~= "" then
					luci.sys.exec("uci set wireless.@wifi-device[0].maclist='"..total.."'")
					luci.sys.exec("uci set wireless.@wifi-device[1].maclist='"..total.."'")
				else
					luci.sys.exec("uci set wireless.@wifi-device[0].maclist=' '")
					luci.sys.exec("uci set wireless.@wifi-device[1].maclist=' '")
				end
			else
				luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy='0'")
				luci.sys.exec("uci set wireless.@wifi-device[1].macpolicy='0'")
				luci.sys.exec("uci set wireless.@wifi-device[0].maclist=' '")
				luci.sys.exec("uci set wireless.@wifi-device[1].maclist=' '")
			end
		end
	else
		-- stop
		if flag == '0' then
			luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy='0'")
			luci.sys.exec("uci set wireless.@wifi-device[0].maclist=' '")
		else
			sel = luci.http.formvalue('sel')
			data = luci.http.formvalue('tdata') or ' ';

			if data ~= '' then
				luci.sys.exec("uci set user.mfilter.macdata='"..data.."'")
			else
				luci.sys.exec("uci set user.mfilter.macdata=' '")
			end

			if sel ~= '0' then
				if sel == '1' then
					luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy=".."allow")
				elseif sel == '2' then
					luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy=".."reject")
				end

				t = Split(data,"||||")
				for _,v in ipairs(t) do
					t1 = Split(v,"|||")
					if t1[3] ~= '0' then
						if total == "" then
							total = t1[1];
						else
							total = total .. ";"..t1[1];
						end
					end
				end

				if total ~= "" then
					luci.sys.exec("uci set wireless.@wifi-device[0].maclist='"..total.."'")
				else
					luci.sys.exec("uci set wireless.@wifi-device[0].maclist=' '")
				end
			else
				luci.sys.exec("uci set wireless.@wifi-device[0].macpolicy='0'")
				luci.sys.exec("uci set wireless.@wifi-device[0].maclist=' '")
			end
		end
	end

	luci.sys.exec('uci commit')

	-- 5 or 24
	local device_24 = luci.sys.exec('uci get wireless.@wifi-iface[0].device')
	local disabled_24 = luci.sys.exec('uci get wireless.@wifi-iface[0].disabled') or ''
	local device_5 = luci.sys.exec('uci get wireless.@wifi-iface[1].device')
	local disabled_5 = luci.sys.exec('uci get wireless.@wifi-iface[1].disabled') or ''

	if disabled_24 == '' and disabled_5 == '' then
		luci.sys.exec('/sbin/wifi down')
		luci.sys.exec('/sbin/wifi up')
	elseif disabled_24 == '1' and disabled_5 == '' then
		luci.sys.exec('/sbin/wifi up '..device_24)
		luci.sys.exec('/sbin/wifi down '..device_5)
		luci.sys.exec('/sbin/wifi up '..device_5)
	elseif disabled_24 == '' and disabled_5 == '1' then
		luci.sys.exec('/sbin/wifi up '..device_5)
		luci.sys.exec('/sbin/wifi down '..device_24)
		luci.sys.exec('/sbin/wifi up '..device_24)
	end
	
	o['result'] = 'success'
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function downcancel()
	local o = {}
	luci.sys.exec('/usr/local/localshell/download abort')
	o['result'] = 'success'
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)	
end

function downrate()
	require "io"
	local f = io.open("/tmp/wget_firmware_result","r")
	local t = {}

	for line in f:lines() do
		table.insert(t,line)
	end
	
	f:close()
	
	local o = {}
	o['result'] = t[#t]
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)	
end

function onkey()
	local o = {}
	local uri = luci.http.formvalue('url') or ''

	if uri == "" then
		o['result'] = 'empty'
	else
		local res = luci.sys.exec('/usr/local/localshell/download '..uri)
		o['result'] = res
	end

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)	
end

function uploading()
	require "luci.sys"
	require "luci.http"

	local image_tmp = "/tmp/firmware.img"
	local keep = luci.http.formvalue('kp')
	--luci.sys.exec("mtd -r write /tmp/firmware.img firmware")
	fork_exec("killall dropbear uhttpd; sleep 1; /sbin/sysupgrade %s %q" %{ keep, image_tmp })
end

function uploadfirmware()
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local upgrade_avail = nixio.fs.access("/lib/upgrade/platform.sh")
	local reset_avail   = os.execute([[grep '"rootfs_data"' /proc/mtd >/dev/null 2>&1]]) == 0

	local restore_cmd = "tar -xzC/ >/dev/null 2>&1"
	local backup_cmd  = "sysupgrade --create-backup - 2>/dev/null"
	local image_tmp   = "/tmp/firmware.img"

	local function image_supported()
		-- XXX: yay...
		return ( 0 == os.execute(
			". /lib/functions.sh; " ..
			"include /lib/upgrade; " ..
			"platform_check_image %q >/dev/null"
				% image_tmp
		) )
	end

	local function image_checksum()
		return (luci.sys.exec("md5sum %q" % image_tmp):match("^([^%s]+)"))
	end

	local function storage_size()
		local size = 0
		if nixio.fs.access("/proc/mtd") then
			for l in io.lines("/proc/mtd") do
				local d, s, e, n = l:match('^([^%s]+)%s+([^%s]+)%s+([^%s]+)%s+"([^%s]+)"')
				if n == "linux" or n == "firmware" then
					size = tonumber(s, 16)
					break
				end
			end
		elseif nixio.fs.access("/proc/partitions") then
			for l in io.lines("/proc/partitions") do
				local x, y, b, n = l:match('^%s*(%d+)%s+(%d+)%s+([^%s]+)%s+([^%s]+)')
				if b and n and not n:match('[0-9]') then
					size = tonumber(b) * 1024
					break
				end
			end
		end
		return size
	end

	local fp
	luci.http.setfilehandler(
		function(meta, chunk, eof)
			if not fp then
				if meta and meta.name == "image" then
					fp = io.open(image_tmp, "w")
				else
					fp = io.popen(restore_cmd, "w")
				end
			end
			if chunk then
				fp:write(chunk)
			end
			if eof then
				fp:close()
			end
		end
	)

	if luci.http.formvalue("image") then
		if image_supported() then
			image_checksum()
			storage_size()
			nixio.fs.stat(image_tmp)
		end
	end
	
	local res = luci.sys.exec("/sbin/sysupgrade -C "..image_tmp)

	local res1 = ""
	if res == "" then
		res1 = "1";
	else
		res1 = "2";
	end

	--luci.http.prepare_content("text/xml")
	luci.http.write(res1)
end

function wifisetup()
	require "luci.template"

	luci.template.render("admin_xcloud/wansetup")
end

function DelS(s)
        assert(type(s)=="string")
        return s:match("^%s+(.-)%s+$")
end

function wds_stop()
	require 'luci.http'
	require 'luci.sys'
	local uci = require "luci.model.uci".cursor()

	luci.sys.exec('/usr/local/localshell/wds stop')
	luci.sys.exec('sleep 1')
	luci.sys.exec('/usr/local/localshell/wds stat')

	local wds_enable = uci.get('wireless', 'wds', 'enable')
	local o = {}

	luci.sys.exec('sleep 5')

	if wds_enable == '0' then
		o['result'] = 'success'
	else
		o['result'] = 'fail'
	end
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function wdsturns()
	require 'luci.http'
	require 'luci.template'
	local flag = luci.http.formvalue('type')

	if tostring(flag) == 'start' then
		luci.template.render('admin_xcloud/wdson')
	else
		luci.template.render('admin_xcloud/wdsoff')
	end
end

function wdsstart()
	require 'luci.http'
	require 'luci.sys'

	local ssid = luci.http.formvalue('ssid') or ''
	local bssid	= luci.http.formvalue('bssid') or ''
	local channel = luci.http.formvalue('channel') or ''
	local authmode = luci.http.formvalue('authmode') or ''
	local encryptype = luci.http.formvalue('encryptype') or ''
	local codeval = luci.http.formvalue('codeval') or ''

	if string.lower(encryptype) == 'wep' then
		luci.sys.exec('/usr/local/localshell/wds start '..ssid..' '..bssid..' '..channel..' '..authmode..' '..encryptype..' '..codeval..' 1')
	else
		luci.sys.exec('/usr/local/localshell/wds start '..ssid..' '..bssid..' '..channel..' '..authmode..' '..encryptype..' '..codeval)
	end

	luci.sys.exec('sleep 1')
	luci.sys.exec('/usr/local/localshell/wds stat')

	local uci = require "luci.model.uci".cursor()
	local wds_stat = uci.get('wireless','wds','stat') or '0'
	local o = {}

	if wds_stat == '1' then
		o['result'] = 'success'
	else
		o['result'] = 'fail'
	end
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function wdslist()
	require 'luci.template'

	luci.template.render("admin_xcloud/wdslist")
end

function wdsopt()
	require 'luci.http'
	require 'luci.template'
	local uci = require "luci.model.uci".cursor()

	local data = {}
	data['enable'] = uci.get('wireless','wds','enable') or ''
	data['ssid'] = uci.get('wireless','wds','ssid') or ''
	data['bssid'] = uci.get('wireless','wds','bssid') or ''
	data['singal']= uci.get('wireless','wds','singal') or ''
	data['channel']= uci.get('wireless','wds','channel') or ''
	data['encryptype']= uci.get('wireless','wds','encryptype') or ''

	luci.template.render("admin_xcloud/wdsopt",{datas=data})
end

function usbremovemain()
	require 'luci.http'
	require 'luci.common'

	local device=luci.http.formvalue('dev')

	local res=luci.sys.exec('/usr/local/localshell/usb-mount remove '..device)
	res = luci.common.trim(res)
	res = luci.http.urldecode(res)
	
	local o = {}
	o['result'] = res
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function usbaddmain()
	require 'luci.http'
	require 'luci.sys'

	local res1=luci.sys.exec('/usr/local/localshell/usbdevice')
	local len=0
	--?|??????¡ë???¨¨?????????¡ã¡À???¨¦?¡è?????€??a??????
	local tmp=Split(res1,"/////")
	if tmp[3] ~= 'NULL' then
		luci.sys.exec('/usr/local/localshell/usb-mount remove '..tmp[3])
	end

	local device=luci.http.formvalue('dev')

	local res=luci.sys.exec('/usr/local/localshell/usb-mount add '..device)
	len=string.len(res)

	local o = {}
	o['result'] = len
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function usbadd()
	require 'luci.sys'
	require 'luci.http'

	luci.sys.exec('/usr/local/localshell/usb-mount add')

	local n = {}

	luci.http.prepare_content("application/json")
    luci.http.write_json(n)
end

function usbremove()
	require 'luci.sys'
	require 'luci.http'

	local n = {}

	luci.sys.exec('/usr/local/localshell/usb-mount remove')

	luci.http.prepare_content("application/json")
    luci.http.write_json(n)
end

function usbopt()
	--[[require 'luci.template'
	require 'luci.sys'

	--3?¨º??¡¥ ??¨¨?¨¦¨¨¡À?¨ºy¨¢?
	local return_table = ''
	local device_count = luci.sys.exec('/usr/local/localshell/usbdevice num')

	--1y??
	require "luci.common"
	device_count = luci.common.trim(device_count)

	--¨¨?1?¨¦¨¨¡À?¨ºy¨¢?2??aNULL
	if device_count ~= 'NULL' then
		return_table = luci.sys.exec('/usr/local/localshell/usbdevice info')
	end]]--

	luci.template.render("admin_xcloud/usbopt", nil, nil)
end

function usbtimer()
	require 'luci.template'
	require 'luci.sys'
	require 'luci.http'

	local content = luci.sys.exec('/usr/local/localshell/usbdevice')
	local n = {}

	if content ~= "" then
		local o = Split(content,'////')
		n['optname'] = o[1]
		n['status'] = string.sub(o[2],1,string.len(o[2])-1)
	else
		n['optname'] = ""
	end

	luci.http.prepare_content("application/json")
    luci.http.write_json(n)
end

function file_view()
	require "luci.template"
	require 'luci.sys'
	require 'luci.http'

	local files = ""
	local filesName = ""
	local status = ""

	local content = luci.sys.exec('/usr/local/localshell/usbdevice')

	local tmplen = string.len(content)

	if tmplen ~= 5 then
	
		local o = Split(content,'/////')

		if "NULL" ~= o[3] then
			status = 'Mounted'
			filesName = o[1]

			files = luci.sys.exec('/usr/local/localshell/usbdir BASE')
			local fileall ={}
			fileall = Split(files,"||||")
			table.remove(fileall)
			files = fileall
		end
	end

	luci.template.render("admin_xcloud/fileview",{filecontent=files,flag=status,filename=filesName},nil)
end

function fileviewlist()
	require "luci.template"
	require "luci.http"
	require "luci.sys"

	local path = luci.http.formvalue("path")
	local files = ""

	if path == "" then
		files = luci.sys.exec('/usr/local/localshell/usbdir BASE')
	else
		files = luci.sys.exec('/usr/local/localshell/usbdir DIR '..path)
	end

	local fileall ={}
	fileall = Split(files,"||||")
	table.remove(fileall)
	files = fileall	

	luci.template.render("admin_xcloud/fileviewlist",{filecontent=files})
end

function landownloadcheck()
	require "luci.http"
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local path = luci.http.formvalue('npath') or ""
	local rootpath = luci.sys.exec('/usr/local/localshell/usbdir ROOTER')
	rootpath = string.sub(rootpath,1,string.len(rootpath)-1)	
	path = rootpath.."/"..path
	local name = fs.basename(path)
	local size = nixio.fs.stat(path).size

	local o ={}
	if size <= 5242880 then
		o['result'] = "yes"
	else
		o['result'] = "no"
	end
	
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function downloadfile()
	require "luci.http"
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local path = luci.http.formvalue('npath') or ""
	local rootpath = luci.sys.exec('/usr/local/localshell/usbdir ROOTER')
	rootpath = string.sub(rootpath,1,string.len(rootpath)-1)	
	path = rootpath.."/"..path
	local name = fs.basename(path)
	local size = nixio.fs.stat(path).size

	if size <= 5242880 then
		luci.http.header("Accept-Ranges","bytes")
		luci.http.header("Content-type","application/octet-stream")
		luci.http.header("Content-Length",size)
		luci.http.header("Content-Disposition","attachment;filename='"..name.."';")

		local file = nixio.fs.readfile(path)
		luci.http.write(file)
	else
		luci.http.write("?¨C????¨¨???¡è¡ì???¨¨¡¥¡¤?¡±¡§SAMBA???¨¨??")
	end
--[[
	local o = {}

	o['result'] = "success"
	
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)	]]
end

function wiresetup()
	local h = require "luci.http"
	local wire_status 	= h.formvalue("w_status")
	local wire_ssid		= h.formvalue("w_ssid")
	local wire_type		= h.formvalue("w_type")
	local wire_pwd		= h.formvalue("w_pwd")
	local wire_code_type= h.formvalue("w_code_t")
	local wire_code 	= h.formvalue("w_code")
	local wire_hide_ssid= h.formvalue("sid_hide")
	local wifi_channel	= h.formvalue("wifi_channel")
	local wifi_type		= h.formvalue("wifi_type")

	local o = {}
	local wifi_desc = ''

	if wifi_type == '0' then
		if wire_status == "open" then
			luci.sys.exec('uci del wireless.@wifi-iface[0].disabled')
		else
			luci.sys.exec('uci set wireless.@wifi-iface[0].disabled=1')
		end

		if wire_ssid ~= "" then
			luci.sys.exec('uci set wireless.@wifi-iface[0].ssid='..wire_ssid)
		end

		if wire_code_type ~= "none" then
			luci.sys.exec('uci set wireless.@wifi-iface[0].encryption='..wire_code_type)
			luci.sys.exec('uci set wireless.@wifi-iface[0].key='..wire_code)
		else
			luci.sys.exec('uci set wireless.@wifi-iface[0].encryption='..wire_code_type)
			luci.sys.exec('uci del wireless.@wifi-iface[0].key')
		end
	  
		luci.sys.exec('uci set wireless.@wifi-device[0].hidessid='..wire_hide_ssid)
		luci.sys.exec('uci set wireless.@wifi-device[0].channel='..wifi_channel)
		luci.sys.exec('uci commit')

		wifi_desc = luci.common.trim(luci.sys.exec('uci get wireless.@wifi-iface[0].device'))
	else
		if wire_status == "open" then
			luci.sys.exec('uci del wireless.@wifi-iface[1].disabled')
		else
			luci.sys.exec('uci set wireless.@wifi-iface[1].disabled=1')
		end

		if wire_ssid ~= "" then
			luci.sys.exec('uci set wireless.@wifi-iface[1].ssid='..wire_ssid)
		end

		if wire_code_type ~= "none" then
			luci.sys.exec('uci set wireless.@wifi-iface[1].encryption='..wire_code_type)
			luci.sys.exec('uci set wireless.@wifi-iface[1].key='..wire_code)
		else
			luci.sys.exec('uci set wireless.@wifi-iface[1].encryption='..wire_code_type)
			luci.sys.exec('uci del wireless.@wifi-iface[1].key')
		end
	  
		luci.sys.exec('uci set wireless.@wifi-device[1].hidessid='..wire_hide_ssid)
		luci.sys.exec('uci set wireless.@wifi-device[1].channel='..wifi_channel)
		luci.sys.exec('uci commit')

		wifi_desc = luci.common.trim(luci.sys.exec('uci get wireless.@wifi-iface[1].device'))
	end

	o['result'] = "success"
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)

    if wire_status == 'open' then
		luci.sys.exec('/sbin/wifi down '..wifi_desc)
		luci.sys.exec('/sbin/wifi up '..wifi_desc)
	else
		luci.sys.exec('/sbin/wifi down '..wifi_desc)
	end
end

function wanchkconnect()
	local netmd = require "luci.model.network".init()
	local o ={}

	if netmd:get_wannet() then
		o['result'] = 'connect'
	else
		o['result'] = 'inconnect'
	end
	--[[
	o['result'] = 'connect']]
	local nn = netmd:get_network("wan")
	o['proto'] = nn:proto()

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function wanchange()
	local h = require "luci.http"
	local uci = require "luci.model.uci".cursor()
	local type = h.formvalue("type")
	local o = {}
	local network_tb = uci:get_all("network","wan")
	local mac = uci.get('network','wan','macaddr') or ''

	if type == 'pppoe' then
		if wan_status_check() == '0' then
			o['result'] = 'error'
			luci.http.prepare_content("application/json")
		    luci.http.write_json(o)

		    return
		end
	end

	for k,v in pairs (network_tb) do
		if k ~= '.name' and k ~= 'ifname' and k ~= '.anonymous' then
			luci.sys.exec('uci del network.wan.'..k)
		end
	end

	if type == "dhcp" then
		luci.sys.exec('uci set network.wan.proto=dhcp')
	elseif type == "pppoe" then
		local name 	 = 	h.formvalue("name")
		local passwd = 	h.formvalue("pwd")

		luci.sys.exec('uci set network.wan.proto=pppoe')
		luci.sys.exec('uci set network.wan.username='..name)
		luci.sys.exec('uci set network.wan.password='..passwd)
	elseif type == "static" then
		local ip = h.formvalue("ipads")
		local netmask = h.formvalue("netmask")
		local gateway = h.formvalue("gateway")
		local dns = h.formvalue("dns")

		luci.sys.exec('uci set network.wan.proto=static')
		luci.sys.exec('uci set network.wan.ipaddr='..ip)
		luci.sys.exec('uci set network.wan.netmask='..netmask)
		luci.sys.exec('uci set network.wan.gateway='..gateway)
		luci.sys.exec('uci set network.wan.dns='..dns)
	end

	luci.sys.exec('uci set network.wan.macaddr='..mac)
	luci.sys.exec('uci commit')

	o['result'] = 'success'
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)

    luci.sys.exec('/etc/init.d/network wan_reconn')
end

function orderTests()
	local h = require "luci.http"
	local o = {}
	--luci.sys.exec('uci set network.wan.proto=dhcp')
	luci.sys.exec('uci set network.wan.proto=pppoe')
	luci.sys.exec('uci set network.wan.username=myk1')
	luci.sys.exec('uci set network.wan.password=12311')
	luci.sys.exec('uci commit')
	luci.sys.exec('/etc/init.d/network restart')

	o['test'] = "1231312"
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function loginin()
	local h = require "luci.http"
	local c = require "luci.socket"

	local uname  = h.formvalue("uname")
	local passwd = h.formvalue("passwd")

	local result = c.send('loginin',uname,passwd)

	local r = Split(result,"||")
	local res = ""

	if r[3] == "0" then
		res = "success"
	else
		res = "failed"
	end

	local o = {}
	o['loginstatus'] = res

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function loginout()
	local h = require "luci.http"
	local c = require "luci.socket"

	local uname = h.formvalue("uname")
	local result = c.send('loginout',uname)

	local r = Split(result,"||")
	local res = ""

	if r[3] == "0" then
		res = "success"
	else
		res = "failed"
	end

	local o = {}
	o['logoutstatus'] = res

	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function testSocket()
	local h = require "luci.http"
    local c = require "luci.socket"
    
    -- ?¡¯?¨¨?¡¤??¨C??????????€?
	local result = c.send('getStatus')

	local r = Split(result,"||")

	local res = ""
	local username = ""

	if r[3] == "1" then
		res = "nologing"
	else
		res = "hasloging"
		username = r[4]
	end 

    local o = {}
    o['result'] = r[3]
    o['username'] = username

    luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function wifiSafe()
    local o = {}
    o['test'] = "asdasdad"

    luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function wifiStatus()
	local uci = require "luci.model.uci".cursor()
	local ntm = require "luci.model.network"
	ntm.init(uci)

	local devices  = ntm:get_wifidevs()
	local devs
	local netlist = {}
	for _, dev in ipairs(devices) do local nets = dev:get_wifinets()
		local nets = dev:get_wifinets()
		for _, net in ipairs(nets) do
			netlist[#netlist+1] = net:id()
		end
	end

	local netmd = require "luci.model.network".init()
	local net = netmd:get_wifinet(netlist[1])
	local dev = net:get_device()

	local result = nil
	if dev and net then
		result = net:get("disabled")
	end

	local o = {}
	if result then
		o['test'] = "close"
	else
		o['test'] = "open"
	end

	luci.http.prepare_content('application/json')
	luci.http.write_json(o)
end

function appsbanner()
	require "luci.template"

	luci.template.render("admin_xcloud/appsbanner")
end

function startrestart()
	local uci = require "luci.model.uci".cursor()
	local flag = luci.http.formvalue('type')
	local o = {}

	if flag == '0' then
		o['result'] = uci:get('network','lan','ipaddr')
		luci.http.prepare_content('application/json')
		luci.http.write_json(o)
	else
		luci.sys.exec('reboot')
	end
end

function changeqositems()
	local flag = luci.http.formvalue('type')

	if flag == 'qosip' then
		luci.template.render('admin_xcloud/qosip')
	else
		luci.template.render('admin_xcloud/qosnet')
	end
end

function qossave()
	local uci = require "luci.model.uci".cursor()
	local flag = luci.http.formvalue('type')
	local o = {}

	local upbps = nil
	local downbps = nil
	local tdata = nil
	local ryflag = nil
	local qos_type = luci.sys.exec('uci get user.@qos_type[0].status') or ''

	if flag == '0' then
		if qos_type ~= '' then
			luci.sys.exec('uci delete user.@qos_type[0]')
			luci.sys.exec('uci commit')
		end

		luci.sys.exec("uci set qos_ry.qos.enable='0'")
	else
		upbps = luci.http.formvalue('bpsu')
		downbps = luci.http.formvalue('bpsd')
		tdata = luci.http.formvalue('tdata') or ''
		ryflag	= luci.http.formvalue('ryf')
		limit_type = luci.http.formvalue('limit_type')

		--是否存在qos_type
		if qos_type == '' then
			luci.sys.exec('uci add user qos_type')
			luci.sys.exec('uci commit')
		end

		--是否存MAC还是IP
		if limit_type == '1' then
			luci.sys.exec("uci set user.@qos_type[0].status='1'")
			luci.sys.exec('uci commit')
		else
			luci.sys.exec("uci set user.@qos_type[0].status='0'")
			luci.sys.exec('uci commit')
		end

		if ryflag == '0' then
			luci.sys.exec("uci set qos_ry.qos.ry='0'")
		else
			luci.sys.exec("uci set qos_ry.qos.ry='1'")
		end

		luci.sys.exec("uci set qos_gargoyle.upload.total_bandwidth='"..upbps.."'")
		luci.sys.exec("uci set qos_gargoyle.download.total_bandwidth='"..downbps.."'")

		luci.sys.exec("uci set qos_ry.qos.enable='1'")

		uci:delete_all('qos_ry','download_rule');
		uci:delete_all('qos_ry','upload_rule');
		uci:save('qos_ry')
		uci:commit('qos_ry')

		local function qosdelqosgargoyle(s)
			local tmp = Split(s['name'],"_")
			if tmp[1] == 'dclass' and tonumber(tmp[2]) >= 5 then
				uci:delete("qos_gargoyle",s['name'])
			end
		end

		local function qosdelqosgargoyle1(s)
			local tmp = Split(s['name'],"_")
			if tmp[1] == 'uclass' and tonumber(tmp[2]) >= 5 then
				uci:delete("qos_gargoyle",s['name'])
			end
		end

		uci:foreach("qos_gargoyle","download_class",qosdelqosgargoyle)
		uci:foreach("qos_gargoyle","upload_class",qosdelqosgargoyle1)
		uci:save('qos_gargoyle')
		uci:commit('qos_gargoyle')

		if tdata ~= '' then
			local n = {}
			local total = Split(tdata,"||||")
			local stdstr = 'dclass_'
			local stdstr1 = 'uclass_'
			local stdstart = 4
			local tmpip = nil
			local rate = math.ceil(downbps/upbps)

			local curaddr = uci:get("network","lan","ipaddr")
			curaddr = string.gsub(curaddr,"%.","|")
			local tmpip = Split(curaddr,"|")
			curaddr = tmpip[1].."."..tmpip[2].."."..tmpip[3].."."		
			local tname = ''
			local tname1 = ''

			for _,v in pairs(total) do
				n = Split(v,"|||")
				stdstart = stdstart + 1

				if limit_type == '1' then
					tmpip = n[3]
				else
					tmpip = curaddr..n[3]..'-'..curaddr..n[4]
				end
				
				tname = stdstr..stdstart
				tname1 = stdstr1..stdstart

				uci:section('qos_ry','download_rule',nil,{
						class 	= tname,
						test_order 	=n[1],
						enable 		=n[2],
						destination =tmpip
					})

				uci:section('qos_ry','upload_rule',nil,{
						class 	= tname1,
						test_order 	= math.ceil(n[1]/rate),
						enable 		=n[2],
						source =tmpip
					})

				uci:section('qos_gargoyle','download_class',tname,{
						name = tname,
						percent_bandwidth = '1',
						max_bandwidth =n[1]
					})
			
				uci:section('qos_gargoyle','upload_class',tname1,{
						name = tname1,
						percent_bandwidth = '1',
						max_bandwidth =math.ceil(n[1]/rate)
					})
			end
		end
	end
	uci:save('qos_ry')
	uci:commit('qos_ry')
	uci:save('qos_gargoyle')
	uci:commit('qos_gargoyle')

	luci.sys.exec("uci commit")
	if flag == '0' then
		luci.sys.exec("/etc/init.d/qos_gargoyle stop")
	else
		luci.sys.exec("/etc/init.d/qos_gargoyle start")
	end

	o['result'] = 'success'

	luci.http.prepare_content('application/json')
	luci.http.write_json(o)
end

function qosnetsave()
	local flag = luci.http.formvalue('type')
	local o = {}

	luci.sys.exec("uci set qos_ry.qos.gargoyle='"..flag.."'")
	luci.sys.exec("uci commit")
	luci.sys.exec("/etc/init.d/qos_gargoyle start")
	o['result'] = 'success'
	luci.http.prepare_content('application/json')
	luci.http.write_json(o)	
end

--[[*****************************************************¡¤?????**********************************************]]--
function getVersion()
	require "luci.http"
	local version = luci.version.xcloud_show
	luci.http.write(version)
end

function get_iso_status()
	require "luci.http"
	require "luci.common"

	local status = luci.sys.exec("/usr/local/localshell/usb-iso-check")
	status = luci.common.trim(status)
	luci.http.write(status)
end

function get_usb_nums()
	require "luci.http"
	require "luci.common"

	local usb_nums = luci.sys.exec("/usr/local/localshell/usbdevice num")

	--¹ýÂË
	usb_nums = luci.common.trim(usb_nums)

	local o = {}
	o['data'] = usb_nums
	luci.http.prepare_content('application/json')
	luci.http.write_json(o)	
end

function get_usb_device()
	require 'luci.sys'
	require 'luci.http'
	require 'luci.common'

	local usb_device = ''
	local device_count = luci.sys.exec('/usr/local/localshell/usbdevice num')
		  device_count = luci.common.trim(device_count)

	if device_count ~= 'NULL' then
		usb_device = luci.sys.exec('/usr/local/localshell/usbdevice info')
	else
		usb_device = 'NULL'
	end

	usb_device = luci.common.trim(usb_device)
	luci.http.write(usb_device)
end

function get_mount_status()
	require 'luci.sys'
	require 'luci.http'
	require 'luci.common'

	local status = ''
		  status = luci.sys.exec('/usr/local/localshell/usbdevice opt')
		  status = luci.common.trim(status)

	local o = {}
	o['data'] = status
	luci.http.prepare_content('application/json')
	luci.http.write_json(o)	
end

function wan_status_check()
	require 'luci.sys'
	require 'luci.http'
	require 'luci.common'

	local uci = require "luci.model.uci".cursor()
	local status = ''
	local wan_status = luci.sys.exec("uci get user.@wan_conn[0].status")
		  wan_status = luci.common.trim(wan_status)

	if wan_status ~= '1' then
		status = '0'
	else
		status = '1'
	end

	return status
end

function wan_check()
	require 'luci.sys'
	require 'luci.http'
	require 'luci.common'
	
	--等候5秒输出结果
	luci.sys.exec('sleep 5')

	--³õÊ¼»¯
	local uci = require "luci.model.uci".cursor()
	local status = ''

	--»ñÈ¡userÅäÖÃ
	local wan_status = luci.sys.exec("uci get user.@wan_conn[0].status")	--ÊÇ·ñÁ¬½ÓÉÏÍøÏß
	local wan_connection = luci.sys.exec("uci get user.@wan_conn[0].connection")	--ÊÇ·ñÄÜÉÏÍâÍø
		  wan_status = luci.common.trim(wan_status)
		  wan_connection = luci.common.trim(wan_connection)

	if wan_status ~= '1' or wan_connection ~= '1' then
		status = '0'
	else
		status = '1'
	end

	luci.http.write(status)
end

function reboot_router()
	luci.sys.exec('sleep 3')
	luci.sys.exec('reboot')
end

function setPassword()

	require 'luci.http'
	require 'luci.sys'
	local oldPwd = luci.http.formvalue('oldPasswd')
	local newPwd = luci.http.formvalue('newPasswd')

	local result = {}
	if luci.sys.user.checkpasswd('root',oldPwd) then
		result['status'] = 0
		if luci.sys.user.setpasswd('root',newPwd) then
			result['msg']='更改登录密码成功'
		else
			result['msg']='更改登录密码失败'
			result['status'] = 2
		end
	else
		result['msg']='原始密码错误'
		result['status'] = 1	
	end

	luci.http.write_json(result);
end

string.split = function(s, p)
    local rt= {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(rt, w) end )
    return rt
end

function hardsleep()
	require 'luci.sys'
	require 'luci.http'
	require 'luci.common'
	
	local disk = luci.http.formvalue('disk')
	local time = luci.http.formvalue('time')
	local type = luci.http.formvalue('type')
	--检测是否已经休眠
	local checkHd = string.format("pgrep -lf 'hd-idle -a %s' | cut -d ' ' -f1",disk)
	local creuslt = luci.sys.exec(checkHd);
	local list = string.split(creuslt, '\n')
	for _, s in ipairs(list)do
		luci.sys.exec("kill -9 "..s)
	end

	status={}
	--休眠进程
	if type=="1" then
		local runcmd = string.format("/usr/bin/hd-idle -a %s -i %d",disk,time)
		luci.sys.exec(runcmd)
		status['status']=0
		status['msg']= '休眠已开启'
	else
		status['status']=1
		status['msg']= '休眠已关闭'
	end

	luci.http.write_json(status)
end

function flashops_restore()
	local sys = require "luci.sys"
	local fs  = require "luci.fs"

	local upgrade_avail = nixio.fs.access("/lib/upgrade/platform.sh")
	local reset_avail   = os.execute([[grep '"rootfs_data"' /proc/mtd >/dev/null 2>&1]]) == 0

	local restore_cmd = "tar -xzC/ >/dev/null 2>&1"
	local backup_cmd  = "sysupgrade --create-backup - 2>/dev/null"
	local image_tmp   = "/tmp/firmware.img"

	local function image_supported()
		-- XXX: yay...
		return ( 0 == os.execute(
			". /lib/functions.sh; " ..
			"include /lib/upgrade; " ..
			"platform_check_image %q >/dev/null"
				% image_tmp
		) )
	end

	local function image_checksum()
		return (luci.sys.exec("md5sum %q" % image_tmp):match("^([^%s]+)"))
	end

	local function storage_size()
		local size = 0
		if nixio.fs.access("/proc/mtd") then
			for l in io.lines("/proc/mtd") do
				local d, s, e, n = l:match('^([^%s]+)%s+([^%s]+)%s+([^%s]+)%s+"([^%s]+)"')
				if n == "linux" or n == "firmware" then
					size = tonumber(s, 16)
					break
				end
			end
		elseif nixio.fs.access("/proc/partitions") then
			for l in io.lines("/proc/partitions") do
				local x, y, b, n = l:match('^%s*(%d+)%s+(%d+)%s+([^%s]+)%s+([^%s]+)')
				if b and n and not n:match('[0-9]') then
					size = tonumber(b) * 1024
					break
				end
			end
		end
		return size
	end


	local fp
	luci.http.setfilehandler(
		function(meta, chunk, eof)
			if not fp then
				if meta and meta.name == "image" then
					fp = io.open(image_tmp, "w")
				else
					fp = io.popen(restore_cmd, "w")
				end
			end
			if chunk then
				fp:write(chunk)
			end
			if eof then
				fp:close()
			end
		end
	)

	local upload = luci.http.formvalue("archive")
	if upload and #upload > 0 then
		luci.http.write('1')
		luci.sys.reboot()
	else
		luci.http.write('0')
	end
end

function check_pppd()
	luci.sys.exec('sleep 3')

	local log = 'error'
	local handle = io.open('/tmp/log/pppd.log', 'r')

	if handle ~= nil then
		log = luci.sys.exec('cat /tmp/log/pppd.log')
		log = luci.common.trim(log)
	end

	luci.http.write(log)
end

function check_hard_version()
	local hard_version = luci.common.trim(luci.sys.exec('/usr/local/localshell/getcapability')) or ''
	return hard_version
end