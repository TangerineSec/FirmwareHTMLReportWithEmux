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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_support.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_SUPPORT_MENU]);
	setText(document.getElementById("sTitleLive"), item_name[I_LIVE_VIDEO]);
	setText(document.getElementById("sTitleSetup"), item_name[I_SETUP]);
	setText(document.getElementById("sTitleMaintenance"), item_name[I_MAINTENANCE]);
	setText(document.getElementById("sTitleStatus"), item_name[I_STATUS]);
	setText(document.getElementById("sLiveVideoTitle"), item_name[I_LIVE_VIDEO]);
	setText(document.getElementById("sCamera"), item_name[I_CAMERA]);
	setText(document.getElementById("sSetupTitle"), item_name[I_SETUP]);
	setText(document.getElementById("sWizard"), item_name[I_WIZARD]);
	setText(document.getElementById("sNetworkSetup"), item_name[I_NETWORK_SETUP]);
	setText(document.getElementById("sWirelessSetup"), item_name[I_WIRELESS_SETUP]);
	setText(document.getElementById("sExtenderSetup"), item_name[I_EXTENDER_SETUP]);
	setText(document.getElementById("sDynamicDNS"), item_name[I_DYNAMIC_DNS]);
	setText(document.getElementById("sIPFilter"), item_name[I_IPFILTER]);
	setText(document.getElementById("sImageSetup"), item_name[I_IMAGE_SETUP]);
	setText(document.getElementById("sAudioAndVideo"), item_name[I_AUDIO_AND_VIDEO]);
	setText(document.getElementById("sPrivacyMask"), item_name[I_PRIVACY_MASK]);
	setText(document.getElementById("sMotionDetection"), item_name[I_MOTION_DETECTION]);
	setText(document.getElementById("sSoundDetection"), item_name[I_SOUND_DETECTION]);
	setText(document.getElementById("sMail"), item_name[I_MAIL]);
	setText(document.getElementById("sFTP"), item_name[I_FTP]);
	setText(document.getElementById("sSnapshot"), item_name[I_SNAPSHOT]);
	setText(document.getElementById("sVideoClip"), item_name[I_VIDEO_CLIP]);
	setText(document.getElementById("sTimeAndDate"), item_name[I_TIME_AND_DATE]);
	setText(document.getElementById("sDayNightMode"), item_name[I_DAY_NIGHT_MODE]);
	setText(document.getElementById("sMaintenanceTitle"), item_name[I_MAINTENANCE]);
	setText(document.getElementById("sAdmin"), item_name[I_ADMIN]);
	setText(document.getElementById("sSystem"), item_name[I_SYSTEM]);
	setText(document.getElementById("sFWUpgrade"), item_name[I_FIRMWARE_UPGRADE]);
	setText(document.getElementById("sStatusTitle"), item_name[I_STATUS]);
	setText(document.getElementById("sDeviceInfo"), item_name[I_DEVICE_INFO]);
	setText(document.getElementById("sSystemLog"), item_name[I_SYSTEM_LOG]);
	setText(document.getElementById("sEventLog"), item_name[I_EVENT_LOG]);

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
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
    <tr>
      <td valign="top">
        <table id="data_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
          <tr>
  		    <td valign="top" id="maincontent_container" height="510">
    		  <table height="510" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
    		    <tr>
    		      <td>
    			    <div id="maincontent">
      			      <!-- === BEGIN MAINCONTENT === -->
      				  <DIV id=box_header>
        			    <H1><span id="sTitle">SUPPORT MENU</span></H1>
        			    <span id="sTitleLive">Live Video</span><br>
        			    <span id="sTitleSetup">Setup</span><br>
        			    <span id="sTitleMaintenance">Maintenance</span><br>
        			    <span id="sTitleStatus">Status</span><br>
      			      </DIV>
      				  <div class="box">
        			    <H2><span id="sLiveVideoTitle">Live Video</span></H2>
        			    <A target="_parent" HREF="setup.asp?menu=help&page=helphome"><B><span id="sCamera">Camera</span></B></A><br>
      				  </DIV>
      				  <div class="box">
        			    <H2><span id="sSetupTitle">Setup</span></H2>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Wizard><B><span id="sWizard">Wizard</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Network><B><span id="sNetworkSetup">Network Setup</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Wireless><B><span id="sWirelessSetup">Wireless Setup</span></B></A><br>
        			    <A style="display: none" target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=ExtWlan><B><span id="sExtenderSetup">Extender Setup</span></B></A>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=DDNS><B><span id="sDynamicDNS">Dynamic DNS</span></B></A><br>
        			    <A style="display: none" target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=IpFilter><B><span id="sIPFilter">IP Filter</span></B></A>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Image><B><span id="sImageSetup">Image Setup</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=AudioAndVideo><B><span id="sAudioAndVideo">Audio and Video</span></B></A><br>
        			    <A style="display: none" target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=PrivacyMask><b><span id="sPrivacyMask">Privacy Mask</span></b></A>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Motion><b><span id="sMotionDetection">Motion Detection</span></b></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Sound><B><span id="sSoundDetection">Sound Detection</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Mail><B><span id="sMail">Mail</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=FTP><B><span id="sFTP">FTP</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Snapshot><B><span id="sSnapshot">Snapshot</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=VideoClip><B><span id="sVideoClip">Video Clip</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Time><B><span id="sTimeAndDate">Time and Date</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpadva&tag=Night><B><span id="sDayNightMode">Day/Night Mode</span></B></A><br>
      				  </DIV>
      				  <div class="box">
        			    <H2><span id="sMaintenanceTitle">Maintenance</span></H2>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helptool&tag=#Device><B><span id="sAdmin">Admin</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helptool&tag=#Backup><B><span id="sSystem">System</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helptool&tag=#Firmware><B><span id="sFWUpgrade">Firmware Upgrade</span></B></A><br>
      				  </DIV>
      				  <div class="box">
        			    <H2><span id="sStatusTitle">status</span></H2>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpstat&tag=#DeviceInfo><B><span id="sDeviceInfo">Device Info</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpstat&tag=#SystemLog><B><span id="sSystemLog">System Log</span></B></A><br>
        			    <A target="_parent" HREF=setup.asp?menu=help&page=helpstat&tag=#EventLog><B><span id="sEventLog">Event Log</span></B></A><br>
      				  </DIV>
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
