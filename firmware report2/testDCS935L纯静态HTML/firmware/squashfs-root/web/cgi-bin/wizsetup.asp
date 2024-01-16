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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wizsetup.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_token = getWebQuery("token", "");
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var CameraName=decodeBase64("<% getCamSystemInfo(CameraName); %>");
function init()
{
	loadText();
	//set cameraName
	setText(document.getElementById("sProduct_value"), CameraName);
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
	document.getElementById("btn_back").value = item_name[I_BACK];
	document.getElementById("btn_next").value = item_name[I_NEXT];
	document.getElementById("btn_cancel").value = item_name[I_CANCEL];
	document.getElementById("sCopyRight").innerHTML = des_item_name[D_COPYRIGHT];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_IFNO];
	document.getElementById("sStep1Info").innerHTML = des_item_name[D_SETP1_INFO];
	document.getElementById("sStep2Info").innerHTML = des_item_name[D_SETP2_INFO];
	document.getElementById("sStep3Info").innerHTML = des_item_name[D_SETP3_INFO];
	document.getElementById("sStep4Info").innerHTML = des_item_name[D_SETP4_INFO];
}
</script>
</head>
<body topmargin="1" leftmargin="0" rightmargin="0" bgcolor="#757575">
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
        	  <div id="id_menu">
        	    <br>
        	    <br>
          		<div id=box_header>
            	  <h1 align="left"><span id="sTitle">welcome to d-link setup wizard - internet connection setup</span></h1>
            	  <div align="left">
            	  <span id="sTitleInfo">
            		This wizard will guide you through a step-by-step process to 
					configure your new D-Link Camera and connect the camera to the 
					internet.<br><br>
				  </span>
				  </div>
            	  <center>
              	    <div align="left" style="text-align:left; width:228px;">
              		  <li><span id="sStep1Info"><b>Step 1:</b> Setup LAN Settings</span>
              		  <li><span id="sStep2Info"><b>Step 2:</b> Setup DDNS Settings</span>
              		  <li><span id="sStep3Info"><b>Step 3:</b> Server Name Settings</span>
              		  <li><span id="sStep4Info"><b>Step 4:</b> Setup Time Zone</span>
              		</div><br><br>
              		<input id="btn_back" type="button" value="Back" onclick="javascript:location.href='/setup.asp?menu=setup'">
              		<input id="btn_next" type="button" value="Next" onclick="javascript:location.href='wizsetup2.asp?token=' + g_token">
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
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
