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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_home.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var PT=decodeBase64("<% getHWInfo(PT); %>");
var SDCard=decodeBase64("<% getHWInfo(SD); %>");
var group=decodeBase64("<% getGroup(); %>");
var Version=decodeBase64("<% getActiveXInfo(Version); %>");
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
	setText(document.getElementById("sCamera"), item_name[I_CAMERA]);
	setText(document.getElementById("sLogout"), item_name[I_LOGOUT]);
	setText(document.getElementById("sGoTo"), item_name[I_GOTO]);
	setText(document.getElementById("sPanStep"), item_name[I_PAN_STEP]);
	setText(document.getElementById("sTiltStep"), item_name[I_TILT_STEP]);
	setText(document.getElementById("sLanguage"), item_name[I_LANGUAGE]);
	document.getElementById("sCopyRight").innerHTML = des_item_name[D_COPYRIGHT];
	document.getElementById("img_motion_off").title = item_name[I_MD_AD_INDICATOR];
	document.getElementById("img_motion_off").alt = item_name[I_MD_AD_INDICATOR];
	document.getElementById("img_motion_on").title = item_name[I_MD_AD_INDICATOR];
	document.getElementById("img_motion_on").alt = item_name[I_MD_AD_INDICATOR];
	document.getElementById("img_record_off").title = item_name[I_RECORD_INDICATOR];
	document.getElementById("img_record_off").alt = item_name[I_RECORD_INDICATOR];
	document.getElementById("img_record_on").title = item_name[I_RECORD_INDICATOR];
	document.getElementById("img_record_on").alt = item_name[I_RECORD_INDICATOR];

	for (var i = 0; i < document.getElementById("WebLanguageSel").length; i++)
	{
		document.getElementById("WebLanguageSel").options[i].text = option_content[O_LANG_EN + i];
	}
	document.getElementById("PresetList").options[0].text = option_content[O_SEL_POS];
}
function setConfig()
{
	//set cameraName
	setText(document.getElementById("sProduct_value"), CameraName);
    //set language
    for(var i = 0; i < document.getElementById("WebLanguageSel").length; i++)
	{
		if(document.getElementById("WebLanguageSel").options[i].value == language){
			document.getElementById("WebLanguageSel").options[i].selected = true;
			break;
		}
	}
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
		setText(document.getElementById("sFWVersion_value"), Version + " b" + strBuild);
	}
}
function checkPage()
{
	if (PT == "1")
		document.getElementById("table_PT").style.display = "";
	else
		document.getElementById("table_PT").style.display = "none";
}
function init() 
{
	checkPage();
	setPage();
	loadText();
    setConfig();
    setInterval("getNotify();", 1000);
}
function setPage()
{
	var i = 0;
	var menu = getWebQuery("menu", "live");
	var page = getWebQuery("page", "");
	var tag = getWebQuery("tag", "");
	var wizardtype = getWebQuery("wizardtype", "0");
	var array_menu_id = new Array("live");
	var array_page_live_id = new Array("live");
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
	if (menu == "live")
	{
		if (page == "")
			page = "live";
		array_page = array_page_live_id;
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
	if (page=="live")
	{
		var profile = getWebQuery("profile", "5");
		if (getCookie("profile") != null)
		{
			profile = getCookie("profile");
			if (profile != "5" && profile != "1")
			{
				profile = "5";
				setCookie("profile", "5");
			}	
		}
		var usingJava = getWebQuery("java", "0");
		var serverpush = getWebQuery("serverpush", "0");
		if (Browser.search("IE") == -1)
			usingJava = 1;
		else
			serverpush = 0;
		var url = "live.asp?profile=" + profile + "&java=" + usingJava + "&serverpush=" + serverpush;
		document.getElementById("if_page").src = url;
		window.frames["if_page"].location = url;
	}
}
function resetIframeWidth(width)
{	
	if (parseInt(width, 10) > 709)
	{
		width = (parseInt(width, 10) + 15).toString();
		document.getElementById("if_page").width = width;
		document.getElementById("td_subpage").width = width;
		var LableWidth = (parseInt(width, 10) + parseInt(document.getElementById("td_menu").scrollWidth, 10)).toString();
		//alert(LableWidth);
		//LableWidth = (parseInt(LableWidth, 10) + 10).toString();
		document.getElementById("tb_top").width = LableWidth;
		document.getElementById("index_container").width = LableWidth;
		document.getElementById("tb_bottom").width = LableWidth;
		document.getElementById("tb_copyright").width = LableWidth;
		document.getElementById("title_container").style.display = "none";
		//document.getElementById("td_menu_empty").style.display = "";
		//document.getElementById("title_container").width = LableWidth;
	}
	else
	{
		document.getElementById("if_page").width = (parseInt(width, 10) - 1).toString();
		document.getElementById("td_subpage").width = width;
		document.getElementById("tb_top").width = "838";
		document.getElementById("index_container").width = "838";
		document.getElementById("tb_bottom").width = "838";
		document.getElementById("tb_copyright").width = "838";
		document.getElementById("title_container").style.display = "";
		//document.getElementById("td_menu_empty").style.display = "none";
		//document.getElementById("title_container").width = "838";
	}
}
function resetIframeHeight(height)
{
	var tdMenuHieght = height;
	height = (parseInt(height, 10) + 10).toString();
	if (document.getElementById("tb_indicator").style.display != "none")
	{
		tdMenuHieght = (parseInt(height, 10) - parseInt(document.getElementById("tb_indicator").offsetHeight, 10)).toString();
		if (parseInt(tdMenuHieght, 10) <= 0)
			tdMenuHieght = height;
	}
	document.getElementById("if_page").height = (parseInt(height, 10) - 5).toString();
	document.getElementById("td_menu").height = tdMenuHieght;
	//document.getElementById("td_menu").height = height;
	document.getElementById("td_subpage").height = height;
	//IE 7 need resort menu option
	if (Browser.search("IE") == -1)
		return;
	if (document.documentMode != "7" && document.documentMode != undefined)
		return;
	var tdMenuOptionHeight = 28;
	var totalMenuOptionHeight = 0;
	for (var i = 0; i < 2; i++)
	{
		totalMenuOptionHeight += tdMenuOptionHeight;
	}
	var last_option_height = height - totalMenuOptionHeight;
	if (last_option_height <= 0)
		last_option_height = tdMenuOptionHeight;
	document.getElementById("tr_menu_last_option").height = last_option_height;
	var resize_times = 0;
	while (document.getElementById("td_page_live").offsetHeight > tdMenuOptionHeight + 10)
	{
		document.getElementById("tr_menu_last_option").height++;
		resize_times++;
		if (resize_times >= 1000)
			break;
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
function ptOver(type)
{
    document.getElementById("PTZ").className = type;
}
function ptOut()
{
	document.getElementById("PTZ").className = "ori";
}
function ptDown(type)
{
	document.getElementById("PTZ").className = type + "_d";
}
function ptUp(type)
{
    document.getElementById("PTZ").className = type;
}
function ptctl_callback(){

    if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function ptctl_go_preset(){
	var selectItem = document.getElementById("pIndex");
	var selectValue = selectItem.options[selectItem.selectedIndex].value;
	if(selectValue=="none"){
    	return;
	}
	var url = "/" + group + "/ptctl.cgi"
	var params = "move=p" + selectValue;
	makeRequest(url, params, ptctl_callback);
}
function ptctl_move(act){
	var url = "/" + group + "/ptctl.cgi"
	var params = "move=" + act;
	var selectPanDegree = document.getElementById("PanDegree");
	var selectTiltDegree = document.getElementById("TiltDegree");
	if (selectPanDegree.selectedIndex != -1 && (act == "left" || act == "right")) {
		params += "&degree=" + selectPanDegree.options[selectPanDegree.selectedIndex].value;
	}
	if (selectTiltDegree.selectedIndex != -1 && (act == "top" || act == "down")) {
		params += "&degree=" + selectTiltDegree.options[selectTiltDegree.selectedIndex].value;
	}
	
	makeRequest(url, params, ptctl_callback);
}
function setLanguage_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	window.location.reload();
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function setLanguage()
{
	setCookie("language", document.getElementById("WebLanguageSel").value);
	window.location.reload();
	/*
	var url = "/cgi/" + group + "/param.cgi";
	var params = "action=update&group=System.Info&DefaultLanguage=";
	for(var i = 0; i < document.getElementById("WebLanguageSel").length; i++)
	{
		if(document.getElementById("WebLanguageSel").options[i].selected == true){
			params += document.getElementById("WebLanguageSel").options[i].value;
			break;
		}
	}
	makeRequest(url, params, setLanguage_callback);
	*/
}
function getNotify_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	//motion
        	if (http_request.responseText.search("md1=off") != -1 && http_request.responseText.search("audio_detected=off") != -1)
        	{
        		document.getElementById("img_motion_off").style.display = "";
        		document.getElementById("img_motion_on").style.display = "none";
        	}
        	else if (http_request.responseText.search("md1=on") != -1 || http_request.responseText.search("audio_detected=on") != -1)
        	{
        		document.getElementById("img_motion_off").style.display = "none";
        		document.getElementById("img_motion_on").style.display = "";
        	}
		//recording
        	if (http_request.responseText.search("recording=on") != -1 || http_request.responseText.search("recording_samba=on") != -1 ||
		     http_request.responseText.search("recording_ftp=on") != -1 || http_request.responseText.search("recording_smtp=on") != -1 ||
		     http_request.responseText.search("recording_http=on") != -1)
        	{
        		document.getElementById("img_record_off").style.display = "none";
        		document.getElementById("img_record_on").style.display = "";
        	}
		else
		{
			document.getElementById("img_record_off").style.display = "";
        		document.getElementById("img_record_on").style.display = "none";
		}
        }else {
            
        }
    }
}
function getNotify()
{
	var url = "/users/notify.cgi";
	
	makeRequestByGet(url, getNotify_callback);
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
        <td align="center" valign="middle"><img alt ="" src="img/title.gif"></td>
      </tr>
    </table>
  </div>
  <table id="index_container" width="838" border="0" cellpadding="2" cellspacing="1" align="center" bgcolor="#FFFFFF">
    <tr id="topnav_container">
      <td id="td_modelName" width="131" align="left"><img alt="" src="img/devmodel.jpg" height="27"></td>
	  <td id="td_menu_live" style="width:20%" class="topnavoff" align="left"><a href="home.asp"><span id="sLiveVideo">Live Video</span></a></td>
	  <td id="td_menu_setup" style="width:20%" class="topnavoff" align="left"><a href="setup.asp?menu=setup"><span id="sSetup">Setup</span></a></td>
	  <td id="td_menu_maintenance" style="width:20%" class="topnavoff" align="left"><a href="setup.asp?menu=maintenance"><span id="sMaintenance">Maintenance</span></a></td>
	  <td id="td_menu_status" style="width:20%" class="topnavoff" align="left"><a href="setup.asp?menu=status"><span id="sStatus">Status</span></a></td>
	  <td id="td_menu_help" style="width:20%"" class="topnavoff" align="left"><a href="setup.asp?menu=help"><span id="sHelp">Help</span></a></td>
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
			  <!--Live Menu-->
			  <table id="table_menu" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF" height="100%">
			    <tr>
			      <td id="td_menu" height="550" valign="top" bgcolor="#404343">
			        <table id="tb_indicator" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" width="130" style="display: ">
			  	      <tr class="sidenav_container">
			  	        <td class="sidenavoff" align="center" style="text-align:center;vertical-align:middle">
			  	          <br>
			  	          <div align="center" style="border:0px;padding:0px;height:50px;vertical-align:middle;text-align:center">
					        <img id="img_motion_off" alt="" src="img/motion_notification_off.gif">
					        <img id="img_motion_on" alt="" src="img/motion_notification_on.gif" style="display: none">
					        <img id="img_record_off" alt="" src="img/server_recorde_off.gif">
					        <img id="img_record_on" alt="" src="img/server_recorde_on.gif" style="display: none">
					      </div>
					    </td>
			 		  </tr>
					</table>
			  	    <table id="table_menu_live" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" width="130" height="100%">
			    	  <tr class="sidenav_container" valign="top"><td id="td_page_live" class="sidenavon"><a href="home.asp?menu=live&page=live"><span id="sCamera">Camera</span></a></td></tr>
			    	  <tr class="sidenav_container"><td id="td_page_logout" class="sidenavoff"><a target='_parent' href="logout.asp"><span id="sLogout">Logout</span></a></td></tr>
					  <tr id="tr_menu_last_option" bgcolor="#404343" height="100%">
			      		<td class="sidenavoff" valign="top">
				    	  <table id="table_PT" cellpadding="2" cellspacing="1" border="0" bordercolor="#FFFFFF">
					  	    <tr>
					    	  <td colspan=2 style="padding: 112px 0px 12px 0px;">
					      		<img alt="" name="PTZ" id="PTZ" class="ori" style="width:110px;height:110px;vertical-align:middle;cursor:pointer;background-image:url(img/pt_b.gif);background-repeat:no-repeat; margin:0 0 0 8px;" src="img/dot.gif" border="0" usemap="#MapMap" align="center">
					    	  </td>
					  		</tr>
					  		<tr>
					    	  <td colspan=2><font color=white><span id="sGoTo">Go To</span></font></td>
					  		</tr>
					  		<tr>
					    	  <td colspan=2>
						  		<SELECT id="PresetList" name="PresetList" size="1" style="width:120px;" onchange="ptctl_go_preset();">
						    	  <OPTION value="none">-- Select One --</OPTION>
						    	  <OPTION value="0">1</OPTION>
						    	  <OPTION value="1">2</OPTION>
						    	  <OPTION value="2">3</OPTION>
						    	  <OPTION value="3">4</OPTION>
						    	  <OPTION value="4">5</OPTION>
						    	  <OPTION value="5">6</OPTION>
						    	  <OPTION value="6">7</OPTION>
						    	  <OPTION value="7">8</OPTION>
						  		</SELECT>
							  </td>
					  		</tr>
					  		<tr><td colspan=2 style="height: 10px"></td></tr>
					  		<tr>
					    	  <td><font color=white><span id="sPanStep">Pan Step</span></font></td>
					    	  <td><input type="hidden" name="Pan" value="5">
						  		<SELECT id="PanDegree" size="1">
						    	  <OPTION value="1">1</OPTION>
								  <OPTION value="2">2</OPTION>
								  <OPTION value="3">3</OPTION>
								  <OPTION value="4">4</OPTION>
								  <OPTION value="5">5</OPTION>
								  <OPTION value="10">10</OPTION>
								  <OPTION value="15">15</OPTION>
								  <OPTION value="20">20</OPTION>
								  <OPTION value="25">25</OPTION>
								  <OPTION value="30">30</OPTION>
						  		</SELECT>
							  </td>
					  		</tr>
					  		<tr>
							  <td><font color=white><span id="sTiltStep">Tilt Step</span></font></td>
							  <td>
						  		<select id="TiltDegree" size="1">
						    	  <option value="1">1</option>
						    	  <option value="2">2</option>
						    	  <option value="3">3</option>
						    	  <option value="4">4</option>
						    	  <option value="5">5</option>
						    	  <option value="10">10</option>
						    	  <option value="15">15</option>
						    	  <option value="20">20</option>
						    	  <option value="25">25</option>
						    	  <option value="30">30</option>
						  		</select>  
							  </td>
					  		</tr>
						  </table>
						  <div style="padding: 20px 0px 0px 4px; font-size: 11px;">
					  		<font color=white><span id="sLanguage">Language</span> :</font>
						  </div>&nbsp;
						  <SELECT id="WebLanguageSel" size="1" onchange="setLanguage();">
					  		<OPTION value="en" selected>English</OPTION>
					  		<OPTION value="sc">简体中文</OPTION>
					  		<OPTION value="tc">繁體中文</OPTION>
					  		<option value="de">Deutsch</option>
					  		<option value="es">Español</option>
			  				<option value="it">Italiano</option>
			  				<option value="fr">Français</option>
						  </SELECT>
						  <p></p>
				  		</td>
			    	  </tr>
    		  		</table>
			  	  </td>
			  	</tr>
			  </table>
		    </td>
		    <td valign="top" id="td_subpage" class="maincontent_container" width="700" height="575">
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
			  <iframe id="if_page" frameborder="0" width="100%" height="100%" scrolling="no" src=""></iframe>
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
  <map name="MapMap" id="MapMap">
    <area shape="poly"   coords="0, 36, 14, 15, 35, 1, 35, 20, 28, 25, 24, 30, 20, 36"       	onMouseOver='ptOver("left_up")'    onMouseDown='ptDown("left_up")'    onMouseOut='ptOut()' onMouseUp='ptUp(0);ptctl_move("left_up");'>
    <area shape="poly"   coords="35,-7,73,-11,74,20,66,17,56,16,44,17,35,20"  				 	onMouseOver='ptOver("up")'         onMouseDown='ptDown("up")'         onMouseOut='ptOut()' onMouseUp='ptUp(1);ptctl_move("up");'>
	<area shape="poly"   coords="74, 1, 94, 14, 108, 36, 90, 36, 85, 30, 80, 24, 73, 20"     	onMouseOver='ptOver("right_up")'   onMouseDown='ptDown("right_up")'   onMouseOut='ptOut()' onMouseUp='ptUp(2);ptctl_move("right_up");'>
	<area shape="poly"   coords="22, 73, 0, 73, 0, 36, 20, 36, 17, 44, 16, 52, 17, 60, 18, 68"  onMouseOver='ptOver("left")'       onMouseDown='ptDown("left")'       onMouseOut='ptOut()' onMouseUp='ptUp(3);ptctl_move("left");'>
	<area shape="circle" coords="55, 55, 15"                                      			 	onMouseOver='ptOver("home")'       onMouseDown='ptDown("home")'       onMouseOut='ptOut()' onMouseUp='ptUp(4);ptctl_move("h");'>
	<area shape="poly"   coords="109, 36, 109, 73, 84, 73, 89, 64, 90, 55, 90, 46, 87, 36"   	onMouseOver='ptOver("right")'      onMouseDown='ptDown("right")'      onMouseOut='ptOut()' onMouseUp='ptUp(5);ptctl_move("right");'>
	<area shape="poly"   coords="21, 73, 0, 73, 15, 96, 36, 108, 36, 88, 30, 83, 25, 78"     	onMouseOver='ptOver("left_down")'  onMouseDown='ptDown("left_down")'  onMouseOut='ptOut()' onMouseUp='ptUp(6);ptctl_move("left_down");'>
	<area shape="poly"   coords="36, 87, 36, 111, 74, 114, 74, 86, 66, 90, 55, 91, 44, 90"   	onMouseOver='ptOver("down")'       onMouseDown='ptDown("down")'       onMouseOut='ptOut()' onMouseUp='ptUp(7);ptctl_move("down");'>
	<area shape="poly"   coords="74, 86, 74, 108, 95, 94, 110, 73, 88, 73, 86, 78, 79, 83"   	onMouseOver='ptOver("right_down")' onMouseDown='ptDown("right_down")' onMouseOut='ptOut()' onMouseUp='ptUp(8);ptctl_move("right_down");'>
  </map>
   <script type="text/javascript" language="javascript">init();</script>
  <br>
</body>
</html>
