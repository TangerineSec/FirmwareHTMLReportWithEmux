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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_advanced.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_nFirstLoadIfData=1;
var g_nSaving=0;
var g_token = getWebQuery("token", "");
function DoSumitAdmin()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var auth_decode = decodeBase64(iffun("authorization"));
	var account = auth_decode.split(":"); 

  	if ((document.getElementById("OldPassword").value == account[1]) && (document.getElementById("NewPassword").value == document.getElementById("RetypePassword").value))
  	{
		if (CheckUserpass(document.getElementById("NewPassword").value)) 
		{
        	alert(pop_msg[PMSG_PWD_INCORRECT]);
     	} 
     	else 
     	{
     		if (parent)
				parent.blockUI(true, item_name[I_SAVING], 1);
			g_nSaving = 1;
        	//do modify pwd
        	var params = "action=update&grp=admin&user=admin&pwd=" + encodeURIComponent(document.getElementById("NewPassword").value);
			var token=calToken(iffun("Token5"), iffun("Token6"), iffun("Token7"), iffun("Token8"));
			makeRequest2("/cgi/admin/wpwdgrp.cgi", params, g_token + "@" + token, modifyAdminCallback);
     	}
  	} 
  	else 
  	{
		if (document.getElementById("OldPassword").value != account[1])
	        alert(pop_msg[PMSG_PWD_INCORRECT]);
     	else
     		alert(pop_msg[PMSG_PWD_RETYPE_INCORRECT]);
  	}
}
function DoSumitServer_callback(http_request)
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
function resetAdminSetting()
{
	document.getElementById("OldPassword").value = "";
	document.getElementById("NewPassword").value = "";
	document.getElementById("RetypePassword").value = "";
}
function DoSumitServer()
{
	if (CheckSrvname(document.getElementById("input_camera_name").value))
	{
		document.getElementById("input_camera_name").select();
   		alert(pop_msg[PMSG_CAMERA_NAME_INVALID]);
    	return;
  	}
  	var url = "/cgi/admin/serverSetting.cgi";
  	var params = "";
  	
  	params += "CameraName=" + encodeURIComponent(document.getElementById("input_camera_name").value);
  	//params += "&OSDText=" + encodeURIComponent(document.getElementById("input_camera_name").value);
  	
  	if (document.getElementsByName("radio_led_control")[0].checked)
  		params += "&IndicatedLED=1";
  	else
  		params += "&IndicatedLED=0";
  	if (document.getElementsByName("radio_snapshot_auth")[0].checked)
  		params += "&SnapshotAuthentication=1";
  	else
  		params += "&SnapshotAuthentication=0";	
	if (document.getElementsByName("radio_osd_time")[0].checked)
	{
  		params += "&IncludeDateTime=1";
  		params += "&ChColor=" + document.getElementById("select_osd_color").value;
  		/*
  		if (CheckOSDText(document.getElementById("input_osd_text").value))
  		{
  			document.getElementById("input_osd_text").select();
   			alert("only support A-F, a-f, 0-9 . _ -");
    		return;
  		}
  		params += "&OSDText=" + document.getElementById("input_osd_text").value;
  		*/
  	}
  	else
  		params += "&IncludeDateTime=0";
  	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	g_nSaving = 1;
  	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, DoSumitServer_callback);

}
function DoSumitAdd()
{	
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var usersList = iffun("usersList");
	
	if (usersList.length >= 10)
	{
		alert(pop_msg[PMSG_MAX_USER_EXCEED]);
		return;
	}
	if (CheckUsername(document.getElementById("UserName").value))
	{
		alert(pop_msg[PMSG_USER_NAME_INCORRECT]);
	}
	else
	{
		if (document.getElementById("UserName").value == "admin")
		{
			alert(pop_msg[PMSG_USER_NAME_INCORRECT]);
			return;
		}
     	if (CheckUserpass(document.getElementById("UserPassword").value)) 
     	{
     		alert(pop_msg[PMSG_PWD_INCORRECT]);
     	} 
     	else 
     	{
     		if (document.getElementById("UserPassword").value == document.getElementById("ChkPassword").value)
        	{
          		//do add user
          		if (parent)
					parent.blockUI(true, item_name[I_SAVING], 1);
				g_nSaving = 1;
          		var params = "action=update&grp=users&user=" + encodeURIComponent(document.getElementById("UserName").value) + "&pwd=" + encodeURIComponent(document.getElementById("UserPassword").value);
				var token=calToken(iffun("Token5"), iffun("Token6"), iffun("Token7"), iffun("Token8"));
				makeRequest2("/cgi/admin/wpwdgrp.cgi", params, g_token + "@" + token, addUserCallback);
        	}
        	else
        	{
        		alert(pop_msg[PMSG_PWD_RETYPE_INCORRECT]);
        	}
     	}
  	}
}
function resetDefaultConfig()
{
	document.getElementById("if_data").contentWindow.document.location.reload();
}
function modifyAdminCallback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	makeRequest("/advanced_data.asp?" + g_token, null, checkAuthCallback);
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function checkAuthCallback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        }else {
            alert(pop_msg[PMSG_INVALID_ACCOUNT_OR_PWD]);
            top.location.href = "/401.html";
        }
    }
}
function addUserCallback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function ModifyUser(userid)
{
	if (confirm(pop_msg[PMSG_CLICK_TO_MODIFY_USER]))
	{
		var token = Math.floor(Math.random()*(200)+1);
		murl = "account.asp?user="+userid + "&token=" + token;
		window.open(murl,"", 'width=450,height=300,scrollbars=no,resizable=no');
	}
}
function DeleteUser(userid)
{
	//do delete user
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	g_nSaving = 1;
	var params = "action=remove&grp=users&user=" + encodeURIComponent(decodeBase64(userid));
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token5"), iffun("Token6"), iffun("Token7"), iffun("Token8"));
	makeRequest2("/cgi/admin/wpwdgrp.cgi", params, g_token + "@" + token, addUserCallback);
}
function resetAccountSetting()
{
	document.getElementById("UserName").value = "";
	document.getElementById("UserPassword").value = "";
	document.getElementById("ChkPassword").value = "";
}
function loadUser()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var usersList = iffun("usersList");
	
	var num = document.getElementById("table_user").rows.length;
	for (var i = 0; i < num ; i++)
		document.getElementById("table_user").deleteRow(-1);
	for (var i = 0; i < usersList.length; i++)
	{
		var num = document.getElementById("table_user").rows.length;
 		var Tr = document.getElementById("table_user").insertRow(num);
 		Td = Tr.insertCell(Tr.cells.length);
 		Td.width="1";
 		Td.innerHTML = "";
 		Td = Tr.insertCell(Tr.cells.length);
 		Td.width="45";
 		Td.innerHTML = "<span>" + (i + 1).toString() + "</span>";
 		Td = Tr.insertCell(Tr.cells.length);
 		Td.width="312";
 		Td.innerHTML = "<span id='username" + (i + 1).toString() + "'></span>";
 		Td = Tr.insertCell(Tr.cells.length);
 		Td.width="36";
		Td.innerHTML = "<A href=\"javascript:ModifyUser('" + usersList[i] + "')\"><IMG src=\"img/Edit.jpg\" border=0></A>";
		Td = Tr.insertCell(Tr.cells.length);
		Td.width="49";
		Td.innerHTML = "<A href=\"javascript:DeleteUser('" + usersList[i] + "')\"><IMG src=\"img/Trash.jpg\" border=0></A>";
	}
	
	for (var i = 0; i < usersList.length; i++)
	{
		setText(document.getElementById("username"+ (i + 1).toString()), decodeBase64(usersList[i]));
	}
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_ADMIN]);
	setText(document.getElementById("sAdminPWDSetting"), item_name[I_ADMIN_PWD_SETTING]);
	setText(document.getElementById("sOldPWD"), item_name[I_OLD_PWD]);
	setText(document.getElementById("sNewPWD"), item_name[I_NEW_PWD]);
	setText(document.getElementById("sRetypePWD"), item_name[I_RETYPE_PWD]);
	setText(document.getElementById("sServerSetting"), item_name[I_SERVER_SETTING]);
	setText(document.getElementById("sCameraName"), item_name[I_CAMERA_NAME]);
	setText(document.getElementById("sLEDControl"), item_name[I_LED_CONTROL]);
	setText(document.getElementById("sNormal"), item_name[I_NORMAL]);
	setText(document.getElementById("sOff"), item_name[I_OFF]);
	setText(document.getElementById("sSnapshotURL"), item_name[I_SNAPSHOT_URL_AUTH]);
	setText(document.getElementById("sEnable"), item_name[I_ENABLE]);
	setText(document.getElementById("sDisable"), item_name[I_DISABLE]);
	setText(document.getElementById("sOSDTime"), item_name[I_OSD_TIME]);
	setText(document.getElementById("sEnable2"), item_name[I_ENABLE]);
	setText(document.getElementById("sDisable2"), item_name[I_DISABLE]);
	setText(document.getElementById("sColor"), item_name[I_COLOR]);
	setText(document.getElementById("sAddUser"), item_name[I_ADD_USER_ACCOUNT]);
	setText(document.getElementById("sUserName"), item_name[I_USER_NAME]);
	setText(document.getElementById("sPWD"), item_name[I_PWD]);
	setText(document.getElementById("sRetypePWD2"), item_name[I_RETYPE_PWD]);
	setText(document.getElementById("sUserList"), item_name[I_USER_LIST]);
	setText(document.getElementById("sNo"), item_name[I_NO]);
	setText(document.getElementById("sName"), item_name[I_NAME]);
	setText(document.getElementById("sModify"), item_name[I_MODIFY]);
	setText(document.getElementById("sDelete"), item_name[I_DELETE]);
	setText(document.getElementById("sPWDLengthDes"), item_name[I_PWD_LENGTH_DES]);
	setText(document.getElementById("sPWDLengthDes2"), item_name[I_PWD_LENGTH_DES]);
	setText(document.getElementById("sPWDLengthDes3"), item_name[I_PWD_LENGTH_DES]);
	setText(document.getElementById("sCameraNameLengthDes"), item_name[I_CAMERA_NAME_LENGTH_DES]);
	setText(document.getElementById("sUIDLengthDes"), item_name[I_UID_LENGTH_DES]);
	setText(document.getElementById("sUserMaxDes"), item_name[I_USER_MAX_DES]);
	document.getElementById("btnApply").value = item_name[I_APPLY];
	document.getElementById("btnCancel").value = item_name[I_CANCEL];
	document.getElementById("btnApply2").value = item_name[I_APPLY];
	document.getElementById("btnCancel2").value = item_name[I_CANCEL];
	document.getElementById("btnAdd").value = item_name[I_ADD];
	document.getElementById("btnCancel3").value = item_name[I_CANCEL];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_ADMIN_INFO];
	document.getElementById("sHelpInfo").innerHTML= des_item_name[D_HELP_INFO];
	
	for (var i = 0; i < document.getElementById("select_osd_color").length; i++)
	{
		document.getElementById("select_osd_color").options[i].text = option_content[O_COLOR_BLACK + i];
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
		var httpport = "80";
		if (location.protocol.toLowerCase() == "https:")
		{
			var iffun = document.getElementById("if_data").contentWindow.getConfig;
			if (document.location.hostname == iffun("IP") || document.location.hostname == "127.0.0.1")
			{
				httpport = decodeBase64("<% getHTTPInfo(Port)%>");
			}
			else
			{
				httpport = decodeBase64("<% getUPnPInfo(ExternHTTPPort); %>");
			}
			if (httpport != "80")
			{
				document.getElementById("aSnapshot_url").href = "http://" + document.location.hostname + ":" + httpport + "/cgi/jpg/image.cgi";
			}
			else
			{
				document.getElementById("aSnapshot_url").href = "http://" + document.location.hostname + "/cgi/jpg/image.cgi";
			}
		}
		else
		{
			if (document.location.port != "")
			{
				httpport = document.location.port.toString();
				document.getElementById("aSnapshot_url").href = "http://" + document.location.hostname + ":" + httpport + "/cgi/jpg/image.cgi";
			}
			else
			{
				httpport = "80";
				document.getElementById("aSnapshot_url").href = "http://" + document.location.hostname + "/cgi/jpg/image.cgi";
			}
		}
		setText(document.getElementById("aSnapshot_url"), "(" + document.getElementById("aSnapshot_url").href + ")");
		document.getElementById("select_osd_color").removeChild(document.getElementById("select_osd_color")[0]);
	}
	resetAdminSetting();
	resetAccountSetting();
	setConfig();
	onOSDTimeChanged();
	resizePage();
	g_showEffect = "fast";
}
function setConfig()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;

	document.getElementById("input_camera_name").value = iffun("CameraName");
	if (iffun("IndicatedLED") == "1")
		document.getElementsByName("radio_led_control")[0].checked = true;
	else
		document.getElementsByName("radio_led_control")[1].checked = true;
	if (iffun("SnapshotAuthentication") == "1")
		document.getElementsByName("radio_snapshot_auth")[0].checked = true;
	else
		document.getElementsByName("radio_snapshot_auth")[1].checked = true;
	if (iffun("IncludeDateTime") == "1")
		document.getElementsByName("radio_osd_time")[0].checked = true;
	else
		document.getElementsByName("radio_osd_time")[1].checked = true;
	document.getElementById("select_osd_color").value = iffun("OSDChColor");
	if (document.getElementById("select_osd_color").selectedIndex == -1)
		document.getElementById("select_osd_color").selectedIndex = 0;
	//document.getElementById("input_osd_text").value = iffun("OSDText");
	loadUser();
}
function onOSDTimeChanged()
{
	if (document.getElementsByName("radio_osd_time")[0].checked)
		$("#div_color_setting").show(g_showEffect, resizePage);
	else
		$("#div_color_setting").hide(g_showEffect, resizePage);
	//resizePage();	
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
        	var iffun = document.getElementById("if_data").contentWindow.getConfig;
        	parent.setProductName(iffun("CameraName"));
        	setTimeout("parent.blockUI(false, '', 0);", 1000);
        }
        else
        	window.location.reload();
	}
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'advanced_data.asp?' + g_token">
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
      					<h1><span id="sTitle">Admin</span></h1>
      					<span id="sTitleInfo">
      					  Here you can change the administrator's password and configure the server 
						  setting for your camera. You can also add, modify and/or delete the user 
						  account(s).
						</span>  
      				  </div>
      				  <div class="box">
        				<h2><span id="sAdminPWDSetting">admin password setting</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          				    <TD width="165"><span id="sOldPWD">Old Password</span></TD>
          					<TD>
          						&nbsp;<INPUT type="password" size=31 maxlength=31 id="OldPassword" value="">
          						&nbsp;<span style="color:red" id="sPWDLengthDes">31 characters maximum</span>
          					</TD>
        				  </TR>
        				  <TR>
        	  			    <TD><span id="sNewPWD">New Password</span></TD>
          					<TD>
          					  &nbsp;<INPUT type="password" size=31 maxlength=31 id="NewPassword" value="">
          					  &nbsp;<span style="color:red" id="sPWDLengthDes2">31 characters maximum</span>
          					</TD>
        				  </TR>
        				  <TR>
          				    <TD><span id="sRetypePWD">Retype Password</span></TD>
          					<TD>&nbsp;<INPUT type="password" size=31 maxlength=31 id="RetypePassword" value=""></TD>
        				  </TR>
        				  <TR>
          				    <TD></TD>
          					<TD>
            				  &nbsp;<INPUT id="btnApply" type="button" width="80" value=" Apply " onclick="DoSumitAdmin();">
            				  &nbsp;&nbsp;
            				  <INPUT id="btnCancel" type="button" width="80" value="Cancel" onClick="resetAdminSetting();">
          					</TD>
        				  </TR>
        				</table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sServerSetting">Server setting</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD width="165"><span id="sCameraName">Camera Name</span></TD>
          					<TD colspan=2>
          					  &nbsp;<INPUT type="text" size=30 maxlength=10 id="input_camera_name" name="input_camera_name" value="">
          					  &nbsp;<span style="color:red" id="sCameraNameLengthDes">10 characters maximum</span>
          					</TD>
        				  </TR>
        				  <TR>
          					<TD><span id="sLEDControl">LED Control</span></TD>
          					<TD colspan=2>
             				  <input type=radio name="radio_led_control" value=0><span id="sNormal">Normal</span> &nbsp;<input type=radio name="radio_led_control" value=1>
             				  <span id="sOff">Off</span>
          					</TD>
        				  </TR>
        				  <TR>
          				    <TD><span id="sSnapshotURL">Snapshot URL Authentication</span></TD>
          				    <TD colspan=2>
             				  <input type=radio name="radio_snapshot_auth" value=0><span id="sEnable">Enable</span> 
							  &nbsp;
							  <input type=radio name="radio_snapshot_auth" value=1 ><span id="sDisable">Disable</span> 
							  &nbsp;<a id="aSnapshot_url" target="_blank">(/cgi/jpg/image.cgi)</a>
          					</TD>
        				  </TR>
        				  <TR>
          					<TD nowrap><span id="sOSDTime">OSD Time</span></TD>
          					<TD colspan=2>
            				  <input type=radio name="radio_osd_time" value=1  onclick="onOSDTimeChanged()"><span id="sEnable2">Enable</span> 
							  &nbsp;
							  <input type=radio name="radio_osd_time" value=0 onclick="onOSDTimeChanged()"><span id="sDisable2">Disable</span>
          					</TD>
        				  </TR>
        				</table>
        				<div id="div_color_setting">
        				  <table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
        				    <TR style="display: none">
          				      <TD width="165"></TD>
          					  <TD colspan=2>&nbsp;<span id="sOSDText">Text</span>
            				    <input id="input_osd_text" type="text" maxlength="20" size="16">
          					  </TD>
        				    </TR>
        				    <TR>
          				      <TD width="165"></TD>
          					  <TD colspan=2>&nbsp;<span id="sColor">Color</span>
            				    <SELECT id="select_osd_color" size="1">
            				      <OPTION value="0">Black</OPTION>
            					  <OPTION value="16777215">White</OPTION>
            					  <OPTION value="16711680">Blue</OPTION>
            					  <OPTION value="65535">Yellow</OPTION>
            					  <OPTION value="255">Red</OPTION>
            					  <OPTION value="36095">Orange</OPTION>
            					  <OPTION value="16776960">Cyan</OPTION>
            					  <OPTION value="3309517">Gold</OPTION>
            				    </SELECT>
          					  </TD>
        				    </TR>
        				  </table>
        				</div>  
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
          				    <TD width="165"></TD>
          					<TD>
            				  &nbsp;<INPUT id="btnApply2" type="button" width="80" value=" Apply " onclick="DoSumitServer();">
            				  &nbsp;&nbsp;
            				  <INPUT id="btnCancel2" type="button" width="80" value="Cancel" onClick="init(true);">
          					</TD>
        				  </TR>
        				</table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sAddUser">ADD User Account</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <tr>
          				    <TD width="165"><span id="sUserName">User Name</span></td>
          					<td>
          					  &nbsp;<INPUT type="text" size=31 maxlength=31 id="UserName" name="UserName" value="">
          					  &nbsp;<span style="color:red" id="sUIDLengthDes">31 characters maximum</span>
          					</td>
        				  </tr>
        				  <tr>
          				    <td><span id="sPWD">Password</span></td>
          					<td>
          					  &nbsp;<INPUT type="password" size=31 maxlength=31 id="UserPassword" name="UserPassword" value="">
          					  &nbsp;<span style="color:red" id="sPWDLengthDes3">31 characters maximum</span>
          					</td>
        				  </tr>
        				  <tr>
          				    <td><span id="sRetypePWD2">Retype Password</span></td>
          					<td>&nbsp;<INPUT type="password" size=31 maxlength=31 id="ChkPassword" name="ChkPassword" value=""></td>
        				  </tr>
        				  <TR>
          					<TD></TD>
          					<TD>
            				  &nbsp;<INPUT id="btnAdd" type="button" width="80" value="   Add   " onclick="DoSumitAdd();">
            				  &nbsp;&nbsp;
            				  <INPUT id="btnCancel3" type="button" width="80" value="Cancel" onClick="resetAccountSetting();">
          					</TD>
        				  </TR>
        				  <TR>
        				    		<TD></TD>
        				    		<TD>
        				    		  &nbsp;<span style="color:red" id="sUserMaxDes">10 users maximum</span>
        				    		</TD>
        				            </TR>
        				</table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sUserList">User List</span></h2>
        				<table cellSpacing=0 cellPadding=0 width=442 border=0>
        				  <TR style="BACKGROUND: #c0cfff">
          				    <TD width=1>&nbsp;</TD>
          					<TD width=45><span id="sNo">no.</span></TD>
          					<TD width=312><span id="sName">name</span></TD>
          					<TD width=36><span id="sModify">modify</span></TD>
          					<TD width=49 align=center><span id="sDelete">delete</span></TD>
        				  </TR>
        				</table>
        				<table cellSpacing=0 cellPadding=0 width=442 border=0 id="table_user">
        				</table>
      				  </div>
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
        	    <br><br>For security reasons, it is recommended that you change the 
			    Password for the Administrator accounts. Be sure to write down the new 
			    Login Names and Passwords to avoid having to reset the camera in the 
			    event that they are forgotten.
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
