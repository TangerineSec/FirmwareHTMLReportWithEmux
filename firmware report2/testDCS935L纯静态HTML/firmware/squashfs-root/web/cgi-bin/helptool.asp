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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_helptool.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
function loadText()
{
	setText(document.getElementById("sSupportMenu"), item_name[I_SUPPORT_MENU]);
	setText(document.getElementById("sTitleAdmin"), item_name[I_ADMIN]);
	setText(document.getElementById("sTitleSystem"), item_name[I_SYSTEM]);
	setText(document.getElementById("sTitleFWUpgrade"), item_name[I_FWUPGRADE]);
	setText(document.getElementById("sAdmin"), item_name[I_ADMIN]);
	setText(document.getElementById("sSystem"), item_name[I_SYSTEM]);
	setText(document.getElementById("sFWUpgrade"), item_name[I_FWUPGRADE]);
	document.getElementById("sAdminInfo").innerHTML = des_item_name[D_ADMIN_INFO];  			  
    document.getElementById("sCameraInfo").innerHTML = des_item_name[D_CAM_NAME_INFO];          				
    document.getElementById("sLEDControl").innerHTML = des_item_name[D_LED_CONTROL_INFO];
    document.getElementById("sUserAccessInfo").innerHTML = des_item_name[D_USER_ACCESS_CONTROL_INFO];
	document.getElementById("sSnapshotURL").innerHTML = des_item_name[D_SNAPSHOT_URL_INFO];
	document.getElementById("sOSDTimeInfo").innerHTML = des_item_name[D_OSD_TIME_INFO];
	document.getElementById("sUserName").innerHTML = des_item_name[D_USER_NAME_INFO];
	document.getElementById("sSaveToLocalDriveInfo").innerHTML = des_item_name[D_SAVE_TO_LOCAL_INFO];
    document.getElementById("sLoadFromHardDriveInfo").innerHTML = des_item_name[D_LOAD_FROM_LOCAL_INFO];
	document.getElementById("sFactoryDefaultInfo").innerHTML = des_item_name[D_FACTORY_RESET_INFO];
	document.getElementById("sRebootInfo").innerHTML = des_item_name[D_REBOOT_INFO];
	document.getElementById("sFWUpgradeInfo").innerHTML = des_item_name[D_FWIPGRADE_INFO];	
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
        			    <span id="sTitleAdmin">Admin</span><br>
        			    <span id="sTitleSystem">System</span><br>
        			    <span id="sTitleFWUpgrade">Firmware Upgrade</span><br>
      				  </DIV>
      				  <div class="box">
      				    <a id="Device" NAME="Device"></a>
        			    <h2><span id="sAdmin">Admin</span></h2>
        			    <span id="sAdminInfo">
          				  You may use this page to configure both admin password user accounts.<br><br>
          				</span>
          				<span id="sCameraInfo">
        				  <b>Camera name</b> - A unique name for your camera.<br><br>
        				</span>
        				<span id="sLEDControl">  
        				  <b>LED Control</b> - Select Normal to enable the LED. Select Off to 
						  disable the LED.<br><br>
						</span>
						<span id="sUserAccessInfo">
        				  <b>User Access Control</b> - Enable this option to allow other users to 
						  access your camera.<br><br>
						</span>
						<span id="sSnapshotURL">  
        				  <b>Snapshot URL Authentication</b> - To enable this option, you must 
						  enter the username and password to access http://IP Camera&#39;s IP 
						  address/image/jpeg.cgi for getting a still image.<br><br>
						</span>
						<span id="sOSDTimeInfo">
        				  <b>OSD Time</b> - Enable this option to allow OSD time display.<br><br>
        				</span>
        				<span id="sUserName">  
        				  <b>User name</b> - Create new user for accessing the video image. A 
						  maximum if 8 user accounts can be added to the user list. You can also 
						  modify and delete the user accounts here.
						</span>  
      				  </div>
      				  <br>
      				  <div class="box">
        			    <a id="Backup" NAME="Backup"></a>
        			    <h2><span id="sSystem">System</span></h2>
        			      <span id="sSaveToLocalDriveInfo">
        			        <b>Save To Local Hard Drive</b> - After configuration your camera, you 
						    can save the settings to your hard drive for future restoration.<br><br>
        				  </span>
        				  <span id="sLoadFromHardDriveInfo">
        				    <b>Load From Local Hard Drive</b> - This will load a previously saved 
						    file and restore the configuration settings on your camera.<br><br>
        				  </span>
        				  <span id="sFactoryDefaultInfo">
        				    <b>Restore To Factory Default</b> - This option will reset the camera 
						    and restore the factory default settings for your camera. This will 
						    remove all the configuration settings that were made previously.<br><br>
						  </span>
						  <span id="sRebootInfo">
        				    <b>Reboot The Device</b> - This option will restart the camera.
        				  </span>
      				  </div>
      				  <br>
      				  <div class="box">
        			    <a id="Firmware" NAME="Firmware"></a>
        			    <h2><span id="sFWUpgrade">Firmware Upgrade</span></h2>
        				  <span id="sFWUpgradeInfo">
        				    <b>Update firmware</b> - The option allows the user to upgrade the 
						    firmware via the Browser. Click <b>Browse</b> to locate the file that 
						    contains the new firmware and then click <b>Upload</b> to apply the new 
						    firmware to the camera.
						  </span>
    	 	 		  </div>
    	 	 		  <br>
      				  <!-- === END MAINCONTENT === -->
    			    </div>
    			  </td>
    		    </tr>
    		    <tr height=100%>
    		      <td></td>
    		    </tr>
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
