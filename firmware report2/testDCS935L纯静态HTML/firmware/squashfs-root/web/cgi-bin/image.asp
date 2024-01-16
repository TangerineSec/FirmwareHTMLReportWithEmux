<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="jQuery/jquery-ui-1.8.6.custom.css" type="text/css">
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_image.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
var Contrast_Def=decodeBase64("<% getCameraImageInfo(Contrast_Def); %>");
var Brightness_Def=decodeBase64("<% getCameraImageInfo(Brightness_Def); %>");
var Saturation_Def=decodeBase64("<% getCameraImageInfo(Saturation_Def); %>");
var Sharpness_Def=decodeBase64("<% getCameraImageInfo(Sharpness_Def); %>");
var Hue_Def=decodeBase64("<% getCameraImageInfo(Hue_Def); %>");
var Flicker_Def=decodeBase64("<% getCameraImageInfo(Flicker_Def); %>");
var Contrast=decodeBase64("<% getCameraImageInfo(Contrast); %>");
var Brightness=decodeBase64("<% getCameraImageInfo(Brightness); %>");
var Saturation=decodeBase64("<% getCameraImageInfo(Saturation); %>");
var Sharpness=decodeBase64("<% getCameraImageInfo(Sharpness); %>");
var Hue=decodeBase64("<% getCameraImageInfo(Hue); %>");
var Vertical=decodeBase64("<% getCameraImageInfo(Flip); %>");
var Horizontal=decodeBase64("<% getCameraImageInfo(Mirror); %>");
var Flicker=decodeBase64("<% getCameraImageInfo(Flicker); %>");
var DayMode=decodeBase64("<% getCameraImageInfo(DayMode); %>");
var MJPEG_Res=decodeBase64("<% getVideoProfile2Info(Resolution); %>");
var MPEG4_Res=decodeBase64("<% getVideoProfile1Info(Resolution); %>");
var H264_Res=decodeBase64("<% getVideoProfile0Info(Resolution); %>");
var DefaultLanguage=decodeBase64("<% getCamSystemInfo(Language); %>");
var Browser = CheckBrower();
var profile = parseInt(getWebQuery("profile", "1"), 10);
var AudioCodec=decodeBase64("<% getAudioProfile0Info(EncodeFormat); %>");
var authorization=decodeBase64("<% getAuthorization(fake); %>");
var Clsid=decodeBase64("<% getActiveXInfo(Clsid); %>"); 
var Cabname=decodeBase64("<% getActiveXInfo(Cabname); %>");
var Cabname64=decodeBase64("<% getActiveXInfo(Cabname64); %>");
var DirectshowEnable=decodeBase64("<% getCamSystemInfo(DirectShow); %>");
var Version=decodeBase64("<% getActiveXInfo(Version); %>");
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_IMAGE_SETTING]);
	setText(document.getElementById("sLiveVideo"), item_name[I_LIVE_VIDEO]);
	setText(document.getElementById("sImageSetting"), item_name[I_IMAGE_SETTING_TITLE]);
	setText(document.getElementById("sBrightness"), item_name[I_BRIGHTNESS]);
	setText(document.getElementById("sSaturation"), item_name[I_SATURATION]);
	setText(document.getElementById("sContrast"), item_name[I_CONTRAST]);
	setText(document.getElementById("sHue"), item_name[I_HUE]);
	setText(document.getElementById("sSharpness"), item_name[I_SHARPNESS]);
	setText(document.getElementById("sBlackAndWhite"), item_name[I_BW]);
	setText(document.getElementById("sMirror"), item_name[I_MIRROR]);
	setText(document.getElementById("sFlip"), item_name[I_FLIP]);
	setText(document.getElementById("sFrequency"), item_name[I_FREQUENCY]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_set_default").value = item_name[I_RESET_TO_DEFAULT];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];

	for (var i = 0; i < document.getElementById("select_flicker").length; i++)
	{
		document.getElementById("select_flicker").options[i].text = option_content[O_FREQUENCY_AUTO + i];
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
	}
	setConfig();
	resizePage();
	if (!bReinit)
	{
		setTimeout("initViewer();", 500);
	}
}
function setConfig()
{
	document.getElementById("select_brightness").value = Brightness;
	document.getElementById("select_saturation").value = Saturation;
	document.getElementById("select_contrast").value = Contrast;
	document.getElementById("select_hue").value = Hue;
	document.getElementById("select_sharpness").value = Sharpness;
	if (DayMode == "1")
		document.getElementById("input_bwmode").checked = false;
	else
		document.getElementById("input_bwmode").checked = true;
	if (Horizontal == "1")
		document.getElementById("input_mirror").checked = true;
	else
		document.getElementById("input_mirror").checked = false;
	if (Vertical == "1")
		document.getElementById("input_flip").checked = true;
	else
		document.getElementById("input_flip").checked = false;
	document.getElementById("select_flicker").value = Flicker;
}
function reset_to_def()
{
	document.getElementById("select_brightness").value = Brightness_Def;
	document.getElementById("select_saturation").value = Saturation_Def;
	document.getElementById("select_contrast").value = Contrast_Def;
	document.getElementById("select_hue").value = Hue_Def;
	document.getElementById("select_sharpness").value = Sharpness_Def;
	document.getElementById("input_bwmode").checked = false;
	document.getElementById("input_mirror").checked = false;
	document.getElementById("input_flip").checked = false;
	document.getElementById("select_flicker").value = Flicker_Def;
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
function save_setting(showInfo)
{
	var url = "/cgi/admin/camera.cgi";
	var params = "";
	params += "Brightness=" + encodeURIComponent(document.getElementById("select_brightness").value);
	params += "&Saturation=" + encodeURIComponent(document.getElementById("select_saturation").value);
	params += "&Contrast=" + encodeURIComponent(document.getElementById("select_contrast").value);
	params += "&Hue=" + encodeURIComponent(document.getElementById("select_hue").value);
	params += "&Sharpness=" + encodeURIComponent(document.getElementById("select_sharpness").value);
	
	if (document.getElementById("input_flip").checked)
		params += "&Vertical=1";
	else
		params += "&Vertical=0";
	if (document.getElementById("input_mirror").checked)
		params += "&Horizontal=1";
	else
		params += "&Horizontal=0";
	if (document.getElementById("input_bwmode").checked == false)
		params += "&DayMode=1";
	else
		params += "&DayMode=0";
		
	params += "&Flicker=" + encodeURIComponent(document.getElementById("select_flicker").value);
		
	if (parent)
	{
		if (showInfo)
			parent.blockUI(true, item_name[I_PROCESSING], 1);
		//else
		//	parent.blockUI(true, "", 0);
	}
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
	Brightness = document.getElementById("select_brightness").value;
	Saturation = document.getElementById("select_saturation").value;
	Contrast = document.getElementById("select_contrast").value;
	Hue = document.getElementById("select_hue").value;
	Sharpness = document.getElementById("select_sharpness").value;
	
	if (document.getElementById("input_flip").checked)
		Vertical = "1";
	else
		Vertical = "0";
	if (document.getElementById("input_mirror").checked)
		Horizontal = "1";
	else
		Horizontal = "0";
	if (document.getElementById("input_bwmode").checked == false)
		DayMode = "1";
	else
		DayMode = "0";
		
	Flicker = document.getElementById("select_flicker").value;
	//setConfig();
	//resizePage();
}
var bActiveXGo=0
var bJavaGo=0
function getheader_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
			authorization=decodeBase64(http_request.responseText);
			if (bActiveXGo==1)
				waitActiveXInstalled();
			else if (bJavaGo==1)
				setTimeout("waitJavaInstalled();", 500);
        }else {
			setTimeout('makeRequestByGet("/cgi/admin/wgetheader.cgi", getheader_callback);', 100);
        }
    }
}
function initViewer()
{
	var res;
	if(profile == 5)
	{
		res = H264_Res.split("x");
	}
	//mjpeg
	else if (profile == 1)
	{
		res = MJPEG_Res.split("x");
	}
	else
		return;
	var langIdx = 0;
    if (DefaultLanguage == "tc")
		langIdx = 1;
	else if (DefaultLanguage == "sc")
		langIdx = 2;
	var divObj = document.getElementById("div_object");
	var remote_host = document.location.hostname;
	var remote_port = "80";
	var remote_protocol = "http";
	var audioProfile = parseInt(AudioCodec, 10);
	
	if (location.protocol.toLowerCase() == "https:")
	{
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "443";
		remote_protocol = "https";	
	}
	else
	{
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "80";
	}
	
	if (Browser.search("IE") != -1)
	{
		//set activex content
		var divObj = document.getElementById("div_object");
		var live_view = "";
		
		if (checkBrowserVersion() == 64)
		{
			live_view = "<object id=\"ucx\" name=\"ucx\" width=\"320\" height=\"240\"" +  
				  		" style=\"visibility:visible;\" align=\"middle\" title=\"ActiveX Streaming Client\"" +
				  		" classid=\"CLSID:" + Clsid + "\"" +
				  		" CODEBASE=\"" + Cabname64 + "#Version=" + Version +"\">" +
				  		"<br> <b>ActiveX is not installed.</b></object>";
		}
		else
		{
			live_view = "<object id=\"ucx\" name=\"ucx\" width=\"320\" height=\"240\"" +  
				  		" style=\"visibility:visible;\" align=\"middle\" title=\"ActiveX Streaming Client\"" +
				  		" classid=\"CLSID:" + Clsid + "\"" +
				  		" CODEBASE=\"" + Cabname + "#Version=" + Version +"\">" +
				  		"<br> <b>ActiveX is not installed.</b></object>";
		}
			
		document.body.style.display = "";
		divObj.innerHTML = live_view;
		bActiveXGo=1;
		makeRequestByGet("/cgi/admin/wgetheader.cgi", getheader_callback);
	}
	else
	{
		live_view = "<object \
  	 	 			 classid = 'clsid:CAFEEFAC-0017-0000-FFFF-ABCDEFFEDCBA' \
  	 	 			 width = '320' height = '240' id='ucx_obj' name='ucx_obj'> \
  	 	 			 <param name = 'code' value = 'org.fiti.camera.viewer.UltraCam'> \
  	 	 			 <param name = 'archive' value = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' > \
  	 	 			 <param name = 'name' value = 'ucx' > \
  	 	 			 <param name = 'id' value = 'ucx' > \
  	 	 			 <param name = 'type' value = 'application\/x-java-applet'> \
  	 	 			 <param name = 'mode' value='1' > \
  	 	 			 <param name = 'scriptable' value = 'true'> \
  	 	 			 <param name = 'mayscript' value='false'> \
  	 	 			 <comment> \
					 <embed \
  	 	        	 type = 'application\/x-java-applet' \
  	 	        	 code = 'org.fiti.camera.viewer.UltraCam' \
  	 	        	 archive = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' \
  	 	        	 name = 'ucx' \
  	 	        	 id = 'ucx' \
  	 	        	 width = '320' \
  	 	        	 height = '240' \
  	 	        	 mode ='1'  \
  	 	        	 scriptable = 'true' \
			    	 mayscript ='false' \
					 <\/embed> \
  	 	 			 <\/comment> \
					 <\/object> \
					 ";
					
		divObj.innerHTML = live_view;
		divObj.style.height = "240";
		divObj.style.width = "320";
		divObj.focus();
		bJavaGo=1
		makeRequestByGet("/cgi/admin/wgetheader.cgi", getheader_callback);
	}
}
function waitJavaInstalled()
{
	var live_obj = getLiveObj();
	if (live_obj == null)
		setTimeout("waitJavaInstalled();", 500);
	else
		initJava();
}
function initJava()
{
	var live_obj = getLiveObj();
	if (live_obj)
	{
		var remote_host = document.location.hostname;
		var remote_port = "80";
		live_obj.ApiInit();
		if (location.protocol.toLowerCase() == "https:")
		{
			if (document.location.port != "")
				remote_port = document.location.port.toString();
			else
				remote_port = "443";
			live_obj.SSLEnable("1");
			live_obj.set_conn_host(remote_host, remote_port);
		}
		else
		{
			if (document.location.port != "")
				remote_port = document.location.port.toString();
			else
				remote_port = "80";
			live_obj.SSLEnable("0");
			live_obj.set_conn_host(remote_host, remote_port);
		}
		var userAndPwd = decodeBase64(authorization).split(":");
		if (userAndPwd.length == 2)
		{
			var uid = userAndPwd[0];
			var pwd = userAndPwd[1];
			live_obj.set_authentication(uid, pwd);
		}
		//h264
		if(profile == 5)
		{
			live_obj.set_video_type("2");
			//mp4
			live_obj.SetRecType("1");
		}
		//mjpeg
		else if (profile == 1)
		{
			live_obj.set_video_type("0");
			//avi
			live_obj.SetRecType("0");
		}
		live_obj.set_audio_type("3");
		live_obj.Play();
	}
}
function setUCXSize(uwidth,uheight)
{
	if (uwidth <= 0)
		uwidth = 1;
	if (uheight <= 0)
		uheight = 1;
	
	var appletFrame = document.getElementById? document.getElementById('div_object'): document.all? document.all['div_object']: null;
	appletFrame.style.width = uwidth;
	appletFrame.style.height = uheight;	
	appletFrame.focus();
	var live_obj = getLiveObj();
	live_obj.width = uwidth;
	live_obj.height = uheight;
	
	resizePage();
}
function getLiveObj()
{
	var nonie_video = document.getElementById("ucx_obj");
	var ie_video = document.getElementById("ucx");
	var obj_video = null;
	if (nonie_video && typeof(nonie_video.ApiInit) != "undefined")
		obj_video = nonie_video;
	else if (ie_video && typeof(ie_video.ApiInit) != "undefined")
		obj_video = ie_video;
	return obj_video;
}
function waitActiveXInstalled()
{
	if (document.getElementById("ucx") != null)
	{
		if (document.getElementById("ucx").object != null)
		{
			//document.location.reload();
			ActiveXGo();
			return;
		}
	}
	setTimeout("waitActiveXInstalled();", 2000);
}
function ActiveXGo()
{    
    var langIdx = 0;
    if (DefaultLanguage == "tc")
		langIdx = 1;
	else if (DefaultLanguage == "sc")
		langIdx = 2;
	else if (DefaultLanguage == "de")
		langIdx = 3;
	else if (DefaultLanguage == "fr")
		langIdx = 4;
	else if (DefaultLanguage == "es")
		langIdx = 5;		
	else if (DefaultLanguage == "it")
		langIdx = 6;	
	
	var remote_port = "80";
	if (location.protocol.toLowerCase() == "https:")
	{
		document.ucx.SSLEnable(1);
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "443";
	}
	else
	{
		document.ucx.SSLEnable(0);
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "80";
	}
	document.ucx.RemoteHost = document.location.hostname;	
	document.ucx.RemotePort = parseInt(remote_port, 10);
	var userAndPwd = decodeBase64(authorization).split(":");
	if (userAndPwd.length == 2)
	{
		var uid = userAndPwd[0];
		var pwd = userAndPwd[1];
		document.ucx.UserName = uid;
		document.ucx.Password = pwd;
	}
	else
	{	
		document.ucx.AccountCode = authorization;
	}
	document.ucx.SetLanguage(langIdx);
	document.ucx.SetAutoScale(1);
	if (DirectshowEnable == "1")
		document.ucx.SetDirectShow(1);
	else
		document.ucx.SetDirectShow(0);
		
	//Play Video
	//h264
	if(profile == 5)
	{
		document.ucx.PlayVideo(2);//h264
	}
	//mpeg4 or user stream
	else if (profile == 0)
	{
		if (UserStream == "1")
		{
			document.ucx.PlayVideo(3);
		}
		else
			document.ucx.PlayVideo(0);
	}
	//mjpeg
	else 
	{
		document.ucx.PlayVideo(profile);
	}
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'image_data.asp?' + g_token">
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
      				    <h1><span id="sTitle">Image Setup</span></h1>
      				    <span id="sTitleInfo">
      					  Your changes made for the image settings will be reflected immediately. The results can be seen and found in the Live Video window below.
      					</span>
      					<p></p>
        				<div align=center style="display: none">
        				  <span>&nbsp;</span>
        				  <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onclick="save_setting(1);">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        				</div>
      				  </div>
      				  <div class="box">
      				    <h2><span id="sLiveVideo">Live Video</span></h2>
      				    <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF" width="100%">
      				      <tr align="center">
      				        <td>
      				          <div id="div_object" name="div_object" style="width: 320px;height: 240px"></div>
      				        </td>
      				      </tr>  
      				    </table>
      				  </div>
      				  <div class="box">
        				<h2><span id="sImageSetting">image settings</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD width="100px"><span id="sBrightness">Brightness</span></TD>
          					<TD width="100px">
          					  <select id="select_brightness" onchange="save_setting(0);">
        	  			      	<option value="0">0</option>
        	  			      	<option value="5">5</option>
        	  			      	<option value="10">10</option>
        	  			      	<option value="15">15</option>
        	  			      	<option value="20">20</option>
        	  			      	<option value="25">25</option>
        	  			      	<option value="30">30</option>
        	  			      	<option value="35">35</option>
        	  			      	<option value="40">40</option>
        	  			      	<option value="45">45</option>
        	  			      	<option value="50">50</option>
        	  			      	<option value="55">55</option>
        	  			      	<option value="60">60</option>
        	  			      	<option value="65">65</option>
        	  			      	<option value="70">70</option>
        	  			      	<option value="75">75</option>
        	  			      	<option value="80">80</option>
        	  			      	<option value="85">85</option>
        	  			      	<option value="90">90</option>
        	  			      	<option value="95">95</option>
        	  			      	<option value="100">100</option>        	  			      	
        	  			      </select>
          					</TD>
          					<TD width="50px"></TD>
          					<TD width="100px"><span id="sSaturation">Saturation</span></TD>
          					<TD width="100px">
          					  <select id="select_saturation" onchange="save_setting(0);">
        	  			      	<option value="0">0</option>
        	  			      	<option value="5">5</option>
        	  			      	<option value="10">10</option>
        	  			      	<option value="15">15</option>
        	  			      	<option value="20">20</option>
        	  			      	<option value="25">25</option>
        	  			      	<option value="30">30</option>
        	  			      	<option value="35">35</option>
        	  			      	<option value="40">40</option>
        	  			      	<option value="45">45</option>
        	  			      	<option value="50">50</option>
        	  			      	<option value="55">55</option>
        	  			      	<option value="60">60</option>
        	  			      	<option value="65">65</option>
        	  			      	<option value="70">70</option>
        	  			      	<option value="75">75</option>
        	  			      	<option value="80">80</option>
        	  			      	<option value="85">85</option>
        	  			      	<option value="90">90</option>
        	  			      	<option value="95">95</option>
        	  			      	<option value="100">100</option>
        	  			      </select>
          					</TD>
        				  </TR>
        				  <TR>
          					<TD><span id="sContrast">Contrast</span></TD>
          					<TD>
          					  <select id="select_contrast" onchange="save_setting(0);">
        	  			      	<option value="0">0</option>
        	  			      	<option value="5">5</option>
        	  			      	<option value="10">10</option>
        	  			      	<option value="15">15</option>
        	  			      	<option value="20">20</option>
        	  			      	<option value="25">25</option>
        	  			      	<option value="30">30</option>
        	  			      	<option value="35">35</option>
        	  			      	<option value="40">40</option>
        	  			      	<option value="45">45</option>
        	  			      	<option value="50">50</option>
        	  			      	<option value="55">55</option>
        	  			      	<option value="60">60</option>
        	  			      	<option value="65">65</option>
        	  			      	<option value="70">70</option>
        	  			      	<option value="75">75</option>
        	  			      	<option value="80">80</option>
        	  			      	<option value="85">85</option>
        	  			      	<option value="90">90</option>
        	  			      	<option value="95">95</option>
        	  			      	<option value="100">100</option>        	  			      
        	  			      </select>
          					</TD>
          					<TD width="50px"></TD>
          					<TD><span id="sHue">Hue</span></TD>
          					<TD>
          					  <select id="select_hue" onchange="save_setting(0);">
        	  			      	<option value="0">0</option>
        	  			      	<option value="5">5</option>
        	  			      	<option value="10">10</option>
        	  			      	<option value="15">15</option>
        	  			      	<option value="20">20</option>
        	  			      	<option value="25">25</option>
        	  			      	<option value="30">30</option>
        	  			      	<option value="35">35</option>
        	  			      	<option value="40">40</option>
        	  			      	<option value="45">45</option>
        	  			      	<option value="50">50</option>
        	  			      	<option value="55">55</option>
        	  			      	<option value="60">60</option>
        	  			      	<option value="65">65</option>
        	  			      	<option value="70">70</option>
        	  			      	<option value="75">75</option>
        	  			      	<option value="80">80</option>
        	  			      	<option value="85">85</option>
        	  			      	<option value="90">90</option>
        	  			      	<option value="95">95</option>
        	  			      	<option value="100">100</option>
        	  			      </select>
          					</TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD width="100px"><span id="sSharpness">Sharpness</span></TD>
          					<TD width="100px">
          					  <select id="select_sharpness" onchange="save_setting(0);">
        	  			      	<option value="0">0</option>
        	  			      	<option value="5">5</option>
        	  			      	<option value="10">10</option>
        	  			      	<option value="15">15</option>
        	  			      	<option value="20">20</option>
        	  			      	<option value="25">25</option>
        	  			      	<option value="30">30</option>
        	  			      	<option value="35">35</option>
        	  			      	<option value="40">40</option>
        	  			      	<option value="45">45</option>
        	  			      	<option value="50">50</option>
        	  			      	<option value="55">55</option>
        	  			      	<option value="60">60</option>
        	  			      	<option value="65">65</option>
        	  			      	<option value="70">70</option>
        	  			      	<option value="75">75</option>
        	  			      	<option value="80">80</option>
        	  			      	<option value="85">85</option>
        	  			      	<option value="90">90</option>
        	  			      	<option value="95">95</option>
        	  			      	<option value="100">100</option>
        	  			      </select>
          					</TD>
          					<TD width="50px"></TD>
          					<TD width="96px"><span id="sBlackAndWhite">B/W</span></TD>
          					<TD width="104px">
          					  <input type="checkbox" id="input_bwmode" name="input_bwmode" onchange="save_setting(0);">
          					</TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
          					<TD width="96px"><span id="sMirror">Mirror</span></TD>
          					<TD width="104px">
          					  <input type="checkbox" id="input_mirror" name="input_mirror" onClick="save_setting(0);">
          					</TD>
          					<TD width="50px"></TD>
          					<TD width="96px"><span id="sFlip">Flip</span></TD>
          					<TD width="104px">
          					  <input type="checkbox" id="input_flip" name="input_flip" onClick="save_setting(0);">
          					</TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
          				  <TR>
          				    <TD width="100px"><span id="sFrequency">Frequency</span></TD>
          					<TD width="100px">
          					  <select id="select_flicker" onchange="save_setting(0);">
          					    <option value="2">Auto</option>
        	  			      	<option value="0">50Hz</option>
        	  			      	<option value="1">60Hz</option>
        	  			      </select>
        	  			    </TD>
        	  			    <TD width="50px"></TD>
          					<TD width="100px"></TD>
          				    <TD width="100px"></TD>
          				  </TR>
          				</table>
          				<table width="100%" cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
          				  <TR>
          				    <TD width="100%" align="center"></TD>
          				  </TR>
          				  <TR>
          				    <TD width="100%" align="center">
          				      <input type="button" id="btn_set_default" name="btn_set_default" value="Reset to Default" style="width:160px" onclick="reset_to_def();save_setting(1);">
          				    </TD>
          				  </TR>
        				</table>
      				  </div>
      				  <p align=center style="display: none">
        				<input type="hidden" name="ConfigSystemStream" value="Save">
        				&nbsp;
        				<INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onclick="save_setting(1);">
        				&nbsp;&nbsp;
        				<INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
      				  </p>
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
	  <td valign="top" width="150" id="sidehelp_container" align="left">
        <table cellpadding="2" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
    	    <td id="help_text">
    	 	  <span id="sHelpInfo">
        	    <b>Helpful Hints..</b>
        	    <br><br>Brightness, Saturation, Contrast, Hue can be adjusted from 0 to 100, allowing you to fine-tune your image settings.
        		<br><br><b>Brightness</b><br>It is used to compensate for backlit scenes.
        		<br><br><b>Saturation</b><br>It controls the strength of color from black and white to bold colors.
        		<br><br><b>Contrast</b><br>Adjustable to control the contrast of colors between the object. It helps to improve the image under a dull grey sky.
        		<br><br><b>Hue</b><br>It controls different degree of a color stimulating to human eyes.
        		<br><br><b>Sharpness</b><br>It is used to adjust image sharpness.
        		<br><br><b>B/W</b><br>Select to enable or disable black-and-white mode for your camera.
        		<br><br><b>Mirror</b><br>Select this feature to obtain mirror image.
				<br><br><b>Flip</b><br>Select this feature when your camera is installed up-side down on the ceiling.
				<br><br><b>Frequency</b><br>You may need to choose 'Auto', '50' or '60' Hz frequency (depends on country).	
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
