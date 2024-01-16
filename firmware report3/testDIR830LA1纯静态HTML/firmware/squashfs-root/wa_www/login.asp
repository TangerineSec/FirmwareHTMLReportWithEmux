<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Content-Type" content="text/css">
<link rel="stylesheet" type="text/css" href="css/style_sharePort.css" media="all" />
<link rel=stylesheet type="text/css" href="/css/jquery.selectbox.css" />
<link rel="STYLESHEET" type="text/css" href="css_router.css">
<title></title>
<meta http-equiv=Content-Type content="text/html; charset=utf8">
<script type="text/javascript" src="uk.js"></script>
<script language="Javascript" src="public.js"></script>
<script language="JavaScript" src="public_msg.js"></script>
<script language="JavaScript" src="pandoraBox.js"></script>
<script language="Javascript" src="js/jquery-1.3.2.min.js"></script>
<script language="javascript" src="js/jquery.selectbox-0.2_new.js" tppabs="/webaccess/js/jquery.selectbox-0.2_new.js"></script>
<script language="Javascript" src="js/xml.js"></script>
<script language="Javascript" src="js/object.js"></script>
<script language="Javascript" src="md5.js"></script>
<script language="JavaScript" src="js/libajax.js"></script>
<script language="JavaScript" src="js/i18n.js"></script>
<script language="Javascript" src="jquery.cookie.pack.js"></script>
<script type="text/javascript">
	// Auto Detecting Language, Timmy 2013/05/03, 2013/05/31(Modify)
	var SetLang = 0;
	var IsPrivateBrowseing = 0;

	try
	{
		// Try to set localstorage
		localStorage.setItem('Test', 'test');
		localStorage.removeItem('Test');

		// Language List
		var LangList = new Array("en-us", "zh-tw", "zh-cn", "ko-kr", "fr-fr", "pt-br", "es-es", "it-it", "de-de", "ru-ru");

		if (localStorage.getItem('language') === null)
		{
			if (navigator.appName == 'Netscape')
			{
				var language = navigator.language;
			}
			else
			{
				var language = navigator.browserLanguage;
			}

			var SetLanguage = language.toLowerCase();
			var IsSuccessSetupLang = "false";

			for (var i = 0; i < LangList.length; i ++)
			{
				if (SetLanguage == LangList[i])
				{
					localStorage.setItem('language', LangList[i]);
					localStorage.language = LangList[i];
					InitLANG(localStorage.language);
					IsSuccessSetupLang = "true";
					SetLang = i;
				}
			}
			//If the language of the browser is not in LangList array, use English to initial.
			if (localStorage.getItem('language') === null)	InitLANG("en-us");
		}
		else
		{
			InitLANG(localStorage.language);
			for (var i = 0; i < LangList.length; i ++)
			{
				if (localStorage.language == LangList[i])
				{
					SetLang = i;
				}
			}
		}
	}
	catch (error)
	{
		if (error.code === DOMException.QUOTA_EXCEEDED_ERR && localStorage.length === 0)
		{
			InitLANG("en-us");
			alert(I18N("j", "The Private Browsing feature of Safari is incompatible with this device's interface. You will need to disable Private Browsing to log in."));
			IsPrivateBrowseing = 1;
		}
		else throw error;
	}

	function switch_Language(value)
	{
		localStorage.setItem('language', LangList[value]);
		localStorage.language = LangList[value];
		location.reload();
	}
</script>
<script language="JavaScript">
	var salt = "345cd2ef";
	var dev_info = get_router_info();

	var hw_version 	= dev_info.hw_ver;
	var version 	= dev_info.fw_ver;
	var model		= dev_info.model;
	var login_Info 	= dev_info.login_info;
	var cli_mac 	= dev_info.cli_mac;
	var auth 		= config_val("graph_auth");
	var count 		= 30;
	document.title = get_words('TEXT000');


	$(function(){
		if($.cookie('fail') == null)
			$.cookie('fail', 0);
		else if($.cookie('fail') >= 5)
			do_invalid_count_down();
	});
	
	function do_invalid_count_down(){
		if(count > 0){
			$('input').attr('disabled', true);
			$('#logIn_btn').css('width', 200).val(addstr(get_words('invalid_cd'), count));
	        count--;
	        setTimeout('do_invalid_count_down()',1000);
	    }
		else if(count == 0){
			$('input').attr('disabled', false);
			$('#logIn_btn').css('width', 120).val('login');
			$.cookie('fail', 0);
	        return;
	    }
	}




	if (config_val("es_configured") != '' && config_val("es_configured") == 0)
	{
		location.replace("wizard_router.asp");
	}


	var submit_button_flag = true;
	function encode_base64(psstr) {
		return encode(psstr,psstr.length); 
	}

	function encode (psstrs, iLen) {
		var map1="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/{}|[]\:;'<>?,.~!@#$%^&*()_-+=\"";
		var oDataLen = (iLen*4+2)/3;
		var oLen = ((iLen+2)/3)*4;
		var out='';
		var ip = 0;
		var op = 0;
		while (ip < iLen) {
			var xx = psstrs.charCodeAt(ip++);
			var yy = ip < iLen ? psstrs.charCodeAt(ip++) : 0;
			var zz = ip < iLen ? psstrs.charCodeAt(ip++) : 0;
			var aa = xx >>> 2;
			var bb = ((xx &   3) << 4) | (yy >>> 4);
			var cc = ((yy & 0xf) << 2) | (zz >>> 6);
			var dd = zz & 0x3F;
			out += map1.charAt(aa);
			op++;
			out += map1.charAt(bb);
			op++;
			out += op < oDataLen ? map1.charAt(cc) : '='; 
			op++;
			out += op < oDataLen ? map1.charAt(dd) : '='; 
			op++; 
		}
		return out; 
	}

	function check()
	{
		if ($('#username').val() == '') {
			alert(get_words('PPP_USERNAME_EMPTY', LangMap.msg));
			return;
		}
		
		if(submit_button_flag){
			var username = $("#username").val();
			var password = $("#password").val();	
			submit_button_flag = false;
			
			//Challenge
			var param = {
				url:	'dws/api/Login',
				arg:	''
				//arg:	'id='+get_by_id("username").value+'&password='+get_by_id("password").value
			};
			var data = json_ajax(param);
			if (data == null || data['uid'] == null) {
				submit_button_flag = true;
				return;
			}
			
			$.cookie('uid', data['uid']);
			var arg1 = username+data['challenge'];
			var arg2 = password;
			
			// submit username and password
			var digs = hex_hmac_md5(arg2, arg1);
			param.arg = 'id='+username+'&password='+digs;
			var data = json_ajax(param);
			if (data == null) {
				submit_button_flag = true;
				return;
			}
			$.cookie('id', data['id']);
			$.cookie('key', data['key']);
			
			// redirect page
			location.replace('category_view.asp');
			
			//send_submit("form1");
		}
		return true;
	}

	function chk_KeyValue(e){
//var salt = "345cd2ef";
		if(browserName == "Netscape") { 
			var pKey=e.which; 
		} 
		if(browserName=="Microsoft Internet Explorer") { 
			var pKey=event.keyCode; 
		} 
		if(pKey==13){
			if(check()){
				//send_submit("form1");
			}
		}
	}

	function change_fontsize(){
		var lang_tmp = localStorage.language;
		
		if(lang_tmp == "fr-fr" || lang_tmp == "pt-br" || lang_tmp == "es-es" || lang_tmp == "ru-ru")
		{
			document.getElementById("Login_Username").style.fontSize = "11px";
			document.getElementById("Login_Password").style.fontSize = "11px";
		}
	}

	var browserName = navigator.appName;
	document.onkeyup=chk_KeyValue;

	$(document).ready( function () {
		change_fontsize();
		document.getElementById("Language").options[SetLang].selected = true;
		$("#Language").selectbox('detach');
		$("#Language").val(SetLang);
		$("#Language").selectbox({width:120});
		if (IsPrivateBrowseing == 1)	{
			$("#Language").selectbox("disable");
		}
		
		if (model) {
    		$('#modelName').html(model);
		}
		if (hw_version) {
    		$('#HWversion').html(hw_version);
		}
		if (version) {
    		$('#FWversion').html(version);
		}
		//Show the hyperlinks of device access if we make sure the IP is private IP.
		if(window.location.hostname=="shareport.local" || window.location.hostname.substr(0, 8)=="192.168." || window.location.hostname.substr(0, 3)=="10." || window.location.hostname.substr(0, 7)=="172.16.")
		document.getElementById("link").style.display = "";
		//AuthShow(); 	//remove it, why it occurs an error at line: 103 (sometimes) ???
	});
	
	document.oncontextmenu=function(){
		return false;
	}
</script>
</head>
<!--body topmargin="1" leftmargin="0" rightmargin="0" bgcolor="#757575" onLoad="$('#username').focus();">
<table border=0 cellspacing=0 cellpadding=0 align=center width=30>
<tr>
<td></td>
</tr>
<tr>
<td>
<div align=left>
<table width=836 border=0 cellspacing=0 cellpadding=0 align=center>
<tr>
	<td align="center" valign="baseline" bgcolor="#FFFFFF">
		<table id="header_container" border="0" cellpadding="5" cellspacing="0" width="838" align="center">
		<tr>
			<td width="100%">&nbsp;&nbsp;<script>show_words('TA2')</script>: <a href="http://www.dlink.com/default.aspx"><script>document.write(model);</script></a></td>
			<td width="60%">&nbsp;</td>
			<td align="right" nowrap><script>show_words('TA3')</script>: <script>document.write(hw_version);</script> &nbsp;</td>
			<td align="right" nowrap><script>show_words('sd_FWV')</script>: <script>document.write(version);</script></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td align="center" valign="baseline" bgcolor="#FFFFFF">
		<div align=center>
		<table id="topnav_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
		<tr>
			<td align="center" valign="middle"><img src="wlan_masthead.gif" width="836" height="92"></td>
		</tr>
		</table>
		<br><br>
		<table width="650" border="0">
		<tr>
			<td height="10">
			<div id=box_header>
			<H1 align="left"><span id="JJString"><script>show_words('webf_login')</script></span></H1>
			<span id="JJString"><script>show_words('webf_intro')</script></span><p>
			<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr height="24">
				<td width="15%"></td>
				<td align="right"><b><script>show_words('_username')</script> :&nbsp;</b></td>
				<td><input type="text" id="username" name="username"></td>
			</tr>
			<tr height="24">
				<td width="15%"></td>
				<td align="right"><b><script>show_words('_password')</script> :&nbsp;</b></td>
				<td><input type="password" id="password" name="password" value="" onfocus="select();"/></td>
			</tr>
			</table>
			<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="3" align="middle"><br>
					<input class="button_submit_padleft" type="button" name="login" id="login" value="" style="width:120 " onclick="check()">
					<script>get_by_id("login").value = get_words('li_Log_In');</script>
				</td>
			</tr>
			</table>
			</div>
			</td>
		</tr>
		</table>
		</div>
		<br><br>
	</td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
	<td bgcolor="#FFFFFF">
		<table id="footer_container" border="0" cellpadding="0" cellspacing="0" width="836" align="center">
		<tr>
			<td width="125" align="center">&nbsp;&nbsp;<img src="wireless_tail.gif" width="114" height="35"></td>
			<td width="10">&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		</table>
	</td>
</tr>
</table><br>
<div id="copyright"><script>show_words('_copyright');</script></div>
</body-->

	<body>
		<div id="wrapper">
			<!-------------------- Logo ------------------------->
			<div id="Lheader">
				<div id="logo">
						<img id="D-Link logo" src="webfile_images/logo_2.gif" width="105" height="95"  />
				</div>
				<table class="versionTable" id="versionTable" border="0" cellspacing="0">
					<tbody>
						<thead>
					     <td><script>I18N("h", "Model Name");</script>:&nbsp;<label id="modelName">--</label></td>
					     <td><script>I18N("h", "Hardware Version");</script>:&nbsp;<label id="HWversion">--</label></td>
					     <td><script>I18N("h", "Firmware Version");</script>:&nbsp;<label id="FWversion">--</label></td>
					     <td align="right"><script>I18N("h", "Language");</script>:</td>
						 <td>
				     		<div class="styled-select">
								<select name="Language" id="Language" onChange="switch_Language(this.value)">
									<option value="0">English</option>
									<option value="1">繁體中文</option>
									<option value="2">简体中文</option>
									<option value="3">한국</option>
									<option value="4">français</option>
									<option value="5">português</option>
									<option value="6">Español</option>
									<option value="7">Italiano</option>
									<option value="8">Deutsch</option>
									<option value="9">русский</option>
								</select>
							</div>
						 </td>
						</thead>
					</tbody>
				</table>
			</div>
			<!-------------------- Content ---------------------->
			<div id="content">
				<center><p id="title">SharePort Web Access</p></center>
				<div id="logIn">
					<table class="logInTable" id="logInTable" border="0" cellspacing="0">
						<tbody>
						<thead>
						     <tr>
						     	 <th><span id="Login_Username"><script>I18N("h", "Username");</script></span> : </th>
						     	 <td><input class="styled-text" type="text" name="username" size="20" id="username"></td>
						     </tr>
						     <tr>
						     	 <th><span id="Login_Password"><script>I18N("h", "Password");</script></span> : </th>
						     	 <td><input class="styled-text" type="password" name="password" size="20" id="password"></td>
						     </tr>
						</thead>
						</tbody>
					</table>
					<center><button type="button" id="logIn_btn" class="styled_button_s" onClick="check()"><script>I18N("h", "Log In");</script></button></center>
				</div>
			</div>
			<br />
			<div id="link" style="display:none"><script>I18N("h", "To access device management,");</script>&nbsp;<a href="http://dlinkrouter.local./"><script>I18N("h", "click here.");</script></a></div>
			<br /><br />
			<div id="footer"><script>I18N("h", "COPYRIGHT");</script></div>
		</div>
	</body>
</html>
