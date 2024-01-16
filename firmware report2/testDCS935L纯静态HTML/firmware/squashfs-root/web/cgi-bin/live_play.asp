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
var MJPEG_Res=decodeBase64("<% getVideoProfile2Info(Resolution); %>");
var MPEG4_Res=decodeBase64("<% getVideoProfile1Info(Resolution); %>");
var H264_Res=decodeBase64("<% getVideoProfile0Info(Resolution); %>");
var AudioCodec=decodeBase64("<% getAudioProfile0Info(EncodeFormat); %>");
var DirectshowEnable=decodeBase64("<% getCamSystemInfo(DirectShow); %>");
var authorization=decodeBase64("<% getAuthorization(fake); %>");
var group=decodeBase64("<% getGroup(); %>");
var Version=decodeBase64("<% getActiveXInfo(Version); %>");
var Clsid=decodeBase64("<% getActiveXInfo(Clsid); %>"); 
var Cabname=decodeBase64("<% getActiveXInfo(Cabname); %>");
var Cabname64=decodeBase64("<% getActiveXInfo(Cabname64); %>");
var DefaultLanguage=decodeBase64("<% getCamSystemInfo(Language); %>");
var Browser = CheckBrower();
var profile = parseInt(getWebQuery("profile", "5"), 10);
var g_usingJava = parseInt(getWebQuery("java", "0"), 10);
var g_usingServerpush = parseInt(getWebQuery("serverpush", "0"), 10);
var g_activex = 0;
var g_FirstView = 1;
var g_isNeedFocus = 0;
var protocol = document.location.protocol.toLowerCase();
var g_nRecordingFlag = 0;

function SetResolution(w, h)
{
	//alert("SetResolution w:" + w + " h:" + h);
	g_activex.width = w;
	g_activex.height = h;
	if (parent)
	{
		parent.resetLiveSize(w, h);
		if (g_FirstView)
		{
			g_FirstView = 0;
			//set zoom fit
			//setTimeout("parent.zoomMode(5)", 500);
		}
	}
	if (g_isNeedFocus)
	{
		window.location.replace("#alive_view");
		g_isNeedFocus = 0;
	}
}
function GetOcxMaxWidth()
{
	var widthFree = parseInt(top.window.document.body.offsetWidth, 10) - 130 - 38 - 10;
	
	if (widthFree <= 0)
	{
		widthFree = 1;
	}
	return widthFree;
}
function GetOcxMaxHeight()
{
	var browserHeight;

	if (top.window.innerHeight == undefined)
	{
		browserHeight = top.window.document.documentElement.clientHeight;
	}
	else
	{
		browserHeight = parseInt(top.window.innerHeight, 10);
	}

	var heightFree = browserHeight - parent.parent.getTopUseHeight() - parent.getTopUseHeight();
	if (heightFree <= 0)
	{
		heightFree = 1;
	}
	g_isNeedFocus=1;
	return heightFree;
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
function zoom(rate)
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
		g_activex.zoom(rate*100);
	}
	else
	{
		var live_obj = getLiveObj();
		live_obj.zoom(rate*100);
	}
}
function zoomMode(mode)
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
		g_activex.SetZoom(mode);
	}
	else
	{
		var live_obj = getLiveObj();
		if (mode == 5)
		{
			var freeWidth = GetOcxMaxWidth();
			live_obj.SetZoomFit(5, freeWidth);
		}
		else if (mode == 6)
		{
			var freeHeight = GetOcxMaxHeight();
			live_obj.SetZoomFit(6, freeHeight);
			setTimeout("window.location.replace('#alive_view');", 500);
			g_isNeedFocus=0;
		}
		else if (mode == 4)
		{
			live_obj.SetFullScreen(1);
		}
		else
		{
			live_obj.SetZoom(mode);
		}
	}
}
function waitActiveXInstalled()
{
	if (document.getElementById("ucx") != null)
	{
		if (document.getElementById("ucx").object != null)
		{
			//document.location.reload();
			ActiveXGo();
			if (parent)
				parent.PlugInStatus(1);
			return;
		}
	}
	setTimeout("waitActiveXInstalled();", 2000);
}
function ActiveXGo()
{    
    g_activex = document.ucx;
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
	if (protocol == "https:")
	{
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "443";
		g_activex.SSLEnable(1);
	}
	else
	{
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "80";
		g_activex.SSLEnable(0);
	}
	g_activex.RemoteHost = document.location.hostname;	
	g_activex.RemotePort = parseInt(remote_port, 10);
	var userAndPwd = decodeBase64(authorization).split(":");
	if (userAndPwd.length == 2)
	{
		var uid = userAndPwd[0];
		var pwd = userAndPwd[1];
		g_activex.UserName = uid;
		g_activex.Password = pwd;
	}
	else
	{	
		g_activex.AccountCode = authorization;
	}
	g_activex.SetLanguage(langIdx);

	if (DirectshowEnable == "1")
		g_activex.SetDirectShow(1);
	else
		g_activex.SetDirectShow(0);
		
	//Play Video
	//h264
	if(profile == 5)
	{
		g_activex.PlayVideo(2);//h264
	}
	//mpeg4 or user stream
	else if (profile == 0)
	{
		if (UserStream == "1")
		{
			g_activex.PlayVideo(3);
		}
		else
			g_activex.PlayVideo(0);
	}
	//mjpeg
	else 
	{
		g_activex.PlayVideo(profile);
	}
	//Play Audio
	if (parent)
	{
		var turnon_audio = getCookie("turnon_audio");
		if (turnon_audio == null || turnon_audio == "1")
			parent.SubmitAudioOn();
	}
}
function setUCXSize(uwidth,uheight)
{
	//alert("setUCXSize w:" + uwidth + " h:" + uheight);
	if (uwidth <= 0)
		uwidth = 1;
	if (uheight <= 0)
		uheight = 1;
	var appletFrame = document.getElementById? document.getElementById('div_object'): document.all? document.all['div_object']: null;
	appletFrame.style.width = uwidth;
	appletFrame.style.height = uheight;	
	appletFrame.focus();
	getLiveObj().width = uwidth;
	getLiveObj().height = uheight;
	
	if (parent)
	{
		parent.resetLiveSize(uwidth, uheight);
		//set zoom fit
		if (g_FirstView)
		{
			g_FirstView = 0;
			//setTimeout("parent.zoomMode(5)", 5000);
		}
	}
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
			setTimeout('makeRequestByGet("/cgi/' + group + '/wgetheader.cgi", getheader_callback);', 100);
        }
    }
}
function initViewer()
{
	//IE
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
		//set activex content
		var divObj = document.getElementById("div_object");
		var live_view = "";
		
		if (checkBrowserVersion() == 64)
		{
			live_view = "<object id=\"ucx\" name=\"ucx\" width=\"640\" height=\"480\"" +  
				  		" style=\"visibility:visible;\" align=\"middle\" title=\"ActiveX Streaming Client\"" +
				  		" classid=\"CLSID:" + Clsid + "\"" +
				  		" CODEBASE=\"" + Cabname64 + "#Version=" + Version +"\">" +
				  		"<br> <b>ActiveX is not installed.</b></object>";
		}
		else
		{
			live_view = "<object id=\"ucx\" name=\"ucx\" width=\"640\" height=\"480\"" +  
				  		" style=\"visibility:visible;\" align=\"middle\" title=\"ActiveX Streaming Client\"" +
				  		" classid=\"CLSID:" + Clsid + "\"" +
				  		" CODEBASE=\"" + Cabname + "#Version=" + Version +"\">" +
				  		"<br> <b>ActiveX is not installed.</b></object>";
		}
			
		document.body.style.display = "";
		divObj.innerHTML = live_view;
		bActiveXGo=1;
		makeRequestByGet("/cgi/" + group + "/wgetheader.cgi", getheader_callback);
	}
	else if (g_usingServerpush == 1)
	{
		var divObj = document.getElementById("div_object");
		var live_view = "<img src = \"\/cgi\/mjpg\/mjpg.cgi\">";
		divObj.innerHTML = live_view;
		if (parent)
		{
			var res = MJPEG_Res.split("x");
			parent.resetLiveSize(res[0], res[1]);
		}
	}
	else
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
		else if (DefaultLanguage == "de")
			langIdx = 3;
		else if (DefaultLanguage == "fr")
			langIdx = 4;
		else if (DefaultLanguage == "es")
			langIdx = 5;		
		else if (DefaultLanguage == "it")
			langIdx = 6;
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
		live_view = "<object \
  	 	 			classid = 'clsid:CAFEEFAC-0017-0000-FFFF-ABCDEFFEDCBA' \
  	 	 			width = '100%' height = '100%' id='ucx_obj' name='ucx_obj'> \
  	 	 			<param name = 'code' value = 'org.fiti.camera.viewer.UltraCam'> \
  	 	 			<param name = 'archive' value = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' > \
  	 	 			<param name = 'name' value = 'ucx' > \
  	 	 			<param name = 'id' value = 'ucx' > \
  	 	 			<param name = 'type' value = 'application\/x-java-applet'> \
  	 	 			<param name = 'mode' value='0' > \
  	 	 			<param name = 'scriptable' value = 'true'> \
  	 	 			<param name = 'mayscript' value='false'> \
  	 	 			<comment> \
					<embed \
  	 	         	type = 'application\/x-java-applet' \
  	 	         	code = 'org.fiti.camera.viewer.UltraCam' \
  	 	         	archive = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' \
  	 	         	name = 'ucx' \
  	 	         	id = 'ucx' \
  	 	         	width = '100%' \
  	 	         	height = '100%' \
  	 	         	mode ='0'  \
  	 	         	scriptable = 'true' \
			    	mayscript ='false' \
					<\/embed> \
  	 	 			<\/comment> \
					<\/object> \
					";
		divObj.innerHTML = live_view;
		//divObj.style.height = res[1];
		//divObj.style.width = res[0];
		divObj.style.height = "480";
		divObj.style.width = "640";
		divObj.focus();
		bJavaGo=1
		makeRequestByGet("/cgi/" + group + "/wgetheader.cgi", getheader_callback);
	}
}
function waitJavaInstalled()
{
	var live_obj = getLiveObj();
	if (live_obj == null)
		setTimeout("waitJavaInstalled();", 500);
	else
	{
		initJava();
		if (parent)
			parent.PlugInStatus(1);
	}
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
		//h264 - mp4
		if(profile == 5)
		{
			live_obj.set_video_type("2");
			//using aac
			live_obj.set_audio_type("3");
			//mp4
			live_obj.SetRecType("1");
		}
		//mjpeg - avi
		else if (profile == 1)
		{
			live_obj.set_video_type("0");
			//using mu-law
			live_obj.set_audio_type("1");
			//avi
			live_obj.SetRecType("0");
		}
		
		live_obj.Play();
		if (parent)
		{
			var turnon_audio = getCookie("turnon_audio");
			if (turnon_audio == null || turnon_audio == "1")
				setTimeout("parent.SubmitAudioOn();", 1000);
			else
				setTimeout("parent.SubmitAudioOff();", 1000);
		}
	}
}
function init() {
    initViewer();
}
function SubmitAudioOn()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
		//ActiveX liveview always play mu-law
		var audioProfile = 1;
		g_activex.PlayAudio(audioProfile);
	}
	else
	{
		//java play aac because of record h264.
		var live_obj = getLiveObj();
		if (live_obj)
			live_obj.PlayAudio();
	}
}
function SubmitAudioOff()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	g_activex.StopAudio();
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
			live_obj.StopAudio();
	}
}
function SubmitTalkOn()
{
	var ret = -5;
    if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	ret = g_activex.TalkOn();
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
			ret = live_obj.TalkOn();
	}
	return ret;
}
function SubmitTalkOff()
{
    if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	g_activex.TalkOff();
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
			live_obj.TalkOff();
	}
}
function obj_getRecStatus()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
		if (parent)
		{
			parent.putRecStatus(g_activex.RecStatus);
		}
		if (g_nRecordingFlag)
			setTimeout("obj_getRecStatus();", 500);
    }
    else
    {
    	var live_obj = getLiveObj();
		if (live_obj)
		{
			if (parent)
			{
				parent.putRecStatus(live_obj.GetJavaRecordStatus());
			}
			if (g_nRecordingFlag)
				setTimeout("obj_getRecStatus();", 500);
		}
    }
}
var wholepath="";
function addTrailSlash(s)
{
	if (s.substring(s.length-1,s.length) != "\\")
		s=s+"\\";
    return s;
}
function browse()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	if((t =  g_activex.OpenFolder(filepath))!= "")
    	{
    		filepath = addTrailSlash(t);
    	}
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.OpenFolder();
		}
	}
}
function addZero(str)
{
	if (parseInt(str, 10) < 10)
		str = "0" + parseInt(str, 10).toString();
	return str;
}
var filepath = "";
var cntRecording = 0;
function doRecordingOn(recformat)
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	//if(filepath == "")
		//{       
		//	browse();
		//	if(filepath == "")
        //	{
		//		return false;
		//	}
		//}
    	//var fileDate=new Date();
    	//var filename = ""
    	//cntRecording++;
        //if(cntRecording>30000)
        //	cntRecording=1;

    	//filename = filename +(fileDate.getFullYear())+ (addZero((fileDate.getMonth()+ 1).toString()))+addZero(fileDate.getDate().toString())+"_"+addZero(fileDate.getHours().toString())+ addZero(fileDate.getMinutes().toString()) + addZero(fileDate.getSeconds().toString())+ "_" + cntRecording;
		//if (recformat == 0)
		//	filename += ".avi";
		//else
		//	filename += ".mp4";
		//wholepath = filepath+filename;
    	//g_activex.RecStart(recformat, wholepath);
    	g_activex.SetRecType(recformat);
    	g_activex.RecStart();
    	g_nRecordingFlag = 1;
		setTimeout("obj_getRecStatus();", 500);
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.RecStart();
			g_nRecordingFlag = 1;
			setTimeout("obj_getRecStatus();", 500);
		}
	}

	
    return true;
}
function doRecordingOff()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	g_activex.RecStop();
    	g_nRecordingFlag = 0;
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.RecStop();
			g_nRecordingFlag = 0;
		}
	}
}
function doSnapshot()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	//if(filepath == "")
		//{       
		//	browse();
		//	if(filepath == "")
        //	{
		//		return "";
		//	}
		//}
    	//g_activex.SnapFileName = filepath;
    	//g_activex.SnapVideo();
    	var path = g_activex.snapshot();
    	g_activex.OpenSnapshot(path);
    	return path;
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			var path = live_obj.snapshot();
			live_obj.OpenSnapshot(path);
			return path;
		}
	}
	
    return "";
}
function doIROn()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	g_activex.set_night_mode(1);
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.set_night_mode(1);
		}
	}
}
function doIROff()
{
	if (Browser.search("IE") != -1 && g_usingJava != 1)
	{
    	g_activex.set_night_mode(0);
    }
    else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.set_night_mode(0);
		}
	}
}
function RestartStream(profileID, java)
{
	if (java == 0)
	{
		if (g_activex)
		{
			g_activex.StopVideo();
			if(profileID == 5)
				g_activex.PlayVideo(2);
			else if (profileID == 0)
				g_activex.PlayVideo(3);
			else
				g_activex.PlayVideo(1);
		}
	}
	else
	{
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.Stop();
			//h264 - mp4
			if(profileID == 5)
			{
				live_obj.set_video_type("2");
				//using aac
				live_obj.set_audio_type("3");
				//mp4
				live_obj.SetRecType("1");
			}
			//mjpeg - avi
			else if (profileID == 1)
			{
				live_obj.set_video_type("0");
				//using mu-law
				live_obj.set_audio_type("1");
				//avi
				live_obj.SetRecType("0");
			}
		
			live_obj.Play();
		}
	}
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="text-align:center; line-height: 100%; vertical-align: middle">
  <table width="100%" height="100%" bgcolor="#FFFFFF" style="text-align: center; line-height: 100%; vertical-align: middle">
    <tr>
      <td>
        <a name="alive_view"></a>
        <div id="div_object" name="div_object" style="background-color:#FFFFFF;"></div>
      </td>
    </tr>
  </table>
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
