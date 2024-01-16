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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_eventsnapshot.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData=1;
var g_nSaving=0;
var g_token = getWebQuery("token", "");

function onEnableChanged()
{
	onSelectTriggerType();
	onFTPEnable();
	onEMailEnable();
	if (document.getElementById("input_enable").checked)
	{
		$("#div_recording_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_recording_setting").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onFTPEnable()
{
	return;
	if (document.getElementById("input_target_ftp").checked)
	{
		$("#div_ftp").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_ftp").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onEMailEnable()
{
	return;
	if (document.getElementById("input_target_email").checked)
	{
		$("#div_email").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_email").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onDuringClick()
{
	if (document.getElementById("input_only_during").checked)
	{
		$("#div_sche_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_sche_setting").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onSelectTriggerType()
{
	if (document.getElementById("select_trigger_type").value == "always")
	{
		$("#tr_only_during").hide(g_showEffect, resizePage);
		$("#div_sche_setting").hide(g_showEffect, resizePage);
	}
	else if (document.getElementById("select_trigger_type").value == "schedule")
	{
		$("#tr_only_during").hide(g_showEffect, resizePage);
		$("#div_sche_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#tr_only_during").show(g_showEffect, resizePage);
		onDuringClick();
	}
}
function ftp_test_callback(http_request)
{
	if (http_request.readyState == 4) 
	{
		if (parent)
			setTimeout("parent.blockUI(false, '', 0);", 1000);
        if (http_request.status == 200) 
        {
        	if (http_request.responseText == "success\r\n")
        	{
        		setTimeout("alert('Test Success');", 1050);
        	}
        	else if (http_request.responseText == "write_failed\r\n")
        	{
        		setTimeout("alert('Test Failed');", 1050);
        	}
        	else if (http_request.responseText == "connect_failed\r\n")
        	{
        		setTimeout("alert('Test Failed');", 1050);
        	}
        }
        else 
        {
        	setTimeout("alert(pop_msg[PMSG_REQUEST_FAILED]);", 1050);
        }
    }
}
function ftpTest()
{
	var url = "/cgi/admin/testserv.cgi";
	var params = "targetserv=ftp";
	params += "&hostname=" + encodeURIComponent(document.getElementById("input_ftp_server").value);
	params += "&port=" + encodeURIComponent(document.getElementById("input_ftp_port").value);
	params += "&username=" + encodeURIComponent(document.getElementById("input_ftp_uid").value);
	params += "&password=" + encodeURIComponent(document.getElementById("input_ftp_pwd").value);
	params += "&path=" + encodeURIComponent(document.getElementById("input_ftp_path").value);

	if (document.getElementsByName("radio_ftp_mode")[0].checked)
		params += "&passive=1";
	else if (document.getElementsByName("radio_ftp_mode")[1].checked)
		params += "&passive=0";
	
	if (parent)
		parent.blockUI(true, "FTP Testing", 1);
	makeRequest(url, params, ftp_test_callback);
}
function email_test_callback(http_request)
{
	if (http_request.readyState == 4) 
	{
		if (parent)
			setTimeout("parent.blockUI(false, '', 0);", 1000);
        if (http_request.status == 200) 
        {
        	if (http_request.responseText == "success\r\n")
        	{
        		setTimeout("alert('Test Success');", 1050);
        	}
        	else if (http_request.responseText == "send_failed\r\n")
        	{
        		setTimeout("alert('Test Failed');", 1050);
        	}
        }
        else 
        {
        	setTimeout("alert(pop_msg[PMSG_REQUEST_FAILED]);", 1050);
        }
    }
}
function emailTest()
{
	var url = "/cgi/admin/testserv.cgi";
	var params = "targetserv=email";
	params += "&hostname=" + encodeURIComponent(document.getElementById("input_smtp_server").value);
	params += "&sender=" + encodeURIComponent(document.getElementById("input_smtp_sender").value);
	params += "&port=" + encodeURIComponent(document.getElementById("input_smtp_port").value);
	params += "&receiver1=" + encodeURIComponent(document.getElementById("input_smtp_receiver").value);
	params += "&username=" + encodeURIComponent(document.getElementById("input_smtp_uid").value);
	params += "&password=" + encodeURIComponent(document.getElementById("input_smtp_pwd").value);
	if (document.getElementById("input_smtp_uid").value == "" && document.getElementById("input_smtp_pwd").value == "")
		params += "&auth=0";
	else
		params += "&auth=1";

	if (document.getElementsByName("radio_smtp_auth")[0].checked)
	{
		params += "&encrypt=0";
		params += "&starttls=0"
	}
	else if (document.getElementsByName("radio_smtp_auth")[1].checked)
	{
		params += "&encrypt=1";
		params += "&starttls=0";
	}
	else if (document.getElementsByName("radio_smtp_auth")[2].checked)
	{
		params += "&encrypt=0";
		params += "&starttls=1";
	}
	
	if (parent)
		parent.blockUI(true, "EMail Testing", 1);
	makeRequest(url, params, email_test_callback);
}
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
				document.getElementById("select_start_hour").options.add(new Option(si, si));
				document.getElementById("select_end_hour").options.add(new Option(si, si));
			}
			document.getElementById("select_start_min").options.add(new Option(si, si));
			document.getElementById("select_end_min").options.add(new Option(si, si));
		}
		document.getElementById("div_sche_setting").style.display = "none";
		loadText();
	}
	setConfig();
	onSelectTriggerType();
	onEnableChanged();
	onFTPEnable();
	onEMailEnable();
	resizePage();
	g_showEffect = "fast";
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_SNAPSHOT_TITLE]);
	setText(document.getElementById("sSnapshotTitle"), item_name[I_SNAPSHOT]);
	setText(document.getElementById("sSnapshotItem"), item_name[I_SNAPSHOT_ITEM]);
	setText(document.getElementById("sTriggerType"), item_name[I_TRIGGER_BY]);
	setText(document.getElementById("sOnlyDuring"), item_name[I_ONLY_DURING]);
	setText(document.getElementById("sDay"), item_name[I_DAY]);
	setText(document.getElementById("sSun"), item_name[I_SUN]);
	setText(document.getElementById("sMon"), item_name[I_MON]);
	setText(document.getElementById("sTue"), item_name[I_TUE]);
	setText(document.getElementById("sWed"), item_name[I_WED]);
	setText(document.getElementById("sThu"), item_name[I_THU]);
	setText(document.getElementById("sFri"), item_name[I_FRI]);
	setText(document.getElementById("sSat"), item_name[I_SAT]);
	setText(document.getElementById("sTime"), item_name[I_TIME]);
	setText(document.getElementById("sStart"), item_name[I_START]);
	setText(document.getElementById("sEnd"), item_name[I_END]);
	setText(document.getElementById("sSnapshotType"), item_name[I_SNAPSHOT_TYPE]);
	setText(document.getElementById("sSingleSnapshot"), item_name[I_SINGLE]);
	document.getElementById("sSnapshotInterval").innerHTML = des_item_name[D_SNAPSHOT_INTERVAL]
	setText(document.getElementById("sTarget"), item_name[I_TARGET]);
	setText(document.getElementById("sFTP"), item_name[I_FTP]);
	setText(document.getElementById("sEmail"), item_name[I_EMAIL]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];	
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	
	for (var i = 0; i < document.getElementById("select_trigger_type").length; i++)
	{
		document.getElementById("select_trigger_type").options[i].text = option_content[O_MOTION + i];
	}	
}
function setConfig()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
/*
	if (iffun("MotionEnableTrigger") == "1")
		document.getElementById("input_motion_trigger_enable").checked = true;
	else
		document.getElementById("input_motion_trigger_enable").checked = false;		
	
	if (iffun("SoundEnableTrigger") == "1")	
		document.getElementById("input_sound_trigger_enable").checked = true;
	else
		document.getElementById("input_sound_trigger_enable").checked = false;
*/
	if (iffun("SnapshotEnable") == "1")
		document.getElementById("input_enable").checked = true;
	else
		document.getElementById("input_enable").checked = false;
		
	if (iffun("MotionEnableTrigger") == "1")
		document.getElementById("select_trigger_type").value = "motion";
	else if (iffun("SoundEnableTrigger") == "1")
		document.getElementById("select_trigger_type").value = "sound";
	else if (iffun("ScheduleEnableTrigger") == "1")
	{
		if (iffun("Profile") == "event_snapshot")
			document.getElementById("select_trigger_type").value = "schedule";
		else
			document.getElementById("select_trigger_type").value = "always";
	}
	else
		document.getElementById("select_trigger_type").value = "motion";
		
	if (iffun("PostFrame") == "1")
		document.getElementsByName("radio_snapshot_type")[0].checked = true;
	else
		document.getElementsByName("radio_snapshot_type")[1].checked = true;
		
	document.getElementById("select_snapshot_interval").value = iffun("SnapshotInterval");
	
	if (iffun("Profile") == "event_snapshot")
		document.getElementById("input_only_during").checked = true;
	else
		document.getElementById("input_only_during").checked = false;
		
	if (iffun("SendEmail") == "1")
		document.getElementById("input_target_email").checked = true;
	else
		document.getElementById("input_target_email").checked = false;
	if (iffun("FTPUpload") == "1")
		document.getElementById("input_target_ftp").checked = true;
	else
		document.getElementById("input_target_ftp").checked = false;

	for (var i = 0; i < document.getElementsByName("input_sche_weekday").length; i++)
		document.getElementsByName("input_sche_weekday")[i].checked = false;
	
	var lstarr = iffun("lstarr");
	for (var i = 0; i < lstarr.length; i++)
	{
		if (lstarr[i].name == "event_snapshot")
		{
			if (lstarr[i].weekday == null)
				continue;
			document.getElementsByName("input_sche_weekday")[parseInt(lstarr[i].weekday, 10)].checked = true;
			document.getElementById("select_start_hour").value = lstarr[i].starthr;
			document.getElementById("select_start_min").value = lstarr[i].startmin;
			document.getElementById("select_end_hour").value = lstarr[i].endhr;
			document.getElementById("select_end_min").value = lstarr[i].endmin;
		}
	}
	//ftp config
	/*
	document.getElementById("input_ftp_server").value = iffun("FTP_ServerAddr");
	document.getElementById("input_ftp_port").value = iffun("FTP_ServerPort");
	document.getElementById("input_ftp_uid").value = iffun("FTP_ServerUID");
	document.getElementById("input_ftp_pwd").value = iffun("FTP_ServerPWD");
	document.getElementById("input_ftp_path").value = iffun("FTP_ServerDIRPath");
	if (iffun("FTP_ServerPassive") == "1")
		document.getElementsByName("radio_ftp_mode")[1].checked = true;
	else
		document.getElementsByName("radio_ftp_mode")[0].checked = true;
	//email
	document.getElementById("input_smtp_server").value = iffun("EMAIL_ServerAddr");
	document.getElementById("input_smtp_port").value = iffun("EMAIL_ServerPort");
	document.getElementById("input_smtp_sender").value = iffun("EMAIL_SenderAddr");
	document.getElementById("input_smtp_receiver").value = iffun("EMAIL_ReceiverAddr1");
	document.getElementById("input_smtp_uid").value = iffun("EMAIL_ServerUID");
	document.getElementById("input_smtp_pwd").value = iffun("EMAIL_ServerPWD");
	if (iffun("EMAIL_SSLEnable") == "1" || iffun("EMAIL_STARTTLSEnable") == "1")
	{
		if (iffun("EMAIL_SSLEnable") == "1")
			document.getElementsByName("radio_smtp_auth")[1].checked = true;
		else if (iffun("EMAIL_STARTTLSEnable") == "1")
			document.getElementsByName("radio_smtp_auth")[2].checked = true;
	}
	else
	{
		document.getElementsByName("radio_smtp_auth")[0].checked = true;
	}
	*/
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
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
	var url = "/cgi/admin/eventsnapshot.cgi";
	var params = "";
	/*
	if (document.getElementById("input_motion_trigger_enable").checked)
		params += "MotionEnableTrigger=1";
	else
		params += "MotionEnableTrigger=0";
	
	if (document.getElementById("input_sound_trigger_enable").checked)
		params += "&SoundEnableTrigger=1";
	else
		params += "&SoundEnableTrigger=0";	
	*/
	if (document.getElementById("input_enable").checked == true)
	{
		params += "Enable=1";
		if (document.getElementById("select_trigger_type").value == "motion")
		{
			params += "&MotionEnableTrigger=1";
			params += "&SoundEnableTrigger=0";
			params += "&ScheduleEnableTrigger=0";
		}
		else if (document.getElementById("select_trigger_type").value == "sound")
		{
			params += "&MotionEnableTrigger=0";
			params += "&SoundEnableTrigger=1";
			params += "&ScheduleEnableTrigger=0";
		}
		else if (document.getElementById("select_trigger_type").value == "always" || document.getElementById("select_trigger_type").value == "schedule")
		{
			params += "&MotionEnableTrigger=0";
			params += "&SoundEnableTrigger=0";
			params += "&ScheduleEnableTrigger=1";
		}
		else
		{
			params += "&MotionEnableTrigger=1";
			params += "&SoundEnableTrigger=0";
			params += "&ScheduleEnableTrigger=0";
		}
		var saveSchedule = 0;
		if (document.getElementById("select_trigger_type").value == "motion" || document.getElementById("select_trigger_type").value == "sound")
		{
			if (document.getElementById("input_only_during").checked)
				saveSchedule = 1;
		}
		else if (document.getElementById("select_trigger_type").value == "schedule")
			saveSchedule = 1;
		if (saveSchedule)
		{
			params += "&Profile=event_snapshot";
			var iWeekend = 0;
			for (var i = 0; i < document.getElementsByName("input_sche_weekday").length; i++)
			{
				if (document.getElementsByName("input_sche_weekday")[i].checked)
					iWeekend += Math.pow(2, i);
			}
			if (iWeekend == 0)
			{
				alert(pop_msg[PMSG_PLEASE_SELECT_ONE_DAY]);
				return;
			}
			params += "&Weekend=" + iWeekend;
			var startmins = parseInt(document.getElementById("select_start_hour").value, 10) * 60 + parseInt(document.getElementById("select_start_min").value, 10);
			var endmins = parseInt(document.getElementById("select_end_hour").value, 10) * 60 + parseInt(document.getElementById("select_end_min").value, 10);
			if (startmins > endmins)
			{
				alert(pop_msg[PMSG_TIME_START_MUST_LESS_END]);
				return;
			}
			params += "&StartHour=" + document.getElementById("select_start_hour").value;
			params += "&StartMin=" + document.getElementById("select_start_min").value;
			params += "&EndHour=" + document.getElementById("select_end_hour").value;
			params += "&EndMin=" + document.getElementById("select_end_min").value;
		}
		else
		{
			params += "&Profile=always";
		}
		//ftp
		if (document.getElementById("input_target_ftp").checked)
		{
			params += "&FTPUpload=1";
			/*
			if (checkIntRange(document.getElementById("input_ftp_port").value,65535,1) == 1)
  			{
     			document.getElementById("input_ftp_port").select();
     			alert("The format of Port is invalid.");
     			return;
  			}
			params += "&FTP_ServerAddr=" + encodeURIComponent(document.getElementById("input_ftp_server").value);
			params += "&FTP_ServerPort=" + encodeURIComponent(document.getElementById("input_ftp_port").value);
			params += "&FTP_UID=" + encodeURIComponent(document.getElementById("input_ftp_uid").value);
			params += "&FTP_PWD=" + encodeURIComponent(document.getElementById("input_ftp_pwd").value);
			params += "&FTP_DIRPath=" + encodeURIComponent(document.getElementById("input_ftp_path").value);
			if (document.getElementsByName("radio_ftp_mode")[0].checked)
				params += "&FTP_Passive=0"
			else if (document.getElementsByName("radio_ftp_mode")[1].checked)
				params += "&FTP_Passive=1";
			*/	
		}
		else
			params += "&FTPUpload=0";
				
		//email
		if (document.getElementById("input_target_email").checked)
		{
			params += "&SendEmail=1";
			/*
			if (checkIntRange(document.getElementById("input_smtp_port").value,65535,1) == 1)
  			{
    	 		document.getElementById("input_smtp_port").select();
    	 		alert("The format of SMTP Server Port is invalid.");
    	 		return;
  			}

			params += "&EMAIL_ServerAddr=" + encodeURIComponent(document.getElementById("input_smtp_server").value);
			params += "&EMAIL_SenderAddr=" + encodeURIComponent(document.getElementById("input_smtp_sender").value);
			params += "&EMAIL_ServerPort=" + encodeURIComponent(document.getElementById("input_smtp_port").value);
			params += "&EMAIL_ReceiverAddr1=" + encodeURIComponent(document.getElementById("input_smtp_receiver").value);
			params += "&EMAIL_UID=" + encodeURIComponent(document.getElementById("input_smtp_uid").value);
			params += "&EMAIL_PWD=" + encodeURIComponent(document.getElementById("input_smtp_pwd").value);
			if (document.getElementById("input_smtp_uid").value == "" && document.getElementById("input_smtp_pwd").value == "")
				params += "&EMAIL_Authentication=0";
			else
				params += "&EMAIL_Authentication=1";
		
			if (document.getElementsByName("radio_smtp_auth")[0].checked)
			{
				params += "&EMAIL_SSL=0";
				params += "&EMAIL_STARTTLS=0"
			}
			else if (document.getElementsByName("radio_smtp_auth")[1].checked)
			{
				params += "&EMAIL_SSL=1";
				params += "&EMAIL_STARTTLS=0";
			}
			else if (document.getElementsByName("radio_smtp_auth")[2].checked)
			{
				params += "&EMAIL_SSL=0";
				params += "&EMAIL_STARTTLS=1";
			}
			*/
		}
		else
			params += "&SendEmail=0";
	
		if (document.getElementsByName("radio_snapshot_type")[1].checked)
		{
			params += "&PostFrame=3&PreFrame=3";
			params += "&SnapshotInterval=" + encodeURIComponent(document.getElementById("select_snapshot_interval").value);
		}
		else
		{
			params += "&PostFrame=1&PreFrame=0";
		}	
	}
	else
	{
		params += "Enable=0";
	}
  	
  	if (parent)
		parent.blockUI(true, "Saving", 1);
	g_nSaving = 1;
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
	document.getElementById("if_data").contentWindow.document.location.reload();
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
	if (g_nSaving)
	{
		g_nSaving = 0;
		if (parent)
        {
        	setTimeout("parent.blockUI(false, '', 0);", 1000);
        }
        else
        	window.location.reload();
	}
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'eventsnapshot_data.asp?' + g_token">
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
      				    <h1><span id="sTitle">Snapshot</span></h1>
      					<span id="sTitleInfo">
      					  In order to enable your camera to take snapshots, you must select the checkbox of 'Snapshot'. 
      					  Then, you can determine the trigger event(s) and FTP and/or E-mail notification(s).
      					</span>    
        			    <div align=center>
        			      <span>&nbsp;</span>
        			      <p></p>
        			      <INPUT id="btn_save_setting" type="button" width="80" id="btn_apply1" value=" Save Settings " onClick="save_setting();">
        			      <span>&nbsp;&nbsp;</span>
        			      <INPUT id="btn_not_save_setting" type="button" width="80" id="btn_cancel1" value=" Don't Save Settings " onClick="init(true);">
        			    </div>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sSnapshotTitle">Snapshot</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        			      <TR>
          				    <TD width="130px">&nbsp;<span id="sSnapshotItem">Snapshot</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="checkbox" id="input_enable" name="input_enable" onclick="onEnableChanged();">
          				    </TD>
        				  </TR>
        				</table>
        				<div id="div_recording_setting">
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR>
          				      <TD width="129px"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="sTriggerType">Trigger by</span></TD>
          				      <TD>
          				        <span>&nbsp;&nbsp;</span>
          				        <select id="select_trigger_type" onchange="onSelectTriggerType();">
          				          <option value="motion">Motion</option>
          				          <option value="schedule">Schedule</option>
          				          <option value="always">Always</option>
          				          <option value="sound">Sound</option>
						        </select>
						        <!--
						        <input type="checkbox" id="input_motion_trigger_enable">
						        <span id="sMotionTriggerEnable">Motion Detect</span>
						        <span>&nbsp;</span>
						        <input type="checkbox" id="input_sound_trigger_enable">
						        <span id="sSoundTriggerEnable">Sound Detect</span>
						        -->
						      </TD>
        				    </TR>
        				  </table>
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR id="tr_only_during">
          				      <TD width="130px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="sOnlyDuring">Only During</span></TD>
          				      <TD>
          				        <span>&nbsp;</span>
          				        <INPUT type="checkbox" id="input_only_during" name="input_only_during" onclick="onDuringClick();">
          				      </TD>
        				    </TR>
        				  </table>
        				  <div id="div_sche_setting">
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR>
          				      <TD width="138px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="sDay">Day</span><span>:</span></TD>
          				      <TD>
          				        <INPUT type="checkbox" id="input_sche_sun" name="input_sche_weekday">
          				        <span id="sSun">Sun</span>
								<INPUT type="checkbox" id="input_sche_mon" name="input_sche_weekday">
								<span id="sMon">Mon</span>
								<INPUT type="checkbox" id="input_sche_tue" name="input_sche_weekday">
								<span id="sTue">Tue</span>
								<INPUT type="checkbox" id="input_sche_wed" name="input_sche_weekday">
								<span id="sWed">Wed</span>
								<INPUT type="checkbox" id="input_sche_thu" name="input_sche_weekday">
								<span id="sThu">Thu</span>
								<INPUT type="checkbox" id="input_sche_fri" name="input_sche_weekday">
								<span id="sFri">Fri</span>
								<INPUT type="checkbox" id="input_sche_sat" name="input_sche_weekday">
								<span id="sSat">Sat</span>
							  </TD>
							</TR>
						  </table>
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
							<TR>
							  <TD width="134px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="sTime">Time</span><span>:</span></TD>
							  <TD>
							    <span>&nbsp;</span>
								<span id="sStart">Start</span>
								<select id="select_start_hour" style="height: 19px"></select>
								<span>:</span>
								<select id="select_start_min"></select>
								<span>&nbsp;&nbsp;</span>
								<span id="sEnd">End</span>
								<select id="select_end_hour"></select>
								<span>:</span>
								<select id="select_end_min"></select>
							  </TD>
							</TR>
						  </table>
						  </div>
						  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
							<TR>
							  <TD width="136px"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="sSnapshotType">Snapshot Type</span></TD>
							  <TD>
								<input type="radio" name="radio_snapshot_type">
								<span id="sSingleSnapshot">Single snapshot</span>
								<span>&nbsp;</span>
							  </TD>
							</TR>
							<TR>
							  <TD width="126px"><span>&nbsp;&nbsp;&nbsp;</span>&nbsp;</TD>
							  <TD>
								<input type="radio" name="radio_snapshot_type">
								<span id="sSnapshotInterval">6 snapshots with
								  <select id="select_snapshot_interval">
								    <option value="1000">1</option>
								    <option value="2000">2</option>
								  </select>
								second interval (3 frames before and 3 frames after motion frame)
								</span>
							  </TD>
							</TR>
						  </table>
						  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
							<TR>
							  <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="sTarget">Target</span></TD>
							  <TD>
							    <span>&nbsp;</span>
								<input type="checkbox" id="input_target_ftp" onclick="onFTPEnable();">
								<!--<span>FTP</span>-->
								<a href="/setup.asp?menu=setup&page=ftp" target="_parent"><span id="sFTP">FTP</span></a>
							  </TD>
							</TR>
						  </table>
						  <div id="div_ftp" style="display: none">
						    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">        
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
           						<TD width="100px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Host Name</TD>
          					 	<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          					  	  <INPUT type="text" size=36 maxlength=64 id="input_ftp_server" name="input_ftp_server" value="">
          					  	</TD>
        				  	  </TR>
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          					    <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Port</TD>
          						<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          					  	  <INPUT type="text" size=36 id="input_ftp_port" name="input_ftp_port">
          						</TD>
        				  	  </TR>
        				  	  <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD>
          				          <span>&nbsp;&nbsp;</span>
          				          <span>(Default is 21)</span>
						        </TD>
        				      </TR>
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          					    <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>User Name</TD>
          						<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          					  	  <INPUT type="text" size=36 maxlength=32 id="input_ftp_uid" name="input_ftp_uid" value="">
          						</TD>
        				  	  </TR>
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          					    <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Password</TD>
          						<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          						  <INPUT type="password" size=36 maxlength=32 id="input_ftp_pwd" name="input_ftp_pwd" value="">
          						</TD>
        				  	  </TR>
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          						<TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Path</TD>
          						<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          						  <INPUT type="text" size=36 maxlength=64 id="input_ftp_path" name="input_ftp_path">
          						</TD>
        				  	  </TR>
        				  	</table>
        				  	<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          					    <TD width="107px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Passive Mode</TD>
          						<TD>
            				  	  <input type=radio name="radio_ftp_mode">Yes
            				  	  <input type=radio name="radio_ftp_mode">No
          						</TD>
        				  	  </TR>
        					</table>
							<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  	  <TR>
        				  	    <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          						<TD width="100px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Server Test</TD>
          						<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          						  <INPUT type="button" width="80" id="btn_ftp_test" value=" Test " onclick="ftpTest();">
          						</TD>
        				  	  </TR>
        					</table>				
						  </div>
						  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
							<TR>
							  <TD width="130px"><span>&nbsp;&nbsp;&nbsp;</span></TD>
							  <TD>
							    <span>&nbsp;</span>
								<input type="checkbox" id="input_target_email" onclick="onEMailEnable();">
								<!--<span>E-mail</span>-->
								<a href="/setup.asp?menu=setup&page=email" target="_parent"><span id="sEmail">E-mail</span></a>
							  </TD>
							</TR>
						  </table>
						  <div id="div_email" style="display: none">
						    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        			          <TR>
        			            <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD width="145px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>SMTP Server Address</TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <INPUT type="text" size=36 maxlength=64 id="input_smtp_server" name="input_smtp_server" value="">
          				        </TD>
        				      </TR>
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>SMTP Server Port</TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <INPUT type="text" size=36 id="input_smtp_port" name="input_smtp_port">
						        </TD>
        				      </TR>
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <span>(Default is 25)</span>
						        </TD>
        				      </TR>
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Sender E-mail Address</TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <INPUT type="text" size=36 maxlength=64 id="input_smtp_sender" name="input_smtp_sender" value="">
          				        </TD>
        				      </TR>
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Receiver E-mail Address</TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <INPUT type="text" size=36 maxlength=256 id="input_smtp_receiver" name="input_smtp_receiver" value="">
          				        </TD>
        				      </TR>
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>User Name</TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <INPUT type="text" size=36 maxlength=64 id="input_smtp_uid" name="input_smtp_uid" value="">
          				        </TD>
        				      </TR>
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Password</TD>
          				        <TD>
          				          <span>&nbsp;</span>
          				          <INPUT type="password" size=36 maxlength=32 id="input_smtp_pwd" name="input_smtp_pwd" value="">
          				        </TD>
        				      </TR>
        				    </table>
        				    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				      <TR>
        				        <TD width="130px" valign="top"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          				        <TD width="160px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Use SSL-TLS/STARTTLS</TD>
          				        <TD>
          				          <span>&nbsp;&nbsp;</span>
            				      <input type=radio name="radio_smtp_auth">No
            				      <input type=radio name="radio_smtp_auth">SSL-TLS
            				      <input type=radio name="radio_smtp_auth">STARTTLS
          				        </TD>
        				      </TR>
        			        </table>
        			        <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  	  <TR>
        				  	    <TD width="130px"><span>&nbsp;&nbsp;&nbsp;</span></TD>
          						<TD width="100px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Server Test</TD>
          						<TD>
          					  	  <span>&nbsp;&nbsp;</span>
          						  <INPUT type="button" width="80" id="btn_email_test" value=" Test " onclick="emailTest();">
          						</TD>
        				  	  </TR>
        					</table>
						  </div>
        			    </div>
      				  </div>
      				  <p align=center>
        			    <input type="hidden" name="ConfigSystemEmail" value="Save">
        			    <span>&nbsp;</span>
        			    <INPUT id="btn_save_setting2" type="button" width="80" id="btn_apply2" value=" Save Settings " onClick="save_setting();">
        			    <span>&nbsp;&nbsp;</span>
        			    <INPUT id="btn_not_save_setting2" type="button" width="80" id="btn_cancel2" value=" Don't Save Settings " onClick="init(true);">
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
        	    <b>Helpful Hints..</b><br><br>
				Snapshot is the ability to store or send pictures to a remote E-mail or FTP server based on motion detection, external sensor input triggered.<br>
				<b>Trigger by</b><br>
				<b>MotionBegin</b><br>
				snapshot after a motion is detected.<br>
				<b>SoundBegin</b><br>
				snapshot after sound is detected.<br><br>
			    <b>Snapshot Type</b><br>
			    You can set JPEG settings from Video Profile 3, Single snapshot or 6 snapshots here.
				6 snapshotsSelect to take continuous 6 pictures for each snapshot.<br><br>
				<b>Target</b><br>
				You can select the target as FTP or E-mail for the snapshot.
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
