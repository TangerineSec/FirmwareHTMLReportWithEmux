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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wizsetup6.js\"></scr" + "ipt>");
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_timezone.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_token = getWebQuery("token", "");
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var IPv4Type=decodeBase64("<% getSWIPv4Info(BootProto); %>");
var IPv4IP=decodeBase64("<% getSWIPv4Info(IP); %>");
var DDNSEnable=decodeBase64("<% getSWDDNSInfo(Enable); %>");
var CameraName=decodeBase64("<% getSWSystemInfo(CameraName); %>");
var CameraNameOri=decodeBase64("<% getCamSystemInfo(CameraName); %>");
var TimeZone=decodeBase64("<% getSWDataTimeInfo(TimeZone); %>");
function init()
{
	document.body.style.display = "";
	loadText();
	setConfig();
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
	setText(document.getElementById("sTimezone"), item_name[I_TIMEZONE]);
	setText(document.getElementById("sIPAddress"), item_name[I_IP_ADDRESS]);
	setText(document.getElementById("sCameraName"), item_name[I_CAMERA_NAME]);
	setText(document.getElementById("sDDNS"), item_name[I_DDNS]);
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
	if (IPv4Type == "1")
		setText(document.getElementById("id_ipaddr"), item_name[I_DHCP]);
	else if (IPv4Type == "0")
		setText(document.getElementById("id_ipaddr"), IPv4IP);
	else if (IPv4Type == "2")
		setText(document.getElementById("id_ipaddr"), item_name[I_PPPOE]);
	setText(document.getElementById("id_camera_name"), CameraName);
	document.getElementById("select_timezone").value = TimeZone;
	var timezoneIndex = document.getElementById("select_timezone").selectedIndex;
	if (timezoneIndex != -1)
	{
		setText(document.getElementById("id_timezone"), document.getElementById("select_timezone").options[timezoneIndex].text);
	}
	if (DDNSEnable == "1")
		setText(document.getElementById("id_ddns_msg"), item_name[I_ENABLE]);
	else
		setText(document.getElementById("id_ddns_msg"), item_name[I_DISABLE]);
		
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
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	//window.location.href='setup.asp?menu=setup&page=wizard&wizardtype=1';
        	window.location.href='setup.asp?menu=setup&page=wizard';
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
	var url = "/cgi/admin/smartwizard.cgi";
  	var params = "action=update";
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
        	  <div id="id_list" style="display:"><br><br>
          		<div id=box_header>
            	  <h1 align="left"><span id="sTitle">step 5: Setup complete</span></h1>
            	  <div align="left">
            	  <span id="sTitleInfo">
            		Here is a summary of your camera settings. Click <b>Back</b> to 
					modify the settings, or click <b>Apply</b> if all settings are 
					correct. It is recommended you write down this information for 
					future access or reference.<br><br>
				  </span>
				  </div>
            	  <center>
              	    <table align="center">
              		  <TR align="left">
                		<TD width=110>　</TD>
                		<TD width=115><span id="sIPAddress">IP Address</span></TD>
                		<TD width=298><DIV id=id_ipaddr></DIV></TD>
              		  </TR>
              		  <TR align="left">
                		<TD width=110>　</TD>
                		<TD width=115><span id="sCameraName">IP Camera Name</span></TD>
                		<TD width=298><DIV id=id_camera_name></DIV></TD>
              		  </TR>
              		  <TR align="left">
                		<TD width=110>　</TD>
                		<TD width=115><span id="sTimezone">Time Zone</span></TD>
                		<TD width=298><DIV id=id_timezone></DIV></TD>
              		  </TR>
              		  <TR align="left">
                		<TD width=110>　</TD>
                		<TD width=115><span id="sDDNS">DDNS</span></TD>
                		<TD width=298><DIV id=id_ddns_msg></DIV></TD>
              		  </TR>
              		</table>
              		<br>
              		<br>
              		<input id="btn_back" type="button" value="Back" onclick="javascript:location.href='wizsetup5.asp?token=' + g_token">
              		<input id="btn_next" type="button" value="Apply" onclick="save_setting();">
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
  <div style="display: none">
    <table>
      <tr>
        <td>
          <SELECT id="select_timezone" name="select_timezone" size="1" onchange="onTimezoneChanged();" onkeyup="onTimezoneChanged();">
            <% printTimeZone(); %>
          </select>
        </td>
      </tr>
    </table>
  </div>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>
</html>
