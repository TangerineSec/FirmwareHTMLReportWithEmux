<!DOCTYPE html>
<html>
<head>
<link rel="Bookmark" type="image/x-icon"  href="/favicon.ico">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="/favicon.ico">
<link rel="stylesheet" rev="stylesheet" href="dlink.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript" SRC="cookies.js"></script>
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_setup.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var PT=decodeBase64("<% getHWInfo(PT); %>");
var SDCard=decodeBase64("<% getHWInfo(SD); %>");
var group=decodeBase64("<% getGroup(); %>");
var Version=decodeBase64("<% getActiveXInfo(Version); %>");
var DefaultLanguage=decodeBase64("<% getCamSystemInfo(Language); %>");
var Browser = CheckBrower();
var CameraName=decodeBase64("<% getCamSystemInfo(CameraName); %>");
function loadText()
{
	document.title = item_name[I_DINK_CORPORATION];
	if (Wireless == "1")
		document.title += " | " + item_name[I_WIRELESS];
	document.title += " " + item_name[I_INTERNET_CAMERA];
	document.title += " | " + item_name[I_LIVE_VIDEO];
	setText(document.getElementById("sProduct"), item_name[I_PRODUCT]);
	setText(document.getElementById("sFWVersion"), item_name[I_FWVERSION]);
	setText(document.getElementById("sLiveVideo"), item_name[I_LIVE_VIDEO_2]);
	setText(document.getElementById("sSetup"), item_name[I_SETUP]);
	setText(document.getElementById("sMaintenance"), item_name[I_MAINTENANCE]);
	setText(document.getElementById("sStatus"), item_name[I_STATUS]);
	setText(document.getElementById("sHelp"), item_name[I_HELP]);
	setText(document.getElementById("sWizard"), item_name[I_WIZARD]);
	setText(document.getElementById("sNetwork"), item_name[I_NETWORK_SETUP]);
	setText(document.getElementById("sWireless_client"), item_name[I_WIRELESS_SETUP]);
	setText(document.getElementById("sWireless_ext"), item_name[I_EXTENDER_SETUP]);
	setText(document.getElementById("sDdns"), item_name[I_DDNS]);
	setText(document.getElementById("sIpfilter"), item_name[I_IPFILTER]);
	setText(document.getElementById("sImage"), item_name[I_IMAGE_SETUP]);
	setText(document.getElementById("sAudiovideo"), item_name[I_AUDIO_VIDEO_SETUP]);
	setText(document.getElementById("sPrivacymask"), item_name[I_PRIVACY_MASK]);
	setText(document.getElementById("sMotion"), item_name[I_MOTION_DETECTION]);
	setText(document.getElementById("sSounddb"), item_name[I_SOUND_DETECTION]);
	setText(document.getElementById("sEmail"), item_name[I_MAIL]);
	setText(document.getElementById("sFtp"), item_name[I_FTP]);
	setText(document.getElementById("sEventsnapshot"), item_name[I_SNAPSHOT]);
	setText(document.getElementById("sEventrecording"), item_name[I_VIDEO_CLIP]);
	setText(document.getElementById("sSdrecording"), item_name[I_SD_RECORDING]);
	setText(document.getElementById("sSdmanagement"), item_name[I_SD_MANAGEMENT]);
	setText(document.getElementById("sTime"), item_name[I_TIME_AND_DATE]);
	setText(document.getElementById("sNight"), item_name[I_DAY_NIGHT_MODE]);
	setText(document.getElementById("sPtzsetup"), item_name[I_CAMERA_CONTROL]);
	setText(document.getElementById("sLogout"), item_name[I_LOGOUT]);
	setText(document.getElementById("sAdmin"), item_name[I_ADMIN]);
	setText(document.getElementById("sSystem"), item_name[I_SYSTEM]);
	setText(document.getElementById("sFirmwareUpgrade"), item_name[I_FW_UP]);
	setText(document.getElementById("sLogout2"), item_name[I_LOGOUT]);
	setText(document.getElementById("sDeviceInfo"), item_name[I_DEVICE_INFO]);
	setText(document.getElementById("sSystemLog"), item_name[I_SYSTEM_LOG]);
	setText(document.getElementById("sEventLog"), item_name[I_EVENT_LOG]);
	setText(document.getElementById("sLogout3"), item_name[I_LOGOUT]);
	setText(document.getElementById("sMenu"), item_name[I_MENU]);
	setText(document.getElementById("sLiveVideo2"), item_name[I_LIVE_VIDEO_2]);
	setText(document.getElementById("sSetup2"), item_name[I_SETUP]);
	setText(document.getElementById("sMaintenance2"), item_name[I_MAINTENANCE]);
	setText(document.getElementById("sStatus2"), item_name[I_STATUS]);
	setText(document.getElementById("sLogout4"), item_name[I_LOGOUT]);
	document.getElementById("sCopyRight").innerHTML = des_item_name[D_COPYRIGHT];
}
function setConfig()
{
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
function checkPage()
{
	if (PT == "1")
	{
		document.getElementById("tr_page_ptzsetup").style.display = "";
	}
	else
	{
		document.getElementById("tr_page_ptzsetup").style.display = "none";
	}
	
	if (SDCard == "1")
	{
		document.getElementById("tr_page_sd_recording").style.display = "";
		document.getElementById("tr_page_sd_management").style.display = "";
	}
	else
	{
		document.getElementById("tr_page_sd_recording").style.display = "none";
		document.getElementById("tr_page_sd_management").style.display = "none";
	}
}
function init() 
{
	checkPage();
	setPage();
	loadText();
    setConfig();
}
function setPage()
{
	var i = 0;
	var menu = getWebQuery("menu", "setup");
	var page = getWebQuery("page", "");
	var tag = getWebQuery("tag", "");
	var token = Math.floor(Math.random()*(200)+1);
	var wizardtype = getWebQuery("wizardtype", "0");
	var array_menu_id = new Array("setup", "maintenance", "status", "help");
	var array_page_setup_id = new Array("wizard", "network", "wireless_client", "wireless_ext", "ddns", "ipfilter", "image", "audiovideo", "privacymask", "motion", "sounddb", 
										"email", "ftp", "eventsnapshot", "eventrecording", "sdrecording", "sdmanagement", "time", "night", "ptzsetup");
	var array_page_maintenance_id = new Array("advanced", "file", "upgrade");
    var array_page_status_id = new Array("stsdev", "stslog", "eventlog");		  		
	var array_page_help_id = new Array("support", "helphome", "helpadva", "helptool", "helpstat");
	var array_page;
	//set menu
	for (i = 0; i < array_menu_id.length; i++)
	{
		if (menu == array_menu_id[i])
		{
			document.getElementById("table_menu_" + array_menu_id[i]).style.display = "";
			document.getElementById("td_menu_" + array_menu_id[i]).className = "topnavon";
		}
		else
		{
			document.getElementById("table_menu_" + array_menu_id[i]).style.display = "none";
			document.getElementById("td_menu_" + array_menu_id[i]).className = "topnavoff";
		}
	}
	//set page
	if (menu == "setup")
	{
		if (page == "")
			page = "wizard";
		array_page = array_page_setup_id;
	}
	else if (menu == "maintenance")
	{
		if (page == "")
			page = "advanced";
		array_page = array_page_maintenance_id;
	}
	else if (menu == "status")
	{
		if (page == "")
			page = "stsdev";
		array_page = array_page_status_id;	
	}
	else if (menu == "help")
	{
		if (page == "")
			page = "support";
		array_page = array_page_help_id;
	}
	for (i = 0; i < array_page.length; i++)
	{
		if (page == array_page[i])
		{
			document.getElementById("td_page_" + array_page[i]).className = "sidenavon";
		}
		else
		{
			document.getElementById("td_page_" + array_page[i]).className = "sidenavoff";
		}
	}
	
	var url;
	if (page == "wizard")
	{
		url = "wizard.asp?wizardtype=" + wizardtype;
		url += "&token=" + token;
	}
	else if (tag == "")
	{
		url = page + ".asp";
		url += "?token=" + token;
	}
	else
	{
		url = page + ".asp?tag=" + tag;
		url += "&token=" + token;
	}
	document.getElementById("if_page").src = url;
	window.frames["if_page"].location = url;
}
function resetIframeWidth(width)
{
	if (parseInt(width, 10) > 709)
	{
		width = (parseInt(width, 10) + 15).toString();
		document.getElementById("if_page").width = width;
		document.getElementById("td_subpage").width = width;
		var LableWidth = (parseInt(width, 10) + parseInt(document.getElementById("td_menu").scrollWidth, 10)).toString();
		document.getElementById("tb_top").width = LableWidth;
		document.getElementById("index_container").width = LableWidth;
		document.getElementById("tb_bottom").width = LableWidth;
		document.getElementById("tb_copyright").width = LableWidth;
		document.getElementById("title_container").style.display = "none";
		document.getElementById("td_menu_empty").style.display = "";
		//document.getElementById("title_container").width = LableWidth;
	}
	else
	{
		document.getElementById("if_page").width = width;
		document.getElementById("td_subpage").width = width;
		document.getElementById("tb_top").width = "838";
		document.getElementById("index_container").width = "838";
		document.getElementById("tb_bottom").width = "838";
		document.getElementById("tb_copyright").width = "838";
		document.getElementById("title_container").style.display = "";
		document.getElementById("td_menu_empty").style.display = "none";
		//document.getElementById("title_container").width = "838";
	}
}
function resetIframeHeight(height)
{
	if (height < 550)
		height = 550;
	if (Browser.search("Firefox") != -1)
	{
		height = (parseInt(height, 10) + 5).toString();
		document.getElementById("if_page").height = (parseInt(height, 10) - 2).toString();	
	}
	else
	{
		document.getElementById("if_page").height = height;
	}
	document.getElementById("td_menu").height = height;
	document.getElementById("td_subpage").height = height;
	//IE 7 need resort menu option
	if (Browser.search("IE") == -1)
		return;
	if (document.documentMode != "7" && document.documentMode != undefined)
		return;
	var tdMenuOptionHeight = 28;
	var totalMenuOptionHeight = 0;
	if (document.getElementById("table_menu_setup").style.display != "none")
	{
		for (var i = 0; i < 15; i++)
		{
			totalMenuOptionHeight += tdMenuOptionHeight;
		}
		var last_option_height = height - totalMenuOptionHeight;
		if (last_option_height <= 0)
			last_option_height = tdMenuOptionHeight;
		document.getElementById("tr_menu_setup_last_option").height = last_option_height;
		var resize_times = 0;
		while (document.getElementById("td_page_wizard").offsetHeight > tdMenuOptionHeight + 10)
		{
			document.getElementById("tr_menu_setup_last_option").height++;
			resize_times++;
			if (resize_times >= 1000)
				break;
		}
	}
	else if (document.getElementById("table_menu_maintenance").style.display != "none")
	{
		for (var i = 0; i < 4; i++)
		{
			totalMenuOptionHeight += tdMenuOptionHeight;
		}
		var last_option_height = height - totalMenuOptionHeight;
		if (last_option_height <= 0)
			last_option_height = tdMenuOptionHeight;
		document.getElementById("tr_menu_maintenance_last_option").height = last_option_height;	
		var resize_times = 0;
		while (document.getElementById("td_page_advanced").offsetHeight > tdMenuOptionHeight + 10)
		{
			document.getElementById("tr_menu_maintenance_last_option").height++;
			resize_times++;
			if (resize_times >= 1000)
				break;
		}	
	}
	else if (document.getElementById("table_menu_status").style.display != "none")
	{
		for (var i = 0; i < 4; i++)
		{
			totalMenuOptionHeight += tdMenuOptionHeight;
		}
		var last_option_height = height - totalMenuOptionHeight;
		if (last_option_height <= 0)
			last_option_height = tdMenuOptionHeight;	
		document.getElementById("tr_menu_status_last_option").height = last_option_height;
		var resize_times = 0;
		while (document.getElementById("td_page_stsdev").offsetHeight > tdMenuOptionHeight + 10)
		{
			document.getElementById("tr_menu_status_last_option").height++;
			resize_times++;
			if (resize_times >= 1000)
				break;
		}
	}
	else if (document.getElementById("table_menu_help").style.display != "none")
	{
		for (var i = 0; i < 6; i++)
		{
			totalMenuOptionHeight += tdMenuOptionHeight;
		}
		var last_option_height = height - totalMenuOptionHeight;
		if (last_option_height <= 0)
			last_option_height = tdMenuOptionHeight;
		document.getElementById("tr_menu_support_last_option").height = last_option_height;
		var resize_times = 0;
		while (document.getElementById("td_page_support").offsetHeight > tdMenuOptionHeight + 10)
		{
			document.getElementById("tr_menu_support_last_option").height++;
			resize_times++;
			if (resize_times >= 1000)
				break;
		}
	}
}
function getTopUseHeight()
{
	var top1 = parseInt(document.getElementById("tb_top").scrollHeight, 10);
	var top2 = 94;//parseInt(document.getElementById("title_container").scrollHeight, 10);
	var top3 = parseInt(document.getElementById("index_container").scrollHeight, 10);
	var top4 = parseInt(document.getElementById("space_container").scrollHeight, 10);

	return top1 + top2 + top3 + top4;
}
function blockUI(block, text, showtext)
{
	if (block)
	{	
		setText(document.getElementById("sBlockText"), text);
		$("#div_block").fadeIn("fast");
		if (showtext)
			$("#div_block_text").fadeIn("fast");
	}
	else
	{
		$("#div_block").fadeOut("fast");
		$("#div_block_text").fadeOut("fast");
	}
}
function setProductName(name)
{
	setText(document.getElementById("sProduct_value"), name);
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
  <div id="title_container" style="height: 92px">
    <table id="tb_logo" border="0" cellpadding="0" cellspacing="0" width="838" align="center" bgcolor="#FFFFFF">
      <tr>
        <td align="center" valign="middle"><img src="img/title.gif"></td>
      </tr>
    </table>
  </div>
  <table id="index_container" width="838" border="0" cellpadding="2" cellspacing="1" align="center" bgcolor="#FFFFFF">
    <tr id="topnav_container">
      <td id="td_modelName" width="131" align="left"><img alt="" src="img/devmodel.jpg" height="27"></td>
	  <td id="td_menu_live" width="138" class="topnavoff" align="left"><a href="home.asp"><span id="sLiveVideo">Live Video</span></a></td>
	  <td id="td_menu_setup" width="138" class="topnavoff" align="left"><a href="setup.asp?menu=setup"><span id="sSetup">Setup</span></a></td>
	  <td id="td_menu_maintenance" width="138" class="topnavoff" align="left"><a href="setup.asp?menu=maintenance"><span id="sMaintenance">Maintenance</span></a></td>
	  <td id="td_menu_status" width="138" class="topnavoff" align="left"><a href="setup.asp?menu=status"><span id="sStatus">Status</span></a></td>
	  <td id="td_menu_help" width="138" class="topnavoff" align="left"><a href="setup.asp?menu=help"><span id="sHelp">Help</span></a></td>
	  <td id="td_menu_empty" class="index_space" style="display: none"></td>
	</tr>
    <tr>
      <td colspan=6 height="1" bgcolor="#ffffff"></td>
    </tr>
  </table>
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">
    <tr>
      <td height=1 bgcolor="#000000"></td>
    </tr>
  </table>  
  <table border="0" cellpadding="0" cellspacing="0" width="838" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">  
    <tr>
      <td>
        <table id="data_container" border="0" cellpadding="0" cellspacing="0" width="838" bgcolor="#FFFFFF">
          <tr>
            <td valign="top" width="128">
			<!-- === BEGIN SIDENAV === -->
			  <table id="table_menu" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF" height="100%">
			    <tr>
			      <td id="td_menu" height="550" valign="top" bgcolor="#404343">
    		  		<!--Setup Menu-->
    		  		<table id="table_menu_setup" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" width="130" height="100%">
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_wizard" class="sidenavon"><a href="setup.asp?menu=setup&page=wizard"><span id="sWizard">Wizard</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_network" class="sidenavoff"><a href="setup.asp?menu=setup&page=network"><span id="sNetwork">Network Setup</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_wireless_client" class="sidenavoff"><a href="setup.asp?menu=setup&page=wireless_client"><span id="sWireless_client">Wireless Setup</span></a></td></tr>
    				  <tr class="sidenav_container" style="display: none"><td name="td_menu_setup_option" id="td_page_wireless_ext" class="sidenavoff"><a href="setup.asp?menu=setup&page=wireless_ext"><span id="sWireless_ext">Extender Setup</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_ddns" class="sidenavoff"><a href="setup.asp?menu=setup&page=ddns"><span id="sDdns">Dynamic DNS</span></a></td></tr>
    				  <tr class="sidenav_container" style="display: none"><td name="td_menu_setup_option" id="td_page_ipfilter" class="sidenavoff"><a href="setup.asp?menu=setup&page=ipfilter"><span id="sIpfilter">IP Filter</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_image" class="sidenavoff"><a href="setup.asp?menu=setup&page=image"><span id="sImage">Image Setup</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_audiovideo" class="sidenavoff"><a href="setup.asp?menu=setup&page=audiovideo"><span id="sAudiovideo">Audio and Video</span></a></td></tr>
    				  <tr class="sidenav_container" style="display: none"><td name="td_menu_setup_option" id="td_page_privacymask" class="sidenavoff"><a href="setup.asp?menu=setup&page=privacymask"><span id="sPrivacymask">Privacy Mask</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_motion" class="sidenavoff"><a href="setup.asp?menu=setup&page=motion"><span id="sMotion">Motion Detection</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_sounddb" class="sidenavoff"><a href="setup.asp?menu=setup&page=sounddb"><span id="sSounddb">Sound Detection</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_email" class="sidenavoff"><a href="setup.asp?menu=setup&page=email"><span id="sEmail">Mail</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_ftp" class="sidenavoff"><a href="setup.asp?menu=setup&page=ftp"><span id="sFtp">FTP</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_eventsnapshot" class="sidenavoff"><a href="setup.asp?menu=setup&page=eventsnapshot"><span id="sEventsnapshot">Snapshot</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_eventrecording" class="sidenavoff"><a href="setup.asp?menu=setup&page=eventrecording"><span id="sEventrecording">Video Clip</span></a></td></tr>    				  
    				  <tr id="tr_page_sd_recording" class="sidenav_container"><td name="td_menu_setup_option" id="td_page_sdrecording" class="sidenavoff"><a href="setup.asp?menu=setup&page=sdrecording"><span id="sSdrecording">SD Recording</span></a></td></tr>
    				  <tr id="tr_page_sd_management" class="sidenav_container"><td name="td_menu_setup_option" id="td_page_sdmanagement" class="sidenavoff"><a href="setup.asp?menu=setup&page=sdmanagement"><span id="sSdmanagement">SD Management</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_time" class="sidenavoff"><a href="setup.asp?menu=setup&page=time"><span id="sTime">Time and Date</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_night" class="sidenavoff"><a href="setup.asp?menu=setup&page=night"><span id="sNight">Day/Night Mode</span></a></td></tr>
    				  <tr id="tr_page_ptzsetup" class="sidenav_container"><td name="td_menu_setup_option" id="td_page_ptzsetup" class="sidenavoff"><a href="setup.asp?menu=setup&page=ptzsetup"><span id="sPtzsetup">Camera Control</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_setup_option" id="td_page_logout1" class="sidenavoff"><a target='_parent' href="logout.asp"><span id="sLogout">Logout</span></a></td></tr>
    				  <tr id="tr_menu_setup_last_option" bgcolor="#404343"><td></td></tr>
    		  		</table>
    		  		<!--Maintenance Menu-->
    		  		<table id="table_menu_maintenance" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" width="130" height="100%">
					  <tr class="sidenav_container"><td name="td_menu_maintenance_option" id="td_page_advanced" class="sidenavon"><a href="setup.asp?menu=maintenance&page=advanced"><span id="sAdmin">Admin</span></a></td></tr>
					  <tr class="sidenav_container"><td name="td_menu_maintenance_option" id="td_page_file" class="sidenavoff"><a href="setup.asp?menu=maintenance&page=file"><span id="sSystem">System</span></a></td></tr>
					  <tr class="sidenav_container"><td name="td_menu_maintenance_option" id="td_page_upgrade" class="sidenavoff"><a href="setup.asp?menu=maintenance&page=upgrade"><span id="sFirmwareUpgrade">Firmware Upgrade</span></a></td></tr>
					  <tr class="sidenav_container"><td name="td_menu_maintenance_option" id="td_page_logout2" class="sidenavoff"><a target='_parent' href="logout.asp"><span id="sLogout2">Logout</span></a></td></tr>
					  <tr id="tr_menu_maintenance_last_option" bgcolor="#404343"><td></td></tr>
			  		</table>
			  		<!--Status Menu-->
			  		<table id="table_menu_status" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" width="130" height="100%">
					  <tr class="sidenav_container"><td name="td_menu_status_option" id="td_page_stsdev" class="sidenavon"><a href="setup.asp?menu=status&page=stsdev"><span id="sDeviceInfo">Device Info</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_status_option" id="td_page_stslog" class="sidenavoff"><a href="setup.asp?menu=status&page=stslog"><span id="sSystemLog">System Log</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_status_option" id="td_page_eventlog" class="sidenavoff"><a href="setup.asp?menu=status&page=eventlog"><span id="sEventLog">Event Log</span></a></td></tr>
    				  <tr class="sidenav_container"><td name="td_menu_status_option" id="td_page_logout3" class="sidenavoff"><a target='_parent' href="logout.asp"><span id="sLogout3">Logout</span></a></td></tr>
    				  <tr id="tr_menu_status_last_option" bgcolor="#404343"><td></td></tr>
			  		</table>
			  		<!--Support Menu-->
			  		<table id="table_menu_help" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" width="130" height="100%">
					  <tr class="sidenav_container"><td name="td_menu_support_option" id="td_page_support" class="sidenavon"><a href="setup.asp?menu=help&page=support"><span id="sMenu">Menu</span></a></td></tr>
    		    	  <tr class="sidenav_container"><td name="td_menu_support_option" id="td_page_helphome" class="sidenavoff"><a href="setup.asp?menu=help&page=helphome"><span id="sLiveVideo2">Live Video</span></a></td></tr>
    		    	  <tr class="sidenav_container"><td name="td_menu_support_option" id="td_page_helpadva" class="sidenavoff"><a href="setup.asp?menu=help&page=helpadva"><span id="sSetup2">Setup</span></a></td></tr>
    		    	  <tr class="sidenav_container"><td name="td_menu_support_option" id="td_page_helptool" class="sidenavoff"><a href="setup.asp?menu=help&page=helptool"><span id="sMaintenance2">Maintenance</span></a></td></tr>
    		    	  <tr class="sidenav_container"><td name="td_menu_support_option" id="td_page_helpstat" class="sidenavoff"><a href="setup.asp?menu=help&page=helpstat"><span id="sStatus2">Status</span></a></td></tr>
    		    	  <tr class="sidenav_container"><td name="td_menu_support_option" id="td_page_logout4" class="sidenavoff"><a target='_parent' href="logout.asp"><span id="sLogout4">Logout</span></a></td></tr>
    		    	  <tr id="tr_menu_support_last_option" bgcolor="#404343"><td></td></tr>
			  		</table>
			  		<!-- === END SIDENAV === -->
			  	  </td>
			  	</tr>
			  </table>
		    </td>
		    <td valign="top" align="left" id="td_subpage" class="maincontent_container" width="100%" height="550px">
		      <div id="div_block" class="myMask">
			  </div>
			  <div id="div_block_text" class="myMaskText" align="center" style="text-align: center;">
		        <table cellpadding="2" cellspacing="2" align="center" style="text-align: center;" width="100%" height="100%">
		          <tr>
		            <td bgcolor="#FF6F00">
		              <span id="sBlockText">Saving</span>
		              <span>...</span>
		            </td>
		          </tr>
		        </table>
			  </div>
			  <iframe id="if_page" frameborder="0" width="100%" height="550px" scrolling="no" src=""></iframe>
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
  <table id="tb_copyright" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
    <tr>
      <td>
        <div id="div_copyright" align="center">
    	  <FONT color=#ffffff><span id="sCopyRight">Copyright 2012 - 2013, D-Link 
			Corporation / D-Link Systems, Inc. All rights reserved.</span></font>
  		</div>
  	  </td>
  	</tr>
  </table>		
  <br>
   <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
