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
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-1.4.2.min.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_night.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
var DayMode=decodeBase64("<% getCameraImageInfo(IRCut); %>");
var DayScheStart=decodeBase64("<% getCameraImageInfo(IRScheEnd); %>");
var DayScheEnd=decodeBase64("<% getCameraImageInfo(IRScheStart); %>");
function resizePage()
{
	if (parent)
	{
		parent.resetIframeHeight(document.body.clientHeight);
	}
}
function init(bReinit)
{
	document.body.style.display = "";
	if (!bReinit)
	{
		for (var i = 0; i <= 59; i++)
		{
			var si = i.toString();
			if (i < 10)
				si = "0" + si;
			if (i < 24)
			{
				document.getElementById("select_start_hour").options.add(new Option(si, i.toString()));
				document.getElementById("select_end_hour").options.add(new Option(si, i.toString()));
			}
			document.getElementById("select_start_min").options.add(new Option(si, i.toString()));
			document.getElementById("select_end_min").options.add(new Option(si, i.toString()));
		}
		loadText();
	}
	setConfig();
	onModeChanged();
	resizePage();
	g_showEffect = "fast";
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_DAYNIGHT_TITLE]);
	setText(document.getElementById("sDayNightSetting"), item_name[I_DAYNIGHT_SETTING]);
	setText(document.getElementById("sDayNightMode"), item_name[I_DAYNIGHT_MODE]);
	setText(document.getElementById("sAuto"), item_name[I_AUTO]);
	setText(document.getElementById("sManual"), item_name[I_MANUAL]);
	setText(document.getElementById("sAlwaysDay"), item_name[I_ALWAYS_DAY_MODE]);
	setText(document.getElementById("sAlwaysNight"), item_name[I_ALWAYS_NIGHT_MODE]);
	setText(document.getElementById("sDayModeSchedule"), item_name[I_DAY_MODE_SCHEDULE]);
	setText(document.getElementById("sExample"), item_name[I_EXAMPLE]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];	
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
}
function setConfig()
{
	if (DayMode == "0")
		document.getElementsByName("radio_mode")[0].checked = true;
	else if (DayMode == "1")
		document.getElementsByName("radio_mode")[1].checked = true;
	else if (DayMode == "2")
		document.getElementsByName("radio_mode")[2].checked = true;	
	else if (DayMode == "3")
		document.getElementsByName("radio_mode")[3].checked = true;
	else if (DayMode == "4")
		document.getElementsByName("radio_mode")[4].checked = true;
			
	var day_start_hour = Math.floor(parseInt(DayScheStart, 10) / 60);
	var day_start_min = Math.floor(parseInt(DayScheStart, 10) % 60);
	var day_end_hour = Math.floor(parseInt(DayScheEnd, 10) / 60);
	var day_end_min = Math.floor(parseInt(DayScheEnd, 10) % 60);
	document.getElementById("select_start_hour").value = day_start_hour.toString();
	document.getElementById("select_end_hour").value = day_end_hour.toString();
	document.getElementById("select_start_min").value = day_start_min.toString();
	document.getElementById("select_end_min").value = day_end_min.toString();
}
function onModeChanged()
{
  if (document.getElementsByName("radio_mode")[4].checked)
  {
  	$("#div_schedule_setting").show(g_showEffect, resizePage);	
  }
  else
  {
     $("#div_schedule_setting").hide(g_showEffect, resizePage);
  }
  //resizePage();
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        	if (parent)
        	{
        		setTimeout("parent.blockUI(false, '', 0);", 1000);
        		setTimeout('document.getElementById("if_data").contentWindow.document.location.reload();', 1000);
        	}
        	else
        		window.location.reload();
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
	var url = "/cgi/admin/dayMode.cgi";
	var params = "";

	if (document.getElementsByName("radio_mode")[0].checked)
		params += "IRCut=0";
	else if (document.getElementsByName("radio_mode")[1].checked)
		params += "IRCut=1";
	else if (document.getElementsByName("radio_mode")[2].checked)
		params += "IRCut=2";
	else if (document.getElementsByName("radio_mode")[3].checked)
		params += "IRCut=3";	
	else if (document.getElementsByName("radio_mode")[4].checked)
	{
		params += "IRCut=4";
		var startmins = parseInt(document.getElementById("select_start_hour").value, 10) * 60 + parseInt(document.getElementById("select_start_min").value, 10);
		params += "&IRScheEnd=" + encodeURIComponent(startmins.toString());
		var endmins = parseInt(document.getElementById("select_end_hour").value, 10) * 60 + parseInt(document.getElementById("select_end_min").value, 10);
		params += "&IRScheStart=" + encodeURIComponent(endmins.toString());
	}
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
	DayMode = decodeBase64("<% getCameraImageInfo(IRCut); %>");
	DayScheStart = decodeBase64("<% getCameraImageInfo(IRScheEnd); %>");
	DayScheEnd = decodeBase64("<% getCameraImageInfo(IRScheStart); %>");

	if (document.getElementsByName("radio_mode")[0].checked)
		DayMode = "0";
	else if (document.getElementsByName("radio_mode")[1].checked)
		DayMode = "1";
	else if (document.getElementsByName("radio_mode")[2].checked)
		DayMode = "2";
	else if (document.getElementsByName("radio_mode")[3].checked)
		DayMode = "3";	
	else if (document.getElementsByName("radio_mode")[4].checked)
	{
		DayMode = "4";
		var startmins = parseInt(document.getElementById("select_start_hour").value, 10) * 60 + parseInt(document.getElementById("select_start_min").value, 10);
		DayScheStart = startmins.toString();
		var endmins = parseInt(document.getElementById("select_end_hour").value, 10) * 60 + parseInt(document.getElementById("select_end_min").value, 10);
		DayScheEnd = endmins.toString();
	}
	//setConfig();
	//onModeChanged();
	//resizePage();
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'night_data.asp?' + g_token">
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
      					<h1><span id="sTitle">Day/Night Mode</span></h1>
      					<span id="sTitleInfo">
      					  In this section, you can configure the Day/Night mode switching method. 
						  Day/Night mode ensures good video illumination in both day and night 
						  environments.<br><br>
      					  In Day mode, IR illumination is off, IR light is blocked and the video is 
						  in color. In Night mode, IR illumination is on, IR light is visible and 
						  the video is in black &amp; white.
						</span>  
       	 				<div align=center>
        				  <span>&nbsp;</span>
        				  <p></p>
        				  <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        				</div>
      				  </div>
      				  <div class="box">
        				<h2><span id="sDayNightSetting">Day/Night Mode Settings</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <tr>
          					<td width=120><span id="sDayNightMode">Day/Night Mode</span></td>
          					<td><input type=radio name="radio_mode" onclick="onModeChanged()"></td>
          					<td><span id="sAuto">Auto</span></td>
        				  </tr>
        				  <tr>
          					<td></td>
          					<td><input type=radio name="radio_mode" onclick="onModeChanged()"></td>
          					<td><span id="sManual">Manual</span></td>
        				  </tr>
        				  <tr>
          					<td></td>
          					<td><input type=radio name="radio_mode" onclick="onModeChanged()"></td>
          					<td><span id="sAlwaysDay">Always Day Mode</span></td>
        				  </tr>
        				  <tr>
          					<td></td>
          					<td><input type=radio name="radio_mode" onclick="onModeChanged()"></td>
          					<td><span id="sAlwaysNight">Always Night Mode</span></td>
        				  </tr>
        				  <tr>
          					<td></td>
          					<td><input type=radio name="radio_mode" onclick="onModeChanged()"></td>
          					<td><span id="sDayModeSchedule">Day Mode Schedule</span></td>
        				  </tr>
        				  <tr>
        	  				<td></td>
          					<td></td>
          					<td>
          					  <div id="div_schedule_setting">
            				    <table cellpadding="0" cellspacing="1" class=maintext>
            					  <tr>
              					    <td>
              					      <select id="select_start_hour" style="height: 19px"></select>
              					      <span>:</span>
              					      <select id="select_start_min"></select>
              					      <span>&nbsp;~&nbsp;</span>
              					      <select id="select_end_hour"></select>
              					      <select id="select_end_min"></select>
              					    </td>
              					    <td>&nbsp;(<span id="sExample">Example</span> : 08:00 ~ 18:30)</td>
            					  </tr>
            				    </table>
            				  </div>
          					</td>
        				  </tr>
        				</table>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigDayNightMode" value="Save">
        				<span>&nbsp;</span>
        				<INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				<span>&nbsp;&nbsp;</span>
        				<INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
      				  </p>
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
      	    <td id="help_text">
      		  <span id="sHelpInfo">
        	    <b>Helpful Hints..</b>
        		<br><br><b>Auto</b> - Camera automatically switches between Day and 
				Night mode. The camera normally works in Day mode. It automatically 
				changes to Night mode in darker lighting.
        		<br><br><b>Manual</b> - User can manually control the camera to work in 
				Day or Night mode on the live video view page.
        		<br><br><b>Always Day Mode</b> - The camera always works in the Day 
				mode.
        		<br><br><b>Always Night Mode</b> - The camera always works in the Night 
				mode.
        		<br><br><b>Day Mode Schedule</b> - The camera works in Day mode based on 
				the day and time configured in the schedule. The camera changes to Night 
				mode during all other times.
			  </span>	
      		</td>
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>  
</html>
