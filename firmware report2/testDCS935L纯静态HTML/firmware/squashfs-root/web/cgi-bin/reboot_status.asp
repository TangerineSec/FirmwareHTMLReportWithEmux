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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_reboot_status.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var num=60;
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_REBOOT_THE_DEVICE]);
	document.getElementById("sTitleInfo").innerHTML= des_item_name[D_REBOOT_INFO];
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
	Browser = CheckBrower();
	if ((Browser != "Netscape") && (Browser != "Opera<9"))
		iTimerID = window.setInterval("ShowFrameRate()", 1000);
	resizePage();
}
function changeInnerHTML(divId,html)
{
   var e=null;
   if (document.getElementById) 
   {
      e=document.getElementById(divId);
      if(!e)return false;
      if ("innerHTML" in e)
      {
         e.innerHTML=html;return true
      }
      else 
         if ("firstChild" in e && "data" in e.firstChild)
         {
            e.firstChild.data=html;return true;
         }
   }
   return false;
}
function ShowFrameRate() {
    if (num < 10)
       changeInnerHTML('CountTime', "0"+num.toString()+" ");
    else
      changeInnerHTML('CountTime', num.toString()+" ");
    num=num-1;
    if (num < 0)
       window.clearInterval(iTimerID);
    if (num == 4)
       window.setInterval("GetReturnUrl()", 5000);
}
function GetReturnUrl() {
    location.href="file.asp";
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
      				  <div id="box_header"> 
      					<h1><span id="sTitle">Reboot the Device</span></h1>
      					<span id="sTitleInfo">
      					  The camera is restarting. It may take up to 60 seconds to reboot.<br><br>
      					  Connection with the camera has been cut. If the camera&#39;s web page is not 
						  automatically displayed after reboot, use the setup wizard software 
						  provided with your camera to search for and connect to the camera.<br><br>
      					  Please wait for <SPAN ID="CountTime"></SPAN> seconds ...
      					</span>  
      				  </div>
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
      		<td id="help_text"></td>
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
