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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_helpadva.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
function loadText()
{
	setText(document.getElementById("sSupportMenu"), item_name[I_SUPPORT_MENU]);
	setText(document.getElementById("sTitleWizard"), item_name[I_WIZARD]);
	setText(document.getElementById("sTitleNetworkSetup"), item_name[I_NETWORK_SETUP]);
	setText(document.getElementById("sTitleWirelessSetup"), item_name[I_WIRELESS_SETUP]);
	setText(document.getElementById("sTitleExtenderSetup"), item_name[I_EXTENDER_SETUP]);
	setText(document.getElementById("sTitleDDNS"), item_name[I_DDNS]);
	setText(document.getElementById("sTitleIPFilter"), item_name[I_IPFILTER]);
	setText(document.getElementById("sTitleImageSetup"), item_name[I_IMAGE_SETUP]);
	setText(document.getElementById("sTitleAudioAndVideo"), item_name[I_AUDIO_VIDEO_SETUP]);
	setText(document.getElementById("sTitlePrivacyMask"), item_name[I_PRIVACY_MASK]);
	setText(document.getElementById("sTitleMotionDetection"), item_name[I_MOTION_DETECTION]);
	setText(document.getElementById("sTitleSoundDetection"), item_name[I_SOUND_DETECTION]);
	setText(document.getElementById("sTitleMail"), item_name[I_MAIL]);
	setText(document.getElementById("sTitleFTP"), item_name[I_FTP]);
	setText(document.getElementById("sTitleSnapshot"), item_name[I_SNAPSHOT]);
	setText(document.getElementById("sTitleVideoClip"), item_name[I_VIDEO_CLIP]);
	setText(document.getElementById("sTitleTimeAndDate"), item_name[I_TIME_AND_DATE]);
	setText(document.getElementById("sTitleDayNightMode"), item_name[I_DAY_NIGHT_MODE]);
    setText(document.getElementById("sWizard"), item_name[I_WIZARD]);
	setText(document.getElementById("sNetworkSetup"), item_name[I_NETWORK_SETUP]);
	setText(document.getElementById("sWirelessSetup"), item_name[I_WIRELESS_SETUP]);
	setText(document.getElementById("sExtenderSetup"), item_name[I_EXTENDER_SETUP]);
	setText(document.getElementById("sDDNSInfo"), item_name[I_DDNS]);
	setText(document.getElementById("sIPFilterInfo"), item_name[I_IPFILTER]);
	setText(document.getElementById("sImageSetup"), item_name[I_IMAGE_SETUP]);
	setText(document.getElementById("sAudioAndVideo"), item_name[I_AUDIO_VIDEO_SETUP]);
	setText(document.getElementById("sPrivacyMask"), item_name[I_PRIVACY_MASK]);
	setText(document.getElementById("sMotionDetection"), item_name[I_MOTION_DETECTION]);
	setText(document.getElementById("sSoundDetection"), item_name[I_SOUND_DETECTION]);
	setText(document.getElementById("sMail"), item_name[I_MAIL]);
	setText(document.getElementById("sFTP"), item_name[I_FTP]);
	setText(document.getElementById("sSnapshot"), item_name[I_SNAPSHOT]);
	setText(document.getElementById("sVideoClip"), item_name[I_VIDEO_CLIP]);
	setText(document.getElementById("sTimeAndDate"), item_name[I_TIME_AND_DATE]);
	setText(document.getElementById("sDayNightMode"), item_name[I_DAY_NIGHT_MODE]);
	document.getElementById("sWizardDes").innerHTML = des_item_name[D_WIZARD];
	document.getElementById("sNetworkSetupDes").innerHTML = des_item_name[D_NETWORK_SETUP];
	document.getElementById("sWirelessSetupDes").innerHTML = des_item_name[D_WIRELESS_SETUP];
	document.getElementById("sExtenderSetupDes").innerHTML = des_item_name[D_EXTENDER_SETUP];
	document.getElementById("sDDNSInfoDes").innerHTML = des_item_name[D_DDNS];
	document.getElementById("sIPFilterInfoDes").innerHTML = des_item_name[D_IPFILTER];
	document.getElementById("sImageSetupDes").innerHTML = des_item_name[D_IMAGE_SETUP];
	document.getElementById("sAudioAndVideoDes").innerHTML = des_item_name[D_AUDIO_VIDEO_SETUP];
	document.getElementById("sPrivacyMaskDes").innerHTML = des_item_name[D_PRIVACY_MASK];
	document.getElementById("sMotionDetectionDes").innerHTML = des_item_name[D_MOTION_DETECTION];
	document.getElementById("sSoundDetectionDes").innerHTML = des_item_name[D_SOUND_DETECTION];
	document.getElementById("sMailDes").innerHTML = des_item_name[D_MAIL];
	document.getElementById("sFTPDes").innerHTML = des_item_name[D_FTP];
	document.getElementById("sSnapshotDes").innerHTML = des_item_name[D_SNAPSHOT];
	document.getElementById("sVideoClipDes").innerHTML = des_item_name[D_VIDEO_CLIP];
	document.getElementById("sTimeAndDateDes").innerHTML = des_item_name[D_TIME_AND_DATE];
	document.getElementById("sDayNightModeDes").innerHTML = des_item_name[D_DAY_NIGHT_MODE];
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
  			<td valign="top" id="maincontent_container" height="550">
    		  <table height="550" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
    		    <tr>
    		      <td>
    		        <div id="maincontent">
      				  <!-- === BEGIN MAINCONTENT === -->
      				  <DIV id=box_header>
        			    <H1><span id="sSupportMenu">SUPPORT MENU</span></H1>
        				<span id="sTitleWizard">Wizard</span><br>
        				<span id="sTitleNetworkSetup">Network Setup</span><br>
        				<span id="sTitleWirelessSetup">Wireless Setup</span><br>
        				<span id="sTitleExtenderSetup" style="display: none">Extender Setup</span>
        				<span id="sTitleDDNS">Dynamic DNS</span><br>
        				<span id="sTitleIPFilter" style="display: none">IP Filter</span>
        				<span id="sTitleImageSetup">Image Setup</span><br>
        				<span id="sTitleAudioAndVideo">Audio and Video</span><br>
						<span id="sTitlePrivacyMask" style="display: none">Privacy Mask</span>
        				<span id="sTitleMotionDetection">Motion Detection</span><br>
        				<span id="sTitleSoundDetection">Sound Detection</span><br>
        				<span id="sTitleMail">Mail</span><br>
        				<span id="sTitleFTP">FTP</span><br>
        				<span id="sTitleSnapshot">Snapshot</span><br>
        				<span id="sTitleVideoClip">Video Clip</span><br>
        				<span id="sTitleTimeAndDate">Time and Date</span><br>
        				<span id="sTitleDayNightMode">Day/Night Mode</span><br>
      				  </DIV>
      				  <div class="box">
        				<a id="Wizard" NAME="Wizard"></a>
        				<h2><span id="sWizard">Wizard</span></h2>
        				<span id="sWizardDes">        				  
						</span>
      				  </div>
      				  <br>
      				  <div class="box">
        				<a id="Network" NAME="Network"></a>
        				<h2><span id="sNetworkSetup">Network Setup</span></h2>
        				<span id="sNetworkSetupDes">
						</span>
      				  </div>
      				  <br>
     	 			  <div class="box">
        				<a id="Wireless" NAME="Wireless"></a>
        				<h2><span id="sWirelessSetup">Wireless Setup</span></h2>
        				<span id="sWirelessSetupDes">
        				</span>
      				  </div>
      				  <br>
      				  <div class="box" style="display: none">
        				<a id="ExtWlan" NAME="ExtWlan"></a>
        				<h2><span id="sExtenderSetup">Extender Setup</span></h2>
        				<span id="sExtenderSetupDes">
						</span>
      				  </div>
      				  <!--
      				  <br>
      				  -->
      				  <div class="box">
        			    <a id="DDNS" NAME="DDNS"></a>
        				<h2><span id="sDDNSInfo">Dynamic DNS</span></h2>
        				<span id="sDDNSInfoDes"></span>  
      				  </div>
      				  <!--
      				  <br>
      				  -->
      				  <div class="box" style="display: none">
        			    <a id="IpFilter" NAME="IpFilter"></a>
        				<h2><span id="sIPFilterInfo">IP Filter</span></h2>
        				<span id="sIPFilterInfoDes"></span>  
      				  </div>
      				  <br>
      				  <div class="box">
        			    <a id="Image" NAME="Image"></a>
        				<h2><span id="sImageSetup">Image Setup</span></h2>
        				<span id="sImageSetupDes">
						</span>
      				  </div>
      				  <br>
      				  <div class="box">
        			    <a id="AudioAndVideo" NAME="AudioAndVideo"></a>
        				<h2><span id="sAudioAndVideo">Audio And Video</span></h2>
        				<span id="sAudioAndVideoDes">
        				</span>
      				  </div>
      				  <!--
      				  <br>
      				  -->
      				  <div class="box" style="display: none">
        			    <a id="PrivacyMask" NAME="PrivacyMask"></a>
        				<h2><span id="sPrivacyMask">Privacy Mask</span></h2>
        				<span id="sPrivacyMaskDes">
        				</span>  
      				  </div>
      				  <br>
      				  <div class="box">
        			    <a id="Motion" NAME="Motion"></a>
        				<h2><span id="sMotionDetection">Motion Detection</span></h2>
        				<span id="sMotionDetectionDes">
        				</span>  
      				  </div>
      				  <br>
      				  <div class="box">
        				<a id="Sound" NAME="Sound"></a>
        				<h2><span id="sSoundDetection">Sound Detection</span></h2>
        				<span id="sSoundDetectionDes">
						</span>  
      				  </div>
      				  <br>
      				  <div class="box">
        				<a id="Mail" NAME="Mail"></a>
        				<h2><span id="sMail">Mail</span></h2>
        				<span id="sMailDes">
						</span>
      				  </div>
      				  <br>
      				  <div class="box">
        				<a id="FTP" NAME="FTP"></a>
        				<h2><span id="sFTP">FTP</span></h2>
        				<span id="sFTPDes">
						</span>
      				  </div>
      				  <br>
      				  <div class="box">
        				<a id="Snapshot" NAME="Snapshot"></a>
        				<h2><span id="sSnapshot">Snapshot</span></h2>
        				<span id="sSnapshotDes">
						</span>
      				  </div>
      				  <br>
					  <div class="box">
        				<a id="VideoClip" NAME="VideoClip"></a>
        				<h2><span id="sVideoClip">Video Clip</span></h2>
        				<span id="sVideoClipDes">
						</span>
      				  </div>
      				  <br>
      				  <div class="box">
        				<a id="Time" NAME="Time"></a>
        				<h2><span id="sTimeAndDate">Time and Date</span></h2>
        				<span id="sTimeAndDateDes">
        				</span>
      				  </div>
      				  <br>
      				  <div class="box">
       	 			    <a id="Night" NAME="Night"></a>
        				<h2><span id="sDayNightMode">Day/Night Mode</span></h2>
        				<span id="sDayNightModeDes">
						</span>
      				  </div>
      				  <br>
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
