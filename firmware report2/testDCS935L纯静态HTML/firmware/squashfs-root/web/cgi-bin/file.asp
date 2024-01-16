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
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery.fileDownload.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_file.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">

var g_showEffect=0;
var g_token = getWebQuery("token", "");

function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_SYSTEM]);
	setText(document.getElementById("sSystem"), item_name[I_SYSTEM_SETTING]);
	setText(document.getElementById("sSaveToHardDrive"), item_name[I_SAVE_TO_HARDDRIVE]);
	setText(document.getElementById("sLoadFromHardDrive"), item_name[I_LOAD_FROM_HARDDRIVE]);
	setText(document.getElementById("sRestoreToFactoryDefault"), item_name[I_RESTORE_TO_DEFAULT]);
	setText(document.getElementById("sRebootDes"), item_name[I_REBOOT_DEVICE]);
	setText(document.getElementById("sRebootTitle"), item_name[I_REBOOT_SETTING]);
	setText(document.getElementById("sScheduleReboot"), item_name[I_SCHEDULE_REBOOT]);
	setText(document.getElementById("sSun"), item_name[I_SUN]);
	setText(document.getElementById("sMon"), item_name[I_MON]);
	setText(document.getElementById("sTue"), item_name[I_TUE]);
	setText(document.getElementById("sWed"), item_name[I_WED]);
	setText(document.getElementById("sThu"), item_name[I_THU]);
	setText(document.getElementById("sFri"), item_name[I_FRI]);
	setText(document.getElementById("sSat"), item_name[I_SAT]);
	setText(document.getElementById("sTime"), item_name[I_TIME]);
	document.getElementById("btn_save_reboot_sche").value = item_name[I_BTN_SAVE];
	document.getElementById("btnSaveConf").value = item_name[I_SAVE_CONF];
	document.getElementById("btnRestoreConf").value = item_name[I_RESTORE_FROM_FILE];
	document.getElementById("btnFactoryReset").value = item_name[I_RESTORE_TO_DEFAULT];
	document.getElementById("btnReset").value = item_name[I_REBOOT_DEVICE];
	document.getElementById("sTitleInfo").innerHTML= des_item_name[D_SYSTEM_INFO];
	document.getElementById("sHelpInfo").innerHTML= des_item_name[D_HELP_INFO];
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
	document.body.style.display = "";
	loadText();
	for (var i = 0; i <= 59; i++)
	{
		var si = i.toString();
		if (i < 10)
			si = "0" + si;
		if (i < 24)
		{
			document.getElementById("select_start_hour").options.add(new Option(si, si));
		}
		document.getElementById("select_start_min").options.add(new Option(si, si));
	}

	setConfig();
	onRebootScheEnable();
	resizePage();
	g_showEffect = "fast";
}
function setConfig()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	if (iffun("ScheduleReboot") == "1")
		document.getElementById("input_reboot_sche_enable").checked = true;
	else
		document.getElementById("input_reboot_sche_enable").checked = false;
	
	var lstarr = iffun("lstarr");
	for (var i = 0; i < lstarr.length; i++)
	{
		if (lstarr[i].name == "reboot")
		{
			if (lstarr[i].weekday == null)
				continue;
			document.getElementsByName("input_sche_weekday")[parseInt(lstarr[i].weekday, 10)].checked = true;
			document.getElementById("select_start_hour").value = lstarr[i].starthr;
			document.getElementById("select_start_min").value = lstarr[i].startmin;
		}
	}
}
function doFactory_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	if (http_request.responseText == "OK\r\n")
        		window.location.href='factory_status.asp';
        	else
        	{
        		alert(pop_msg[PMSG_FW_IS_RUNNING]);
        		window.location.reload();
        	}
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
            if (parent)
            	parent.blockUI(false, '', 0);
            window.location.reload();
        }
    }
}
function doFactory()
{
	var url = "/cgi/admin/whardfactorydefault.cgi";
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, "", g_token + "@" + token, doFactory_callback);
}
function doReboot_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	if (http_request.responseText == "OK\r\n")
        		window.location.href='reboot_status.asp';
        	else
        	{
        		alert(pop_msg[PMSG_FW_IS_RUNNING]);
        		window.location.reload();
        	}
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
            if (parent)
            	parent.blockUI(false, '', 0);
            window.location.reload();
        }
    }
}
function doReboot()
{
	var url = "/cgi/admin/wrestart.cgi";
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token5"), iffun("Token6"), iffun("Token7"), iffun("Token8"));
	makeRequest2(url, "", g_token + "@" + token, doReboot_callback);
}
function restore_callback()
{
	if (window.frames['ifRestore'].document.body.innerHTML == "ok") {
		setTimeout("parent.blockUI(false, '', 0);", 10);
		window.location.href='reboot_status.asp';
	}
	else if (window.frames['ifRestore'].document.body.innerHTML == "update_is_running") {
		alert(pop_msg[PMSG_FW_IS_RUNNING]);
		setTimeout("parent.blockUI(false, '', 0);", 1000);
	}
	else if (window.frames['ifRestore'].document.body.innerHTML != "") {
		alert(pop_msg[PMSG_INVALID_FILE]);
		setTimeout("parent.blockUI(false, '', 0);", 1000);
	}
}
function doRestore()
{
	if (parent)
		parent.blockUI(true, item_name[I_RESTORING], 1);
	document.formrestore.submit();
}
function onRebootScheEnable()
{
	if (document.getElementById("input_reboot_sche_enable").checked)
	{
		$("#div_sche_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_sche_setting").hide(g_showEffect, resizePage);
	}
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	setTimeout("parent.blockUI(false, '', 0);", 1000);
        	setTimeout('document.getElementById("if_data").contentWindow.document.location.reload();', 1000);
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
	var url = "/cgi/admin/scheduleReboot.cgi";
	var params = "";
	
	if (document.getElementById("input_reboot_sche_enable").checked)
	{
		params += "ScheduleReboot=1";
		params += "&Profile=reboot";
		var iWeekend = 0;
		for (var i = 0; i < document.getElementsByName("input_sche_weekday").length; i++)
		{
			if (document.getElementsByName("input_sche_weekday")[i].checked)
				iWeekend += Math.pow(2, i);
		}
		params += "&Weekend=" + iWeekend;
		params += "&StartHour=" + document.getElementById("select_start_hour").value;
		params += "&StartMin=" + document.getElementById("select_start_min").value;
	}
	else
	{
		params += "ScheduleReboot=0";
	}
	  	
  	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token9"), iffun("Token10"), iffun("Token11"), iffun("Token12"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function ifDataOK()
{
	init();
}
$(document).on("submit", "form.fileDownloadForm", function (e) {
    $.fileDownload($(this).prop('action'), {
    	prepareCallback: function (url) 
    	{
			if (parent) 
				parent.blockUI(true, item_name[I_PROCESSING], 1);
		},
    	successCallback: function (url) 
    	{
    		setTimeout("parent.blockUI(false, '', 0);", 10);
    	},
    	failCallback: function (url) 
    	{
    		alert(pop_msg[PMSG_GET_BACKFILE_FAILED]);
    		setTimeout("parent.blockUI(false, '', 0);", 10);
    	},
        data: $(this).serialize()
    });
    e.preventDefault(); //otherwise a normal form submit would occur
});
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'file_data.asp?' + g_token">
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
      				    <h1 id="hSystem"><span id="sTitle">System</span></h1>
      				    <span id="sTitleInfo">
      					  Here you can save and restore your configuration, restore the factory 
						  settings, and/or restart the camera.
					    </span>	
      				  </div>
      				  <div class="box">
        			    <h2><span id="sSystem">System</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="530" bgcolor="white" bordercolor="#FFFFFF">
        			      <TR>
          				    <TD width="200px" valign=top><span id="sSaveToHardDrive">Save To Local Hard Drive</span></TD>
          				    <TD valign=top>
          				      <form action="/cgi/admin/backup.cgi" method="get" name="formbackup" id="formbackup" style="margin:0px" class="fileDownloadForm">
          				        <INPUT id="btnSaveConf" TYPE="submit" VALUE="Save Configuration" style="WIDTH: 250px; HEIGHT: 20px"><br><br>
          				      </form>
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD valign=top><span id="sLoadFromHardDrive">Load From Local Hard Drive</span></TD>
          				    <TD valign=top>
          				      <form action="/cgi/admin/restore.cgi" method="post" enctype="multipart/form-data" name="formrestore" id="formrestore" target="ifRestore" style="margin:0px">
          				        <input name="cfgfile" size="32" type="file" id="cfgfile" class="text">
          				      </form>  
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD></TD>
          				    <TD><INPUT type="button" width="80" id="btnRestoreConf" name="btnRestoreConf" value="Restore Configuration From File" onclick="doRestore();" style="WIDTH: 250px; HEIGHT: 20px"><br><br></TD>
        				  </TR>
        				  <TR>
          				    <TD valign=top><span id="sRestoreToFactoryDefault">Restore To Factory Default</span></TD>
          				    <TD valign=top><INPUT type="button" width="80" id="btnFactoryReset" name="btnFactoryReset" value="Restore Factory Defaults" onclick="doFactory();" style="WIDTH: 250px; HEIGHT: 20px"><br><br></TD>
        				  </TR>
        			    </table>
      				    <!-- === END MAINCONTENT === -->
    				  </div>
    				  <div class="box">
        			    <h2><span id="sRebootTitle">Reboot</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="530" bgcolor="white" bordercolor="#FFFFFF">
        			      <TR>
          				    <TD width="200px"><span id="sRebootDes">Reboot The Device</span></TD>
          				    <TD valign=top><INPUT type="button" width="80" id="btnReset" name="btnReset" value="Reboot Device" onclick="doReboot();" style="WIDTH: 250px; HEIGHT: 20px"><br><br></TD>
        				  </TR>
        				</table>  
        				<table cellpadding="2" cellspacing="1" border="0" width="530" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
        				    <TD>
        				      <input type="checkbox" id="input_reboot_sche_enable" onclick="onRebootScheEnable();">
        				      <span id="sScheduleReboot">Schedule Reboot</span>
        				    </TD>
        				  </TR>
        			    </table>
        			    <div id="div_sche_setting">
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR>
          				      <TD width="60px">
          				        <INPUT type="checkbox" id="input_sche_sun" name="input_sche_weekday">
          				        <span id="sSun">Sun</span>
          				      </TD>
          				      <TD width="60px">  
								<INPUT type="checkbox" id="input_sche_mon" name="input_sche_weekday">
								<span id="sMon">Mon</span>
							  </TD>
							  <TD width="60px">	
								<INPUT type="checkbox" id="input_sche_tue" name="input_sche_weekday">
								<span id="sTue">Tue</span>
							  </TD>
							  <TD width="60px">	
								<INPUT type="checkbox" id="input_sche_wed" name="input_sche_weekday">
								<span id="sWed">Wed</span>
							  </TD>
							  <TD width="60px">	
								<INPUT type="checkbox" id="input_sche_thu" name="input_sche_weekday">
								<span id="sThu">Thu</span>
							  </TD>
							  <TD width="60px">	
								<INPUT type="checkbox" id="input_sche_fri" name="input_sche_weekday">
								<span id="sFri">Fri</span>
							  </TD>
							  <TD width="60px">	
								<INPUT type="checkbox" id="input_sche_sat" name="input_sche_weekday">
								<span id="sSat">Sat</span>
							  </TD>
							  <TD>
							  </TD>
							</TR>
						  </table>
						  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
							<TR>
							  <TD width="400px">
          				        <span id="sTime">Time</span>
          				        <span>&nbsp;</span>
								<select id="select_start_hour"></select>
								<select id="select_start_min"></select>
							  </TD>
							  <TD width="100px">
							  </TD>
							  <TD>
							  </TD>
							</TR>
						  </table>
						  </div>
						  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">	
							<TR>
							  <TD width="400px">
							  </TD>
							  <TD width="100px">
							    <input type="button" id="btn_save_reboot_sche" value="Save" style="width: 50px" onclick="save_setting();">
							  </TD>
							  <TD>
							  </TD>
							</TR>
						  </table>
      				    <!-- === END MAINCONTENT === -->
    				  </div>
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
              <br><br>After finishing the configuration settings for your camera, you 
		      can save them to your hard drive for future use.
              <br><br>You can locate a previously saved file and restore the 
		      configuration settings on your camera. You can also choose to reset your 
		      camera by restoring the factory default settings. 
            </span>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<iframe id="ifRestore" name="ifRestore" src="" frameborder="0" style="display: none" onload="restore_callback();"></iframe>
<iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>
</html>
