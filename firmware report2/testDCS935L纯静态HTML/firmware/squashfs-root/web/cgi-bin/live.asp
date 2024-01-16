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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_live.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var MJPEG_Res=decodeBase64("<% getVideoProfile2Info(Resolution); %>");
var MPEG4_Res=decodeBase64("<% getVideoProfile1Info(Resolution); %>");
var H264_Res=decodeBase64("<% getVideoProfile0Info(Resolution); %>");
var AudioOut=decodeBase64("<% getHWInfo(AudioOut); %>");
var MicEnable=decodeBase64("<% getAudioProfile0Info(MicEnable); %>");
var SpeakerEnable=decodeBase64("<% getAudioProfile0Info(SpeakerEnable); %>");
var DayMode=decodeBase64("<% getCameraImageInfo(IRCut); %>");
var IRLEDStatus=decodeBase64("<% getHWInfo(IRLEDStatus); %>");
var group=decodeBase64("<% getGroup(); %>");
var Browser = CheckBrower();
var profile = parseInt(getWebQuery("profile", "5"), 10);
var g_usingJava = parseInt(getWebQuery("java", "0"), 10);
var g_usingServerpush = parseInt(getWebQuery("serverpush", "0"), 10);
var g_nZoomRate = 1;
var g_nZoomFit = 0;
var g_token = Math.floor(Math.random()*(200)+1);
var g_nFirstLoadIfData = 1;
function doZoomRate(ZoomRate)
{
/*
	zoomMode(3);
	for (i =  1; i < ZoomRate; i++)
	{
		zoomMode(1);
	}
*/
	g_nZoomRate = ZoomRate;
	setText(document.getElementById("sZoomRate"), Math.abs(g_nZoomRate).toString() + "X");
	document.getElementById("if_live").contentWindow.zoom(ZoomRate);
}
function zoomMode(mode)
{
	if (g_nZoomFit && (mode == 1 || mode == 2))
	{
		mode = 3;
	}
	//zoom in
	if (mode == 1)
	{	
		g_nZoomRate++;
		if (g_nZoomRate >= 4)
		{
			g_nZoomRate = 4;
		}
		if (g_nZoomRate >= -1)
			setText(document.getElementById("sZoomRate"), Math.abs(g_nZoomRate).toString() + "X");
		else
			setText(document.getElementById("sZoomRate"), "1/" + Math.abs(g_nZoomRate).toString() + " X");
		/*
		if (g_nZoomRate >= 4)
			return;
		g_nZoomRate++;
		if (g_nZoomRate == 0)
			g_nZoomRate	= 2;
		if (g_nZoomRate >= -1)
			setText(document.getElementById("sZoomRate"), Math.abs(g_nZoomRate).toString() + "X");
		else
			setText(document.getElementById("sZoomRate"), "1/" + Math.abs(g_nZoomRate).toString() + " X");
		*/	
	}
	//zoom out
	else if (mode == 2)
	{
		g_nZoomRate--;
		if (g_nZoomRate <= 1)
		{
			g_nZoomRate = 1;
		}
		if (g_nZoomRate >= -1)
			setText(document.getElementById("sZoomRate"), Math.abs(g_nZoomRate).toString() + "X");
		else
			setText(document.getElementById("sZoomRate"), "1/" + Math.abs(g_nZoomRate).toString() + " X");
		/*
		if (g_nZoomRate <= -4)
			return;
		g_nZoomRate--;
		if (g_nZoomRate == 0)
			g_nZoomRate = -2;
		if (g_nZoomRate >= -1)
			setText(document.getElementById("sZoomRate"), Math.abs(g_nZoomRate).toString() + "X");
		else
			setText(document.getElementById("sZoomRate"), "1/" + Math.abs(g_nZoomRate).toString() + " X");
		*/	
	}
	else if (mode == 5)
	{
		g_nZoomFit = 1;	
		setText(document.getElementById("sZoomRate"), item_name[I_FIT_WIDTH]);
	}
	else if (mode == 6)
	{
		g_nZoomFit = 1;
		setText(document.getElementById("sZoomRate"), item_name[I_FIT_HEIGHT]);
	}
	//orignal size
	else if (mode == 3)
	{
		g_nZoomRate = 1;
		g_nZoomFit = 0;
		document.getElementById("btnZoomOut").disabled = true;
		document.getElementById("btnZoomIn").disabled = false;
		setText(document.getElementById("sZoomRate"), Math.abs(g_nZoomRate).toString() + "X");
	}
	if (g_nZoomRate == 1)
		document.getElementById("btnZoomOut").disabled = true;
	else
		document.getElementById("btnZoomOut").disabled = false;
	if (g_nZoomRate == 4)
		document.getElementById("btnZoomIn").disabled = true;
	else
		document.getElementById("btnZoomIn").disabled = false;
	
	document.getElementById("if_live").contentWindow.zoomMode(mode);
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_CAMERA_INFO]);
	setText(document.getElementById("sVideoCompressionFormat"), item_name[I_VIDEO_COMPRESSION_FORMAT]);
	setText(document.getElementById("sWinH264"), item_name[I_H264]);
	setText(document.getElementById("sNonWinH264"), item_name[I_H264]);
	setText(document.getElementById("sWinMJPEG"), item_name[I_MJPEG]);
	setText(document.getElementById("sNonWinMJPEG"), item_name[I_MJPEG]);
	setText(document.getElementById("sServerpushMJPEG"), item_name[I_MJPEG]);
	setText(document.getElementById("sLiveVideo"), item_name[I_LIVE_VIDEO]);
	setText(document.getElementById("sZoomRateDes"), item_name[I_ZOOM_RATE]);
	setText(document.getElementById("sZooomInOut"), item_name[I_ZOOM_IN_OUT]);

	for (var i = 0; i < document.getElementById("select_rec_format").length; i++)
	{
		document.getElementById("select_rec_format").options[i].text = option_content[O_AVI + i];
	}
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_CAMERA_INFO];
	document.getElementById("az1").title = item_name[I_ZOOM_IN];
	document.getElementById("az1").alt = item_name[I_ZOOM_IN];
	document.getElementById("az2").title = item_name[I_ZOOM_OUT];
	document.getElementById("az2").alt = item_name[I_ZOOM_OUT];
	document.getElementById("az5").title = item_name[I_FIT_WIDTH];
	document.getElementById("az5").alt = item_name[I_FIT_WIDTH];
	document.getElementById("az6").title = item_name[I_FIT_HEIGHT];
	document.getElementById("az6").alt = item_name[I_FIT_HEIGHT];
	document.getElementById("az3").title = item_name[I_ORIGNAL_SIZE];
	document.getElementById("az3").alt = item_name[I_ORIGNAL_SIZE];
	document.getElementById("az4").title = item_name[I_FULL_SCREEN];
	document.getElementById("az4").alt = item_name[I_FULL_SCREEN];
	document.getElementById("asnapshot1").title = item_name[I_SNAPSHOT];
	document.getElementById("asnapshot1").alt = item_name[I_SNAPSHOT];
	document.getElementById("abrowse1").title = item_name[I_SET_STORAGE_FOLDER];
	document.getElementById("abrowse1").alt = item_name[I_SET_STORAGE_FOLDER];
	document.getElementById("arecordon1").title = item_name[I_RECORD];
	document.getElementById("arecordon1").alt = item_name[I_RECORD];
	document.getElementById("arecordoff").title = item_name[I_STOP_RECORDING];
	document.getElementById("arecordoff").alt = item_name[I_STOP_RECORDING];
	document.getElementById("alistenon1").title = item_name[I_LISTEN];
	document.getElementById("alistenon1").alt = item_name[I_LISTEN];
	document.getElementById("alistenoff1").title = item_name[I_STOP_LISTENING];
	document.getElementById("alistenoff1").alt = item_name[I_STOP_LISTENING];
	document.getElementById("atalkon1").title = item_name[I_TALK];
	document.getElementById("atalkon1").alt = item_name[I_TALK];
	document.getElementById("atalkoff1").title = item_name[I_STOP_TALKING];
	document.getElementById("atalkoff1").alt = item_name[I_STOP_TALKING];
	document.getElementById("airledon1").title = item_name[I_IRLED_ON];
	document.getElementById("airledon1").alt = item_name[I_IRLED_ON];
	document.getElementById("airledoff1").title = item_name[I_IRLED_OFF];
	document.getElementById("airledoff1").alt = item_name[I_IRLED_OFF];
	document.getElementById("btnZoomIn").title = item_name[I_ZOOM_IN];
	document.getElementById("btnZoomOut").title = item_name[I_ZOOM_OUT];
}
function setConfig()
{
	//set codec
	if (detectmob())
	{
		document.getElementById("tr_activex").style.display = "none";
		document.getElementById("tr_java").style.display = "none";
		document.getElementById("tr_serverpush").style.display = "";
		profile=1;
		g_usingServerpush=1;
	}
	else if (Browser.search("IE") == -1)
	{
		document.getElementById("tr_activex").style.display = "none";
		document.getElementById("tr_java").style.display = "";
		document.getElementById("tr_serverpush").style.display = "none";
	}
	else
	{
		document.getElementById("tr_activex").style.display = "";
		document.getElementById("tr_java").style.display = "none";
		document.getElementById("tr_serverpush").style.display = "none";
	}
	
	if (profile == 5) {
		if (g_usingJava == 1)
			document.getElementsByName("LiveVideo")[2].checked = 1;
		else
    		document.getElementsByName("LiveVideo")[0].checked = 1;
		setText(document.getElementById("sResolution"), H264_Res);
		document.getElementById("select_rec_format").value = "1";
		document.getElementById("select_rec_format").disabled = true;
    }
    else {
    	document.getElementById("select_rec_format").value = "0";
		document.getElementById("select_rec_format").disabled = true;
    	if (g_usingServerpush == 1)
    	{
    		document.getElementsByName("LiveVideo")[4].checked = 1;
    		document.getElementById("table_cam_control").style.display = "none";
    	}
    	else if (g_usingJava == 1)
			document.getElementsByName("LiveVideo")[3].checked = 1;
		else	
    		document.getElementsByName("LiveVideo")[1].checked = 1;
		setText(document.getElementById("sResolution"), MJPEG_Res);
    }
    if (AudioOut != "1")
	{
		document.getElementById("atalkon").style.display = "none";
		document.getElementById("atalkoff").style.display = "none";
	}
	if (SpeakerEnable != "1")
	{
		document.getElementById("atalkon").style.display = "none";
		document.getElementById("atalkoff").style.display = "none";
	}
	if (MicEnable != "1")
	{
		document.getElementById("alistenon").style.display = "none";
		document.getElementById("alistenoff").style.display = "none";
	}
	if (DayMode != "1")
	{
		document.getElementById("airledon").style.display = "none";
		document.getElementById("airledoff").style.display = "none";
	}
	else
	{
		if (IRLEDStatus == "0")
		{
			document.getElementById("airledon").style.display = "";
			document.getElementById("airledoff").style.display = "none";
		}
		else
		{
			document.getElementById("airledon").style.display = "none";
			document.getElementById("airledoff").style.display = "";
		}
	}
}
function resetLiveSize(width, height)
{
//	alert("video: width:" + width + " height:" + height);	
//	document.getElementById("if_live").width = (parseInt(width, 10) + 6).toString();
//	document.getElementById("if_live").height = (parseInt(height, 10) + 6).toString();
	//if (document.getElementById("if_live").width == (parseInt(width, 10)).toString() && document.getElementById("if_live").height == (parseInt(height, 10)).toString())
	//	return;
	document.getElementById("if_live").width = (parseInt(width, 10)).toString();
	document.getElementById("if_live").height = (parseInt(height, 10)).toString();
	if (width > 1 && height > 1)
		setText(document.getElementById("sResolution"), width.toString() + "x" + height.toString());
	resizePage(0);
}
function resizePage(bInit)
{
	if (bInit)
	{
		parent.resetIframeWidth("709");
		parent.resetIframeHeight("834");
	}
	else
	{
		parent.resetIframeWidth("709");
		parent.resetIframeHeight("1");
		parent.resetIframeWidth(document.body.scrollWidth);
		parent.resetIframeHeight(document.body.scrollHeight);
	}
}
function getTopUseHeight()
{
	//style 1
/*	
	var top1 = parseInt(document.getElementById("box_header").scrollHeight, 10);
	var top2 = parseInt(document.getElementById("box_header2").scrollHeight, 10);
	var top3 = parseInt(document.getElementById("hLiveVideo").scrollHeight, 10);
	var top4 = parseInt(document.getElementById("table_cam_control").scrollHeight, 10);
	var top5 = parseInt(document.getElementById("table_livepage").scrollHeight, 10);	
	//60 means some frame boder height
	
	return top1 + top2 + top3 + top4 + 60;
*/
	//style 2
	return 10;	
}
function initViewer()
{
	var url = "live_play.asp?profile=" + profile + "&java=" + g_usingJava + "&serverpush=" + g_usingServerpush;
	window.frames["if_live"].location = url;
	document.getElementById("if_live").src = url;
}
function init(bReinit) 
{
	document.body.style.display = "";
	if (!bReinit)
	{
		loadText();
    	setConfig();
    	resizePage(1);
    	initViewer();
    }
}
function SubmitAudioOn()
{
	if (MicEnable != "1")
		return;
	document.getElementById("alistenon").style.display = "none";
    document.getElementById("alistenoff").style.display = "";    
    document.getElementById("if_live").contentWindow.SubmitAudioOn();
    setCookie("turnon_audio", "1");
}
function SubmitAudioOff()
{
    document.getElementById("if_live").contentWindow.SubmitAudioOff();
	document.getElementById("alistenon").style.display = "";
    document.getElementById("alistenoff").style.display = "none";
    setCookie("turnon_audio", "0");
}
function SubmitTalkOn()
{
	if (SpeakerEnable != "1" || AudioOut != "1")
		return;
    var ret = document.getElementById("if_live").contentWindow.SubmitTalkOn();
    if(ret == -1)
		alert(pop_msg[PMSG_SPEAKER_OCCUPIED]);
	else if (ret == -2)
		alert(pop_msg[PMSG_OPEN_MICROPHONE_FAILED]);
	else if (ret == -3)
		alert(pop_msg[PMSG_SPEAKER_DISABLED]);
	else if (ret == -4)
		alert(pop_msg[PMSG_NETWORK_ERROR]);
	else if (ret < 0)
		alert(pop_msg[PMSG_UNKNOW_ERROR]);
	else
	{
		document.getElementById("atalkon").style.display = "none";
		document.getElementById("atalkoff").style.display = "";
	}
}
function SubmitTalkOff()
{
    document.getElementById("if_live").contentWindow.SubmitTalkOff();
	if (AudioOut != "1")
	{
		document.getElementById("atalkon").style.display = "none";
		document.getElementById("atalkoff").style.display = "none";
	}
	else
	{	
		document.getElementById("atalkon").style.display = "";
		document.getElementById("atalkoff").style.display = "none";
	}
}
function doBrowse()
{
	document.getElementById("if_live").contentWindow.browse();
}
function doRecordingOn()
{
	var recFormat = parseInt(document.getElementById("select_rec_format").value, 10);
	if (document.getElementById("if_live").contentWindow.doRecordingOn(recFormat))
	{
		document.getElementById("arecordon").style.display = "none";
		document.getElementById("arecordoff").style.display = "";
	}
}
function doRecordingOff()
{
	document.getElementById("if_live").contentWindow.doRecordingOff();
	document.getElementById("arecordon").style.display = "";
	document.getElementById("arecordoff").style.display = "none";
}
function doSnapshot()
{
/*
	var httpport = decodeBase64("<% getHTTPInfo(Port)%>");
	var url = "";
	if (httpport == "80")
		url = "http://" + document.location.hostname + "/cgi/jpg/image.cgi";
	else
		url = "http://" + document.location.hostname + ":" + httpport + "/cgi/jpg/image.cgi";
	window.open(url, "_blank")
*/	
	var url = document.getElementById("if_live").contentWindow.doSnapshot();
}
function doIROnOff_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	document.getElementById("if_data").contentWindow.document.location.reload();
        }else {
            window.location.reload();
        }
    }
}
function doIROn()
{
	var url = "/cgi/" + group + "/dayMode.cgi";
	var params = "IRManual=on";
	//makeRequest(url, params, doIROnOff_callback);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, doIROnOff_callback);

	//document.getElementById("if_live").contentWindow.doIROn();
	document.getElementById("airledon").style.display = "none";
	document.getElementById("airledoff").style.display = "";
}
function doIROff()
{
	var url = "/cgi/" + group + "/dayMode.cgi";
	var params = "IRManual=off";
	//makeRequest(url, params, doIROnOff_callback);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, doIROnOff_callback);
	
	//document.getElementById("if_live").contentWindow.doIROff();
	document.getElementById("airledon").style.display = "";
	document.getElementById("airledoff").style.display = "none";
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
function putRecStatus(rec_status)
{
	//recording now
	if (document.getElementById("arecordoff").style.display != "none")
	{
		if (parseInt(rec_status, 10) < 0)
			doRecordingOff();
	}
}
function PlugInStatus(install)
{
	if (install)
	{
		for (i = 0; i < document.getElementsByName("LiveVideo").length; i++)
			document.getElementsByName("LiveVideo")[i].disabled = "";	
	}
}
function restartStreamDelay(profileID, java)
{
	document.getElementById("if_live").contentWindow.RestartStream(profileID, java);
	//reset zoom
	doZoomRate(1);	
	//restart listen
	if (document.getElementById("alistenon").style.display == "none")
	{
		document.getElementById("if_live").contentWindow.SubmitAudioOn();
	}
	else
		document.getElementById("if_live").contentWindow.SubmitAudioOff();
}
function restartStream(profileID, java)
{
	setCookie("profile", profileID.toString());
	if (profileID == 5)
		document.getElementById("select_rec_format").value = "1";
	else
		document.getElementById("select_rec_format").value = "0";
	//restart listen
	if (document.getElementById("alistenon").style.display == "none")
	{
		document.getElementById("if_live").contentWindow.SubmitAudioOff();
	}
	//restart talk
	if (document.getElementById("atalkon").style.display == "none")
	{
		SubmitTalkOff();
	}
	//restart recording
	if (document.getElementById("arecordon").style.display == "none")
	{
	
		doRecordingOff();
	}
	setTimeout("restartStreamDelay(" + profileID + "," + java +")", 500);
}
function mySleep(milliseconds) 
{
	var start = new Date().getTime();
	for (var i = 0; i < 1e7; i++) 
	{
		if ((new Date().getTime() - start) > milliseconds)
		{
    		break;
    	}
  	}
}
function uninit()
{

	if (document.getElementById("arecordon").style.display == "none")
	{
		doRecordingOff();
		mySleep(500);
	}
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" onbeforeunload="uninit();" style="display: none" onload="document.getElementById('if_data').src = 'live_data.asp?' + g_token">
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
    <tr>
      <td>
        <table id="data_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
          <tr>
		    <td valign="top" id="maincontent_container">
			  <table id="space_container2" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
			    <tr>
			      <td>
				    <div id="maincontent">
				    <!-- === BEGIN MAINCONTENT === -->
				      <div id="box_header"> 
					    <h1 id="hCamera"><span id="sTitle">Camera</span></h1>
					    <span id="sTitleInfo">
					    This section shows your IP camera&#39;s live video. You can 
						control your settings using the buttons below.<br>
					    Current resolution is <span id="sResolution" name="sResolution"></span>.
					    </span>
					  </div>
					  <div class="box" id="box_header2">
					    <h2><span id="sVideoCompressionFormat">Video Compression Format</span></h2>
					    <table>
					      <tr id="tr_activex">
					        <td>
					          <input type=radio name=LiveVideo onclick="restartStream(5, 0);/*parent.location.href='home.asp?menu=live&page=live'*/" checked disabled="disabled">
						  	  <span id="sWinH264">H.264</span>
						  	  <span>&nbsp;</span>
					        </td>
					        <td>
					          <input type=radio name=LiveVideo onclick="restartStream(1, 0);/*parent.location.href='home.asp?menu=live&page=live&profile=1'*/" disabled="disabled">
					 	  	  <span id="sWinMJPEG">MJPEG</span>
					        </td>
					      </tr>
					      <tr id="tr_java" style="display: none">
					        <td>
					          <input type=radio name=LiveVideo onclick="restartStream(5, 1);/*parent.location.href='home.asp?menu=live&page=live&java=1'*/" disabled="disabled">
					 	  	  <span id="sNonWinH264">H.264</span>
					 	  	  <span>&nbsp;</span>
					        </td>
					        <td>
					          <input type=radio name=LiveVideo onclick="restartStream(1, 1);/*parent.location.href='home.asp?menu=live&page=live&profile=1&java=1'*/" disabled="disabled">
					 	 	   <span id="sNonWinMJPEG">MJPEG</span>
					        </td>
					      </tr>
					      <tr id="tr_serverpush" style="display: none">
					        <td>
					          <input type=radio name=LiveVideo onclick="/*parent.location.href='home.asp?menu=live&page=live&profile=1&serverpush=1'*/" disabled="disabled">
					 	 	  <span id="sServerpushMJPEG">MJPEG</span>
					 	 	</td>  
					      </tr>  
					    </table>
					  </div>
					  <div class="box">
					    <h2 id="hLiveVideo"><span id="sLiveVideo">Live Video</span></h2>
						<table id="table_livepage" cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF">  
						  <tr>
					  	    <td align="left">
							  <table BORDER=0 CELLSPACING=0 CELLPADDING=0 style="vertical-align: middle;text-align:center;">
						  	    <tr style="vertical-align: middle;text-align:center;">
						  	      <!--
							      <td colspan=2 align="left" bgcolor="white">
							        <iframe id="if_live" frameborder="0" width="646" height="486" scrolling="no" src=""></iframe>
							      -->  
							      <td style="vertical-align: middle;text-align:center; width: 650px;">
							        <iframe id="if_live" frameborder="0" width="640" height="480" scrolling="no" src="" style="vertical-align: middle;text-align:center;"></iframe>
							      </td>
						        </tr>
						      </table>
					        </td>
						  </tr>
						  <tr>
						    <td></td>
						  </tr>
				        </table>
				        <table id="table_cam_control" cellpadding="2" cellspacing="1" border="0" width="100%" bgcolor="white" bordercolor="#FFFFFF" style="vertical-align: middle;">
					      <tr>
					  	    <td valign="middle" style="vertical-align: middle; text-align:center;">
					  	      <a id="winmodify" style="display:none" href="#" onclick="zoomMode(3);" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('az3','','img/zoom_restore_onclick.jpg',1)" onMouseOver="MM_swapImage('az3','','img/zoom_restore_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/zoom_restore.jpg" alt="Orignal Size" title="Orignal Size" border="0" name="az3" id="az3" style="vertical-align:middle"></a>
						      <a id="winfullscreen" href="#" onclick="doZoomRate(1);zoomMode(4);" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('az4','','img/fullscreen_onclick.jpg',1)" onMouseOver="MM_swapImage('az4','','img/fullscreen_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/fullscreen.jpg" alt="Full Screen" title="Full Screen" border="0" name="az4" id="az4" style="vertical-align:middle"></a>
					    	  <span>&nbsp&nbsp&nbsp</span>
					    	  <a id="asnapshot" href="#" onclick="doSnapshot();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('asnapshot1','','img/snapshot_onclick.jpg',1)" onMouseOver="MM_swapImage('asnapshot1','','img/snapshot_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/snapshot.jpg" alt="Snapshot" title="Snapshot" border="0" name="asnapshot1" id="asnapshot1" style="vertical-align:middle"></a>
					          <a style="display: " id="arecordon" href="#" onclick="doRecordingOn();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('arecordon1','','img/record_onclick.jpg',1)" onMouseOver="MM_swapImage('arecordon1','','img/record_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/record.jpg" alt="Record" title="Record" border="0" name="arecordon1" id="arecordon1" style="vertical-align:middle"></a>
					          <a style="display: none" id="arecordoff" href="#" onclick="doRecordingOff();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('arecordoff1','','img/recording_onclick.jpg',1)" onMouseOver="MM_swapImage('arecordoff1','','img/recording_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/recording.jpg" alt="Stop Recording" title="Stop Recording" border="0" name="arecordoff" id="arecordoff" style="vertical-align:middle"></a>
					          <a id="abrowse" href="#" onclick="doBrowse();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('abrowse1','','img/browse_onclick.jpg',1)" onMouseOver="MM_swapImage('abrowse1','','img/browse_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/browse.jpg" alt="Set Storage Folder" title="Set Storage Folder" border="0" name="abrowse1" id="abrowse1" style="vertical-align:middle"></a>
					    	  <a id="alistenon" href="#" onclick="SubmitAudioOn();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('alistenon1','','img/listen_onclick.jpg',1)" onMouseOver="MM_swapImage('alistenon1','','img/listen_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/listen.jpg" alt="Listen" title="Listen" border="0" name="alistenon1" id="alistenon1" style="vertical-align:middle"></a>
					          <a style="display: none" id="alistenoff" href="#" onclick="SubmitAudioOff();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('alistenoff1','','img/listening_onclick.jpg',1)" onMouseOver="MM_swapImage('alistenoff1','','img/listening_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/listening.jpg" alt="Stop Listening" title="Stop Listening" border="0" name="alistenoff1" id="alistenoff1" style="vertical-align:middle"></a>
					          <a id="atalkon" href="#" onclick="SubmitTalkOn();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('atalkon1','','img/talk_onclick.jpg',1)" onMouseOver="MM_swapImage('atalkon1','','img/talk_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/talk.jpg" alt="Talk" title="Talk" border="0" name="atalkon1" id="atalkon1" style="vertical-align:middle"></a>
					          <a style="display: none" id="atalkoff" href="#" onclick="SubmitTalkOff();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('atalkoff1','','img/talking_onclick.jpg',1)" onMouseOver="MM_swapImage('atalkoff1','','img/talking_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/talking.jpg" alt="Stop Talking" title="Stop Talking" border="0" name="atalkoff1" id="atalkoff1" style="vertical-align:middle"></a>
					          <a id="airledon" href="#" onclick="doIROn();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('airledon1','','img/irledon_onclick.jpg',1)" onMouseOver="MM_swapImage('airledon1','','img/irledon_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/irledon.jpg" alt="IR LED On" title="IR LED on" border="0" name="airledon1" id="airledon1" style="vertical-align:middle"></a>
					          <a style="display: none" id="airledoff" href="#" onclick="doIROff();" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('airledoff1','','img/irledoff_onclick.jpg',1)" onMouseOver="MM_swapImage('airledoff1','','img/irledoff_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/irledoff.jpg" alt="IR LED Off" title="IR LED Off" border="0" name="airledoff1" id="airledoff1" style="vertical-align:middle"></a>
					    	  <span>&nbsp&nbsp&nbsp</span>
					    	  <span style="vertical-align:middle"><span id="sZooomInOut">Zoom in/out</span> :</span>
					    	  <input style="vertical-align:middle;display: none" type="button" value="+" id="btnZoomIn" title="Zoom In" onclick="zoomMode(1);">
					    	  <input style="vertical-align:middle;display: none" type="button" value="-" id="btnZoomOut" title="Zoom Out" onclick="zoomMode(2);" disabled>
					    	  <input style="vertical-align:middle" type="button" value="1x" id="btnZoom1X" onclick="doZoomRate(1)">
					    	  <input style="vertical-align:middle" type="button" value="2x" id="btnZoom2X" onclick="doZoomRate(2);">
					    	  <input style="vertical-align:middle" type="button" value="4x" id="btnZoom4X" onclick="doZoomRate(4);">
					    	  <input style="vertical-align:middle" type="button" value="8x" id="btnZoom8X" onclick="doZoomRate(8);">
					    	  <a style="display: none" id="zoomin" href="#" onclick="zoomMode(1);" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('az1','','img/zoom_in_onclick.jpg',1)" onMouseOver="MM_swapImage('az1','','img/zoom_in_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/zoom_in.jpg" alt="Zoom In" title="Zoom In" border="0" name="az1" id="az1" style="vertical-align:middle"></a>
							  <a style="display: none" id="zoomout" href="#" onclick="zoomMode(2);" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('az2','','img/zoom_out_onclick.jpg',1)" onMouseOver="MM_swapImage('az2','','img/zoom_out_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/zoom_out.jpg" alt="Zoom Out" title="Zoom Out" border="0" name="az2" id="az2" style="vertical-align:middle"></a>
							  <a style="display: none" id="winmaxwidth" href="#" onclick="zoomMode(5);" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('az5','','img/zoom_fit_width_onclick.jpg',1)" onMouseOver="MM_swapImage('az5','','img/zoom_fit_width_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/zoom_fit_width.jpg" alt="Fit Width" title="Fit Width" border="0" name="az5" id="az5" style="vertical-align:middle"></a>
							  <a style="display: none" id="winmaxheight" href="#" onclick="zoomMode(6);" onMouseup="MM_swapImgRestore()" onMousedown="MM_swapImage('az6','','img/zoom_fit_height_onclick.jpg',1)" onMouseOver="MM_swapImage('az6','','img/zoom_fit_height_onHover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="img/zoom_fit_height.jpg" alt="Fit Height" title="Fit Height" border="0" name="az6" id="az6" style="vertical-align:middle"></a>
					          <select id="select_rec_format" style="vertical-align:top;display: none" >
						        <option value="0" selected>AVI</option>
						        <option value="1">MP4</option>
						      </select>
						      </td>
						  </tr>
						  <tr style="display: none">
						  	<td>
						  	  <span style="color:red" id="sZoomRateDes">Zoom Rate</span><span style="color:red"> : </span>
						  	  <span id="sZoomRate" style="color:red">1X</span>
						  	</td>
						  	<td>
					          <span>&nbsp;</span>
					        </td>
						  </tr>
						</table>
			          </div>
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
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>
</html>
