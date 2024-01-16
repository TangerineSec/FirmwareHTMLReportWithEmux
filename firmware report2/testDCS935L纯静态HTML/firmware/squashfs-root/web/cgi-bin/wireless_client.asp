<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
<script type="text/javascript" language="Javascript" SRC="cookies.js"></script>
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" language="Javascript">
var language = detectOSLanguage();
if (getCookie("language") != null)
{
	var cookieLanguage = getCookie("language");
	if (cookieLanguage == "en" || cookieLanguage == "sc" || cookieLanguage == "tc" || 
		cookieLanguage == "de" || cookieLanguage == "es" || cookieLanguage == "it" || cookieLanguage == "fr")
		language = cookieLanguage;
}
var expiresDate=new Date();expiresDate.setFullYear(2100,1,1);setCookie("language", language, expiresDate);
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wireless_client.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
var WirelessEnable=decodeBase64("<% getWirelessClientInfo(Enable); %>");
var SSID=decodeBase64("<% getWirelessClientInfo(SSID); %>");
var Mode=decodeBase64("<% getWirelessClientInfo(Mode); %>");
var Channel=decodeBase64("<% getWirelessClientInfo(Channel); %>");
var Authentication=decodeBase64("<% getWirelessClientInfo(Authentication); %>");
var Encryption=decodeBase64("<% getWirelessClientInfo(Encryption); %>");
var WepFormat=decodeBase64("<% getWirelessClientInfo(WEPKeyFormat); %>");
var WepKeyActive=decodeBase64("<% getWirelessClientInfo(WEPActiveKey); %>");
var WepKeyLength=decodeBase64("<% getWirelessClientInfo(WEPKeyLength); %>");
var WepKey0=decodeBase64("<% getWirelessClientInfo(WEPKey0); %>");
var WepKey1=decodeBase64("<% getWirelessClientInfo(WEPKey1); %>");
var WepKey2=decodeBase64("<% getWirelessClientInfo(WEPKey2); %>");
var WepKey3=decodeBase64("<% getWirelessClientInfo(WEPKey3); %>");
var PreSharedKey=decodeBase64("<% getWirelessClientInfo(PreSharedKey); %>");
var Channel_Sel = Channel;
function resizePage()
{
	if (parent)
	{
		parent.resetIframeHeight(document.body.clientHeight);
	}
}
function init(bReinit)
{
	document.body.style.display = "";
	if (!bReinit)
	{
		loadText();
	}
	setConfig();
	onEnableWireless();
	resizePage();
	g_showEffect = "fast";
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_WIRELESS_SETUP]);
	setText(document.getElementById("sWirelessSetting"), item_name[I_WIRELESS_SETTING]);
	setText(document.getElementById("sSSID"), item_name[I_SSID]);
	setText(document.getElementById("sChannel"), item_name[I_CHANNEL]);
	setText(document.getElementById("sConnectionMode"), item_name[I_CONNECTION_MODE]);
	setText(document.getElementById("sInfrastructure"), item_name[I_INFRASTRUCTURE]);
	setText(document.getElementById("sAdHoc"), item_name[I_ADHOC]);
	setText(document.getElementById("sSecurityMode"), item_name[I_SECURITY_MODE]);
	setText(document.getElementById("sNone"), item_name[I_NONE]);
	setText(document.getElementById("sWEP"), item_name[I_WEP]);
	setText(document.getElementById("sWPAWPA2PSK"), item_name[I_WPAPSK] + " / " + item_name[I_WPAPSK2]);
	setText(document.getElementById("sAuthentication"), item_name[I_AUTHENTICATION]);
	setText(document.getElementById("sOpenSystem"), item_name[I_OPEN_SYSTEM]);
	setText(document.getElementById("sSharedKey"), item_name[I_SHARED_KEY]);
	setText(document.getElementById("sEncryptionMode"), item_name[I_ENCRYPTION_MODE]);
	setText(document.getElementById("sKeyFormat"), item_name[I_KEY_FORMAT]);
	setText(document.getElementById("sDefaultKey"), item_name[I_DEFAULT_KEY]);
	setText(document.getElementById("sKey1"), item_name[I_KEY1]);
	setText(document.getElementById("sKey2"), item_name[I_KEY2]);
	setText(document.getElementById("sKey3"), item_name[I_KEY3]);
	setText(document.getElementById("sKey4"), item_name[I_KEY4]);
	setText(document.getElementById("sCipherType"), item_name[I_CIPHER_TYPE]);
	setText(document.getElementById("sTKIPAES"), item_name[I_TKIP] + " / " + item_name[I_AES]);
	setText(document.getElementById("sPreSharedKey"), item_name[I_PRESHARED_KEY]);
	setText(document.getElementById("sPreSharedKeyDes"), item_name[I_PRESHARED_KEY_DES]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_sitesurvey").value = item_name[I_SITE_SURVEY];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];

	for (var i = 0; i < document.getElementById("select_key_length").length; i++)
	{
		document.getElementById("select_key_length").options[i].text = option_content[O_64BITS + i];
	}
	for (var i = 0; i < document.getElementById("select_key_format").length; i++)
	{
		document.getElementById("select_key_format").options[i].text = option_content[O_HEX + i];
	}
	for (var i = 0; i < document.getElementById("select_key_active").length; i++)
	{
		document.getElementById("select_key_active").options[i].text = option_content[O_KEY1 + i];
	}
}
function OnSelectWlan(ssid, connectMode, channel, security_mode, encryption)
{
	document.getElementsByName("radio_auth_type")[0].checked = true;
	document.getElementById("select_key_format").value = "1";
	document.getElementById("select_key_length").value = "0";
	document.getElementById("select_key_active").value = "0";
	document.getElementById("input_preSharedKey").value = "";
	document.getElementById("input_key0").value = "";
	document.getElementById("input_key1").value = "";
	document.getElementById("input_key2").value = "";
	document.getElementById("input_key3").value = "";
	document.getElementById("input_SSID").value = ssid;
	document.getElementById("select_channel").value = channel;
	Channel_Sel = channel;
	if (document.getElementById("select_channel").selectedIndex == -1)
		document.getElementById("select_channel").selectedIndex = 0;
	if (connectMode == 1)
		document.getElementsByName("radio_mode")[0].checked = true;
	else if (connectMode == 0)
		document.getElementsByName("radio_mode")[1].checked = true;
	else
		document.getElementsByName("radio_mode")[0].checked = true;
		
	if (security_mode == 0)
	{
		document.getElementsByName("radio_security_mode")[0].checked = true;
	}
	else if (security_mode == 1)
	{
		document.getElementsByName("radio_security_mode")[1].checked = true;
	}
	else if (security_mode == 2 || security_mode == 3 || security_mode == 4)
	{
		document.getElementsByName("radio_security_mode")[2].checked = true;
		document.getElementsByName("radio_wpa_cipher")[0].checked = true;
	}
	onEnableWireless();
}
function setConfig()
{
	//if (WirelessEnable == "1")
		document.getElementById("input_wifi_enable").checked = true;
	//else
	//	document.getElementById("input_wifi_enable").checked = false;	
	document.getElementById("input_SSID").value = SSID;
	document.getElementById("select_channel").value = Channel;
	if (document.getElementById("select_channel").selectedIndex == -1)
		document.getElementById("select_channel").selectedIndex = 0;

	var connect_mode = document.getElementsByName("radio_mode");
	for (var i = 0; i < connect_mode.length; i++) {
		if (connect_mode[i].value == Mode)
			connect_mode[i].checked = true;
	}
	
	if (Authentication == "0" && Encryption == "0")
		document.getElementsByName("radio_security_mode")[0].checked = true;
	else if (Encryption == "1")
		document.getElementsByName("radio_security_mode")[1].checked = true;
	else if (Authentication == "2" || Authentication == "3" || Authentication == "4")
		document.getElementsByName("radio_security_mode")[2].checked = true;
	
	document.getElementsByName("radio_wpa_cipher")[0].checked = true;
	
	if (Authentication == "0")
		document.getElementsByName("radio_auth_type")[0].checked = true;
	else if (Authentication == "1")
		document.getElementsByName("radio_auth_type")[1].checked = true;
	else
		document.getElementsByName("radio_auth_type")[0].checked = true;
	
	document.getElementById("select_key_format").value = WepFormat;
	document.getElementById("select_key_length").value = WepKeyLength;
	document.getElementById("select_key_active").value = WepKeyActive;
	document.getElementById("input_preSharedKey").value = PreSharedKey;
	document.getElementById("input_key0").value = WepKey0;
	document.getElementById("input_key1").value = WepKey1;
	document.getElementById("input_key2").value = WepKey2;
	document.getElementById("input_key3").value = WepKey3;
}
function OnSiteSurvey()
{
  newwindow=window.open("aplist.asp","","toolbar=0,location=0,directories=0,status=0,menubar=0,width=800,height=400,scrollbars=1");
}
function onEnableWireless()
{
	onModeChanged();
	if (document.getElementById("input_wifi_enable").checked == true)
	{
		$("#id_basic").show(g_showEffect, resizePage);
		$("#id_security").show(g_showEffect, resizePage);
	}
	else
	{
		$("#id_basic").hide();
		$("#id_security").hide();
	}
}
function onModeChanged()
{
	if (document.getElementsByName("radio_mode")[1].checked == true)
	{
		if (document.getElementsByName("radio_security_mode")[2].checked)
			document.getElementsByName("radio_security_mode")[0].checked = true;
	}
	onSecurityModeChanged();
	if (document.getElementsByName("radio_mode")[0].checked == true)
	{
		$("#id_channel").hide();
		$("#id_security_wpa").show(g_showEffect, resizePage);
		$("#id_auth").show(g_showEffect, resizePage);
	}
	else
	{
		$("#id_channel").show(g_showEffect, resizePage);
		$("#id_security_wpa").hide();
		$("#id_auth").hide();
	}
}
function onSecurityModeChanged()
{
	if (document.getElementsByName("radio_security_mode")[0].checked)
  	{
  		$("#id_wep").hide();
  		$("#id_wpa").hide();
  	}
  	else if (document.getElementsByName("radio_security_mode")[1].checked)
  	{
     	$("#id_wep").show(g_showEffect, resizePage);
     	$("#id_wpa").hide();
  	}   
  	else if (document.getElementsByName("radio_security_mode")[2].checked)
  	{
  		$("#id_wep").hide();
     	$("#id_wpa").show(g_showEffect, resizePage);
  	}
}
function resetDefaultConfig()
{
	if (document.getElementById("input_wifi_enable").checked)
	{
		WirelessEnable = "1";	
		SSID = document.getElementById("input_SSID").value;
		if (document.getElementsByName("radio_mode")[0].checked)
			Mode = "0";
		else if (document.getElementsByName("radio_mode")[1].checked)
			Mode = "1";
			
		//Channel = document.getElementById("select_channel").value;
		Channel = Channel_Sel;
		if (document.getElementsByName("radio_security_mode")[0].checked)
		{
			Encryption = "0";
			Authentication = "0";
		}
		else if (document.getElementsByName("radio_security_mode")[1].checked)
		{
			Encryption = "1";
			if (document.getElementsByName("radio_auth_type")[0].checked)
				Authentication = "0";
			else if (document.getElementsByName("radio_auth_type")[1].checked)
				Authentication = "1";

			WepKeyActive = document.getElementById("select_key_active").value;
			WepKeyLength = document.getElementById("select_key_length").value;
			WepFormat = document.getElementById("select_key_format").value;
			var iActiveKey = parseInt(document.getElementById("select_key_active").value, 10);
			if (iActiveKey == 0)
				WepKey0 = document.getElementById("input_key0").value;
			else if (iActiveKey == 1)
				WepKey1 = document.getElementById("input_key1").value;
			else if (iActiveKey == 2)
				WepKey2 = document.getElementById("input_key2").value;
			else if (iActiveKey == 3)
				WepKey3 = document.getElementById("input_key3").value;
		}
		else if (document.getElementsByName("radio_security_mode")[2].checked)
		{
			Encryption = "4";
			Authentication = "4";
			PreSharedKey = document.getElementById("input_preSharedKey").value;
		}
	}
	else
	{
		WirelessEnable = "0";
	}

	//setConfig();
	//onEnableWireless();
	//resizePage();
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        	if (parent)
        	{
        		setTimeout("parent.blockUI(false, '', 0);", 5000);
        		setTimeout('document.getElementById("if_data").contentWindow.document.location.reload();', 5000);
        	}
        	else
        		window.location.reload();
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
            if (parent)
            	parent.blockUI(false, '', 0);
            window.location.reload();
        }
    }
}
function save_setting()
{
	var url = "/cgi/admin/wireless.cgi";
	var params = "";
	
	if (document.getElementById("input_wifi_enable").checked)
	{
		params += "Enable=1";
		params += "&SSID=" + encodeURIComponent(document.getElementById("input_SSID").value);
		if (document.getElementsByName("radio_mode")[0].checked)
			params += "&Mode=0";
		else if (document.getElementsByName("radio_mode")[1].checked)
		{
			params += "&Mode=1";
			if (document.getElementById("select_channel").selectedIndex != -1)
				Channel_Sel = document.getElementById("select_channel").value;
			else
				Channel_Sel = document.getElementById("select_channel").options[document.getElementById("select_channel").selectedIndex].value;
		}
		//params += "&Channel=" + encodeURIComponent(document.getElementById("select_channel").value);
		params += "&Channel=" + encodeURIComponent(Channel_Sel);
		if (document.getElementsByName("radio_security_mode")[0].checked)
		{
			params += "&Encryption=0";
			params += "&Authentication=0";
		}
		else if (document.getElementsByName("radio_security_mode")[1].checked)
		{
			params += "&Encryption=1";
			if (document.getElementsByName("radio_auth_type")[0].checked)
				params += "&Authentication=0";
			else if (document.getElementsByName("radio_auth_type")[1].checked)
				params += "&Authentication=1";
				
			var iActiveKey = parseInt(document.getElementById("select_key_active").value, 10);
			var keyname = "input_key" + iActiveKey.toString();
			if (document.getElementById("select_key_length").value == "0")	// 64 bits
     		{
        		if (document.getElementById("select_key_format").value == "0")	// ASCII = 5
        		{
        	 		if (document.getElementById(keyname).value.length != 5 || (CheckASCII(document.getElementById(keyname).value) == 1))
          			{
             			document.getElementById(keyname).select();
             			alert(pop_msg[PMSG_INVALID_5_ASCII_CHAR]);
             			return;
          			}
          		}
        		else					// HEX = 10
        		{
        			if (document.getElementById(keyname).value.length != 10 || (CheckHex(document.getElementById(keyname).value) == 1))
          			{
             			document.getElementById(keyname).select();
             			alert(pop_msg[PMSG_INVALID_10_HEX_CHAR]);
             			return;
          			}
        		}
        	}
        	else
        	{
        		if (document.getElementById("select_key_format").value == "0")	// ASCII = 13
        		{
          			if (document.getElementById(keyname).value.length != 13 || (CheckASCII(document.getElementById(keyname).value) == 1))
          			{
             			document.getElementById(keyname).select();
             			alert(pop_msg[PMSG_INVALID_13_ASCII_CHAR]);
             			return;
          			}
        		}
        		else					// HEX = 26
        		{
          			if (document.getElementById(keyname).value.length != 26 || (CheckHex(document.getElementById(keyname).value) == 1))
          			{
             			document.getElementById(keyname).select();
             			alert(pop_msg[PMSG_INVALID_26_HEX_CHAR]);
             			return;
          			}
        		}
        	}	
			params += "&WepActiveKey=" + encodeURIComponent(document.getElementById("select_key_active").value);
			params += "&WepKeyLength=" + encodeURIComponent(document.getElementById("select_key_length").value);
			params += "&WepFormat=" + encodeURIComponent(document.getElementById("select_key_format").value);
			if (iActiveKey == 0)
				params += "&WepKey0=" + encodeURIComponent(document.getElementById("input_key0").value);
			else if (iActiveKey == 1)
				params += "&WepKey1=" + encodeURIComponent(document.getElementById("input_key1").value);
			else if (iActiveKey == 2)
				params += "&WepKey2=" + encodeURIComponent(document.getElementById("input_key2").value);
			else if (iActiveKey == 3)
				params += "&WepKey3=" + encodeURIComponent(document.getElementById("input_key3").value);
		}
		else if (document.getElementsByName("radio_security_mode")[2].checked)
		{
			params += "&Encryption=4";
			params += "&Authentication=4";
			if ((CheckWPAKey(document.getElementById("input_preSharedKey").value)) == 1)
     		{
        		document.getElementById("input_preSharedKey").select();
        		alert(pop_msg[PMSG_INVALID_PRESHARED_KEY]);
        		return;
     		}
			params += "&PreSharedKey=" + encodeURIComponent(document.getElementById("input_preSharedKey").value);
		}
	}
	else
	{
		params += "Enable=0";
	}
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'wireless_client_data.asp?' + g_token">
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
	<tr>
	  <td valign="top">
		<table id="data_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
		  <tr>
  			<td valign="top" id="maincontent_container" height="100%">
    		  <table height="100%" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
    		    <tr>
    			  <td>
    				<div id="maincontent">
      				  <!-- === BEGIN MAINCONTENT === -->
      				  <div id="box_header"> 
      				    <h1><span id="sTitle">Wireless Setup</span></h1>
      				    <span id="sTitleInfo">
      				      In this section, you can configure the wireless settings of your camera. 
      				    </span>
      				    <p></p>
        			    <div align=center>
        			      <span>&nbsp;</span>
        			      <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onclick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        			    </div>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sWirelessSetting">wireless settings</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF" style="display: none">
        				  <TR>
          				    <TD width="200">Enable Wireless</TD>
          				    <TD><input type="checkbox" id="input_wifi_enable" name="input_wifi_enable" onclick="onEnableWireless();"></TD>
        				  </TR>
        			    </table>
       				    <div id="id_basic">
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				    <TR>
          					  <TD width="180"><span id="sSSID">SSID</span></TD>
          					  <TD>
          					    &nbsp;<INPUT type="text" size=32 maxlength=32 id="input_SSID" name="input_SSID">
          					    <span>&nbsp;</span>
          					    <INPUT type=button style="width:100px" id="btn_sitesurvey" value="Site survey" onclick="OnSiteSurvey()">
          					  </TD>
        				    </TR>
        				  </table>
        				  <div id="id_channel">
        				    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				      <TR>
        	  			        <TD width="180"><span id="sChannel">Channel</span></TD>
          					    <TD>
          					      &nbsp;<SELECT id="select_channel" name="select_channel" size="1">
          					        <% printWirelessChannel(); %>
          					      </SELECT>
          					    </TD>
        				      </TR>
        				    </table>
        				  </div>
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR>
          				      <TD width="180"><span id="sConnectionMode">Connection Mode</span></TD>
          					  <TD width="150px">
            				    <input type=radio name="radio_mode" value="0" OnClick="onModeChanged()"><span id="sInfrastructure">Infrastructure</span>
            				  </TD>
            				  <TD width="180px">
            				    <input type=radio name="radio_mode" value="1" OnClick="onModeChanged()"><span id="sAdHoc">Ad-Hoc</span>
          					  </TD>
          					  <TD>
          				       <span>&nbsp;</span>
          				      </TD>
        				    </TR>
        				  </table>
       				    </div>
       				    <div id="id_security">
        			      <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				    <TR>
          				      <TD width="180"><span id="sSecurityMode">Security Mode</span></TD>
          				      <TD width="150px">
            				    <input type=radio name="radio_security_mode" onclick="onSecurityModeChanged();"><span id="sNone">None</span>
            				  </TD>
            				  <TD width="180px">  
            				    <input type=radio name="radio_security_mode" onclick="onSecurityModeChanged();"><span id="sWEP">WEP</span>
          				      </TD>
          				      <TD>
          				       <span>&nbsp;</span>
          				      </TD>
        				    </TR>
        			      </table>
        			      <div id="id_security_wpa">
        			      <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				    <TR>
        				      <TD width="180"></TD>
        				      <TD>
            				    <input type=radio name="radio_security_mode" onclick="onSecurityModeChanged();"><span id="sWPAWPA2PSK">WPA-PSK / WPA2-PSK</span>
            				  </TD>
							</TR>	
						  </table>
						  </div>	
        			      <div id="id_wep">
        			        <div id="id_auth">
        			          <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				        <TR>
          				          <TD width="180"><span id="sAuthentication">Authentication</span></TD>
          				          <TD width="150px">
            			            <input type=radio name="radio_auth_type" value="0"><span id="sOpenSystem">Open System</span>
            			          </TD>
            			          <TD width="180px">
            			            <input type=radio name="radio_auth_type" value="1"><span id="sSharedKey">Shared Key</span>
          				          </TD>
          				          <TD>
          				       	    <span>&nbsp;</span>
          				      	  </TD>
        			            </TR>
        			          </table>
        			        </div>
        			        <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				      <TR>
          				        <TD style="width: 180px"><span id="sEncryptionMode">Encryption Mode</span></TD>
          				        <TD>
            				      &nbsp;<SELECT id="select_key_length" size="1" onclick="onSecurityModeChanged();">
            				        <OPTION value="0">64Bits</OPTION>
            				        <OPTION value="1">128Bits</OPTION>
            				      </SELECT>
          				        </TD>
        				      </TR>
        				      <TR>
          				        <TD style="width: 180px"><span id="sKeyFormat">Key Format</span></TD>
          				        <TD>
            				      &nbsp;<SELECT id="select_key_format" size="1" onclick="onSecurityModeChanged();">
            				        <OPTION value="1">HEX</OPTION>
            				        <OPTION value="0">ASCII</OPTION>
            				      </SELECT>
          				        </TD>
        				      </TR>
        				      <TR>
          				        <TD style="width: 180px"><span id="sDefaultKey">Default Key</span></TD>
          				        <TD>
            				      &nbsp;<SELECT id="select_key_active" size="1">
            				        <OPTION value="0">Key 1</OPTION>
            				        <OPTION value="1">Key 2</OPTION>
            				        <OPTION value="2">Key 3</OPTION>
            				        <OPTION value="3">Key 4</OPTION>
            				      </SELECT>
          				        </TD>
        				      </TR>
        				      <TR>
          				        <TD style="width: 180"><span id="sKey1">Key1</span></TD>
          				        <TD>&nbsp;<INPUT type="password" size=32 id="input_key0" name="input_key0" OnClick="clickCheckKey(1)" value="" maxlength="26"></TD>
        				      </TR>
        				      <TR>
          				        <TD style="width: 180"><span id="sKey2">Key2</span></TD>
          				        <TD>&nbsp;<INPUT type="password" size=32 id="input_key1" name="input_key1" OnClick="clickCheckKey(2)" value="" maxlength="26"></TD>
        				      </TR>
        				      <TR>
          				        <TD style="width: 180"><span id="sKey3">Key3</span></TD>
          				        <TD>&nbsp;<INPUT type="password" size=32 id="input_key2" name="input_key2" OnClick="clickCheckKey(3)" value="" maxlength="26"></TD>
        				      </TR>
        				      <TR>
          				        <TD style="width: 180"><span id="sKey4">Key4</span></TD>
          				        <TD>&nbsp;<INPUT type="password" size=32 id="input_key3" name="input_key3" OnClick="clickCheckKey(4)" value="" maxlength="26"></TD>
        				      </TR>
        			        </table>
      				      </div>
      				      <div id="id_wpa">
      				        <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				      <TR>
          				        <TD width="180"><span id="sCipherType">Cipher Type</span></TD>
          				        <TD>
            			          <input type=radio name="radio_wpa_cipher" value="0"><span id="sTKIPAES">TKIP / AES</span>
            			        </TD>
        			          </TR>
        			        </table>
        			        <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				      <TR>
          				        <TD width="180"><span id="sPreSharedKey">Pre-Shared Key</span></TD>
          				        <TD>
          				          &nbsp;<INPUT type="password" size=24 maxlength=64 id="input_preSharedKey" name="input_preSharedKey" value=""> 
						        </TD>
        				      </TR>
        				      <TR>
          				        <TD width="180"></TD>
          				        <TD>
							      &nbsp;<span id="sPreSharedKeyDes">(8-63 ASCII or 64 HEX characters)</span>
						        </TD>
        				      </TR>
        			        </table>
      				      </div>
      				    </div>
      				  </div>
      				  <p align=center>
        			    <input type="hidden" name="ConfigSystemWireless" value="Save">
        			    <span>&nbsp;</span>
        			    <INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onclick="save_setting();">
        			    <span>&nbsp;&nbsp;</span>
        			    <INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
      				  </p>
      				  <!-- === END MAINCONTENT === -->
    			    </div>
    			  </td>
    		    </tr>
    		    <tr height=100%>
    		      <td></td>
    		    </tr>
    		  </table>
  		    </td>
		  </tr>
	    </table>
	  </td>
	  <td valign="top" width="150" id="sidehelp_container" align="left">
        <table cellpadding="2" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
      	    <td id="help_text">
      		  <span id="sHelpInfo">
        		<b>Helpful Hints..</b>
        		<br><br>You may enable the wireless setting on your camera and connect 
				to a wireless network by entering the <b>SSID</b> (unique name of your 
				wireless network), or click the <b>Site Survey</b> 
        		button to select an available wireless network. Then you may choose a 
				channel number. When there is interference from the wireless networks 
				that overlap with one another, you may change the channel to obtain 
				maximum performance from your connection.
        		<br><br>There are two connection modes. <b>Infrastructure</b> is a 
				wireless connection using an access point as the transmission point of 
				all wireless devices. <b>Ad-Hoc</b> is a wireless connection used 
				without an access point, which connects the PC directly to the 
				DCS-5020L. 
        		<br><br>For security there are three choices of wireless encryption, 
        		<b>None</b>, <b>WEP</b>, and <b>WPA-PSK / WPA2-PSK</b>. Select the same 
				encryption method that is being used by your wireless device/ router. If 
				you have selected <b>WPA-PSK or WPA2-PSK</b> 
        		setting, you may need to enter the appropriate <b>Pre-Shared Key</b> 
        		in order to connect to the wireless network.
        	  </span>
      		</td>
    	  </tr>
    	</table>
  	  </td>
    </tr>
  </table>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>
</html>
