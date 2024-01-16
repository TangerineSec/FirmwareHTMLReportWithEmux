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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_network.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
IPv4Type=decodeBase64("<% getIPv4Info(BootProto); %>");
IPv4PPPoEEnable=decodeBase64("<% getIPv4Info(PPPoEEnable); %>");
IPv4IP=decodeBase64("<% getIPv4Info(IP); %>");
IPv4Mask=decodeBase64("<% getIPv4Info(SubnetMask); %>");
IPv4Gateway=decodeBase64("<% getIPv4Info(Gateway); %>");
IPv4DNS1=decodeBase64("<% getIPv4Info(DNS0); %>");
IPv4DNS2=decodeBase64("<% getIPv4Info(DNS1); %>");
IPv4PPPoEUID=decodeBase64("<% getIPv4Info(PPPoEUID); %>");
IPv4PPPoEPWD=decodeBase64("<% getIPv4Info(PPPoEPWD); %>");
UPnPEnable=decodeBase64("<% getUPnPInfo(Enable); %>");
UPnPPortForwardEnable=decodeBase64("<% getUPnPInfo(EnablePortForward); %>");
ExternHTTP=decodeBase64("<% getUPnPInfo(ExternHTTPPort); %>");
ExternHTTPS=decodeBase64("<% getUPnPInfo(ExternHTTPSPort); %>");
ExternRTSP=decodeBase64("<% getUPnPInfo(ExternRTSPPort); %>");
HTTPPort=decodeBase64("<% getHTTPInfo(Port)%>");
RTSPPort=decodeBase64("<% getRTSPInfo(Port)%>");
HTTPSEnable=decodeBase64("<% getHTTPSInfo(Enable)%>");
HTTPSPort=decodeBase64("<% getHTTPSInfo(Port)%>");
BonjourEnable=decodeBase64("<% getBonjourInfo(Enable) %>");
BonjourName=decodeBase64("<% getBonjourInfo(Name) %>");
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
		loadText();
	setConfig();
	modifyLanSettingUI();
	onPPPoEEnable();
	onHTTPSEnable();
	modifyBonjourUI();
	modifyUPnPUI();
	resizePage();
	g_showEffect = "fast";
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_NETWORK_TITLE]);
	setText(document.getElementById("sLanSettingInfo"), item_name[I_LAN_SETTING]);
	setText(document.getElementById("sDHCP"), item_name[I_DHCP]);
	setText(document.getElementById("sStaticIP"), item_name[I_STATIC_IP]);
	setText(document.getElementById("sIPAddress"), item_name[I_IP_ADDRESS]);
	setText(document.getElementById("sSubnetMask"), item_name[I_SUBNET_MASK]);
	setText(document.getElementById("sDefaultGateway"), item_name[I_DEFAULT_GATEWAY]);
	setText(document.getElementById("sDNS1"), item_name[I_DNS1]);
	setText(document.getElementById("sDNS2"), item_name[I_DNS2]);
	setText(document.getElementById("sPPPoE"), item_name[I_PPPOE]);
	setText(document.getElementById("sUID"), item_name[I_UID]);
	setText(document.getElementById("sPWD"), item_name[I_PWD]);
	setText(document.getElementById("sHTTPPortSetting"), item_name[I_PORT_SETTING]);
	setText(document.getElementById("sHTTPPort"), item_name[I_HTTP_PORT]);
	setText(document.getElementById("sRTSPPort"), item_name[I_RTSP_PORT]);
	setText(document.getElementById("sHTTPSSetting"), item_name[I_HTTPS_SETTING]);
	setText(document.getElementById("sHTTPSEnable"), item_name[I_HTTPS_ENABLE]);
	setText(document.getElementById("sHTTPSPort"), item_name[I_HTTPS_PORT]);
	setText(document.getElementById("sUPnPSetting"), item_name[I_UPNP_SETTIGN]);
	setText(document.getElementById("sUPnPEnable"), item_name[I_UPNP_ENABLE]);
	setText(document.getElementById("sUPnPPortForward"), item_name[I_UPNP_PORT_FORWARD]);
	setText(document.getElementById("sExternHTTP"), item_name[I_UPNP_EXTERN_HTTP]);
	setText(document.getElementById("sExternHTTPS"), item_name[I_UPNP_EXTERN_HTTPS]);
	setText(document.getElementById("sExternRTSP"), item_name[I_UPNP_EXTERN_RTSP]);
	setText(document.getElementById("sBonjourSetting"), item_name[I_BONJOUR_SETTING]);
	setText(document.getElementById("sBonjourEnable"), item_name[I_BONJOUR_ENABLE]);
	setText(document.getElementById("sBonjourName"), item_name[I_BONJOUR_NAME]);
	setText(document.getElementById("sBonjourNameLength"), item_name[I_MAX_CHAR_32]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];	
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	document.getElementById("sBonjourNameInfo").innerHTML = des_item_name[D_BONJOUR_DES];
}
function setConfig()
{
	var ipType = document.getElementsByName("radio_ipMode");
	for (var i = 0; i < ipType.length; i++) {
		if (ipType[i].value == IPv4Type)
			ipType[i].checked = true;
	}
	
	document.getElementById("input_IPv4Address").value = IPv4IP;
	document.getElementById("input_IPv4SubnetMask").value = IPv4Mask;
	document.getElementById("input_IPv4Gateway").value = IPv4Gateway;
	document.getElementById("input_IPv4DNSIP1").value = IPv4DNS1;
	document.getElementById("input_IPv4DNSIP2").value = IPv4DNS2;
	document.getElementById("input_PPPoEUID").value = IPv4PPPoEUID;
	document.getElementById("input_PPPoEPWD").value = IPv4PPPoEPWD;
	document.getElementById("input_http_port").value = HTTPPort;
	document.getElementById("input_rtsp_port").value = RTSPPort;
	
	if (HTTPSEnable == "1")
		document.getElementById("input_https_enable").checked = true;
	else
		document.getElementById("input_https_enable").checked = false;
	document.getElementById("input_https_port").value = HTTPSPort;
	
	if (IPv4PPPoEEnable == "1")
		document.getElementById("input_pppoe_enable").checked = true;
	else
		document.getElementById("input_pppoe_enable").checked = false;
	
	if (UPnPEnable == "1")
		document.getElementById("input_upnp_enable").checked = true;
	else
		document.getElementById("input_upnp_enable").checked = false;
		
	if (UPnPPortForwardEnable == "1")
		document.getElementById("input_upnp_port_forward_enable").checked = true;
	else
		document.getElementById("input_upnp_port_forward_enable").checked = false;
	
	document.getElementById("input_extern_http").value = ExternHTTP;
	document.getElementById("input_extern_https").value = ExternHTTPS;
	document.getElementById("input_extern_rtsp").value = ExternRTSP;

	if (BonjourEnable == "1")
		document.getElementById("input_bonjour_enable").checked = true;
	else
		document.getElementById("input_bonjour_enable").checked = false;
	
	document.getElementById("input_bonjourName").value = BonjourName;
}
function onHTTPSEnable()
{
	if (document.getElementById("input_https_enable").checked)
	{
		$("#div_https").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_https").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function modifyBonjourUI()
{
	if (document.getElementById("input_bonjour_enable").checked)
	{
		$("#div_bonjour_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_bonjour_setting").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function modifyUPnPUI()
{
	if (document.getElementById("input_upnp_port_forward_enable").checked)
	{
		$("#div_upnp_port_forward").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_upnp_port_forward").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function modifyLanSettingUI()
{
  	if (document.getElementsByName("radio_ipMode")[0].checked)
  	{
     	$("#div_static_ip_setting").hide(g_showEffect, resizePage);
  	}
  	else if (document.getElementsByName("radio_ipMode")[1].checked)
  	{
     	$("#div_static_ip_setting").show(g_showEffect, resizePage);
  	}
  
  	//resizePage();
}
function onPPPoEEnable()
{
	if (document.getElementById("input_pppoe_enable").checked)
	{
		$("#div_pppoe_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_pppoe_setting").hide(g_showEffect, resizePage);
	}

	//resizePage();
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        	setTimeout("parent.blockUI(false, '', 0);", 10 * 1000);
        	setTimeout('document.getElementById("if_data").contentWindow.document.location.reload();', 10 * 1000);
        	//setTimeout("window.location.href='reboot_network.asp'", 800);	
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
	if (document.getElementsByName("radio_ipMode")[1].checked)
	{
    	if ((ret_ip=devip_check(document.getElementById("input_IPv4Address").value)) == 1)
     	{
     		document.getElementById("input_IPv4Address").select();
        	alert(pop_msg[PMSG_INVALID_IPADDRESS]);
        	return;
     	}
     	if ((ret_mask=ip_check(document.getElementById("input_IPv4SubnetMask").value)) == 1)
     	{
        	document.getElementById("input_IPv4SubnetMask").select();
        	alert(pop_msg[PMSG_INVALID_SUBNET_MASK]);
        	return;
     	}
     	if (check_mask(document.getElementById("input_IPv4Address").value, document.getElementById("input_IPv4SubnetMask").value) != 0)
     	{
        	document.getElementById("input_IPv4Address").select();
        	alert(pop_msg[PMSG_INVALID_IPADDRESS]);
        	return;
     	}
     	if ((document.getElementById("input_IPv4Gateway").value != "") && (document.getElementById("input_IPv4Gateway").value != "0.0.0.0"))
     	{
        	if ((ret_gateway=ip_check(document.getElementById("input_IPv4Gateway").value)) == 1)
        	{
        		document.getElementById("input_IPv4Gateway").select();
        	   	alert(pop_msg[PMSG_INVALID_GATEWAY]);
           		return;
        	}
        	if (check_mask(document.getElementById("input_IPv4Gateway").value, document.getElementById("input_IPv4SubnetMask").value) != 0)
        	{
        		document.getElementById("input_IPv4Gateway").select();
           		alert(pop_msg[PMSG_INVALID_GATEWAY]);
           		return;
        	}
        	if (ip_same_net(ret_ip, ret_mask, ret_gateway) == 1)
        	{
           		document.getElementById("input_IPv4Address").select();
           		alert(pop_msg[PMSG_INCORRECT_TCPIP_CONFIG]);
           		return;
        	}
     	}
  	} 	
  	if (document.getElementById("input_pppoe_enable").checked)
  	{
    	if (document.getElementById("input_PPPoEUID").value == "")
     	{
     		document.getElementById("input_PPPoEUID").select();
        	alert(pop_msg[PMSG_INVALID_UID]);
        	return;
     	}
     	if (document.getElementById("input_PPPoEPWD").value == "")
     	{
     		document.getElementById("input_PPPoEPWD").select();
        	alert(pop_msg[PMSG_INVALID_PWD]);
        	return;
     	}
  	}
  	if ((document.getElementById("input_IPv4DNSIP1").value != "") && (document.getElementById("input_IPv4DNSIP1").value != "0.0.0.0"))
  	{
    	if ((devip_check(document.getElementById("input_IPv4DNSIP1").value)) == 1)
     	{
        	document.getElementById("input_IPv4DNSIP1").select();
        	alert(pop_msg[PMSG_INVALID_DNS1]);
        	return;
     	}
     	if (ip_check(document.getElementById("input_IPv4DNSIP1").value) == 1)
     	{
     		document.getElementById("input_IPv4DNSIP1").select();
        	alert(pop_msg[PMSG_INVALID_DNS1]);
        	return;
     	}
  	}
  	if ((document.getElementById("input_IPv4DNSIP2").value != "") && (document.getElementById("input_IPv4DNSIP2").value != "0.0.0.0"))
  	{
    	if ((devip_check(document.getElementById("input_IPv4DNSIP2").value)) == 1)
     	{
     		document.getElementById("input_IPv4DNSIP2").select();
        	alert(pop_msg[PMSG_INVALID_DNS2]);
        	return;
     	}
     	if (ip_check(document.getElementById("input_IPv4DNSIP2").value) == 1)
     	{
     		document.getElementById("input_IPv4DNSIP2").select();
        	alert(pop_msg[PMSG_INVALID_DNS2]);
        	return;
     	}
  	}
  	if ((checkIntRange(document.getElementById("input_http_port").value,65535,1) == 1) ||
      	(checkHttpPort(document.getElementById("input_http_port").value) == 1))
  	{
     	document.getElementById("input_http_port").select();
     	alert(pop_msg[PMSG_INVALID_PORT_NUMBER]);
     	return;
  	}
  	if ((checkIntRange(document.getElementById("input_rtsp_port").value,65535,1) == 1) ||
      	(checkHttpPort(document.getElementById("input_rtsp_port").value) == 1))
  	{
     	document.getElementById("input_rtsp_port").select();
     	alert(pop_msg[PMSG_INVALID_PORT_NUMBER]);
     	return;
  	}  	
  	if (document.getElementById("input_https_enable").checked)
  	{
  		if ((checkIntRange(document.getElementById("input_https_port").value,65535,1) == 1) ||
      		(checkHttpPort(document.getElementById("input_https_port").value) == 1))
  		{
    	 	document.getElementById("input_https_port").select();
     		alert(pop_msg[PMSG_INVALID_PORT_NUMBER]);
     		return;
  		}
  	}
  	if (document.getElementById("input_upnp_port_forward_enable").checked)
  	{
  		if (checkIntRange(document.getElementById("input_extern_http").value,65535,1) == 1)
  		{
    	 	document.getElementById("input_extern_http").select();
     		alert(pop_msg[PMSG_INVALID_PORT_NUMBER]);
     		return;
  		}
  		if (checkIntRange(document.getElementById("input_extern_https").value,65535,1) == 1)
  		{
    	 	document.getElementById("input_extern_https").select();
     		alert(pop_msg[PMSG_INVALID_PORT_NUMBER]);
     		return;
  		}
  		if (checkIntRange(document.getElementById("input_extern_rtsp").value,65535,1) == 1)
  		{
    	 	document.getElementById("input_extern_rtsp").select();
     		alert(pop_msg[PMSG_INVALID_PORT_NUMBER]);
     		return;
  		}
  	}
  	if (document.getElementById("input_bonjour_enable").checked)
  	{
    	if (CheckBonjourname(document.getElementById("input_bonjourName").value))
    	{
        	document.getElementById("input_bonjourName").select();
        	alert(pop_msg[PMSG_INVALID_BONJOUR_NAME]);
        	return;
     	}
  	}
  	var url = "/cgi/admin/network.cgi";
  	var params = "";
  	if(document.getElementsByName("radio_ipMode")[0].checked){
		params += "BootProto=1";
	} else if(document.getElementsByName("radio_ipMode")[1].checked) {
		params += "BootProto=0";
		params += "&IP=" + document.getElementById("input_IPv4Address").value;
		params += "&SubnetMask=" + encodeURIComponent(document.getElementById("input_IPv4SubnetMask").value);
		params += "&Gateway=" + encodeURIComponent(document.getElementById("input_IPv4Gateway").value);
		params += "&DNS0=" + encodeURIComponent(document.getElementById("input_IPv4DNSIP1").value);
		params += "&DNS1=" + encodeURIComponent(document.getElementById("input_IPv4DNSIP2").value);
	} 
	
	if(document.getElementById("input_pppoe_enable").checked) {
		params += "&PPPoEEnable=1";
		params += "&PPPoEUID=" + encodeURIComponent(document.getElementById("input_PPPoEUID").value);
		params += "&PPPoEPWD=" + encodeURIComponent(document.getElementById("input_PPPoEPWD").value);
	}
	else {
		params += "&PPPoEEnable=0";
	}
	params += "&HTTPPort=" + encodeURIComponent(document.getElementById("input_http_port").value);
	params += "&RTSPPort=" + encodeURIComponent(document.getElementById("input_rtsp_port").value);
	
	if (document.getElementById("input_https_enable").checked)
  	{
  		params += "&HTTPSEnable=1";
  		params += "&HTTPSPort=" + encodeURIComponent(document.getElementById("input_https_port").value);  		
  	}
  	else
  	{
  		params += "&HTTPSEnable=0";
  	}
	
	if (document.getElementById("input_upnp_enable").checked == true)
		params += "&UPnPEnable=1";
	else
		params += "&UPnPEnable=0";
	
	if (document.getElementById("input_upnp_port_forward_enable").checked == true)
	{
		var Externhttp_port=encodeURIComponent(document.getElementById("input_extern_http").value);
		var Externhttps_port=encodeURIComponent(document.getElementById("input_extern_https").value);
		var Externrtsp_port=encodeURIComponent(document.getElementById("input_extern_rtsp").value);

		params += "&UPnPPortForwardEnable=1";

		if(Externhttp_port!=HTTPPort) {
			params += "&ExternHTTPPort=" + Externhttp_port ;
			ExternHTTP = document.getElementById("input_extern_http").value;
		}else 
			params += "&ExternHTTPPort=" + ExternHTTP ;
		if(Externhttps_port!=HTTPSPort) {
			params += "&ExternHTTPSPort=" + Externhttps_port ;
			ExternHTTPS = document.getElementById("input_extern_https").value;	
		}else 
			params += "&ExternHTTPSPort=" + ExternHTTPS ;
		if(Externrtsp_port!=RTSPPort)	{
			params += "&ExternRTSPPort=" + Externrtsp_port;
			ExternRTSP = document.getElementById("input_extern_rtsp").value
		}else 
			params += "&ExternRTSPPort=" + ExternRTSP;
	}
	else
		params += "&UPnPPortForwardEnable=0";
	
		
	if (document.getElementById("input_bonjour_enable").checked)
	{
		params += "&BonjourEnable=1";
		params += "&BonjourName=" + encodeURIComponent(document.getElementById("input_bonjourName").value);
	}
	else
		params += "&BonjourEnable=0";
	
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
  	if(document.getElementsByName("radio_ipMode")[0].checked)
  	{
		IPv4Type = "1";
	} 
	else if(document.getElementsByName("radio_ipMode")[1].checked) 
	{
		IPv4Type = "0"
		IPv4IP = document.getElementById("input_IPv4Address").value;
		IPv4Mask = document.getElementById("input_IPv4SubnetMask").value;
		IPv4Gateway = document.getElementById("input_IPv4Gateway").value;
		IPv4DNS1 = document.getElementById("input_IPv4DNSIP1").value;
		IPv4DNS2 = document.getElementById("input_IPv4DNSIP2").value;
	} 
	
	if(document.getElementById("input_pppoe_enable").checked) 
	{
		IPv4PPPoEEnable = "1";
		IPv4PPPoEUID = document.getElementById("input_PPPoEUID").value;
		IPv4PPPoEPWD = document.getElementById("input_PPPoEPWD").value;
	}
	else
	{
		IPv4PPPoEEnable = "0";
	}
	HTTPPort = document.getElementById("input_http_port").value;
	RTSPPort = document.getElementById("input_rtsp_port").value;
	
	if(document.getElementById("input_https_enable").checked)
	{
		HTTPSEnable = "1";
		HTTPSPort = document.getElementById("input_https_port").value;
	}
	else
	{
		HTTPSEnable = "0";
	}
	if (document.getElementById("input_upnp_enable").checked == true)
		UPnPEnable = "1";
	else
		UPnPEnable = "0";
		
	if (document.getElementById("input_upnp_port_forward_enable").checked == true)
	{
		UPnPPortForwardEnable = "1";
		//ExternHTTP = document.getElementById("input_extern_http").value;
		//ExternHTTPS = document.getElementById("input_extern_https").value;
		//ExternRTSP = document.getElementById("input_extern_rtsp").value
	}
	else
		UPnPPortForwardEnable = "0";
		
	if (document.getElementById("input_bonjour_enable").checked)
	{
		BonjourEnable = "1";
		BonjourName = document.getElementById("input_bonjourName").value;
	}
	else
		BonjourEnable = "0";
	//setConfig();
	//modifyLanSettingUI();
	//onPPPoEEnable();
	//onHTTPSEnable();
	//modifyBonjourUI();
	//modifyUPnPUI();
	//resizePage();	
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'network_data.asp?' + g_token">
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
      				  <h1><span id="sTitle">Network Setup</span></h1>
      				  <span id="sTitleInfo">
      					You can configure your LAN and Internet settings here.
      				  </span>
      				  <p></p>
        			  <div align=center>
        				<span>&nbsp;</span>
        				<INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				<span>&nbsp;&nbsp;</span>
        				<INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        			  </div>
      				</div>
      				<div class="box">
        			  <h2><span id="sLanSettingInfo">lan settings</span>
        			  </h2>
        			  <table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        				<TR>
          				  <TD width="30px">
          				    <input type=radio name="radio_ipMode" value="1" onclick="modifyLanSettingUI()">
          				  </TD>
          				  <TD>
          				    <span id="sDHCP">DHCP Connection</span>
          				  </TD>
        				</TR>
        				<TR>
        				  <TD>
        				    <input type=radio name="radio_ipMode" value="0" onclick="modifyLanSettingUI()">
        				  </TD>
        				  <TD>
        				    <span id="sStaticIP">Static IP Address</span>
        				  </TD>
        				</TR>
        				<TR>
        				  <td></td>
          				  <TD>
          				    <div id="div_static_ip_setting">
            				  <table id="id_box_staticip" cellspacing="3" cellpadding="3" BORDER="0" class=maintext>
            				    <tr>
            	  				  <td width="120px">
            	  				    <span>&nbsp;&nbsp;&nbsp;</span>
            	  				    <span id="sIPAddress">IP Address</span>
            	  				  </td>
              					  <td><INPUT type="text" size=18 id="input_IPv4Address" name="input_IPv4Address"></td>
            				    </tr>
            				    <tr>
            	  			      <td>
            	  			        <span>&nbsp;&nbsp;&nbsp;</span>
            	  			        <span id="sSubnetMask">Subnet Mask</span>
            	  			      </td>
              					  <td><INPUT type="text" size=18 id="input_IPv4SubnetMask" name="input_IPv4SubnetMask"></td>
            				    </tr>
            				    <tr>
              					  <td>
              					    <span>&nbsp;&nbsp;&nbsp;</span>
              					    <span id="sDefaultGateway">Default Gateway</span>
              					  </td>
              					  <td><INPUT type="text" size=18 id="input_IPv4Gateway" name="input_IPv4Gateway"></td>
            				    </tr>
            				    <TR>
          				  		  <TD>
          				  		    <span>&nbsp;&nbsp;&nbsp;</span>
          				  		    <span id="sDNS1">Primary DNS</span>
          				  		  </TD>
          				  		  <TD><INPUT type="text" size=18 id="input_IPv4DNSIP1" name="input_IPv4DNSIP1"></TD>
        					    </TR>
        					    <TR>
          				  		  <TD>
          				  		    <span>&nbsp;&nbsp;&nbsp;</span>
          				  		    <span id="sDNS2">Secondary DNS</span>
          				  		  </TD>
          				  		  <TD><INPUT type="text" size=18 id="input_IPv4DNSIP2" name="input_IPv4DNSIP2"></TD>
        				        </TR>
            				  </table>
            				</div>
          				  </TD>
        				</TR>
        				<TR>
        				  <TD>
        				    <!--<input type=radio name="radio_ipMode" value="2" onclick="modifyLanSettingUI()">-->
        				    <input type=checkbox id="input_pppoe_enable" onclick="onPPPoEEnable()">
        				  </TD>
        				  <TD>
        				    <span id="sPPPoE">PPPoE</span>
        				  </TD>
        				</TR>
        				<TR>
        				  <TD>
        				  </TD>
        				  <TD>
        				    <div id="div_pppoe_setting">
        				      <table id="id_box_pppoe" cellspacing="3" cellpadding="3" BORDER="0" class=maintext>
            				    <tr>
              					  <td width="120">
              					    <span>&nbsp;&nbsp;&nbsp;</span>
              					    <span id="sUID">User ID</span>
              					  </td>
              					  <td><INPUT type="text" size=18 maxlength=64 id="input_PPPoEUID" name="input_PPPoEUID"></td>
            				    </tr>
            				    <tr>
              				      <td>
              				        <span>&nbsp;&nbsp;&nbsp;</span>
              				        <span id="sPWD">Password</span>
              				      </td>
              					  <td><INPUT type="password" size=18 maxlength=32 id="input_PPPoEPWD" name="input_PPPoEPWD"></td>
            				    </tr>
            				  </table>
            				</div>
            			  </TD>	
        				</TR>
        			  </table>
      				</div>
      				<div class="box" style="display: ">
        			  <h2><span id="sHTTPPortSetting">Port settings</span></h2>
        			  <table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        			    <TR>
          				  <TD width="163px"><span id="sHTTPPort">HTTP Port</span></TD>
          				  <TD><INPUT type="text" size=18 id="input_http_port" name="input_http_port"></TD>
        				</TR>
        				<TR>
          				  <TD width="163px"><span id="sRTSPPort">RTSP Port</span></TD>
          				  <TD><INPUT type="text" size=18 id="input_rtsp_port" name="input_rtsp_port"></TD>
        				</TR>
        			  </table>
      				</div>
      				<div class="box">
        			  <h2><span id="sHTTPSSetting">HTTPS settings</span></h2>
        			  <table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        			    <TR>
          				  <TD width="163px"><span id="sHTTPSEnable">HTTPS Enable</span></TD>
          				  <TD><INPUT type="checkbox" id="input_https_enable" name="input_https_enable" onclick="onHTTPSEnable();"></TD>
        				</TR>
        			  </table>  
        			  <div id="div_https">
        				<table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        			      <TR>
          				    <TD width="166px"><span>&nbsp;&nbsp;&nbsp;</span><span id="sHTTPSPort">HTTPS Port</span></TD>
          				    <TD><INPUT type="text" size=18 id="input_https_port" name="input_https_port"></TD>
        				  </TR>
        			    </table>
        			  </div>
      				</div>
      				<div class="box">
        			  <H4><span id="sUPnPSetting">UPnP SETTINGS</span></H4>
        			  <table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        				<TR>
          				  <TD width="163px"><span id="sUPnPEnable">UPnP Enable</span></TD>
          				  <TD>
          				    <input type="checkbox" id="input_upnp_enable">
          				  </TD>
        				</TR>
        				<TR>
        				  <TD><span id="sUPnPPortForward">UPnP Port Forward</span></TD>
        				  <TD>
          				    <input type="checkbox" id="input_upnp_port_forward_enable" onclick="modifyUPnPUI();">
          				  </TD>
        				</TR>
        			  </table>
        			  <div id="div_upnp_port_forward">
        			    <table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          				    <td width="166px"><span>&nbsp;&nbsp;&nbsp;</span><span id="sExternHTTP">Extern HTTP Port</span></td>
          				    <TD>
          				      <INPUT type="text" size=18 id="input_extern_http" name="input_extern_http">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <td width="166px"><span>&nbsp;&nbsp;&nbsp;</span><span id="sExternHTTPS">Extern HTTPS Port</span></td>
          				    <TD>
          				      <INPUT type="text" size=18 id="input_extern_https" name="input_extern_https">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <td width="166px"><span>&nbsp;&nbsp;&nbsp;</span><span id="sExternRTSP">Extern RTSP Port</span></td>
          				    <TD>
          				      <INPUT type="text" size=18 id="input_extern_rtsp" name="input_extern_rtsp">
          				    </TD>
        				  </TR>
        			  </table>
					  </div>
      				</div>
      				<div class="box">
        			  <H4><span id="sBonjourSetting">BONJOUR SETTINGS</span></H4>
        				<table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD width="163px"><span id="sBonjourEnable">Bonjour Enable</span></TD>
          					<TD>
          					  <input type="checkbox" id="input_bonjour_enable" onclick="modifyBonjourUI();">
          					</TD>
        				  </TR>
        				</table>
        				<div id="div_bonjour_setting">  	
        				  <table cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">
        				    <TR>
        				  	  <TD>
        				  	    <table>
        				  	      <tr>
        				  	        <td width="163px"><span>&nbsp;&nbsp;&nbsp;</span><span id="sBonjourName">Bonjour Name</span></td>
        				  	        <td>
        				  	          <INPUT type="text" size=30 maxlength=32 id="input_bonjourName" name="input_bonjourName">
        				  	          &nbsp;<span style="color:red" id="sBonjourNameLength">32 characters maximum</span>
        				  	        </td>
        				  	      </tr>
        				  	      <tr>
        				  	        <td></td>
        				  	        <td>
        				  	          <span id="sBonjourNameInfo">
            				            (Characters you may use in a Bonjour Name: "upper or lower case 
									    letters", "numbers" and "hyphens".)
							  	      </span>
        				  	        </td>
        				  	      </tr>     
        				  	   	</table>
        				  	  </TD>
        				  	</TR>
        			      </table>
        			    </div>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigSystemNetwork" value="Save">
        				<span>&nbsp;</span>
        				<INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				<span>&nbsp;&nbsp;</span>
        				<INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
      				  </p>
       				  <!-- === END MAINCONTENT === -->
    				</div>
    			  </td>
    			</tr>
    			<tr height=100%><td></td></tr>
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
        	    <br><br>Select &quot;<b>DHCP Connection</b>&quot; if you are running a DHCP server 
			    on your network and would like an IP address assigned to your camera 
			    automatically. You may choose to manually enter a 
        	    <b>Static IP Address</b> and all the relevant network information or 
			    select <b>PPPoE</b> if you connect your DCS-5020L directly to the 
			    Internet that uses a PPPoE service. If you choose PPPoE you must enter 
			    the user ID and password that was given by your Internet Service 
			    Provider.
        	    <br><br><b>DNS</b> (Domain Name System) server is an Internet service 
			    that translates domain names (i.e. www.dlink.com) into IP addresses 
			    (i.e. 192.168.0.20). The IP addresses can be obtained from your ISP.
        	    <br>- <b>Primary DNS</b>: Primary domain name server that translates 
			    names to IP addresses.
        	    <br>- <b>Secondary DNS</b>: Secondary domain name server to backup the 
			    primary one.
        	    <br><br><b>Port Settings</b> - Most ISPs do not open port 80 (a 
			    DCS-5020L default video transfer port) for their residential customers, 
			    the DCS-5020L has the ability to use a different port by enabling the 
			    second http port for its video streaming. Any unused ports can be used 
			    such as port 800, 801, etc. Remember that if the DCS-5020L is behind a 
			    router, you will need to forward that port to the DCS-5020L&#39;s IP 
			    Address. When accessing the camera, you would need to type the camera&#39;s 
			    IP Address followed by the colon character and the port number (for 
			    example http://192.168.0.20:800).
        	    <br><br><b>UPnP</b> Settings will allow you to configure your camera as 
			    an UPnP device in the network.
        	    <br><br><b>Bonjour</b> provides a simple way of discovering various 
			    services on your camera.
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
