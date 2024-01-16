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
if (top != self)
	top.location = self.location;
var language = detectOSLanguage();
if (getCookie("language") != null)
{
	var cookieLanguage = getCookie("language");
	if (cookieLanguage == "en" || cookieLanguage == "sc" || cookieLanguage == "tc" || 
		cookieLanguage == "de" || cookieLanguage == "es" || cookieLanguage == "it" || cookieLanguage == "fr")
		language = cookieLanguage;
}
var expiresDate=new Date();expiresDate.setFullYear(2100,1,1);setCookie("language", language, expiresDate);	
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wizsetup3.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_showEffect=0;
var g_token = getWebQuery("token", "");
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var DDNSEnable=decodeBase64("<% getSWDDNSInfo(Enable); %>");
var DDNSProvider=decodeBase64("<% getSWDDNSInfo(PROVIDER); %>");
var DDNSProviderAddress=decodeBase64("<% getSWDDNSInfo(PROVIDER_ADDRESS); %>");
var DDNSHostName=decodeBase64("<% getSWDDNSInfo(HOST); %>");
var DDNSUserName=decodeBase64("<% getSWDDNSInfo(UID); %>");
var DDNSPassword=decodeBase64("<% getSWDDNSInfo(PWD); %>");
var DDNSTimeout=decodeBase64("<% getSWDDNSInfo(Max_Interval); %>");
var CameraName=decodeBase64("<% getCamSystemInfo(CameraName); %>");
function init()
{
	document.body.style.display = "";
	loadText();
	setConfig();
	onProviderChanged()
	onDDNSEnable();
	g_showEffect = "fast";
}
function loadText()
{
	document.title = item_name[I_DINK_CORPORATION];
	if (Wireless == "1")
		document.title += " | " + item_name[I_WIRELESS];
	document.title += " " + item_name[I_INTERNET_CAMERA];
	document.title += " | " + item_name[I_LIVE_VIDEO];
	setText(document.getElementById("sProduct"), item_name[I_PRODUCT]);
	setText(document.getElementById("sFWVersion"), item_name[I_FWVERSION]);
	setText(document.getElementById("sTitle"), item_name[I_TITLE]);
	setText(document.getElementById("sDDNSEnable"), item_name[I_DDNS_ENABLE]);
	setText(document.getElementById("sServerAddress"), item_name[I_SERVER_ADDRESS]);
	setText(document.getElementById("sHostName"), item_name[I_HOSTNAME]);
	setText(document.getElementById("sUID"), item_name[I_UID]);
	setText(document.getElementById("sPWD"), item_name[I_PWD]);
	setText(document.getElementById("sTimeout"), item_name[I_TIMEOUT]);
	setText(document.getElementById("sHours"), item_name[I_HOURS]);
	document.getElementById("btn_back").value = item_name[I_BACK];
	document.getElementById("btn_next").value = item_name[I_NEXT];
	document.getElementById("btn_cancel").value = item_name[I_CANCEL];
	document.getElementById("sCopyRight").innerHTML = des_item_name[D_COPYRIGHT];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_IFNO];
	document.getElementById("select_provider").options[0].text = option_content[O_SELECT_DDNS_SERVER];
}
function setConfig()
{
	//set cameraName
	setText(document.getElementById("sProduct_value"), CameraName);
	if (DDNSEnable == "1")
	{
		document.getElementById("input_ddns_enable").checked = true;
	}
	else
	{
		document.getElementById("input_ddns_enable").checked = false;
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

	var Version = decodeBase64("<% getHWInfo(Version); %>");
	var Build = decodeBase64("<% getHWInfo(Build); %>");
	var strBuild;
	
	if (parseInt(Build, 10) < 10)
		strBuild = "0" + Build;
	else
		strBuild = Build;
	
	var splitVersion = Version.split(".");
	if (splitVersion.length == 3)
	{
		if (parseInt(splitVersion[1], 10) < 10)
		{
			//setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + ".0" + splitVersion[1] + " b" + strBuild);
			setText(document.getElementById("sFWVersion_value"), splitVersion[0] + ".0" + splitVersion[1]);
		}
		else
		{
			//setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + "." + splitVersion[1] + " b" + strBuild);
			setText(document.getElementById("sFWVersion_value"), splitVersion[0] + "." + splitVersion[1]);
		}
	}
	else
	{
		//setText(document.getElementById("sFWVersion_value"), "v" + Version + " b" + strBuild);
		setText(document.getElementById("sFWVersion_value"), Version);
	}
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
		$("#div_ddns_setting").show(g_showEffect);
	}
	else
	{
		$("#div_ddns_setting").hide(g_showEffect);
	}
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	window.location.href='wizsetup4.asp?token=' + g_token;
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
	var url = "/cgi/admin/smartwizard.cgi";
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
		params += "&DDNSPWD=" + encodeURIComponent(document.getElementById("input_ddns_pwd").value);
		params += "&DDNSTimeout=" + encodeURIComponent((parseInt(document.getElementById("input_ddns_timeout").value, 10) * 60).toString());
	}
	else
		params += "DDNSEnable=0";
			
	params += "&action=ddns_setting";
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, save_setting_callback);
}
function ifDataOK()
{
	init();
}
</script>
</head>
<body topmargin="1" leftmargin="0" rightmargin="0" bgcolor="#757575" style="display: none" onload="document.getElementById('if_data').src = 'wizard_data.asp?' + g_token">
  <table id="tb_top" class="header_container" border="0" cellpadding="5" cellspacing="0" width="838" align="center">
    <tr>
      <td width="100%"><span id="sProduct">Product</span>: <a href="http://support.dlink.com/" target="_blank" style="color:white;text-decoration:none"><span id="sProduct_value"></span></a></td>
      <td align="right" nowrap></td>
      <td align="right" nowrap><span id="sFWVersion">Firmware version</span><span>:&nbsp;</span><span id="sFWVersion_value"></span>&nbsp;</td>
    </tr>
  </table>
  <div id="title_container">
    <table id="topnav_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
      <tr>
        <td align="center" valign="middle"><img src="img/title.gif"></td>
      </tr>
    </table>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" width="838" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">
    <tr>
      <td valign="top" height="520" align="center">
    	<table cellSpacing=0 cellPadding=0 border=0 width="600px">
    	  <tr>
      		<td valign="top" id="maincontent_container">
        	  <div id="id_menu">
        	    <br>
        	    <br>
        		<div id="id_ddns" style="display:"><br><br>
          		  <div id=box_header>
            		<h1 align="left"><span id="sTitle">step 2: Setup DDNS Settings</span></h1>
            		<div align="left">
            		<span id="sTitleInfo">
            		  If you have a Dynamic DNS account and would like your camera to 
					  update the IP address automatically, enable DDNS and enter your host 
					  information below. Click on the <b>Next</b> button to continue.<br><br>
					</span>
					</div>
            		<center>
              		  <table align="center">
              			<TR align="left">
                		  <TD width="520">
                		    <span>&nbsp;</span><span id="sDDNSEnable">DDNS Enable</span>
                		    <input type="checkbox" id="input_ddns_enable" onclick="onDDNSEnable()">
                		  </TD>
                		<TR align="left">
                		  <TD>    
                		    <div id="div_ddns_setting">
                  			  <table id="id_box_DDNS" cellspacing=0 cellpadding=3 BORDER=0 class=maintext>
                  			    <tr>
                    			  <td>&nbsp;&nbsp;&nbsp;<span id="sServerAddress">Server Address</span></td>
                    			  <td>
                      			    <INPUT type="text" size=32 maxlength=64 id="input_ddns_provider" name="input_ddns_provider" value="">
                      			    <span>&nbsp;&lt;&lt;&nbsp;</span>
                      			    <SELECT id="select_provider" size="1" onchange="onProviderChanged();" name="D1">
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
                    			  <td><INPUT type="password" size=32 maxlength=32 id="input_ddns_pwd" name="input_ddns_pwd" value=""></td>
                  			    </tr>
                  			    <tr>
                    			  <td>&nbsp;&nbsp;&nbsp;<span id="sTimeout">Timeout</span></td>
                    			  <td><INPUT type="text" size=32 id="input_ddns_timeout" name="input_ddns_timeout"> <span id="sHours">hours</span></td>
                  			    </tr>
                  			  </table>
                  			</div>
                		  </TD>
              			</TR>
              		  </table>
              		  <br>
              		  <br>
              		  <input id="btn_back" type="button" value="Back" onclick="javascript:location.href='wizsetup2.asp?token=' + g_token">
              		  <input id="btn_next" type="button" value="Next" onclick="save_setting();">
              		  <input id="btn_cancel" type="button" value="Cancel" onclick="javascript:location.href='/setup.asp?menu=setup'">
            		</center>
          		  </div>
        		</div>
        	  </div>	
      		</td>   
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <table id="tb_bottom" class="footer_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
    <tr>
      <td width="125" align="center">&nbsp;&nbsp;<img src="img/security.gif" width="114" height="35"></td>
      <td width="10">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <br>
  <div id="div_copyright" align="center">
    <FONT color=#ffffff><span id="sCopyRight">Copyright 2012 - 2013, D-Link 
	Corporation / D-Link Systems, Inc. All rights reserved.</span></font>
  </div>
  <br>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="" style="display: none"></iframe>
</body>
</html>
