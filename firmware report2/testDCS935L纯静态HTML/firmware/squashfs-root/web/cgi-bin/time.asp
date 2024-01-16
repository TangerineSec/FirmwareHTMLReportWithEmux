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
<script type="text/javascript" language="Javascript" src="json2.js"></script>
<script type="text/javascript" language="Javascript" SRC="date.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_time.js\"></scr" + "ipt>");
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_timezone.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData=1;
var g_nSaving=0;
var g_nTimeReset=1;
var g_token = getWebQuery("token", "");
var g_timezoneInfo=<% getTimezoneInfo(); %>;
var g_jobj = JSON.parse(JSON.stringify(g_timezoneInfo));
function time_go(){
	stop_date_show();
	time_init(document.getElementById("timeclock").innerHTML);
	start_date_show(document.getElementById("timeclock"));
	g_nTimeReset = 0;
}
function setManualDate()
{
	var year = parseInt(document.getElementById("select_manually_year").value, 10);
  	var month = parseInt(document.getElementById("select_manually_month").value, 10);
  	var day = 1;
  	var end_day = 1;
  	if (document.getElementById("select_manually_day").value != "")
  		day = parseInt(document.getElementById("select_manually_day").value, 10);

	if (month == 2)
	{ 
		if ((year % 400) == 0)
			end_day = 29;
     	else
     	{
        	if ((year % 100) == 0)
           		end_day = 28;
        	else
        	{
           		if ((year % 4) == 0)
              		end_day = 29;
           		else
              		end_day = 28;
        	}
     	}
  	}
  	else 
  	{
     	if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
        	end_day = 31;
     	else
        	end_day = 30;
  	}
  	
  	document.getElementById("select_manually_day").options.length = 0;
  	for (var i = 1; i <= end_day; i++)
	{
		var addzero_i = i.toString();
		if (i < 10)
			addzero_i = "0" + addzero_i;
		document.getElementById("select_manually_day").options.add(new Option(addzero_i, addzero_i));
	}
  	if (day > end_day)
  	{
  		if (end_day < 10)
  			document.getElementById("select_manually_day").value = "0" + end_day.toString();
  		else
     		document.getElementById("select_manually_day").value = end_day.toString();
    }
    else
    {
    	if (day < 10)
    		document.getElementById("select_manually_day").value = "0" + day.toString();
    	else
    		document.getElementById("select_manually_day").value = day.toString();
    }
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
		for (var i = 1970; i <= 2020; i++)
		{
			document.getElementById("select_manually_year").options.add(new Option(i.toString(), i.toString()));
		}
		for (var i = 0; i <= 59; i++)
		{
			var addzero_i = i.toString();
			if (i < 10)
				addzero_i = "0" + addzero_i;
			if (i >= 1 && i <= 6)
			{
				document.getElementById("select_dl_start_week").options.add(new Option(addzero_i, i.toString()));
				document.getElementById("select_dl_end_week").options.add(new Option(addzero_i, i.toString()));
			}
			if (i >=  1 && i <= 12)
			{
				document.getElementById("select_dl_start_month").options.add(new Option(addzero_i, "M" + i.toString()));
				document.getElementById("select_dl_end_month").options.add(new Option(addzero_i, "M" + i.toString()));
				document.getElementById("select_manually_month").options.add(new Option(addzero_i, addzero_i));
			}
			if (i < 24)
			{
				document.getElementById("select_dl_start_hour").options.add(new Option(addzero_i, addzero_i));
				document.getElementById("select_dl_end_hour").options.add(new Option(addzero_i, addzero_i));
				document.getElementById("select_manually_hour").options.add(new Option(addzero_i, addzero_i));
			}
			document.getElementById("select_dl_start_min").options.add(new Option(addzero_i, addzero_i));
			document.getElementById("select_dl_end_min").options.add(new Option(addzero_i, addzero_i));
			document.getElementById("select_manually_min").options.add(new Option(addzero_i, addzero_i));
			document.getElementById("select_manually_sec").options.add(new Option(addzero_i, addzero_i));
		}
		loadText();
	}
	
	setConfig();
	onSyncNTPChanged();
	onSyncManualChanged();	
	onDaylightSavingEnable();
	onDaylightTypeChanged();
	if (g_nTimeReset)
		time_go();
	var iffun = document.getElementById("if_data").contentWindow.getConfig;	
	if (iffun("lockDateTime") == "1")
	{
		document.getElementById("input_sync_manual").disabled = true;
		document.getElementById("select_manually_year").disabled = true;
		document.getElementById("select_manually_month").disabled = true;
		document.getElementById("select_manually_day").disabled = true;
		document.getElementById("select_manually_hour").disabled = true;
		document.getElementById("select_manually_min").disabled = true;
		document.getElementById("select_manually_sec").disabled = true;
		document.getElementById("btnCopyComputerTime").disabled = true;
		document.getElementById("select_ntp_url").disabled = true;
		document.getElementById("input_sync_ntp").disabled = true;
		document.getElementById("select_timezone").disabled = true;
		document.getElementById("input_daylight_saving_enable").disabled = true;
		document.getElementById("select_offset").disabled = true;
		document.getElementById("select_dl_start_month").disabled = true;
		document.getElementById("select_dl_start_week").disabled = true;
		document.getElementById("select_dl_start_day").disabled = true;
		document.getElementById("select_dl_start_hour").disabled = true;
		document.getElementById("select_dl_start_min").disabled = true;
		document.getElementById("select_dl_end_month").disabled = true;
		document.getElementById("select_dl_end_week").disabled = true;
		document.getElementById("select_dl_end_day").disabled = true;
		document.getElementById("select_dl_end_hour").disabled = true;
		document.getElementById("select_dl_end_min").disabled = true;
		document.getElementsByName("radio_daylight_saving_type")[0].disabled = true;
		document.getElementsByName("radio_daylight_saving_type")[1].disabled = true;				
	}	
	resizePage();
	g_showEffect = "fast";
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_TIME_AND_DATE]);
	setText(document.getElementById("sTimeConfiguration"), item_name[I_TIME_CONFIGURATION]);
	setText(document.getElementById("sCurrentTime"), item_name[I_CURRECT_TIME]);
	setText(document.getElementById("sTimezone"), item_name[I_TIMEZONE]);
	setText(document.getElementById("sDSTSaving"), item_name[I_DAYLIGHT_SAVING]);
	setText(document.getElementById("sAutoDST"), item_name[I_AUTO_DST]);
	setText(document.getElementById("sManualDST"), item_name[I_MANAUAL_DST]);
	setText(document.getElementById("sOffset"), item_name[I_OFFSET]);
	setText(document.getElementById("sMonth"), item_name[I_MONTH]);
	setText(document.getElementById("sWeek"), item_name[I_WEEK]);
	setText(document.getElementById("sDayOfWeek"), item_name[I_DAY_OF_WEEK]);
	setText(document.getElementById("sHour"), item_name[I_HOUR]);
	setText(document.getElementById("sMinute"), item_name[I_MINUTE]);
	setText(document.getElementById("sStart"), item_name[I_START]);
	setText(document.getElementById("sEnd"), item_name[I_END]);
    setText(document.getElementById("sAutoTimeConfig"), item_name[I_AUTO_TIME_CONFIGURATION]);
    setText(document.getElementById("sSyncWithNTPServer"), item_name[I_SYNC_WITH_NTP_SERVER]);
	setText(document.getElementById("sNTPServer"), item_name[I_NTP_SERVER]);
	setText(document.getElementById("sYear"), item_name[I_YEAR]);
	setText(document.getElementById("sMonth2"), item_name[I_MONTH]);
	setText(document.getElementById("sDay"), item_name[I_DAY]);
	setText(document.getElementById("sHour2"), item_name[I_HOUR]);
	setText(document.getElementById("sMinute2"), item_name[I_MINUTE]);					
	setText(document.getElementById("sSecond"), item_name[I_SECOND]);
	setText(document.getElementById("sSetDateTimeManual"), item_name[I_SET_DATETIME_MANUAL]);
	setText(document.getElementById("sSetDateTimeManual2"), item_name[I_SET_THE_DATETIME_MANUAL2]);
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btnCopyComputerTime").value = item_name[I_COPY_COMPUTER_TIME];
	
	for (var i = 0; i < document.getElementById("select_dl_start_month").length; i++)
	{
		document.getElementById("select_dl_start_month").options[i].text = option_content[O_JAN + i];
	}
	for (var i = 0; i < document.getElementById("select_dl_start_week").length; i++)
	{
		document.getElementById("select_dl_start_week").options[i].text = option_content[O_FIRST + i];
	}
	for (var i = 0; i < document.getElementById("select_dl_start_day").length; i++)
	{
		document.getElementById("select_dl_start_day").options[i].text = option_content[O_SUNDAY + i];
	}
	/*
	for (var i = 0; i < document.getElementById("select_dl_start_hour").length; i++)
	{
		document.getElementById("select_dl_start_hour").options[i].text = option_content[O_12_AM + i];
	}
	*/
	for (var i = 0; i < document.getElementById("select_dl_end_month").length; i++)
	{
		document.getElementById("select_dl_end_month").options[i].text = option_content[O_JAN + i];
	}
	for (var i = 0; i < document.getElementById("select_dl_end_week").length; i++)
	{
		document.getElementById("select_dl_end_week").options[i].text = option_content[O_FIRST + i];
	}
	for (var i = 0; i < document.getElementById("select_dl_end_day").length; i++)
	{
		document.getElementById("select_dl_end_day").options[i].text = option_content[O_SUNDAY + i];
	}
	/*
	for (var i = 0; i < document.getElementById("select_dl_end_hour").length; i++)
	{
		document.getElementById("select_dl_end_hour").options[i].text = option_content[O_12_AM + i];
	}
	*/
	
	for (var i = 0; i < document.getElementById("select_timezone").length; i++)
	{
		document.getElementById("select_timezone").options[i].text = option_content[O_LANG_TIMEZONE_START + i];
	}
	
	document.getElementById("select_ntp_url").options[0].text = option_content[O_SELECT_NTP_SERVER];
}
function setConfig()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	if (g_nTimeReset)
		setText(document.getElementById("timeclock"), iffun("CameraDateTime"));	
	document.getElementById("select_timezone").value = iffun("TimeZone");
	if (iffun("TimeSyncType") == "1")
	{
		document.getElementById("input_sync_ntp").checked = true;
		document.getElementById("input_sync_manual").checked = false;
	}
	else
		document.getElementById("input_sync_ntp").checked = false;
	document.getElementById("input_ntp_server").value = iffun("NTPServer");
	if (iffun("DayLightSaving") == "1")
		document.getElementById("input_daylight_saving_enable").checked = true;
	else
		document.getElementById("input_daylight_saving_enable").checked = false;
		
	var split_time = iffun("CameraTime").split(":");
	if (split_time.length == 3)
	{
		document.getElementById("select_manually_hour").value = split_time[0];
		document.getElementById("select_manually_min").value = split_time[1];
		document.getElementById("select_manually_sec").value = split_time[2];
	}
	var split_date = iffun("CameraDate").split("/");
	if (split_date.length == 3)
	{
		document.getElementById("select_manually_year").value = split_date[0];
		if (document.getElementById("select_manually_year").selectedIndex == -1)
			document.getElementById("select_manually_year").selectedIndex = 0;
		document.getElementById("select_manually_month").value = split_date[1];
		setManualDate();
		document.getElementById("select_manually_day").value = split_date[2];
		if (document.getElementById("select_manually_day").selectedIndex == -1)
			document.getElementById("select_manually_day").selectedIndex = 0;
	}
	if (iffun("DstAuto") == "1")
		document.getElementsByName("radio_daylight_saving_type")[0].checked = true;
	else
		document.getElementsByName("radio_daylight_saving_type")[1].checked = true;
		
	document.getElementById("select_offset").value = iffun("Offset");
	var split1 = iffun("Starttime").split("/");
	if (split1.length == 2)
	{
		var split2 = split1[0].split(".");
		if (split2.length == 3)
		{
			document.getElementById("select_dl_start_month").value = split2[0];
			document.getElementById("select_dl_start_week").value = split2[1];
			document.getElementById("select_dl_start_day").value = split2[2];
		}
		split2 = split1[1].split(":");
		if (split2.length == 3)
		{
			document.getElementById("select_dl_start_hour").value = split2[0];
			document.getElementById("select_dl_start_min").value = split2[1];
		}

	}
	split1 = iffun("Stoptime").split("/");
	if (split1.length == 2)
	{
		var split2 = split1[0].split(".");
		if (split2.length == 3)
		{
			document.getElementById("select_dl_end_month").value = split2[0];
			document.getElementById("select_dl_end_week").value = split2[1];
			document.getElementById("select_dl_end_day").value = split2[2];
		}
		split2 = split1[1].split(":");
		if (split2.length == 3)
		{
			document.getElementById("select_dl_end_hour").value = split2[0];
			document.getElementById("select_dl_end_min").value = split2[1];
		}
	}
}
function onNTPURLChanged()
{
	var select_provider = document.getElementById("select_ntp_url");
	if (select_provider.selectedIndex > 0)
		document.getElementById("input_ntp_server").value = select_provider.options[select_provider.selectedIndex].value;
}
function onSyncNTPChanged()
{
	if (document.getElementById("input_sync_ntp").checked)
	{
		$("#input_sync_manual").attr("disabled", true);
		$("#div_ntp_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#input_sync_manual").attr("disabled", false);
		$("#div_ntp_setting").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onSyncManualChanged()
{
	if (document.getElementById("input_sync_manual").checked)
	{
		$("#input_sync_ntp").attr("disabled", true);
		$("#div_manual_time_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#input_sync_ntp").attr("disabled", false);
		$("#div_manual_time_setting").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onDaylightSavingEnable()
{
	if (document.getElementById("input_daylight_saving_enable").checked)
	{
		$("#div_day_light_saving_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_day_light_saving_setting").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onDaylightTypeChanged()
{
	var bHide = 0;
	if (document.getElementById("div_day_light_saving_setting").style.display == "none")
	{
		document.getElementById("div_day_light_saving_setting").style.display = "";
		bHide = 1;	
	}
	if (document.getElementsByName("radio_daylight_saving_type")[1].checked)
	{
		$("#div_manual_daylight_saving").show(g_showEffect, resizePage);
	}
	else if (document.getElementsByName("radio_daylight_saving_type")[0].checked)
	{
		$("#div_manual_daylight_saving").hide(g_showEffect, resizePage);
	}
	if (bHide)
		document.getElementById("div_day_light_saving_setting").style.display = "none";
	//resizePage();
}
function onTimezoneChanged()
{
	var selIndex = document.getElementById("select_timezone").selectedIndex;
	if (selIndex == -1)
		return;
	
	if (selIndex >= g_jobj.myTimezone.length)
		return;
			
	if (g_jobj.myTimezone[selIndex].dst_offset != "")
		document.getElementById("select_offset").value = g_jobj.myTimezone[selIndex].dst_offset;
	else
		document.getElementById("select_offset").value = "+01:00";
	var split1, split2;
	if (g_jobj.myTimezone[selIndex].dst_start != "")
	{
		var split1 = g_jobj.myTimezone[selIndex].dst_start.split("/");
		if (split1.length == 2)
		{
			var split2 = split1[0].split(".");
			if (split2.length == 3)
			{
				document.getElementById("select_dl_start_month").value = split2[0];
				document.getElementById("select_dl_start_week").value = split2[1];
				document.getElementById("select_dl_start_day").value = split2[2];
			}
			var split3 = split1[1].split(":");
			if (split3.length == 3)
			{
				document.getElementById("select_dl_start_hour").value = split3[0];
				document.getElementById("select_dl_start_min").value = split3[1];
			}
		}
	}
	else
	{
		document.getElementById("select_dl_start_month").value = "M1";
		document.getElementById("select_dl_start_week").value = "1";
		document.getElementById("select_dl_start_day").value = "0";
		document.getElementById("select_dl_start_hour").value = "00";
		document.getElementById("select_dl_start_min").value = "00";
	}
	
	if (g_jobj.myTimezone[selIndex].dst_stop != "")
	{
		var split1 = g_jobj.myTimezone[selIndex].dst_stop.split("/");
		if (split1.length == 2)
		{
			var split2 = split1[0].split(".");
			if (split2.length == 3)
			{
				document.getElementById("select_dl_end_month").value = split2[0];
				document.getElementById("select_dl_end_week").value = split2[1];
				document.getElementById("select_dl_end_day").value = split2[2];
			}
			var split3 = split1[1].split(":");
			if (split3.length == 3)
			{
				document.getElementById("select_dl_end_hour").value = split3[0];
				document.getElementById("select_dl_end_min").value = split3[1];
			}
		}
	}
	else
	{
		document.getElementById("select_dl_end_month").value = "M1";
		document.getElementById("select_dl_end_week").value = "1";
		document.getElementById("select_dl_end_day").value = "0";
		document.getElementById("select_dl_end_hour").value = "00";
		document.getElementById("select_dl_end_min").value = "00";
	}
}
function CopyTimeFromPC()
{
  	var now = new Date();
  	if (now.getHours() < 10)
  		document.getElementById("select_manually_hour").value = "0" + now.getHours().toString();
  	else
  		document.getElementById("select_manually_hour").value = now.getHours().toString();
  	if (now.getMinutes() < 10)
  		document.getElementById("select_manually_min").value = "0" + now.getMinutes().toString();
  	else	
  		document.getElementById("select_manually_min").value = now.getMinutes().toString();
  	if (now.getSeconds() < 10)
  		document.getElementById("select_manually_sec").value = "0" + now.getSeconds().toString();
  	else
		document.getElementById("select_manually_sec").value = now.getSeconds().toString();
	
	if (now.getFullYear() < 10)
		document.getElementById("select_manually_year").value = "0" + now.getFullYear().toString();
	else	
		document.getElementById("select_manually_year").value = now.getFullYear().toString();
	
	if (now.getMonth()+1 < 10)
		document.getElementById("select_manually_month").value = "0" + (now.getMonth()+1).toString();
	else
		document.getElementById("select_manually_month").value = (now.getMonth()+1).toString();
	setManualDate();
	if (now.getDate() < 10)
		document.getElementById("select_manually_day").value = "0" + now.getDate().toString();
	else
		document.getElementById("select_manually_day").value = now.getDate().toString();
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
	var url = "/cgi/admin/wdatetime.cgi";
	var params = "";

	params += "TimeZone=" + encodeURIComponent(document.getElementById("select_timezone").value);
	if (document.getElementById("input_daylight_saving_enable").checked)
	{
		params += "&DayLightSaving=1";
		if (document.getElementsByName("radio_daylight_saving_type")[0].checked)
		{
			params += "&DstAuto=1";
		}
		else
		{
			params += "&DstAuto=0";
			params += "&Offset=" + encodeURIComponent(document.getElementById("select_offset").value);
			params += "&Starttime=" + encodeURIComponent(document.getElementById("select_dl_start_month").value + "." +
				document.getElementById("select_dl_start_week").value + "." +
				document.getElementById("select_dl_start_day").value + "/" + 
				document.getElementById("select_dl_start_hour").value + ":" + 
				document.getElementById("select_dl_start_min").value + ":00");
			params += "&Stoptime=" + encodeURIComponent(document.getElementById("select_dl_end_month").value + "." + 
				document.getElementById("select_dl_end_week").value + "." + 
				document.getElementById("select_dl_end_day").value + "/" + 
				document.getElementById("select_dl_end_hour").value + ":" + 
				document.getElementById("select_dl_end_min").value + ":00");
		}
	}
	else
		params += "&DayLightSaving=0";
	
	if (document.getElementById("input_sync_ntp").checked)
	{
		if (document.getElementById("input_ntp_server").value == "")
		{
			document.getElementById("input_ntp_server").select();
        	alert(pop_msg[PMSG_NTP_SERVER_FORMAT_INVALID]);
        	return;
		}
		params += "&Protocol=1";
		params += "&NTPServerIP=" + encodeURIComponent(document.getElementById("input_ntp_server").value);
	}
	else 
	{
		params += "&Protocol=0";
		if (document.getElementById("input_sync_manual").checked)
		{
			var dateTime = document.getElementById("select_manually_year").value + "/";
			dateTime += document.getElementById("select_manually_month").value + "/";
			dateTime += document.getElementById("select_manually_day").value + " ";
			dateTime += document.getElementById("select_manually_hour").value + ":";
			dateTime += document.getElementById("select_manually_min").value + ":";
			dateTime += document.getElementById("select_manually_sec").value;
			params += "&CameraDateTime=" + encodeURIComponent(dateTime);
		}
	}
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
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
	g_nTimeReset = 1;
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
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display:none" onload="document.getElementById('if_data').src = 'time_data.asp?' + g_token">
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
    <tr>
      <td valign="top">
		<table id="data_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
		  <tr>
  			<td valign="top" id="maincontent_container" height="100%">
    		  <table height="100%" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
    			<tr>
    			  <td  valign="top">
    				<div id="maincontent">
      				  <!-- === BEGIN MAINCONTENT === -->
      				  <div id="box_header"> 
      				    <h1><span id="sTitle">Time and Date</span></h1>
      				    <span id="sTitleInfo">
      					  The Time Configuration option allows you to configure, update, and 
						  maintain the internal system clock. In this section you can set the time 
						  zone the camera is in, and set the NTP (Network Time Protocol) Server.
						</span>
        				<div align=center>
        				  <span>&nbsp;</span>
        				  <p></p>
        				  <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onclick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        				</div>
      				  </div>
      				  <div class="box">
        				<h2><span id="sTimeConfiguration">Time Configuration</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <tr>
          					<td width="120px"><span id="sCurrentTime">Current Time</span></td>
          					<td style="padding: 3px 0px 3px 6px;">
          					  <DIV id=timeclock></DIV>
          					</td>
        				  </tr>
        				  <tr>
          					<td><span id="sTimezone">Time Zone</span></td>
          					<td style="padding: 3px 0px 3px 6px;">
            				  <SELECT id="select_timezone" name="select_timezone" size="1" onchange="onTimezoneChanged();" onkeyup="onTimezoneChanged();">
            					<% printTimeZone(); %>
            				  </select>
          					</td>
        				  </tr>
						  <tr>
          					<td><span id="sDSTSaving">Daylight Saving</span></td>
          					<td>
          					  <input type="checkbox" id="input_daylight_saving_enable" onclick="onDaylightSavingEnable();">
          					</td>
        				  </tr>
        				</table>
        				<div id="div_day_light_saving_setting">
        				  <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
        				    <tr>
        				      <td>
        				        <span>&nbsp;&nbsp;&nbsp;</span>
        				        <input type="radio" name="radio_daylight_saving_type" onclick="onDaylightTypeChanged();">
        				        <span id="sAutoDST">Auto Daylight Saving</span>
        				      </td>
        				    </tr>
        				    <tr>
        				      <td>
        				        <span>&nbsp;&nbsp;&nbsp;</span>
        				        <input type="radio" name="radio_daylight_saving_type" onclick="onDaylightTypeChanged();">
        				        <span id="sManualDST">Set DST Manually</span>
        				      </td>
        				    </tr>
						  </table>
						  <div id="div_manual_daylight_saving">
						    <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				      <tr>
          				        <td width="120px" style="height: 5px">
          				          <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          				          <span id="sOffset">Offset</span>
          				        </td>
          					    <td style="height: 5px">
            				      <SELECT id="select_offset" size="1">
            					    <OPTION value="-02:00">-2:00</OPTION>
            					    <OPTION value="-01:30">-1:30</OPTION>
            					    <OPTION value="-01:00">-1:00</OPTION>
            					    <OPTION value="-00:30">-0:30</OPTION>
            					    <OPTION value="+00:30">+0:30</OPTION>
            					    <OPTION value="+01:00">+1:00</OPTION>
            					    <OPTION value="+01:30">+1:30</OPTION>
            					    <OPTION value="+02:00">+2:00</OPTION>
            				      </SELECT>
          					    </td>
        				      </tr>
        				    </table>
        				    <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
        				      <tr>
          					    <td width="35px"></td>
          					    <td>
            				      <table id="id_box_dst" cellpadding="2" cellspacing="2">
            					    <tr>
            					      <TD width="75"></TD>
            					      <TD width="70"><span id="sMonth">Month</span></TD>
            					      <TD width="65"><span id="sWeek">Week</span></td>
            					      <TD width="110"><span id="sDayOfWeek">Day of Week</span></TD>
            					      <TD width="65"><span id="sHour">Hour</span></td>
            					      <TD><span id="sMinute">Minute</span></TD>
            					    </tr>
            					    <tr>
            					      <td><span id="sStart">Start</span></td>
              					      <td>
                					    <SELECT id="select_dl_start_month">
                					    </SELECT>
              					      </td>
              					      <td>
                					    <SELECT id="select_dl_start_week">
                					    </SELECT>
              					      </td>
              					      <td>
                					    <SELECT id="select_dl_start_day">
                					      <OPTION value="0">Sunday</OPTION>
                					      <OPTION value="1">Monday</OPTION>
                					      <OPTION value="2">Tuesday</OPTION>
                					      <OPTION value="3">Wednesday</OPTION>
                					      <OPTION value="4">Thusday</OPTION>
                					      <OPTION value="5">Friday</OPTION>
                					      <OPTION value="6">Saturday</OPTION>
                					    </SELECT>
              					      </td>
              					      <td> 
                					    <SELECT id="select_dl_start_hour">
                					    </SELECT>
              					      </td>
              					      <td>
              					        <SELECT id="select_dl_start_min">
                					    </SELECT>
              					      </td>
            					    </tr>
            					    <tr>
            					      <td><span id="sEnd">End</span></td>
              					      <td>
                					    <SELECT id="select_dl_end_month">
                				        </SELECT>
              					      </td>
              					      <td>
                					    <SELECT id="select_dl_end_week">
                					    </SELECT>
              					      </td>
              					      <td>
                					    <SELECT id="select_dl_end_day">
                					      <OPTION value=0>Sunday</OPTION>
                					      <OPTION value=1>Monday</OPTION>
                					      <OPTION value=2>Tuesday</OPTION>
                					      <OPTION value=3>Wednesday</OPTION>
                					      <OPTION value=4>Thusday</OPTION>
                					      <OPTION value=5>Friday</OPTION>
                					      <OPTION value=6>Saturday</OPTION>
                					    </SELECT>
              					      </td>
              					      <td>
                					    <SELECT id="select_dl_end_hour">
                					    </SELECT>
              					      </td>
              					      <td>
              					        <SELECT id="select_dl_end_min">
                					    </SELECT>
              					      </td>
            					    </tr>
            				      </table>
          					    </td>
        				      </tr>
        				    </table>
        				  </div>  
						</div>
      				  </div>
      				  <div class="box">
        				<h2><span id="sAutoTimeConfig">Automatic time configuration</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <tr>
          					<td width="180px"><span id="sSyncWithNTPServer">Synchronize with NTP Server</span></td>
          					<td><input type="checkbox" id="input_sync_ntp" onclick="onSyncNTPChanged();"></td>
        				  </tr>
        				</table>
        				<div id="div_ntp_setting">
        				  <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
        				    <tr>
          				      <td width="100px">
          				        <span>&nbsp;&nbsp;&nbsp;</span>
          				        <span id="sNTPServer">NTP Server</span>
          				      </td>
          					  <td>
            				    <INPUT type="text" size=30 maxlength=64 id="input_ntp_server" class="text">&lt;&lt;
            				    <select size="1" id="select_ntp_url" onclick="onNTPURLChanged();">
            					  <option selected>Select NTP Server</option>
            					  <option value="ntp.dlink.com.tw">ntp.dlink.com.tw</option>
            					  <option value="ntp1.dlink.com">ntp1.dlink.com</option>
            				    </select>
          					  </td>
        				    </tr>
        				  </table>
        				</div>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sSetDateTimeManual">Set The Date And Time Manually</span></h2>
        				<table width=530 border=0>
        				  <TR>
        				    <TD width="180px">
        				      <span id="sSetDateTimeManual2">Set Date and Time Manually</span>
        				    </TD>
        				    <td><input type="checkbox" id="input_sync_manual" onclick="onSyncManualChanged();"></td>
        				  </TR>
        				</table>
        				<div id="div_manual_time_setting">
        				  <table id="id_box_Manually" width=530 border=0>  
        				    <TR>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
          					    <span id="sYear">Year</span>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
            				    <SELECT class=text id="select_manually_year" onchange="setManualDate()"> 
            				    </SELECT>
          				      </TD>
          				      <TD>
          				        <span>&nbsp;&nbsp;&nbsp;</span>
          				        <span id="sMonth2">Month</span>
          				      </TD>
          				      <TD>
          				        <span>&nbsp;&nbsp;&nbsp;</span>
            				    <SELECT class=text id="select_manually_month" onchange="setManualDate()"> 
            				    </SELECT>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
          					    <span id="sDay">Day</span>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
            				    <SELECT class=text id="select_manually_day"> 
            				    </SELECT>
          					  </TD>
          					  <TD></TD>
          				    </TR>
        				    <TR>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
          					    <span id="sHour2">Hour</span>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
            				    <SELECT class=text id="select_manually_hour"> 
            				    </SELECT>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
          					    <span id="sMinute2">Minute</span>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
            				    <SELECT class=text id="select_manually_min">
            				    </SELECT>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
          					    <span id="sSecond">Second</span>
          					  </TD>
          					  <TD>
          					    <span>&nbsp;&nbsp;&nbsp;</span>
          					    <SELECT class=text id="select_manually_sec">
            				    </SELECT>
          				      </TD>
        				    </tr>
        				    <TR>
        				      <TD colspan=6 align=center><br><input id="btnCopyComputerTime" type="button" value="Copy Your Computer's Time Settings" onclick="CopyTimeFromPC();"></TD>
        				    </tr>
        			      </table>
        			    </div>  
      				  </div>
      				  <p align=center>
        				<span>&nbsp;</span>
        				<INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onclick="save_setting();">
        				<span>&nbsp;&nbsp;</span>
        				<INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
      				  </p>
      				  <!-- === END MAINCONTENT === -->
    				</div>
    			  </td>
    			</tr>
    			<tr><td></td></tr>
    		  </table>
  			</td>
  			<!--
  			<td valign="top" width="150" height="550" id="sidehelp_container" align="left">
    		  <table cellpadding="2" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    			<tr>
      			  <td id="help_text">
      			    <span>
        			  <b>Helpful Hints..</b>
        			  <br><br><b>Time Zone</b> - The geographical zone for the local time setting.
        			  <br><br><b>Automatic Time Configuration</b> - With this option selected, 
					  the camera will synchronize its date and time settings with an NTP 
					  server over the Internet upon camera start up. If the timeserver cannot 
					  be reached, no time settings will be applied. 
        			  <br><br><b>NTP server</b> - The IP address or domain name of the Time Server.
        			  <br><br><b>Daylight Saving</b> - Enable daylight saving that will adjust 
					  the time depending on the daylight saving time offset and date.
        			  <br><br>You may also <b>Set the Date and Time Manually</b> or <b>Copy 
					  your Computer&#39;s Time Settings</b>.
					</span>  
      			  </td>
    			</tr>
    		  </table>
  			</td>
  			-->
		  </tr>
		</table>
	  </td>
	  <td valign="top" width="150" id="sidehelp_container" align="left">
        <table cellpadding="2" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
      	    <td id="help_text">
      	      <span id="sHelpInfo">
        	    <b>Helpful Hints..</b>
        		<br><br><b>Time Zone</b> - The geographical zone for the local time setting.
        		<br><br><b>Automatic Time Configuration</b> - With this option selected, 
				the camera will synchronize its date and time settings with an NTP 
				server over the Internet upon camera start up. If the timeserver cannot 
				be reached, no time settings will be applied. 
        		<br><br><b>NTP server</b> - The IP address or domain name of the Time Server.
        		<br><br><b>Daylight Saving</b> - Enable daylight saving that will adjust 
				the time depending on the daylight saving time offset and date.
        		<br><br>You may also <b>Set the Date and Time Manually</b> or <b>Copy 
				your Computer&#39;s Time Settings</b>.
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
