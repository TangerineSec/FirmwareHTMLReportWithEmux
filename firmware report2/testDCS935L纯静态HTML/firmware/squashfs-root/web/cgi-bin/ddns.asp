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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_ddns.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_nFirstLoadIfData = 1;
var g_showEffect=0;
var g_token = getWebQuery("token", "");
var DDNSEnable=decodeBase64("<% getDDNSInfo(Enable); %>");
var DDNSProvider=decodeBase64("<% getDDNSInfo(PROVIDER); %>");
var DDNSProviderAddress=decodeBase64("<% getDDNSInfo(PROVIDER_ADDRESS); %>");
var DDNSHostName=decodeBase64("<% getDDNSInfo(HOST); %>");
var DDNSUserName=decodeBase64("<% getDDNSInfo(UID); %>");
var DDNSPassword=decodeBase64("<% getDDNSInfo(PWD_FAKE); %>");
var DDNSTimeout=decodeBase64("<% getDDNSInfo(Max_Interval); %>");
var pwd_dirty=0;
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
		loadText();
	setConfig();
	onProviderChanged();
	onDDNSEnable();
	resizePage();
	g_showEffect = "fast";
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_DDNS]);
	setText(document.getElementById("sDDNSSetting"), item_name[I_DDNS_SETTING]);
	setText(document.getElementById("sDDNSEnable"), item_name[I_DDNS_ENABLE]);
	setText(document.getElementById("sServerAddress"), item_name[I_SERVER_ADDRESS]);
	setText(document.getElementById("sHostName"), item_name[I_HOSTNAME]);
	setText(document.getElementById("sUID"), item_name[I_UID]);
	setText(document.getElementById("sPWD"), item_name[I_PWD]);
	setText(document.getElementById("sTimeout"), item_name[I_TIMEOUT]);
	setText(document.getElementById("sHours"), item_name[I_HOURS]);
	setText(document.getElementById("sStatus"), item_name[I_STATUS]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	document.getElementById("select_provider").options[0].text = option_content[O_SELECT_DDNS_SERVER];
}
function setConfig()
{
	if (DDNSEnable == "1")
	{
		document.getElementById("input_ddns_enable").checked = true;
		//set status
		var iffun = document.getElementById("if_data").contentWindow.getConfig;
		var DDNSUpdateStatus = iffun("DDNSUpdateStatus");
		var DDNSUpdateDateTime = iffun("DDNSUpdateDateTime");
		var Wan_IP = iffun("Wan_IP");
		if (DDNSUpdateStatus == "0")
			setText(document.getElementById("sConnectStatusValue"), item_name[I_STATUS_INITIALIZING]);
		else if (DDNSUpdateStatus == "2")
		{
			if (DDNSUpdateDateTime != "")
				setText(document.getElementById("sConnectStatusValue"), item_name[I_STATUS_UPDATED] + " (" + DDNSUpdateDateTime + ", " + DDNSProviderAddress + "/" + Wan_IP + ")");
			else
				setText(document.getElementById("sConnectStatusValue"), item_name[I_STATUS_UPDATED] + " (" + DDNSProviderAddress + "/" + Wan_IP + ")");
		}
		else
		{
			setText(document.getElementById("sConnectStatusValue"), item_name[I_STATUS_CONNECTION_FAILED]);
		}
	}
	else
	{
		document.getElementById("input_ddns_enable").checked = false;
		setText(document.getElementById("sConnectStatusValue"), item_name[I_STATUS_DISABLE]);
	}
	
	document.getElementById("select_provider").options[0].selected = 'selected';
	for (i = 1; i < document.getElementById("select_provider").options.length; i++)
	{
		if (document.getElementById("select_provider").options[i].text == DDNSProviderAddress)
		{
			document.getElementById("select_provider").options[i].selected = 'selected';
			break;
		}
	}
	document.getElementById("input_ddns_provider").value = DDNSProviderAddress;
	document.getElementById("input_ddns_host").value = DDNSHostName;
	document.getElementById("input_ddns_uid").value = DDNSUserName;
	document.getElementById("input_ddns_pwd").value = DDNSPassword;
	document.getElementById("input_ddns_timeout").value = (Math.floor(parseInt(DDNSTimeout, 10) / 60)).toString();
	pwd_dirty=0;
}
function onProviderChanged()
{
	var select_provider = document.getElementById("select_provider");
	if (select_provider.selectedIndex > 0)
	{
		document.getElementById("input_ddns_provider").value = select_provider.options[select_provider.selectedIndex].text;
		document.getElementById("input_ddns_provider").disabled = "disabled";
	}
	else if (select_provider.selectedIndex == 0)
	{
		document.getElementById("input_ddns_provider").disabled = "";
	}
}
function onDDNSEnable()
{
	if (document.getElementById("input_ddns_enable").checked)
	{
		$("#div_ddns_setting").show(g_showEffect, resizePage);
	}
	else
	{
		$("#div_ddns_setting").hide(g_showEffect, resizePage);
	}
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        	if (parent)
        	{
        		setTimeout("parent.blockUI(false, '', 0);", 5000);
        		setTimeout('document.getElementById("if_data").contentWindow.document.location.reload();', 5000);
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
	if (document.getElementById("input_ddns_enable").checked)
	{
     	if (document.getElementById("input_ddns_host").value == "")
     	{
        	document.getElementById("input_ddns_host").select();
        	alert(pop_msg[PMSG_INVALID_HOSTNAME]);
        	return;
     	}
     	if (document.getElementById("input_ddns_uid").value == "")
     	{
        	document.getElementById("input_ddns_uid").select();
        	alert(pop_msg[PMSG_INVALID_UID]);
        	return;
     	}
     	if (document.getElementById("input_ddns_pwd").value == "")
     	{
        	document.getElementById("input_ddns_pwd").select();
       	 	alert(pop_msg[PMSG_INVALID_PWD]);
        	return;
     	}
     	
     	if (checkIntRange(document.getElementById("input_ddns_timeout").value,65535,24) == 1)
     	{
        	document.getElementById("input_ddns_timeout").select();
        	alert(pop_msg[PMSG_INVALID_TIMEOUT_RANGE]);
        	return;
     	}
	}
	var url = "/cgi/admin/ddns.cgi";
	var params = "";
	if (document.getElementById("input_ddns_enable").checked)
	{
		params += "DDNSEnable=1";
		/*
		var select_provider = document.getElementById("select_provider");
		for (var i = 0; i < select_provider.length; i++)
		{
			if (select_provider.options[i].text == document.getElementById("input_ddns_provider").value)
			{
				params += "&DDNSPROVIDER=" + encodeURIComponent(select_provider.options[i].value);
			}
		}
		*/
		params += "&DDNSPROVIDER_ADDRESS=" + encodeURIComponent(document.getElementById("input_ddns_provider").value);
		params += "&DDNSHOST=" + encodeURIComponent(document.getElementById("input_ddns_host").value);
		params += "&DDNSUID=" + encodeURIComponent(document.getElementById("input_ddns_uid").value);
		if (pwd_dirty == 1)
		{
			params += "&DDNSPWD=" + encodeURIComponent(document.getElementById("input_ddns_pwd").value);
		}	
		params += "&DDNSTimeout=" + encodeURIComponent((parseInt(document.getElementById("input_ddns_timeout").value, 10) * 60).toString());
	}
	else
		params += "DDNSEnable=0";
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	//setText(document.getElementById("sConnectStatusValue"), item_name[I_STATUS_INITIALIZING]);
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function resetDefaultConfig()
{
	if (document.getElementById("input_ddns_enable").checked)
	{
		DDNSEnable = "1";
		/*
		var select_provider = document.getElementById("select_provider");
		for (var i = 0; i < select_provider.length; i++)
		{
			if (select_provider.options[i].text == document.getElementById("input_ddns_provider").value)
			{
				DDNSProvider = select_provider.options[i].value;
				break;
			}
		}
		*/
		DDNSProviderAddress = document.getElementById("input_ddns_provider").value;
		DDNSHostName = document.getElementById("input_ddns_host").value;
		DDNSUserName = document.getElementById("input_ddns_uid").value;
		DDNSPassword = document.getElementById("input_ddns_pwd").value;
		DDNSTimeout = (parseInt(document.getElementById("input_ddns_timeout").value, 10) * 60).toString();
	}
	else
		DDNSEnable = "0";

  	//setConfig();
	//onProviderChanged();
	//onDDNSEnable();
	//resizePage();
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'ddns_data.asp?' + g_token">
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
      				    <h1><span id="sTitle">Dynamic DNS</span></h1>
      				    <span id="sTitleInfo">
      					  The Dynamic DNS feature allows you to host a server (Web, FTP, Camera, 
						  etc...) using a domain name that you have purchased 
						  (www.whateveryournameis.com) from your broadband Internet Service 
						  Provider (ISP). Using a DDNS service, your friends can enter your host 
						  name to connect to your IP Camera regardless of your IP address.
						</span>
        				<div align=center>
        				  <span>&nbsp;</span>
        				  <p></p>
        				  <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        				</div>
      				  </div>
      				  <div class="box">
        				<h2><span id="sDDNSSetting">Dynamic DNS Settings</span></h2>
        				<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          				    <TD width="120px">
          				      <span id="sDDNSEnable">DDNS Enable</span>
          				    </TD>
          				    <TD>  
          				      <input type="checkbox" id="input_ddns_enable" onclick="onDDNSEnable()">
          				    </TD>
          				  </TR>
          				</table>
          				<div id="div_ddns_setting">    
            			  <table cellspacing=0 cellpadding=3 BORDER=0 class=maintext>
            				<tr>
            	  			  <td width="120">&nbsp;&nbsp;&nbsp;<span id="sServerAddress">Server Address</span></td>
              				  <td>
                				<INPUT type="text" size=32 maxlength=64 id="input_ddns_provider" name="input_ddns_provider" value="">
                				<span>&nbsp;&lt;&lt;&nbsp;</span>
                				<SELECT id="select_provider" size="1" onchange="onProviderChanged();">
                				  <OPTION selected>Select Dynamic DNS Server</OPTION>
                				  <OPTION value="4">www.dlinkddns.com</OPTION>
                				  <OPTION value="0">www.DynDNS.org</OPTION>
                				</SELECT>
              				  </td>
            				</tr>
            				<tr>
              				  <td>&nbsp;&nbsp;&nbsp;<span id="sHostName">Host Name</span></td>
              				  <td><INPUT type="text" size=32 maxlength=64 id="input_ddns_host" name="input_ddns_host" value=""></td>
            				</tr>
           	 				<tr>
              				  <td>&nbsp;&nbsp;&nbsp;<span id="sUID">User Name</span></td>
              				  <td><INPUT type="text" size=32 maxlength=64 id="input_ddns_uid" name="input_ddns_uid" value=""></td>
            				</tr>
            				<tr>
            	  			  <td>&nbsp;&nbsp;&nbsp;<span id="sPWD">Password</span></td>
              				  <td><INPUT type="password" size=32 maxlength=32 id="input_ddns_pwd" name="input_ddns_pwd" value="" onclick="this.value=''" onchange="pwd_dirty=1"></td>
            				</tr>
            				<tr>
              				  <td>&nbsp;&nbsp;&nbsp;<span id="sTimeout">Timeout</span></td>
              				  <td><INPUT type="text" size=32 id="input_ddns_timeout" name="input_ddns_timeout"> <span id="sHours">hours</span></td>
            				</tr>
            				<tr>
              				  <td>&nbsp;&nbsp;&nbsp;<span id="sStatus">Status</span></td>
              				  <td><span id="sConnectStatusValue"></span></td>
            				</tr>
            			  </table>
        				</div>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigSystemNetwork" value="Save">
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
        	  <br><br>Dynamic DNS is useful if you have a DSL or Cable service 
			  provider that changes your modem IP address periodically. This will 
			  allow you to assign a website domain name to your camera instead of 
			  connecting through an IP address.
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
