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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_helphome.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
function loadText()
{
	setText(document.getElementById("sSupportMenu"), item_name[I_SUPPORT_MENU]);
	setText(document.getElementById("sTitleCamera"), item_name[I_CAMERA]);
	setText(document.getElementById("sCamera"), item_name[I_CAMERA]);
	document.getElementById("sH264").innerHTML = des_item_name[D_H264];
	document.getElementById("sMJPEG").innerHTML = des_item_name[D_MJPEG];
	document.getElementById("sZoom").innerHTML = des_item_name[D_ZOOM];
	document.getElementById("sAudio").innerHTML = des_item_name[D_AUDIO];
	document.getElementById("sNightMode").innerHTML = des_item_name[D_NIGHT_MODE];
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
        				<span id="sTitleCamera">Camera</span><br>
      				  </DIV>
      				  <div class="box">
      				    <a id="Camera" NAME="Camera"></a>
        			    <h2><span id="sCamera">Camera</span></h2>
        			    <span id="sH264">
        				  <b>H.264</b> - Use H.264 streaming to view the camera&#39;s live video. Your 
						  computer needs to have Java installed in order to use H.264 to view the 
						  camera&#39;s live video if your Browser is not IE Browser, please visit <a target='_parent' href="http://www.java.com">
						  http://www.java.com</A> to download and install Java.<br><br>
						</span>
						<span id="sMJPEG">  
        				  <b>MJPEG </b> - Use MJPEG streaming to view the camera&#39;s live video. 
						  Your computer needs to have Java installed in order to use MJPEG to view 
						  the camera&#39;s live video, please visit <a target='_parent' href="http://www.java.com">
						  http://www.java.com</A> to download and install Java.<br><br>
						</span>
						<span id="sZoom" style="display: ">  
        				  <b>Zoom</b> - Zoom is a digital zoom. It allows you to magnify images by 
						  up to 4x.<br><br>
						</span>
						<span id="sAudio">
        				  <b>Audio On/Off</b> - You can mute the audio by pressing the Off button. 
						  Press the On button to monitor the audio again.<br><br>
						</span>
						<span id="sNightMode">
        				  <b>Night Mode On/Off</b> - You can use the button to manually set the 
						  day/night function of the camera. In order to use this option, first set 
						  the Day/Night Mode setting to Manual.<br><br>
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
