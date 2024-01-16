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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_ftp.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_nFirstLoadIfData = 1;
var g_token = getWebQuery("token", "");
//for video clip
var ServerAddr=decodeBase64("<% getEventServerFTPInfo(ServerAddr); %>");
var ServerPort=decodeBase64("<% getEventServerFTPInfo(ServerPort); %>");
var ServerUID=decodeBase64("<% getEventServerFTPInfo(UID); %>");
var ServerPWD=decodeBase64("<% getEventServerFTPInfo(PWD_FAKE); %>");
var ServerDIRPath=decodeBase64("<% getEventServerFTPInfo(DIRPath); %>");
var ServerPassive=decodeBase64("<% getEventServerFTPInfo(Passive); %>");
var Interval=decodeBase64("<% getEventServerFTPInfo(Interval); %>");
//for snapshot
var ServerAddr_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(ServerAddr); %>");
var ServerPort_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(ServerPort); %>");
var ServerUID_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(UID); %>");
var ServerPWD_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(PWD_FAKE); %>");
var ServerDIRPath_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(DIRPath); %>");
var ServerPassive_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(Passive); %>");
var Interval_snapshot=decodeBase64("<% getEventServerFTPSnapshotInfo(Interval); %>");
var pwd_dirty=0;
var pwd_dirty_snapshot=0;

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
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_FTP_TITLE]);
	setText(document.getElementById("sFTPTitleInfo_snapshot"), item_name[I_FTP_SERVER_SNAPSHOT]);
	setText(document.getElementById("sFTPTitleInfo"), item_name[I_FTP_SERVER]);
	setText(document.getElementById("sHostName"), item_name[I_HOSTNAME]);
	setText(document.getElementById("sPort"), item_name[I_PORT]);
	setText(document.getElementById("sUID"), item_name[I_UID]);
	setText(document.getElementById("sPWD"), item_name[I_PWD]);
	setText(document.getElementById("sPath"), item_name[I_PATH]);
	setText(document.getElementById("sDefaultPort"), item_name[I_DEFAULT_PORT]);
	setText(document.getElementById("sPassiveMode"), item_name[I_PASSIVE_MODE]);
	setText(document.getElementById("sYes"), item_name[I_YES]);
	setText(document.getElementById("sNo"), item_name[I_NO]);
	setText(document.getElementById("sHostName_snapshot"), item_name[I_HOSTNAME]);
	setText(document.getElementById("sPort_snapshot"), item_name[I_PORT]);
	setText(document.getElementById("sUID_snapshot"), item_name[I_UID]);
	setText(document.getElementById("sPWD_snapshot"), item_name[I_PWD]);
	setText(document.getElementById("sPath_snapshot"), item_name[I_PATH]);
	setText(document.getElementById("sDefaultPort_snapshot"), item_name[I_DEFAULT_PORT]);
	setText(document.getElementById("sPassiveMode_snapshot"), item_name[I_PASSIVE_MODE]);
	setText(document.getElementById("sYes_snapshot"), item_name[I_YES]);
	setText(document.getElementById("sNo_snapshot"), item_name[I_NO]);
	setText(document.getElementById("sTestTitle"), item_name[I_TEST_FTP_SERVER]);
	setText(document.getElementById("sTestTitle_snapshot"), item_name[I_TEST_FTP_SERVER_SNAPSHOT]);
	setText(document.getElementById("sInterval_snapshot"), item_name[I_INTERVAL]);
	setText(document.getElementById("sInterval"), item_name[I_INTERVAL]);
	setText(document.getElementById("sInterval_range_snapshot"), item_name[I_INTERVAL_SNAPSHOT_DES]);
	setText(document.getElementById("sInterval_range"), item_name[I_INTERVAL_VIDEOCLIP_DES]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_test").value = item_name[I_TEST];
	document.getElementById("btn_test_snapshot").value = item_name[I_TEST];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	document.getElementById("sTestTitleInfo").innerHTML = des_item_name[D_TEST_INFO];
	document.getElementById("sTestTitleInfo_snapshot").innerHTML = des_item_name[D_TEST_INFO];
}
function setConfig()
{
	//for video clip
	document.getElementById("input_ftp_server").value = ServerAddr;
	document.getElementById("input_ftp_port").value = ServerPort;
	document.getElementById("input_ftp_uid").value = ServerUID;
	document.getElementById("input_ftp_pwd").value = ServerPWD;
	document.getElementById("input_ftp_path").value = ServerDIRPath;
	document.getElementById("input_ftp_interval").value = Interval;
	if (ServerPassive == "1")
		document.getElementsByName("radio_ftp_mode")[0].checked = true;
	else
		document.getElementsByName("radio_ftp_mode")[1].checked = true;
	//for snapshot
	document.getElementById("input_ftp_server_snapshot").value = ServerAddr_snapshot;
	document.getElementById("input_ftp_port_snapshot").value = ServerPort_snapshot;
	document.getElementById("input_ftp_uid_snapshot").value = ServerUID_snapshot;
	document.getElementById("input_ftp_pwd_snapshot").value = ServerPWD_snapshot;
	document.getElementById("input_ftp_path_snapshot").value = ServerDIRPath_snapshot;
	document.getElementById("input_ftp_interval_snapshot").value = Interval_snapshot;
	if (ServerPassive_snapshot == "1")
		document.getElementsByName("radio_ftp_mode_snapshot")[0].checked = true;
	else
		document.getElementsByName("radio_ftp_mode_snapshot")[1].checked = true;
	pwd_dirty=0;
	pwd_dirty_snapshot=0;	
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
  	if (checkIntRange(document.getElementById("input_ftp_port_snapshot").value,65535,1) == 1)
  	{
     	document.getElementById("input_ftp_port_snapshot").select();
     	alert(pop_msg[PMSG_INVALID_PORT]);
     	return;
  	}
  	if (checkIntRange(document.getElementById("input_ftp_interval_snapshot").value,86400,10) == 1)
  	{
     	document.getElementById("input_ftp_interval_snapshot").select();
     	//alert(pop_msg[PMSG_INVALID_PORT]);
     	alert("invalid range");
     	return;
  	}
  	if (checkIntRange(document.getElementById("input_ftp_port").value,65535,1) == 1)
  	{
     	document.getElementById("input_ftp_port").select();
     	alert(pop_msg[PMSG_INVALID_PORT]);
     	return;
  	}
  	if (checkIntRange(document.getElementById("input_ftp_interval").value,86400,30) == 1)
  	{
     	document.getElementById("input_ftp_interval").select();
     	//alert(pop_msg[PMSG_INVALID_PORT]);
     	alert("invalid range");
     	return;
  	}

	var url = "/cgi/admin/ftp.cgi";
	var params = "";
	//for video clip
	params += "ServerAddr=" + encodeURIComponent(document.getElementById("input_ftp_server").value);
	params += "&ServerPort=" + encodeURIComponent(document.getElementById("input_ftp_port").value);
	params += "&UID=" + encodeURIComponent(document.getElementById("input_ftp_uid").value);
	if (pwd_dirty == 1)
		params += "&PWD=" + encodeURIComponent(document.getElementById("input_ftp_pwd").value);
	params += "&DIRPath=" + encodeURIComponent(document.getElementById("input_ftp_path").value);
	params += "&Interval=" + encodeURIComponent(document.getElementById("input_ftp_interval").value);
	if (document.getElementsByName("radio_ftp_mode")[0].checked)
		params += "&Passive=1"
	else if (document.getElementsByName("radio_ftp_mode")[1].checked)
		params += "&Passive=0";
	//for snapshot
	params += "&ServerAddr_S=" + encodeURIComponent(document.getElementById("input_ftp_server_snapshot").value);
	params += "&ServerPort_S=" + encodeURIComponent(document.getElementById("input_ftp_port_snapshot").value);
	params += "&UID_S=" + encodeURIComponent(document.getElementById("input_ftp_uid_snapshot").value);
	if (pwd_dirty_snapshot == 1)
		params += "&PWD_S=" + encodeURIComponent(document.getElementById("input_ftp_pwd_snapshot").value);
	params += "&DIRPath_S=" + encodeURIComponent(document.getElementById("input_ftp_path_snapshot").value);
	params += "&Interval_S=" + encodeURIComponent(document.getElementById("input_ftp_interval_snapshot").value);
	if (document.getElementsByName("radio_ftp_mode_snapshot")[0].checked)
		params += "&Passive_S=1"
	else if (document.getElementsByName("radio_ftp_mode_snapshot")[1].checked)
		params += "&Passive_S=0";
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function test_callback(http_request)
{
	if (http_request.readyState == 4) 
	{
		if (parent)
			setTimeout("parent.blockUI(false, '', 0);", 1000);
        if (http_request.status == 200) 
        {
        	if (http_request.responseText == "success\r\n")
        	{
        		//setTimeout("alert('Test FTP success');", 1050);
        		writeTestResult(pop_msg[PMSG_FTP_TEST_SUCCESS]);
        	}
        	else if (http_request.responseText == "write_failed\r\n")
        	{
        		//setTimeout("alert('Test FTP failure');", 1050);
        		writeTestResult(pop_msg[PMSG_FTP_TEST_FAILED]);
        	}
        	else if (http_request.responseText == "connect_failed\r\n")
        	{
        		//setTimeout("alert('Test FTP failure');", 1050);
        		writeTestResult(pop_msg[PMSG_FTP_TEST_FAILED]);
        	}
        }
        else 
        {
        	setTimeout("alert(pop_msg[PMSG_REQUEST_FAILED]);", 1050);
        }
    }
}
function test()
{
	var url = "/cgi/admin/testserv.cgi";
	var params = "targetserv=ftp";
	params += "&hostname=" + encodeURIComponent(document.getElementById("input_ftp_server").value);
	params += "&port=" + encodeURIComponent(document.getElementById("input_ftp_port").value);
	params += "&username=" + encodeURIComponent(document.getElementById("input_ftp_uid").value);
	if (pwd_dirty == 1)
		params += "&password=" + encodeURIComponent(document.getElementById("input_ftp_pwd").value);
	params += "&path=" + encodeURIComponent(document.getElementById("input_ftp_path").value);

	if (document.getElementsByName("radio_ftp_mode")[0].checked)
		params += "&passive=1";
	else if (document.getElementsByName("radio_ftp_mode")[1].checked)
		params += "&passive=0";
	
	if (parent)
		parent.blockUI(true, item_name[I_TEST], 1);
	makeRequest(url, params, test_callback);
}
function test_snapshot()
{
	var url = "/cgi/admin/testserv.cgi";
	var params = "targetserv=ftp";
	params += "&hostname=" + encodeURIComponent(document.getElementById("input_ftp_server_snapshot").value);
	params += "&port=" + encodeURIComponent(document.getElementById("input_ftp_port_snapshot").value);
	params += "&username=" + encodeURIComponent(document.getElementById("input_ftp_uid_snapshot").value);
	if (pwd_dirty_snapshot == 1)
		params += "&password=" + encodeURIComponent(document.getElementById("input_ftp_pwd_snapshot").value);
	params += "&path=" + encodeURIComponent(document.getElementById("input_ftp_path_snapshot").value);

	if (document.getElementsByName("radio_ftp_mode_snapshot")[0].checked)
		params += "&passive=1";
	else if (document.getElementsByName("radio_ftp_mode_snapshot")[1].checked)
		params += "&passive=0";
	
	params += "&testtype=snapshot";
	
	if (parent)
		parent.blockUI(true, item_name[I_TEST], 1);
	makeRequest(url, params, test_callback);
}
function resetDefaultConfig()
{
	//for video clip
	ServerAddr = document.getElementById("input_ftp_server").value;
	ServerPort = document.getElementById("input_ftp_port").value;
	ServerUID = document.getElementById("input_ftp_uid").value;
	ServerPWD = document.getElementById("input_ftp_pwd").value;
	ServerDIRPath = document.getElementById("input_ftp_path").value;
	Interval = document.getElementById("input_ftp_interval").value;
	if (document.getElementsByName("radio_ftp_mode")[0].checked)
		ServerPassive = "1";
	else if (document.getElementsByName("radio_ftp_mode")[1].checked)
		ServerPassive = "0";
	//for snapshot
	ServerAddr_snapshot = document.getElementById("input_ftp_server_snapshot").value;
	ServerPort_snapshot = document.getElementById("input_ftp_port_snapshot").value;
	ServerUID_snapshot = document.getElementById("input_ftp_uid_snapshot").value;
	ServerPWD_snapshot = document.getElementById("input_ftp_pwd_snapshot").value;
	ServerDIRPath_snapshot = document.getElementById("input_ftp_path_snapshot").value;
	Interval_snapshot = document.getElementById("input_ftp_interval_snapshot").value;
	if (document.getElementsByName("radio_ftp_mode_snapshot")[0].checked)
		ServerPassive_snapshot = "1";
	else if (document.getElementsByName("radio_ftp_mode_snapshot")[1].checked)
		ServerPassive_snapshot = "0";
		
	//setConfig();
	//resizePage();	
}
function writeTestResult(result)
{
	if (result != "")
	{
		document.getElementById("pTestResult").style.display = "";
		document.getElementById("sTestResult").style.display = "";
		setText(document.getElementById("sTestResult"), result);
	}
	else
	{
		document.getElementById("pTestResult").style.display = "none";
		document.getElementById("sTestResult").style.display = "none";
		setText(document.getElementById("sTestResult"), result);
	}
	resizePage();
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'ftp_data.asp?' + g_token">
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
      					<h1><span id="sTitle">FTP</span></h1>
      					<span id="sTitleInfo">
      					  In this section, you can configure the camera to send images to an FTP server. 
      					</span>  
        			    <p></p>
        			    <div align=center>
        			      <span>&nbsp;</span>
        			      <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        			    </div>
        			    <div align="left">
        			      <p id="pTestResult" style="display: none"></p>
        				  <span id="sTestResult" style="display: none; color:red"></span>
        			    </div>
      				  </div>
      				  <div class="box">
        				<h2><span id="sFTPTitleInfo_snapshot">FTP Server - Snapshot</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
           					<TD width="110px">&nbsp;<span id="sHostName_snapshot">Host Name</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					  <INPUT type="text" size=36 maxlength=64 id="input_ftp_server_snapshot" name="input_ftp_server_snapshot" value=""></TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sPort_snapshot">Port</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					  <INPUT type="text" size=36 id="input_ftp_port_snapshot" name="input_ftp_port_snapshot">
          					  <span id="sDefaultPort_snapshot">(Default is 21)</span>
          					</TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sUID_snapshot">User Name</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					  <INPUT type="text" size=36 maxlength=32 id="input_ftp_uid_snapshot" name="input_ftp_uid_snapshot" value="">
          					</TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sPWD_snapshot">Password</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					<INPUT type="password" size=36 maxlength=32 id="input_ftp_pwd_snapshot" name="input_ftp_pwd_snapshot" value="" onclick="this.value=''" onchange="pwd_dirty_snapshot=1"></TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sPath_snapshot">Path</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					<INPUT type="text" size=36 maxlength=64 id="input_ftp_path_snapshot" name="input_ftp_path_snapshot"></TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sInterval_snapshot">Interval</span></TD>
          				    <TD>
          				      <span>&nbsp;&nbsp;</span>
          				      <INPUT type="text" size=5 maxlength=5 id="input_ftp_interval_snapshot" name="input_ftp_interval_snapshot" value="">
          				      <span id="sInterval_range_snapshot">Seconds (Range : 10 to 86400 seconds)</span>
          				    </TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
          					<TD width="116px">&nbsp;<span id="sPassiveMode_snapshot">Passive Mode</span></TD>
          					<TD>
            				  <input type=radio name="radio_ftp_mode_snapshot"><span id="sYes_snapshot">Yes</span>
            				  <input type=radio name="radio_ftp_mode_snapshot"><span id="sNo_snapshot">No</span>
          					</TD>
        				  </TR>
        				</table>
      				  </div>
      				  <div class="box">
        				<h2><span id="sTestTitle_snapshot">Test FTP Server - SNAPSHOT</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD></TD>
          					<TD colspan=2>
          					  <span id="sTestTitleInfo_snapshot">
          					  	A JPEG file will be sent to the above FTP server for testing. <br>(File name: test_date_time.jpg)
							  </span>
							</TD>
          					<TD><p align=right><INPUT type="button" width="80" id="btn_test_snapshot" value=" Test " onclick="test_snapshot();"></p></TD>
        				  </TR>
        				</table>
      				  </div>
      				  <div class="box">
        				<h2><span id="sFTPTitleInfo">FTP Server - Video Clip</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
           					<TD width="110px">&nbsp;<span id="sHostName">Host Name</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					  <INPUT type="text" size=36 maxlength=64 id="input_ftp_server" name="input_ftp_server" value=""></TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sPort">Port</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					  <INPUT type="text" size=36 id="input_ftp_port" name="input_ftp_port">
          					  <span id="sDefaultPort">(Default is 21)</span>
          					</TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sUID">User Name</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					  <INPUT type="text" size=36 maxlength=32 id="input_ftp_uid" name="input_ftp_uid" value="">
          					</TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sPWD">Password</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					<INPUT type="password" size=36 maxlength=32 id="input_ftp_pwd" name="input_ftp_pwd" value="" onclick="this.value=''" onchange="pwd_dirty=1"></TD>
        				  </TR>
        				  <TR>
          					<TD>&nbsp;<span id="sPath">Path</span></TD>
          					<TD>
          					  <span>&nbsp;&nbsp;</span>
          					<INPUT type="text" size=36 maxlength=64 id="input_ftp_path" name="input_ftp_path"></TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sInterval">Interval</span></TD>
          				    <TD>
          				      <span>&nbsp;&nbsp;</span>
          				      <INPUT type="text" size=5 maxlength=5 id="input_ftp_interval" name="input_ftp_interval" value="">
          				      <span id="sInterval_range">Seconds (Range : 30 to 86400 seconds)</span>
          				    </TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
          					<TD width="116px">&nbsp;<span id="sPassiveMode">Passive Mode</span></TD>
          					<TD>
            				  <input type=radio name="radio_ftp_mode"><span id="sYes">Yes</span>
            				  <input type=radio name="radio_ftp_mode"><span id="sNo">No</span>
          					</TD>
        				  </TR>
        				</table>
      				  </div>
      				  <div class="box">
        				<h2><span id="sTestTitle">Test FTP Server - Video Clip</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD></TD>
          					<TD colspan=2>
          					  <span id="sTestTitleInfo">
          					  	A JPEG file will be sent to the above FTP server for testing. <br>(File name: test_date_time.jpg)
							  </span>
							</TD>
          					<TD><p align=right><INPUT type="button" width="80" id="btn_test" value=" Test " onclick="test();"></p></TD>
        				  </TR>
        				</table>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigSystemFTP" value=" Save ">
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
        		<br><br><b>Host Name</b>:
        		<br>This is the IP address of the FTP server that you will be connecting to.
        		<br><br><b>Port</b>: 
        		<br>The default port is 21. 
        		<br><br><b>User Name</b>: 
        		<br>The user name required for accessing the external FTP server. 
        		<br><br><b>Password</b>: 
        		<br>The password of the external FTP server. 
        		<br><br><b>Passive mode</b> - Enabling passive mode will allow access to 
				an external FTP server if your camera is behind a router protected by a 
				firewall.
          		<br><br><b>Test FTP server</b>
        		<br>An image file will be sent to the FTP server after you click <b>Test</b>.
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
