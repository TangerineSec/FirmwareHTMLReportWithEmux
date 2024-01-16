--[[
LuCI - Lua Configuration Interface

Copyright 2008 Steven Barth <steven@midlink.org>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id: index.lua 7789 2011-10-26 03:04:18Z jow $
]]--

module("luci.controller.admin.index", package.seeall)

function index()
	local root = node()
	if not root.target then
		root.target = alias("admin")
		root.index = true
	end

	local page   = node("admin")
	--page.target  = firstchild()

	require "luci.common"
	require "luci.sys"

	if luci.common.browser() then
		page.target  = template("admin_xcloud/xcloud")
		--[[
		local sel = luci.sys.exec('uci get user.@wan_conn[0].status')
		sel = string.sub(sel,1,string.len(sel)-1)

		if tostring(sel) == '0' then
			page.target  = template("admin_xcloudmob/xcloudnotconn")
		else
			page.target  = template("admin_xcloudmob/xcloudmob")
		end]]
	else
		-- 判断wan口是否接入网线
		local wan_status = luci.sys.exec('uci get user.@wan_conn[0].status')
		local wan_connection = luci.sys.exec('uci get user.@wan_conn[0].connection')
			  wan_status = luci.common.trim(wan_status)
			  wan_connection = luci.common.trim(wan_connection)
		
		-- 跳转页
		if wan_status == '0' then
			page.target  = template("admin_xcloudmob/xcloudnotconn")
		elseif wan_status == '1' and wan_connection == '0' then
			page.target  = template("admin_xcloudmob/xcloudmob")
		elseif wan_status == '1' and wan_connection == '1' then
			page.target  = template("admin_xcloud/xcloud")
		end
	end
	--page.target  = template("admin_xcloud/xcloud")

	page.title   = _("Administration")
	page.order   = 10
	page.sysauth = "root"
	page.sysauth_authenticator = "htmlauth"
	page.ucidata = true
	page.index = true

	-- Empty services menu to be populated by addons
	--entry({"admin", "services"}, _("Services"), 40).index = true
	entry({"admin", "services"},firstchild(), _("Services"), 40)

	entry({"admin", "logout"}, call("action_logout"), _("Logout"), 90)
end

function action_logout()
	local dsp = require "luci.dispatcher"
	local sauth = require "luci.sauth"
	if dsp.context.authsession then
		sauth.kill(dsp.context.authsession)
		dsp.context.urltoken.stok = nil
	end

	luci.http.header("Set-Cookie", "sysauth=; path=" .. dsp.build_url())
	luci.http.redirect(luci.dispatcher.build_url())
end
