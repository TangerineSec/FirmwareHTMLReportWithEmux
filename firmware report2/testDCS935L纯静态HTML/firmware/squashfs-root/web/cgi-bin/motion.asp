<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css?cidx=1.012013-04-19" type="text/css">
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_motion.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" src="json2.js"></script>
<script type="text/javascript" language="Javascript">
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
var MJPEG_Res=decodeBase64("<% getVideoProfile2Info(Resolution); %>");
var MPEG4_Res=decodeBase64("<% getVideoProfile1Info(Resolution); %>");
var H264_Res=decodeBase64("<% getVideoProfile0Info(Resolution); %>");
var DefaultLanguage=decodeBase64("<% getCamSystemInfo(Language); %>");
var Browser = CheckBrower();
var profile = parseInt(getWebQuery("profile", "1"), 10);
var AudioCodec=decodeBase64("<% getAudioProfile0Info(EncodeFormat); %>");
var authorization=decodeBase64("<% getAuthorization(fake); %>");
var MDBlockEnable=decodeBase64("<% getMDBlockInfo(Enable); %>");
var MDBlockMBlock=decodeBase64("<% getMDBlockInfo(MBlock); %>");
var MDBlockSensitivity=decodeBase64("<% getMDBlockInfo(Sensitivity); %>");
//var MDBlockPercentage=decodeBase64("<% getMDBlockInfo(Percentage); %>");
//hardcording for percentage to 1
var MDBlockPercentage="1";
var g_nDrawType = 1;
var Browser = CheckBrower();

function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_MOTION_DETECTION]);
	setText(document.getElementById("sMDTitle"), item_name[I_LIVE_VIDEO]);
	setText(document.getElementById("sMotionEnable"), item_name[I_ENABLE_MOTION]);
	setText(document.getElementById("sSensitivity"), item_name[I_SENSITIVITY]);
	setText(document.getElementById("sPercentage"), item_name[I_PERCENTAGE]);
	setText(document.getElementById("sDrawMode"), item_name[I_DRAWING_MODE]);
	setText(document.getElementById("sDrawMotionArea"), item_name[I_DRAW_MOTION_AREA]);
	setText(document.getElementById("sEraseMotionArea"), item_name[I_ERASE_MOTION_AREA]);
	document.getElementById("input_btn_clear").value = item_name[I_CLEAR];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML = des_item_name[D_HELP_INFO];
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
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
/*
	if (Browser.search("IE") != -1)
	{
		document.getElementById("tb_motion_block").background = "/cgi/jpg/image.cgi";
	}
*/
	document.body.style.display = "";
	if (!bReinit)
	{
		loadText();
		setTimeout("initViewer();", 500);
	}
	setConfig();
	onEnableMotion();
	resizePage();	
}
function reload()
{
	setConfig();
	onEnableMotion();
	resizePage();
}
function setConfig()
{
	if (MDBlockEnable == "1")
		document.getElementById("input_motion_enable").checked = true;
	else
		document.getElementById("input_motion_enable").checked = false;
		
	document.getElementById("input_sensitivity").value = MDBlockSensitivity;
	document.getElementById("input_percentage").value = MDBlockPercentage;
	setMotionBlock();
	/*
	for (i = 0; i < 25; i++)
	{
		if (MDBlockMBlock.charAt(i) == "1")
		{
			document.getElementsByName("td_motion_block")[i].style.backgroundColor = "#EE7700";
			document.getElementsByName("sBlockValue")[i].value = "1";
		}
		else
		{
			document.getElementsByName("td_motion_block")[i].style.backgroundColor = "transparent";
			document.getElementsByName("sBlockValue")[i].value = "0";
		}
		document.getElementsByName("td_motion_block")[i].style.opacity = 0.5;
		document.getElementsByName("td_motion_block")[i].style.filter = "alpha(opacity=50)"; 
	}
	*/
}
function setMotionBlock()
{
	var live_obj = getLiveObj();
	if (live_obj)
	{
		live_obj.SetMotionBlockInfo(MDBlockMBlock);
	}
}
function getheader_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
			authorization=decodeBase64(http_request.responseText);
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
	var audioProfile = parseInt(AudioCodec, 10);
	live_view = "<object \
  	  			classid = 'clsid:CAFEEFAC-0017-0000-FFFF-ABCDEFFEDCBA' \
  	  			width = '320' height = '240' id='ucx_obj' name='ucx_obj'> \
  	  			<param name = 'code' value = 'org.fiti.camera.viewer.UltraCam'> \
  	  			<param name = 'archive' value = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' > \
  	  			<param name = 'name' value = 'ucx' > \
  	  			<param name = 'id' value = 'ucx' > \
  	  			<param name = 'type' value = 'application\/x-java-applet'> \
  	  			<param name = 'mode' value='2' > \
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
  	          	mode ='2'  \
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
	makeRequestByGet("/cgi/admin/wgetheader.cgi", getheader_callback);
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
		resizePage();
		setMotionBlock();
		//setTimeout("setMotionBlock();", 3000);
		//setTimeout("onDrawModeChange(1);", 3000);
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
	var url = "/cgi/admin/motion.cgi";
	var params = "";
	var winInfo;
	var bIsHasDraw = 0;
	var live_obj = getLiveObj();
	//winInfo = JSON.parse(live_obj.GetMotionWindowInfo(id));
	//params += "&name=" + encodeURIComponent(mdName[id - 1]);
	if (document.getElementById("input_motion_enable").checked == true)
	{
		params += "enable=yes";
		if (isNaN(parseInt(document.getElementById("input_sensitivity").value, 10)) == true)
		{
			alert(pop_msg[PMSG_SENSITIVITY_MUST_NUM]);
			return;	
		}
		if (parseInt(document.getElementById("input_sensitivity").value, 10) > 100 || document.getElementById("input_sensitivity").value < 0)
		{
			alert(pop_msg[PMSG_SENSITIVITY_RANGE_INVALID]);
			return;	
		}
		params += "&sensitivity=" + document.getElementById("input_sensitivity").value;
		if (isNaN(parseInt(document.getElementById("input_percentage").value, 10)) == true)
		{
			alert(pop_msg[PMSG_PERCENTAGE_MUST_NUM]);
			return;	
		}
		if (parseInt(document.getElementById("input_percentage").value, 10) > 100 || document.getElementById("input_percentage").value < 0)
		{
			alert(pop_msg[PMSG_PERCENTAGE_RANGE_INVALID]);
			return;	
		}
		params += "&percentage=" + document.getElementById("input_percentage").value;
		params += "&mbmask="
		var strMotionBlockInfo = "";
		var live_obj = getLiveObj();
		if (live_obj)
		{
			strMotionBlockInfo  = live_obj.GetMotionBlockInfo();
		}

		for (i = 0; i < 25; i+=5)
		{
			var blockW0 = "00", blockW1 = "00", blockW2 = "00", blockW3 = "00", blockW4 = "00";
			var blockWAll = "";
			
			if (strMotionBlockInfo.charAt(i) == "1")
			{
				blockW0 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 1) == "1")
			{
				blockW1 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 2) == "1")
			{
				blockW2 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 3) == "1")
			{
				blockW3 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 4) == "1")
			{
				blockW4 = "FF";
				bIsHasDraw = 1;
			}
			/*
			if (document.getElementsByName("sBlockValue")[i].value == "1")
			{
				blockW0 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 1].value == "1")
			{
				blockW1 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 2].value == "1")
			{
				blockW2 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 3].value == "1")
			{
				blockW3 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 4].value == "1")
			{
				blockW4 = "FF";
				bIsHasDraw = 1;
			}
			*/
			blockWAll = blockW0 + blockW1 + blockW2 + blockW3 + blockW4;

			params += blockWAll + blockWAll + blockWAll + blockWAll + blockWAll + blockWAll;
		}
		if (bIsHasDraw == 0)
		{
			alert(pop_msg[PMSG_PLEASE_DRAW_MOTION_AREA]);
			return;	
		}
	}
	else
	{
		params += "enable=no";
		params += "&mbmask="
		var strMotionBlockInfo = "";
		var live_obj = getLiveObj();
		if (live_obj)
		{
			strMotionBlockInfo  = live_obj.GetMotionBlockInfo();
		}

		for (i = 0; i < 25; i+=5)
		{
			var blockW0 = "00", blockW1 = "00", blockW2 = "00", blockW3 = "00", blockW4 = "00";
			var blockWAll = "";
			if (strMotionBlockInfo.charAt(i) == "1")
			{
				blockW0 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 1) == "1")
			{
				blockW1 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 2) == "1")
			{
				blockW2 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 3) == "1")
			{
				blockW3 = "FF";
				bIsHasDraw = 1;
			}
			if (strMotionBlockInfo.charAt(i + 4) == "1")
			{
				blockW4 = "FF";
				bIsHasDraw = 1;
			}
			/*
			if (document.getElementsByName("sBlockValue")[i].value == "1")
			{
				blockW0 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 1].value == "1")
			{
				blockW1 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 2].value == "1")
			{
				blockW2 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 3].value == "1")
			{
				blockW3 = "FF";
				bIsHasDraw = 1;
			}
			if (document.getElementsByName("sBlockValue")[i + 4].value == "1")
			{
				blockW4 = "FF";
				bIsHasDraw = 1;
			}
			*/
			blockWAll = blockW0 + blockW1 + blockW2 + blockW3 + blockW4;
			params += blockWAll + blockWAll + blockWAll + blockWAll + blockWAll + blockWAll;
		}
		if (bIsHasDraw == 1)
		{
			alert(pop_msg[PMSG_PLEASE_CLEAR_MOTION_AREA]);
			return;	
		}
	}
	if (parent)
		parent.blockUI(true, "Saving", 0);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
	var live_obj = getLiveObj();
	if (live_obj)
	{
		MDBlockMBlock = live_obj.GetMotionBlockInfo();
	}
	if (document.getElementById("input_motion_enable").checked == true)
	{
		MDBlockEnable="1";
		MDBlockSensitivity = document.getElementById("input_sensitivity").value;
		MDBlockPercentage = document.getElementById("input_percentage").value;
	}
	else
	{
		MDBlockEnable="0";
	}
	
	//setConfig();
	//onEnableMotion();
	//resizePage();
}
function onEnableMotion()
{
	if (document.getElementById("input_motion_enable").checked == true)
	{
		document.getElementById("input_sensitivity").disabled = false;
		document.getElementById("input_percentage").disabled = false;
	}
	else
	{
		document.getElementById("input_sensitivity").disabled = true;
		document.getElementById("input_percentage").disabled = true;
	}
}
function onDrawModeChange(type)
{
	g_nDrawType = type;
	var live_obj = getLiveObj();
	if (live_obj)
	{
		live_obj.SetDrawMode(type);
	}
}
function onClear()
{
	/*
	for (i = 0; i < 25; i++)
	{
		document.getElementsByName("td_motion_block")[i].style.backgroundColor = "transparent";
		document.getElementsByName("sBlockValue")[i].value = "0";
	}
	*/
	var strMotionBlockInfo = "0000000000000000000000000";
	var live_obj = getLiveObj();
	if (live_obj)
	{
		live_obj.SetMotionBlockInfo(strMotionBlockInfo);
	}

}
function onBlockClick(id)
{
	if (g_nDrawType == 1)
	{
		document.getElementsByName("td_motion_block")[id].style.backgroundColor = "#EE7700";
		document.getElementsByName("sBlockValue")[id].value = "1";
	}
	else
	{
		document.getElementsByName("td_motion_block")[id].style.backgroundColor = "transparent";
		document.getElementsByName("sBlockValue")[id].value = "0";
	}
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'motion_data.asp?' + g_token">
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
      				    <h1><span id="sTitle">Motion Detection</span></h1>
      				    <span id="sTitleInfo">
      					  In this section, you can configure the motion detection settings for your 
						  camera.<br><br>
      					  Please note that your computer needs to have Java installed in order to 
						  view the motion detection configuration window. If you do not see the 
						  live video below, please visit <a href="http://www.java.com">
						  http://www.java.com</A> to download and install Java.
						</span>
        				<div align=center>
        				  <span>&nbsp;</span>
        				  <p></p>
        				  <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onclick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="reload();">
        				</div>
      				  </div>
      				  <div class="box">
        				<h2><span id="sMDTitle">Live Video</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
        				    <TD>
        				      <input id="input_motion_enable" type="checkbox" onchange="onEnableMotion();">
        				      <span id="sMotionEnable">Enable Video Motion</span>
        				    </TD>
        				  </TR>
        				  <TR>
        	 	 			<TD colspan=2>
            				  <span id="id_jre" style="color:red;display:none;"><br><br><b>Please 
								visit <a href="http://www.java.com">http://www.java.com</A> to 
								download and install Java.</b><br><br><br>
							  </span>
							  <table id ="tb_motion_block" background="" style="display: none">
							    <tr style="height:48px;">
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(0);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(1);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(2);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(3);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(4);"><span name="sBlockValue" style="display: none">0</span></td>
							    </tr>
							    <tr style="height:48px">
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(5);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(6);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(7);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(8);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(9);"><span name="sBlockValue" style="display: none">0</span></td>
							    </tr>
							    <tr style="height:48px">
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(10);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(11);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(12);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(13);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(14);"><span name="sBlockValue" style="display: none">0</span></td>
							    </tr>
							    <tr style="height:48px">
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(15);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(16);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(17);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(18);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(19);"><span name="sBlockValue" style="display: none">0</span></td>
							    </tr>
							    <tr style="height:48px">
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(20);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(21);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(22);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(23);"><span name="sBlockValue" style="display: none">0</span></td>
							      <td name="td_motion_block" bgcolor="transparent" width="64px" onclick="onBlockClick(24);"><span name="sBlockValue" style="display: none">0</span></td>
							    </tr>
							  </table>
            				  <div id="div_object" name="div_object" style="width: 320px;height: 240px; display: "></div>
           					</TD>
           					<TD width="211" style="vertical-align: top">
           					  <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF" width="211px">
           					    <tr><td></td></tr>
           					    <tr>
           					      <td>
           					        <b><span id="sSensitivity">Sensitivity</span></b>
           					      </td>
           					    </tr>
           					    <tr>
           					      <td>
           					        <input id="input_sensitivity" type="text" maxlength="3" size="3">
           					        <span>%(0%~100%)</span>
           					      </td>
           					    </tr>
           					    <tr style="display: none">
           					      <td>
           					        <b><span id="sPercentage">Percentage</span></b>
           					      </td>
           					    </tr>
           					    <tr style="display: none">
           					      <td>
           					        <input id="input_percentage" type="text" maxlength="3" size="3">
           					        <span>%(0%~100%)</span>
           					      </td>
           					    </tr>
           					    <tr>
           					      <td>
           					        <b><span id="sDrawMode">Drawing Mode</span></b>
           					      </td>
           					    </tr>
           					    <tr>
           					      <td>
           					        <input name="radio_draw_mode" type="radio" checked onclick="onDrawModeChange(1);">
           					        <span id="sDrawMotionArea">Draw motion area</span>
           					      </td>
           					    </tr>
								<tr>
           					      <td>
           					        <input name="radio_draw_mode" type="radio" onclick="onDrawModeChange(0);">
           					        <span id="sEraseMotionArea">Erase motion area</span>
           					      </td>
           					    </tr>
           					    <tr>
           					      <td>
           					        <input id="input_btn_clear" type="button" value="Clear" onclick="onClear();">
           					      </td>
           					    </tr>
           					  </table>
           					</TD>
        				  </TR>
        				</table>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigSystemMotion" value="Save">
        				<span>&nbsp;</span>
        				<INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onclick="save_setting();">
        				<span>&nbsp;&nbsp;</span>
        				<INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="reload();">
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
        <table cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
      		<td id="help_text">
        	  <span id="sHelpInfo">
        	    <b>Helpful Hints..</b><br><br>
        		<b>Sensitivity</b><br>Set the sensitivity of camera to trigger motion detection. High sensitivity makes the motions easier to be detected.
        		<br><br>
        		<b>Percentage</b><br>Adjusting the percentage allows you to set a requirement on how much of the motion window must be filled by movement. Example: If you set this to 50%, then the selected window must be half filled by a moving object before it triggers motion detection.
        		<br><br>
        		<b>Draw motion area</b><br>Drag your mouse to add motion detection range.
				<br><br>
				<b>Erase motion area</b>Drag your mouse to erase motion detection range.
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
