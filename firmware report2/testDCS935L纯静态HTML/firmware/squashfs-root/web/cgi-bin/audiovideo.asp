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
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-ui-1.8.6.custom.min.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_audiovideo.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
var H264Resolution=decodeBase64("<% getVideoProfile0Info(Resolution); %>");
var H264Bitrate=decodeBase64("<% getVideoProfile0Info(Bitrate); %>");
var H264FrameRate=decodeBase64("<% getVideoProfile0Info(FrameRate); %>");
var H264RTSPURL=decodeBase64("<% getVideoProfile0Info(RTSPURL); %>");
var MJResolution=decodeBase64("<% getVideoProfile2Info(Resolution); %>");
var MJQuality=decodeBase64("<% getVideoProfile2Info(Quality); %>");
var MJFrameRate=decodeBase64("<% getVideoProfile2Info(FrameRate); %>");
var MJRTSPURL=decodeBase64("<% getVideoProfile2Info(RTSPURL); %>");
var AudioOut=decodeBase64("<% getHWInfo(AudioOut); %>");
var MicEnable=decodeBase64("<% getAudioProfile0Info(MicEnable); %>");
var MicVolume=decodeBase64("<% getAudioProfile0Info(MicVolume); %>");
var SpeakerEnable=decodeBase64("<% getAudioProfile0Info(SpeakerEnable); %>");
var SpeakerVolume=decodeBase64("<% getAudioProfile0Info(SpeakerVolume); %>");

var lockprofileH264=decodeBase64("<% getMyDlinkInfo(LRCLockvProfile0); %>");
var lockprofileMJPEG=decodeBase64("<% getMyDlinkInfo(LRCLockvProfile2); %>");

function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_AUDIO_AND_VIDEO]);
	setText(document.getElementById("sVideoProfile"), item_name[I_VIDEO_PROFILE]);
	setText(document.getElementById("sEncodeType"), item_name[I_ENCODE_TYPE]);
	setText(document.getElementById("sResolution"), item_name[I_RESOLUTION]);
	setText(document.getElementById("sBitRate"), item_name[I_BITRATE]);
    setText(document.getElementById("sFrameRate"), item_name[I_FRAMERATE]);
    setText(document.getElementById("sRTSPURL"), item_name[I_RTSP_URL]);
    setText(document.getElementById("sH264"), item_name[I_H264]);
    setText(document.getElementById("sEncodeType2"), item_name[I_ENCODE_TYPE]);
	setText(document.getElementById("sResolution2"), item_name[I_RESOLUTION]);
	setText(document.getElementById("sJPEGQuality"), item_name[I_JPEG_QUALITY]);
    setText(document.getElementById("sFrameRate2"), item_name[I_FRAMERATE]);
    setText(document.getElementById("sRTSPURL2"), item_name[I_RTSP_URL]);
    setText(document.getElementById("sMJPEG"), item_name[I_MJPEG]);
    setText(document.getElementById("sAudioSetup"), item_name[I_AUDIO_SETUP]);
    setText(document.getElementById("sMicrophoneEnable"), item_name[I_MICROPHONE_ENABLE]);
    setText(document.getElementById("sVolume"), item_name[I_VOLUME]);
    setText(document.getElementById("sSpeakerEnable"), item_name[I_SPEAKER_ENABLE]);
	setText(document.getElementById("sVolume2"), item_name[I_VOLUME]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	
    for (var i = 0; i < document.getElementById("input_h264Bitrate").length; i++)
	{
		document.getElementById("input_h264Bitrate").options[i].text = option_content[O_BITRATE_3M + i];
	}
	for (var i = 0; i < document.getElementById("input_mjQuality").length; i++)
	{
		document.getElementById("input_mjQuality").options[i].text = option_content[O_QUALITY_VERY_LOW + i];
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
		loadText();
		if (AudioOut != "1")
		{
			document.getElementById("div_speaker_setting").style.display = "none";
		}
	}
	setConfig();
	onAudioEnable();
	onSpeakerEnable();
	checkFrameRate();
	if (lockprofileH264 == "1")
	{
		document.getElementById("input_h264Resolution").disabled = true;
		document.getElementById("input_h264Bitrate").disabled = true;
		document.getElementById("input_h264Framerate").disabled = true;
	}
	if (lockprofileMJPEG == "1")
	{
		document.getElementById("input_mjResolution").disabled = true;
		document.getElementById("input_mjQuality").disabled = true;
		document.getElementById("input_mjFramerate").disabled = true;
	}
	resizePage();
	g_showEffect = "fast";
}
function onAudioEnable()
{
	if (document.getElementById("input_audio_enable").checked)
	{
		$("#div_microphone_volume_container").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_microphone_volume_container").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function onSpeakerEnable()
{
	if (document.getElementById("input_speaker_enable").checked)
	{
		$("#div_speaker_volume_container").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_speaker_volume_container").hide(g_showEffect, resizePage);
	}
	//resizePage();
}
function setConfig()
{
	document.getElementById("input_h264Resolution").value = H264Resolution;
	document.getElementById("input_h264Bitrate").value = H264Bitrate;
	document.getElementById("input_h264Framerate").value = H264FrameRate;	
	document.getElementById("input_rtspurl_h264").value = H264RTSPURL;
	document.getElementById("input_mjResolution").value = MJResolution;
	document.getElementById("input_mjQuality").value = MJQuality;
	document.getElementById("input_mjFramerate").value = MJFrameRate;
	document.getElementById("input_rtspurl_mjpeg").value = MJRTSPURL;
	
	if (MicEnable == "1")
		document.getElementById("input_audio_enable").checked = true;
	else
		document.getElementById("input_audio_enable").checked = false;
	
	if (SpeakerEnable == "1")
		document.getElementById("input_speaker_enable").checked = true;
	else
		document.getElementById("input_speaker_enable").checked = false;
	
	document.getElementById("select_listen_volume").value = MicVolume;
	document.getElementById("select_speaker_volume").value = SpeakerVolume;
}
function synFramerate(h264Change)
{
	if (h264Change == "1")
		document.getElementById("input_mjFramerate").value = document.getElementById("input_h264Framerate").value;
	else
		document.getElementById("input_h264Framerate").value = document.getElementById("input_mjFramerate").value;
}
function checkFrameRate()
{
	var maxFramerate = parseInt(document.getElementById("input_h264Framerate").value, 10);
	var MJFramerateSel = parseInt(document.getElementById("input_mjFramerate").value, 10);
	document.getElementById("input_mjFramerate").options.length = 0;
	if (maxFramerate == 30)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("30", "30"));
		document.getElementById("input_mjFramerate").options.add(new Option("20", "20"));
		document.getElementById("input_mjFramerate").options.add(new Option("15", "15"));
		document.getElementById("input_mjFramerate").options.add(new Option("10", "10"));
		document.getElementById("input_mjFramerate").options.add(new Option("5", "5"));
		document.getElementById("input_mjFramerate").options.add(new Option("3", "3"));
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 20)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("20", "20"));
		document.getElementById("input_mjFramerate").options.add(new Option("15", "15"));
		document.getElementById("input_mjFramerate").options.add(new Option("10", "10"));
		document.getElementById("input_mjFramerate").options.add(new Option("5", "5"));
		document.getElementById("input_mjFramerate").options.add(new Option("3", "3"));
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 15)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("15", "15"));
		document.getElementById("input_mjFramerate").options.add(new Option("10", "10"));
		document.getElementById("input_mjFramerate").options.add(new Option("5", "5"));
		document.getElementById("input_mjFramerate").options.add(new Option("3", "3"));
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 10)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("10", "10"));
		document.getElementById("input_mjFramerate").options.add(new Option("5", "5"));
		document.getElementById("input_mjFramerate").options.add(new Option("3", "3"));
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 5)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("5", "5"));
		document.getElementById("input_mjFramerate").options.add(new Option("3", "3"));
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 3)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("3", "3"));
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 2)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("2", "2"));
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	else if (maxFramerate == 1)
	{
		document.getElementById("input_mjFramerate").options.add(new Option("1", "1"));
	}
	
	if (lockprofileMJPEG == "1")	
	{
		if (parseInt(MJFrameRate, 10) > maxFramerate)
			document.getElementById("input_mjFramerate").value = maxFramerate.toString();
		else
			document.getElementById("input_mjFramerate").value = MJFrameRate;
	}
	else
	{
		if (MJFramerateSel > maxFramerate)
			document.getElementById("input_mjFramerate").value = maxFramerate.toString();
		else
			document.getElementById("input_mjFramerate").value = MJFramerateSel.toString();
	}
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
	var url = "/cgi/admin/audiovideo.cgi";
	var params = "";
	//h264
	params += "Resolution0=" + encodeURIComponent(document.getElementById("input_h264Resolution").value);
	params += "&Bitrate0=" + encodeURIComponent(document.getElementById("input_h264Bitrate").value);
	params += "&FrameRate0=" + encodeURIComponent(document.getElementById("input_h264Framerate").value);
	params += "&RTSPURL0=" + encodeURIComponent(document.getElementById("input_rtspurl_h264").value);

	var h264QualityIndex = document.getElementById("input_h264Bitrate").selectedIndex;
	h264QualityIndex = (document.getElementById("input_h264Bitrate").length - 1) - h264QualityIndex;
	if (h264QualityIndex >= 0 && h264QualityIndex <= document.getElementById("input_h264Bitrate").length - 1)
		params += "&Quality0=" + encodeURIComponent(h264QualityIndex);
	
	var h264Bitrate = document.getElementById("input_h264Bitrate").value;
	if (h264Bitrate == "65536" || h264Bitrate == "131072")
		params += "&Quality0=0";
	else if (h264Bitrate == "262144" || h264Bitrate == "393216")
		params += "&Quality0=1";	
	else if (h264Bitrate == "524288" || h264Bitrate == "786432")
		params += "&Quality0=2";
	else if (h264Bitrate == "1048576" || h264Bitrate == "1572864")
		params += "&Quality0=3";
	else
		params += "&Quality0=4";
	//mjpeg
	params += "&Resolution2=" + encodeURIComponent(document.getElementById("input_mjResolution").value);
	params += "&Quality2=" + encodeURIComponent(document.getElementById("input_mjQuality").value);
	params += "&FrameRate2=" + encodeURIComponent(document.getElementById("input_mjFramerate").value);
	params += "&RTSPURL2=" + encodeURIComponent(document.getElementById("input_rtspurl_mjpeg").value);
	//audio
	if (document.getElementById("input_audio_enable").checked)
	{
		params += "&MicEnable=1";
		params += "&MicVolume=" + encodeURIComponent(document.getElementById("select_listen_volume").value);
	}
	else
		params += "&MicEnable=0";
		
	if (document.getElementById("input_speaker_enable").checked)
	{
		params += "&SpeakerEnable=1";
		params += "&SpeakerVolume=" + encodeURIComponent(document.getElementById("select_speaker_volume").value);
	}
	else
		params += "&SpeakerEnable=0";

	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
	H264Resolution = document.getElementById("input_h264Resolution").value;
	H264Bitrate = document.getElementById("input_h264Bitrate").value;
	H264FrameRate = document.getElementById("input_h264Framerate").value;
	H264RTSPURL = document.getElementById("input_rtspurl_h264").value;
	MJResolution = document.getElementById("input_mjResolution").value;
	MJQuality = document.getElementById("input_mjQuality").value;
	MJFrameRate = document.getElementById("input_mjFramerate").value;
	MJRTSPURL = document.getElementById("input_rtspurl_mjpeg").value;
	if (document.getElementById("input_audio_enable").checked)
	{
		MicEnable = "1";
		MicVolume = document.getElementById("select_listen_volume").value;
	}
	else
		MicEnable = "0";
		
	if (document.getElementById("input_speaker_enable").checked)
	{
		SpeakerEnable = "1";
		SpeakerVolume = document.getElementById("select_speaker_volume").value;
	}
	else
		SpeakerEnable = "0";

	//setConfig();
	//onAudioEnable();
	//onSpeakerEnable();
	//resizePage();
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'audiovideo_data.asp?' + g_token">
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
      					<h1><span id="sTitle">Audio and Video</span></h1>
      					<span id="sTitleInfo">
      					  In this section, you can configure the camera video quality, resolution, 
						  and frame rate.
						</span>
						<p></p>
        				<div align=center>
        				  <span>&nbsp;</span>
        				  <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        				</div>
      				  </div>
      				  <div class="box">
       	 				<h2><span id="sVideoProfile">VIDEO PROFILE</span></h2>
        				<table style="BORDER-COLLAPSE: collapse" borderColor=#111111 cellSpacing=0 cellPadding=0 width=513 border=0>
        				  <TR>
          					<TD width=130 bgColor=#c0c0c0 height=20><span id="sEncodeType">Encode Type</span></TD>
          					<TD width=140 bgColor=#c0c0c0 height=20><span id="sResolution">Resolution</span></TD>
          					<TD width=103 bgColor=#c0c0c0 height=20><span id="sBitRate">Bit Rate</span></TD>
          					<TD width=130 bgColor=#c0c0c0 height=20><span id="sFrameRate">Frame Rate</span></TD>
          					<TD width=130 bgColor=#c0c0c0 height=20><span id="sRTSPURL">RTSP URL</span></TD>
          				  </TR>	
        				  <TR>
          					<TD height=25><span id="sH264">H.264</span></TD>
          					<TD>
            				  <SELECT id="input_h264Resolution" name="input_h264Resolution">
            					<% printVideoSupport(PROFILE0) %>
            				  </SELECT>
          					</TD>
          					<TD>
            				  <SELECT id="input_h264Bitrate" name="input_h264Bitrate">
            					<OPTION value="3145728">3 Mbps</OPTION>
            					<OPTION value="2621440">2.5 Mbps</OPTION>
            					<OPTION value="2097152">2 Mbps</OPTION>
            					<OPTION value="1572864">1.5 Mbps</OPTION>
            					<OPTION value="1048576">1 Mbps</OPTION>
            					<OPTION value="786432">768 Kbps</OPTION>
            					<OPTION value="524288">512 Kbps</OPTION>
            					<OPTION value="393216">384 Kbps</OPTION>
            					<OPTION value="262144">256 Kbps</OPTION>
            					<OPTION value="131072">128 Kbps</OPTION>
            					<OPTION value="65536">64 Kbps</OPTION>
            				  </SELECT>
          					</TD>
          					<TD>
            				  <SELECT id="input_h264Framerate" name="input_h264Framerate" onChange="checkFrameRate();">
            					<OPTION value="30">30</OPTION>
            					<OPTION value="20">20</OPTION>
            					<OPTION value="15">15</OPTION>
            				    <OPTION value="10">10</OPTION>
            				    <OPTION value="5">5</OPTION>
            				    <OPTION value="3">3</OPTION>
            				    <OPTION value="2">2</OPTION>
            				    <OPTION value="1">1</OPTION>
            				  </SELECT>
          				    </TD>
          				    <TD>
          				      <input id="input_rtspurl_h264" size="20" maxlength="127">
          				    </TD>
        				  </TR>
        				</table>
        				<br>
        				<table style="BORDER-COLLAPSE: collapse" borderColor=#111111 cellSpacing=0 cellPadding=0 width=513 border=0>
        				  <TR>
          					<TD width=130 bgColor=#c0c0c0 height=20><span id="sEncodeType2">Encode Type</span></TD>
          					<TD width=140 bgColor=#c0c0c0 height=20><span id="sResolution2">Resolution</span></TD>
          					<TD width=103 bgColor=#c0c0c0 height=20><span id="sJPEGQuality">Jpeg Quality</span></TD>
          				    <TD width=130 bgColor=#c0c0c0 height=20><span id="sFrameRate2">Frame Rate</span></TD>
          				    <TD width=130 bgColor=#c0c0c0 height=20><span id="sRTSPURL2">RTSP URL</span></TD>
          				  </TR>
        				  <TR>
          					<TD height=25><span id="sMJPEG">MJPEG</span></TD>
          					<TD>
            				  <SELECT id="input_mjResolution" name="input_mjResolution">
            					<% printVideoSupport(PROFILE2) %>
            				  </SELECT>
          					</TD>
          					<TD>
            				  <SELECT id="input_mjQuality" name="input_mjQuality">
            					<OPTION value=0>Very Low</OPTION>
            					<OPTION value=1>Low</OPTION>
            					<OPTION value=2>Medium</OPTION>
            					<OPTION value=3>High</OPTION>
            					<OPTION value=4>Very High</OPTION>
            				  </SELECT>
          					</TD>
          					<TD>
            				  <SELECT id="input_mjFramerate" name="input_mjFramerate">
            					<OPTION value="30">30</OPTION>
            					<OPTION value="20">20</OPTION>
            					<OPTION value="15">15</OPTION>
            				    <OPTION value="10">10</OPTION>
            				    <OPTION value="5">5</OPTION>
            				    <OPTION value="3">3</OPTION>
            				    <OPTION value="2">2</OPTION>
            				    <OPTION value="1">1</OPTION>
            				  </SELECT>
          				    </TD>
          				    <TD>
          				      <input id="input_rtspurl_mjpeg" size="20" maxlength="127">
          				    </TD>
        				  </TR>
        				</table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sAudioSetup">Audio Setup</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
        				    <TD width="120">
        				      <span id="sMicrophoneEnable">Microphone Enable</span>
        				    </TD>
        	  			    <TD>
        	  			      <input type="checkbox" id="input_audio_enable" onclick="onAudioEnable();">
          				    </TD>
        				  </TR>
        				</table>
        				<div id="div_microphone_volume_container">
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR>
        				      <TD width="123">
        				        <span>&nbsp;&nbsp;&nbsp;</span><span id="sVolume">Volume</span>
        				      </TD>
        	  			      <TD>
        	  			      	<select id="select_listen_volume">
        	  			      	  <option value="0">0</option>
        	  			      	  <option value="10">10</option>
        	  			      	  <option value="20">20</option>
        	  			      	  <option value="30">30</option>
        	  			      	  <option value="40">40</option>
        	  			      	  <option value="50">50</option>
        	  			      	  <option value="60">60</option>
        	  			      	  <option value="70">70</option>
        	  			      	  <option value="80">80</option>
        	  			      	  <option value="90">90</option>
        	  			      	  <option value="100">100</option>
        	  			      	</select>
        				      </TD>
        				    </TR>
        			      </table>
        			    </div>
        			    <div id="div_speaker_setting">
        			      <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				    <TR>
        				      <TD width="120px">
        				        <span id="sSpeakerEnable">Speaker Enable</span>
        				      </TD>
        	  			      <TD>
        	  			        <input type="checkbox" id="input_speaker_enable" onclick="onSpeakerEnable();">
          				      </TD>
        				    </TR>
        				  </table>
        				  <div id="div_speaker_volume_container">
        				    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				      <TR>
        				        <TD width="123">
        				          <span>&nbsp;&nbsp;&nbsp;</span><span id="sVolume2">Volume</span>
        				        </TD>
        	  			        <TD>
        	  			      	  <select id="select_speaker_volume">
        	  			      	    <option value="0">0</option>
        	  			      	    <option value="10">10</option>
        	  			      	    <option value="20">20</option>
        	  			      	    <option value="30">30</option>
        	  			      	    <option value="40">40</option>
        	  			      	    <option value="50">50</option>
        	  			      	    <option value="60">60</option>
        	  			      	    <option value="70">70</option>
        	  			      	    <option value="80">80</option>
        	  			      	    <option value="90">90</option>
        	  			      	    <option value="100">100</option>
        	  			      	  </select>
        				        </TD>
        				      </TR>
        			        </table>
        			      </div>
        			    </div>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigSystemStream" value="Save">
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
        		<br><br><b>Resolution</b><br>The options depend on display system used.
        		<br><br><b>Bit Rate</b><br>(bits per second) - Select a fixed bandwidth for 
				your camera operation. Higher value means a higher quality image but 
				consumes more network bandwidth.
        		<br><br><b>Frame Rate</b><br>(frames per second) - The higher the frame 
				rate, the smoother the video will appear. Note that a higher frame rate 
				setting also uses more bandwidth.
        		<br><br><b>Jpeg Quality</b> - Default value is <b>Medium</b>.
        		<br><br><b>Microphone</b><br>Enable this feature to hear audio from the camera's microphone.
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
