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
<script type="text/javascript" language="Javascript" SRC="date.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_stsdev.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_nFirstLoadIfData = 1;
function time_go(){
	stop_date_show();
	time_init(document.getElementById("sTimeAndDate_value").innerHTML);
	start_date_show(document.getElementById("sTimeAndDate_value"));
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_DEVICE_INFO]);
	setText(document.getElementById("sBasicInformation"), item_name[I_BASIC_INFORMATION]);
	setText(document.getElementById("sCameraName"), item_name[I_CAMERA_NAME]);
	setText(document.getElementById("sTimeAndDate"), item_name[I_TIME_AND_DATE]);
	setText(document.getElementById("sFWVersion"), item_name[I_FWVERSION]);
	setText(document.getElementById("sHWVersion"), item_name[I_HWVERSION]);
	setText(document.getElementById("sAgentVersion"), item_name[I_AGENT_VERSION]);
	setText(document.getElementById("sMacAddress"), item_name[I_MAC_ADDRESS]);
	setText(document.getElementById("sIPAddress"), item_name[I_IP_ADDRESS]);
	setText(document.getElementById("sSubnetMask"), item_name[I_SUBNET_MASK]);
	setText(document.getElementById("sDefaultGateway"), item_name[I_DEFAULT_GATEWAY]);
	setText(document.getElementById("sPrimaryDNS"), item_name[I_PRIMARY_DNS]);
	setText(document.getElementById("sSecondaryDNS"), item_name[I_SECONDARY_DNS]);
	setText(document.getElementById("sDDNS"), item_name[I_DDNS]);
	setText(document.getElementById("sUPnPPortForwarding"), item_name[I_UPNP_PORT_FORWARDING]);
	setText(document.getElementById("sWirelessStatus"), item_name[I_WIRELESS_STATUS]);
	setText(document.getElementById("sConnectionMode"), item_name[I_CONNECTION_MODE]);
    setText(document.getElementById("sLink"), item_name[I_LINK]);
	setText(document.getElementById("sSSID"), item_name[I_SSID]);
	setText(document.getElementById("sChannel"), item_name[I_CHANNEL]);
    setText(document.getElementById("sEncryption"), item_name[I_ENCRYPTION]);
    setText(document.getElementById("sPPPoEStatus"), item_name[I_PPPOE_STATUS]);
	document.getElementById("btnRefresh").value = item_name[I_REFRESH];
	document.getElementById("sDeviceInfo").innerHTML = des_item_name[D_DEVICE_INFO];
	document.getElementById("sHelpInfo").innerHTML = des_item_name[D_HELP_INFO];
}
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
	setStatus();
	time_go();
	resizePage();
	if (parent)
    {
        setTimeout("parent.blockUI(false, '', 0);", 500);
    }
}
function reflash()
{
	if (parent)
    {
    	parent.blockUI(true, item_name[I_REFRESHING], 1);
    }

	document.getElementById("if_data").contentWindow.document.location.reload();
}
function setStatus()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	setText(document.getElementById("sCameraName_value"), iffun("CameraName"));
	setText(document.getElementById("sTimeAndDate_value"), iffun("DateTime"));
	
	var strBuild; 
	
	if (parseInt(iffun("Build"), 10) < 10)
		strBuild = "0" + iffun("Build");
	else
		strBuild = iffun("Build");
	
	var splitVersion = iffun("Version").split(".");
	if (splitVersion.length == 3)
	{
		if (parseInt(splitVersion[1], 10) < 10)
			setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + ".0" + splitVersion[1] + "." + strBuild);
		else
			setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + "." + splitVersion[1] + "." + strBuild);
	}
	else
	{
		setText(document.getElementById("sFWVersion_value"), "v" + iffun("Version") + "." + strBuild);
	}
	setText(document.getElementById("sHWVersion_value"), iffun("HWVersion"));
	setText(document.getElementById("sAgentVersion_value"), iffun("AgentVersion"));
	setText(document.getElementById("sMacAddress_value"), iffun("Mac"));
	setText(document.getElementById("sIPAddress_value"), iffun("IP"));
	setText(document.getElementById("sSubnetMask_value"), iffun("SubnetMask"));
	setText(document.getElementById("sDefaultGateway_value"), iffun("Gateway"));
	setText(document.getElementById("sPrimaryDNS_value"), iffun("DNS0"));
	setText(document.getElementById("sSecondaryDNS_value"), iffun("DNS1"));
	setText(document.getElementById("sSSID_value"), iffun("SSID"));
	setText(document.getElementById("sChannel_value"), iffun("Channel"));

	if (iffun("PPPoEEnable") == "0")
		setText(document.getElementById("sPPPoEStatus_value"), item_name[I_DISABLE]);
	else if (iffun("PPPoE") == "0.0.0.0")
		setText(document.getElementById("sPPPoEStatus_value"), item_name[I_PPPOE_CONNECT_FAIL]);
	else
		setText(document.getElementById("sPPPoEStatus_value"), item_name[I_PPPOE_CONNECT_SUCCESS] + " (" + iffun("PPPoE") + ")");

	if (iffun("DDNSEnable") == "1")
		setText(document.getElementById("sDDNS_value"), item_name[I_ENABLE]);
	else
		setText(document.getElementById("sDDNS_value"), item_name[I_DISABLE]);
	
	if (iffun("UPnPPortForward") == "1")
		setText(document.getElementById("sUPnPPortForwarding_value"), item_name[I_ENABLE]);
	else
		setText(document.getElementById("sUPnPPortForwarding_value"), item_name[I_DISABLE]);
	
	if (iffun("Mode") == "0")
		setText(document.getElementById("sConnectionMode_value"), item_name[I_INFRASTRUCTURE]);
	else
		setText(document.getElementById("sConnectionMode_value"), item_name[I_ADHOC]);
	
	if (iffun("Link") == "1")
		setText(document.getElementById("sLink_value"), item_name[I_YES]);
	else
		setText(document.getElementById("sLink_value"), item_name[I_NO]);
	
	if (iffun("Authentication") == "0" && iffun("Encryption") == "0")
		setText(document.getElementById("sEncryption_value"), item_name[I_NONE]);
	else if (iffun("Encryption") == "1")
		setText(document.getElementById("sEncryption_value"), item_name[I_WEP]);
	else if (iffun("Authentication") == "2")
		setText(document.getElementById("sEncryption_value"), item_name[I_WPAPSK]);
	else if (iffun("Authentication") == "3")
		setText(document.getElementById("sEncryption_value"), item_name[I_WPA2PSK]);
	else if (iffun("Authentication") == "4")
		setText(document.getElementById("sEncryption_value"), item_name[I_WPAPSK] + "/" + item_name[I_WPA2PSK]);	
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none">
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
      					<h1><span id="sTitle">Device Info</span></h1>
      					<span id="sDeviceInfo">
      					  All of your network connection details are displayed on this page. The 
						  firmware version is also displayed here.
						</span>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sBasicInformation">Basic information</span></h2>
        				<table cellpadding="1" cellspacing="1" border="0" width="525">
        				  <TR><TD width=25%><span id="sCameraName">Camera Name</span></TD><TD><span id="sCameraName_value"></span></TD></TR>
        				  <TR><TD><span id="sTimeAndDate">Time &amp; Date</span></TD><TD><span id="sTimeAndDate_value"></span></TD></TR>
        				  <TR><TD><span id="sFWVersion">Firmware Version</span></TD><TD><span id="sFWVersion_value"></span></TD></TR>
        				  <TR><TD><span id="sHWVersion">Hardware Version</span></TD><TD><span id="sHWVersion_value"></span></TD></TR>
        				  <TR><TD><span id="sAgentVersion">Agent Version</span></TD><TD><span id="sAgentVersion_value"></span></TD></TR>
        				  <TR><TD><span id="sMacAddress">MAC Address</span></TD><TD><span id="sMacAddress_value"></span></TD></TR>
        				  <TR><TD><span id="sIPAddress">IP Address</span></TD><TD><span id="sIPAddress_value"></span></TD></TR>
        				  <TR><TD><span id="sSubnetMask">Subnet Mask</span></TD><TD><span id="sSubnetMask_value"></span></TD></TR>
        				  <TR><TD><span id="sDefaultGateway">Default Gateway</span></TD><TD><span id="sDefaultGateway_value"></span></TD></TR>
        				  <TR><TD><span id="sPrimaryDNS">Primary DNS</span></TD><TD><span id="sPrimaryDNS_value"></span></TD></TR>
        				  <TR><TD><span id="sSecondaryDNS">Secondary DNS</span></TD><TD><span id="sSecondaryDNS_value"></span></TD></TR>
        				  <TR><TD><span id="sPPPoEStatus">PPPoE Status</span></TD><TD><span id="sPPPoEStatus_value"></span></TD></TR>
        				  <TR><TD><span id="sDDNS">DDNS</span></TD><TD><span id="sDDNS_value"></span></TD></TR>
        				  <TR><TD><span id="sUPnPPortForwarding">UPnP Port Forwarding</span></TD><TD><span id="sUPnPPortForwarding_value"></span></TD></TR>
        				</table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sWirelessStatus">Wireless Status</span></h2>
        				<table cellpadding="1" cellspacing="1" border="0" width="525">
        				  <TR>
        				    <TD width=25%><span id="sConnectionMode">Connection Mode</span></TD>
        				    <TD><span id="sConnectionMode_value"></span></TD>
        				  </TR>
        				  <TR><TD><span id="sLink">Link</span></TD><TD><span id="sLink_value"></span></TD></TR>
        				  <TR><TD><span id="sSSID">SSID</span></TD><TD><span id="sSSID_value"></span></TD></TR>
        				  <TR><TD><span id="sChannel">Channel</span></TD><TD><span id="sChannel_value"></span></TD></TR>
        				  <TR><TD><span id="sEncryption">Encryption</span></TD><TD><span id="sEncryption_value"></span></TD></TR>
        				</table>
      				  </div>
      				  <div align="center"><br><INPUT type=button id="btnRefresh" value='Refresh' onClick="reflash();"></div>
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
        	  <br><br>All of your network connection details are displayed on this page.
      		</span>
      		</td>
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="stsdev_data.asp" style="display: none"></iframe>
</body>
</html>