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
var language = detectOSLanguage();
if (getCookie("language") != null)
{
	var cookieLanguage = getCookie("language");
	if (cookieLanguage == "en" || cookieLanguage == "sc" || cookieLanguage == "tc" || 
		cookieLanguage == "de" || cookieLanguage == "es" || cookieLanguage == "it" || cookieLanguage == "fr")
		language = cookieLanguage;
}
var expiresDate=new Date();expiresDate.setFullYear(2100,1,1);setCookie("language", language, expiresDate);
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_helpstat.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
function loadText()
{
	setText(document.getElementById("sSupportMenu"), item_name[I_SUPPORT_MENU]);
	setText(document.getElementById("sTitleDeviceInfo"), item_name[I_DEVICE_INFO]);
	setText(document.getElementById("sTitleSystemLog"), item_name[I_SYSTEM_LOG]);
	setText(document.getElementById("sTitleEventLog"), item_name[I_EVENT_LOG]);
	setText(document.getElementById("sSystemLog"), item_name[I_SYSTEM_LOG]);
	setText(document.getElementById("sEventLog"), item_name[I_EVENT_LOG]);
	setText(document.getElementById("sDeviceInfo"), item_name[I_DEVICE_INFO]);
	document.getElementById("sDeviceInfoDes").innerHTML = des_item_name[D_DEVICE_INFO];
	document.getElementById("sSystemLogInfoDes").innerHTML = des_item_name[D_SYSTEM_LOG_INFO];
	document.getElementById("sEventLogInfoDes").innerHTML = des_item_name[D_EVENT_LOG_INFO];
}
function resizePage()
{
	if (parent)
	{
		parent.resetIframeHeight(document.body.clientHeight);
	}
}
function init()
{
	loadText();
	resizePage();
	setTimeout('gotoTag();', 10);
}
function gotoTag()
{
	var tag = getWebQuery("tag", "");
	if (tag != "")
	{
		//window.location.replace("#" + tag);
		document.getElementById(tag).scrollIntoView(true);
	}
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
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
      				  <DIV id=box_header>
        			    <H1><span id="sSupportMenu">SUPPORT MENU</span></H1>
        				<span id="sTitleDeviceInfo">Device Info</span><br>
        				<span id="sTitleSystemLog">System Log</span><br>
        				<span id="sTitleEventLog">Event Log</span><br>
      				  </DIV>
      				  <div class="box">
      				    <a id="DeviceInfo" NAME="DeviceInfo"></a>
        			    <h2><span id="sDeviceInfo">Device Info</span></h2>
        			    <span id="sDeviceInfoDes">
        				  This page displays all the information about the camera and network 
						  settings.
						</span>
      				  </div>
      				  <br>
      				  <div class="box">
      				    <a id="SystemLog" NAME="SystemLog"></a>
        			    <h2 id="sSystemLog">System Log</h2>
        			    <span id="sSystemLogInfoDes">
        				  View the system log file. This file reveals all the useful information like system boot messages.
						</span>  
      				  </div>
      				  <br>
      				  <div class="box">
      				    <a id="EventLog" NAME="EventLog"></a>
        			    <h2 id="sEventLog">Event Log</h2>
        			    <span id="sEventLogInfoDes">
        				  View the event log file. This file reveals all the useful information like motion detection messages.
						</span>  
      				  </div>
					  <br>
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
	</tr>
  </table>
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
