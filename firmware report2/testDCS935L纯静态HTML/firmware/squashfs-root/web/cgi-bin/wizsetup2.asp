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
if (top != self)
	top.location = self.location;
var language = detectOSLanguage();
if (getCookie("language") != null)
{
	var cookieLanguage = getCookie("language");
	if (cookieLanguage == "en" || cookieLanguage == "sc" || cookieLanguage == "tc" || 
		cookieLanguage == "de" || cookieLanguage == "es" || cookieLanguage == "it" || cookieLanguage == "fr")
		language = cookieLanguage;
}
var expiresDate=new Date();expiresDate.setFullYear(2100,1,1);setCookie("language", language, expiresDate);
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wizsetup2.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_token = getWebQuery("token", "");
var g_showEffect=0;
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var IPv4Type=decodeBase64("<% getSWIPv4Info(BootProto); %>");
var IPv4IP=decodeBase64("<% getSWIPv4Info(IP); %>");
var IPv4Mask=decodeBase64("<% getSWIPv4Info(SubnetMask); %>");
var IPv4Gateway=decodeBase64("<% getSWIPv4Info(Gateway); %>");
var IPv4DNS1=decodeBase64("<% getSWIPv4Info(DNS0); %>");
var IPv4DNS2=decodeBase64("<% getSWIPv4Info(DNS1); %>");
var IPv4PPPoEUID=decodeBase64("<% getSWIPv4Info(PPPoEUID); %>");
var IPv4PPPoEPWD=decodeBase64("<% getSWIPv4Info(PPPoEPWD); %>");
var IPv4PPPoEEnable=decodeBase64("<% getSWIPv4Info(PPPoEEnable); %>");
var CameraName=decodeBase64("<% getSWSystemInfo(CameraName); %>");
var CameraNameOri=decodeBase64("<% getCamSystemInfo(CameraName); %>");
function init()
{
	document.body.style.display = "";
	loadText();
	setConfig();
	modifyLanSettingUI();
	onPPPoEEnable();
	g_showEffect = "fast";
}
function loadText()
{
	document.title = item_name[I_DINK_CORPORATION];
	if (Wireless == "1")
		document.title += " | " + item_name[I_WIRELESS];
	document.title += " " + item_name[I_INTERNET_CAMERA];
	document.title += " | " + item_name[I_LIVE_VIDEO];
	setText(document.getElementById("sProduct"), item_name[I_PRODUCT]);
	setText(document.getElementById("sFWVersion"), item_name[I_FWVERSION]);
	setText(document.getElementById("sTitle"), item_name[I_TITLE]);
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
	document.getElementById("btn_back").value = item_name[I_BACK];
	document.getElementById("btn_next").value = item_name[I_NEXT];
	document.getElementById("btn_cancel").value = item_name[I_CANCEL];
	document.getElementById("sCopyRight").innerHTML = des_item_name[D_COPYRIGHT];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_IFNO];
}
function setConfig()
{
	//set cameraName
	setText(document.getElementById("sProduct_value"), CameraNameOri);
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
	
	if (IPv4PPPoEEnable == "1")
		document.getElementById("input_pppoe_enable").checked = true;
	else
		document.getElementById("input_pppoe_enable").checked = false;
		
	var Version = decodeBase64("<% getHWInfo(Version); %>");
	var Build = decodeBase64("<% getHWInfo(Build); %>");
	var strBuild; 
	
	if (parseInt(Build, 10) < 10)
		strBuild = "0" + Build;
	else
		strBuild = Build;
	
	var splitVersion = Version.split(".");
	if (splitVersion.length == 3)
	{
		if (parseInt(splitVersion[1], 10) < 10)
		{
			//setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + ".0" + splitVersion[1] + " b" + strBuild);
			setText(document.getElementById("sFWVersion_value"), splitVersion[0] + ".0" + splitVersion[1]);
		}
		else
		{
			//setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + "." + splitVersion[1] + " b" + strBuild);
			setText(document.getElementById("sFWVersion_value"), splitVersion[0] + "." + splitVersion[1]);
		}
	}
	else
	{
		//setText(document.getElementById("sFWVersion_value"), "v" + Version + " b" + strBuild);
		setText(document.getElementById("sFWVersion_value"), Version);
	}
}
function modifyLanSettingUI()
{
/*
  	if (document.getElementsByName("radio_ipMode")[0].checked)
  	{
  		disable_box(id_box_staticip);
  	}
  	else if (document.getElementsByName("radio_ipMode")[1].checked)
  	{
     	enable_box(id_box_staticip);
  	}
*/
	if (document.getElementsByName("radio_ipMode")[0].checked)
  	{
     	$("#div_static_ip_setting").hide(g_showEffect);
  	}
  	else if (document.getElementsByName("radio_ipMode")[1].checked)
  	{
     	$("#div_static_ip_setting").show(g_showEffect);
  	}	
}
function onPPPoEEnable()
{
	if (document.getElementById("input_pppoe_enable").checked)
	{
		$("#div_pppoe_setting").show(g_showEffect);
	}
	else
	{
		$("#div_pppoe_setting").hide(g_showEffect);
	}
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	window.location.href='wizsetup3.asp?token=' + g_token;
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
  	
  	var url = "/cgi/admin/smartwizard.cgi";
  	var params = "";
  	if(document.getElementsByName("radio_ipMode")[0].checked){
		params += "BootProto=1";
	} else if(document.getElementsByName("radio_ipMode")[1].checked) {
		params += "BootProto=0";
		params += "&IP=" + document.getElementById("input_IPv4Address").value;
		params += "&SubnetMask=" + encodeURIComponent(document.getElementById("input_IPv4SubnetMask").value);
		params += "&Gateway=" + encodeURIComponent(document.getElementById("input_IPv4Gateway").value);
	} 
	if (document.getElementById("input_pppoe_enable").checked) {
		params += "&PPPoEEnable=1";
		params += "&PPPoEUID=" + encodeURIComponent(document.getElementById("input_PPPoEUID").value);
		params += "&PPPoEPWD=" + encodeURIComponent(document.getElementById("input_PPPoEPWD").value);
	}
	else
		params += "&PPPoEEnable=0";
	params += "&DNS0=" + encodeURIComponent(document.getElementById("input_IPv4DNSIP1").value);
	params += "&DNS1=" + encodeURIComponent(document.getElementById("input_IPv4DNSIP2").value);
	params += "&action=ip_setting";

	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function ifDataOK()
{
	init();
}
</script>
</head>
<body topmargin="1" leftmargin="0" rightmargin="0" bgcolor="#757575" style="display: none" onload="document.getElementById('if_data').src = 'wizard_data.asp?' + g_token">
  <table id="tb_top" class="header_container" border="0" cellpadding="5" cellspacing="0" width="838" align="center">
    <tr>
      <td width="100%"><span id="sProduct">Product</span>: <a href="http://support.dlink.com/" target="_blank" style="color:white;text-decoration:none"><span id="sProduct_value"></span></a></td>
      <td align="right" nowrap></td>
      <td align="right" nowrap><span id="sFWVersion">Firmware version</span><span>:&nbsp;</span><span id="sFWVersion_value"></span>&nbsp;</td>
    </tr>
  </table>
  <div id="title_container">
    <table id="topnav_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
      <tr>
        <td align="center" valign="middle"><img src="img/title.gif"></td>
      </tr>
    </table>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" width="838" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">
    <tr>
  	  <td valign="top" height="520" align="center">
    	<table cellSpacing=0 cellPadding=0 border=0 width="600">
    	  <tr>
      		<td valign="top" id="maincontent_container">
        	  <div id="id_lan" style="display:"><br><br>
          		<div id=box_header>
            	  <h1 align="left"><span id="sTitle">step 1: setup lan settings</span></h1>
            	  <div align="left">
            	  <span id="sTitleInfo">
            		Please select whether your camera will connect to the Internet with 
					a DHCP connection, Static IP address or PPPoE. If your camera is 
					connected to a router, or you are unsure which settings to pick, 
					D-Link recommends that you keep the default selection of DHCP 
					connection. Otherwise, click on Static IP address to manually assign 
					an IP address before clicking on the <b>Next</b> button.<br><br>
				  </span>
				  </div>	
            	  <center>
              		<table align="center">
              		  <tr>
                		<td><input type=radio name="radio_ipMode" value="1"  onclick="modifyLanSettingUI();"></td>
                		<td width="225" align="left"><span id="sDHCP">DHCP Connection</span></td>
              		  </tr>
              		  <tr>
                		<td><input type=radio name="radio_ipMode" value="0" onclick="modifyLanSettingUI();"></td>
                		<td align="left"><span id="sStaticIP">Static IP Address</span></td>
              		  </tr>
              		  <tr>
                		<td></td>
                		<td>
                		  <div id="div_static_ip_setting">
                  		    <table id="id_box_staticip" name="id_box_staticip" cellspacing=0 cellpadding=3 BORDER=0 class=maintext>
                  		      <tr align="left">
                    		    <td>&nbsp;<span id="sIPAddress">IP Address</span></td>
                    		    <td><INPUT type="text" size=18 id="input_IPv4Address" name="input_IPv4Address"></td>
                  			  </tr>
                  			  <tr align="left">
                    		    <td>&nbsp;<span id="sSubnetMask">Subnet Mask</span></td>
                    		    <td><INPUT type="text" size=18 id="input_IPv4SubnetMask" name="input_IPv4SubnetMask"></td>
                  			  </tr>
                  			  <tr align="left">
                    		    <td nowrap>&nbsp;<span id="sDefaultGateway">Default Gateway</span></td>
                    		    <td><INPUT type="text" size=18 id="input_IPv4Gateway" name="input_IPv4Gateway"></td>
                  			  </tr>                  			
                  			  <tr align="left">
                    		    <td nowrap>&nbsp;<span id="sDNS1">Primary DNS</span></td>
                    		    <td><INPUT type="text" size=18 id="input_IPv4DNSIP1" name="input_IPv4DNSIP1"></td>
                  			  </tr>
                  			  <tr align="left">
                    		    <td nowrap>&nbsp;<span id="sDNS2">Secondary DNS</span></td>
                    		    <td><INPUT type="text" size=18 id="input_IPv4DNSIP2" name="input_IPv4DNSIP2"></td>
                  			  </tr>
                  		    </table>
                  		  </div>
                		</td>
              		  </tr>
              		  <tr align="left">
                		<td><input type="checkbox" id="input_pppoe_enable" value="2" onclick="onPPPoEEnable();"></td>
                		<td><span id="sPPPoE">PPPoE</span></td>
              		  </tr>
              		  <tr align="left">
                		<td></td>
                		<td>
                		  <div id="div_pppoe_setting">
                  		    <table id="id_box_pppoe" name="id_box_pppoe" cellspacing=0 cellpadding=3 BORDER=0 class=maintext>
                  			  <tr>
                    		    <td>&nbsp;<span id="sUID">User ID</span></td>
                    		    <td><INPUT type="text" size=18 maxlength=64 id="input_PPPoEUID" name="input_PPPoEUID"></td>
                  			  </tr>
                  		      <tr>
                    		    <td>&nbsp;<span id="sPWD">Password</span></td>
                    		    <td><INPUT type="password" size=18 maxlength=32 id="input_PPPoEPWD" name="input_PPPoEPWD"></td>
                  			  </tr>
                  		    </table>
                  		  </div>
                		</td>
              		  </tr>
              		</table>
              		<br>
              		<br>
              		<input id="btn_back" type="button" value="Back" onclick="javascript:location.href='wizsetup.asp?token=' + g_token">
              		<input id="btn_next" type="button" value="Next" onclick="save_setting();">
              		<input id="btn_cancel" type="button" value="Cancel" onclick="javascript:location.href='/setup.asp?menu=setup'">
            	  </center>
          		</div>
        	  </div>
      		</td>   
    	  </tr>
    	</table>
  	  </td>
    </tr>
  </table>
  <table id="tb_bottom" class="footer_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
    <tr>
      <td width="125" align="center">&nbsp;&nbsp;<img src="img/security.gif" width="114" height="35"></td>
      <td width="10">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <br>
  <div id="div_copyright" align="center">
    <FONT color=#ffffff><span id="sCopyRight">Copyright 2012 - 2013, D-Link 
	Corporation / D-Link Systems, Inc. All rights reserved.</span></font>
  </div>
  <br>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>
</html>
