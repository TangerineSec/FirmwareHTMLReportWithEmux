
module("luci.controller.admin.xcloudmob", package.seeall) 

require "luci.http"
require "luci.template"
require 'luci.sys'

uci = require "luci.model.uci".cursor()

function index()
	entry({"admin", "xcloudmob","xcloudmob"},template("admin_xcloudmob/xcloudmob"),nil).dependent=false
	
	entry({"admin", "xcloudmob","xcloudmoblan"},call("xcloudmoblan"),nil).dependent=false

	entry({"admin", "xcloudmob","xcloudcheckconn"},call("xcloudcheckconn"),nil).dependent=false

	entry({"admin", "xcloudmob","wanstaticsetup"},call("wanstaticsetup"),nil).dependent=false

	entry({"admin", "xcloudmob","setupcheckconnect"},call("setupcheckconnect"),nil).dependent=false

	entry({"admin", "xcloudmob","checknowconnect"},call("checknowconnect"),nil).dependent=false

	entry({"admin", "xcloudmob","xcloudconnsuccess"},call("xcloudconnsuccess"),nil).dependent=false	

	entry({"admin", "xcloudmob","xcloudtocheck"},template("admin_xcloudmob/xcloudcheckconn"),nil).dependent=false

	entry({"admin", "xcloudmob","xcloudpwdsetup"},call("xcloudpwdsetup"),nil).dependent=false

	entry({"admin", "xcloudmob","xcloudmodpwd"},call("xcloudmodpwd"),nil).dependent=false		

	entry({"admin", "xcloudmob","xcloudssid"},template("admin_xcloudmob/xcloudssid"),nil).dependent=false

	entry({"admin", "xcloudmob","xcloudmodssid"},call("xcloudmodssid"),nil).dependent=false	

	entry({"admin", "xcloudmob","xcloudrestart"},template("admin_xcloudmob/xcloudrestart"),nil).dependent=false		

	entry({"admin", "xcloudmob","setuprestart"},call("setuprestart"),nil).dependent=false		
end

function commjson(o)
	luci.http.prepare_content("application/json")
    luci.http.write_json(o)
end

function xcloudpwdsetup()
	local uri = luci.http.getenv('HTTP_REFERER')

	luci.template.render("admin_xcloudmob/xcloudpwdsetup",{data=uri})	
end

function xcloudconnsuccess()
	local uri = luci.http.getenv('HTTP_REFERER')

	luci.template.render("admin_xcloudmob/xcloudconnsuccess",{data=uri})	
end

function xcloudmoblan()
	local uri = luci.http.getenv('HTTP_REFERER')

	luci.template.render("admin_xcloudmob/xcloudmoblansetup",{data=uri})
end

function checknowconnect()
	-- 判断wan口是否接入网线
	local wan_status = luci.sys.exec('uci get user.@wan_conn[0].status')
	local wan_connection = luci.sys.exec('uci get user.@wan_conn[0].connection')
		  wan_status = luci.common.trim(wan_status)
		  wan_connection = luci.common.trim(wan_connection)

	local o = {}
	
	if wan_status ~= '1' or wan_connection ~= '1' then
		o['result'] = '0'
	else
		o['result'] = '1'
	end

	commjson(o)
end

function setupcheckconnect()
	luci.sys.exec('/etc/init.d/network wan_reconn')
end

function wanstaticsetup()
	local ip 		= luci.http.formvalue("ipads")
	local netmask 	= luci.http.formvalue("netmask")
	local gateway 	= luci.http.formvalue("gateway")
	local dns	 	= luci.http.formvalue("dns")
	local dnsback	= luci.http.formvalue("dnsb")	

	local data = {}
	data['proto'] 	= 'static'
	data['ipaddr'] 	= ip
	data['netmask']	= netmask
	data['gateway']	= gateway
	data['dns']		= dns
	data['dnsback']	= dnsback

	uci:section('user',"interface","tmpstatic",data)

	local data1 = {}
	data1['selection'] = 'static'
	uci:section('user',"interface","usersel",data1)

	uci:commit('user')

	local o = {}
	o['result'] = 'success'
	commjson(o)
end

function calcheckconn(flag)
	local network_tb = uci:get_all("network","wan")
	local mac = uci.get('network','wan','macaddr') or ''

	for k,v in pairs (network_tb) do
		if k ~= '.name' and k ~= 'ifname' and k ~= '.anonymous' and k ~= 'macaddr' then
			luci.sys.exec('uci del network.wan.'..k)
		end
	end
	
	local data = {}
	data['selection'] = flag
	uci:section('user',"interface","usersel",data)
	uci:commit('user')

	if flag == 'pppoe' then
		local name = luci.http.formvalue('user')
		local passwd = luci.http.formvalue('pwd')

		luci.sys.exec('uci set network.wan.proto=pppoe')
		luci.sys.exec('uci set network.wan.username='..name)
		luci.sys.exec('uci set network.wan.password='..passwd)
	elseif flag == 'static' then
		local ip 		= uci.get('user','tmpstatic','ipaddr')
		local netmask 	= uci.get('user','tmpstatic','netmask')
		local gateway 	= uci.get('user','tmpstatic','gateway')
		local dns	 	= uci.get('user','tmpstatic','dns')
		local dnsback	= uci.get('user','tmpstatic','dnsback') or ''

		luci.sys.exec('uci set network.wan.proto=static')
		luci.sys.exec('uci set network.wan.ipaddr='..ip)
		luci.sys.exec('uci set network.wan.netmask='..netmask)
		luci.sys.exec('uci set network.wan.gateway='..gateway)
		luci.sys.exec('uci set network.wan.dns='..dns)
		luci.sys.exec('uci set network.wan.dnsback='..dnsback)
	else
		luci.sys.exec('uci set network.wan.proto=dhcp')
	end
	
	luci.sys.exec('uci set network.wan.macaddr='..mac)
	luci.sys.exec('uci commit')

	if flag == 'dhcp' then
		luci.template.render('admin_xcloudmob/xcloudcheckconn')
	elseif flag == 'pppoe' then
		local o = {}
		o['result'] = 'success'
		commjson(o)
	end
end

function xcloudcheckconn(flag1)
	local flag = nil
	if not flag1 then
		flag = luci.http.formvalue('type') or 'dhcp'
	else
		flag = flag1
	end

	calcheckconn(flag)
	--return flag
end

function xcloudmodpwd()
	local pwd = luci.http.formvalue('password')

	luci.sys.exec("uci set wireless.@wifi-iface[0].encryption='psk2'")
	luci.sys.exec('uci set wireless.@wifi-iface[0].key='..pwd)

	local o = {}
	o['result'] = 'success'
	commjson(o)
end

function xcloudmodssid()
	local ssid = luci.http.formvalue('sid')
	luci.sys.exec('uci set wireless.@wifi-iface[0].ssid='..ssid)

	local o = {}
	o['result'] = 'success'
	commjson(o)
end

function setuprestart()
	
	local t = uci.get('user','usersel','selection')
	
	if t == 'static' then
		xcloudcheckconn('static')
	end

	luci.sys.exec('uci commit')
	luci.sys.exec('/etc/init.d/network restart')
	luci.sys.exec('sleep 5')
	local o = {}
	o['result'] = 'success'
	--o['result'] = a
	commjson(o)
end