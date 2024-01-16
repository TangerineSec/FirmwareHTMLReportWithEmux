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
<script type="text/javascript" language="Javascript" SRC="cookies.js"></script>
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wizard.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_token = getWebQuery("token", "");

function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_INTERNET_CONNECTION_SETTING]);
	document.getElementById("btndoSmartWizard").value = item_name[I_INTERNET_CONNECTION_SETUP];
	document.getElementById("btnDoManualConfig").value = item_name[I_MANAUAL_INTERNET_CONNECTION_SETUP];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_WIZARD_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
}
function resizePage()
{
	if (parent)
	{
		parent.resetIframeHeight(document.body.clientHeight);
	}
}
function init()
{
	var wizardtype = parseInt(getWebQuery("wizardtype", "0"), 10);
	if (wizardtype == 1)
	{
		location.href = "reboot_wizard.asp?token=" + g_token;
		return;
	}
	document.body.style.display = "";
	loadText();
	resizePage();
}
function doSmartWizard_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	parent.window.location.href='wizsetup.asp?token=' + g_token;
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
            if (parent)
            	parent.blockUI(false, '', 0);
            window.location.reload();
        }
    }
}
function doSmartWizard()
{
	var url = "/cgi/admin/smartwizard.cgi";
  	var params = "action=reset";
  	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var token=calToken(iffun("Token1"), iffun("Token2"), iffun("Token3"), iffun("Token4"));
	makeRequest2(url, params, g_token + "@" + token, doSmartWizard_callback);
}
function doManualConfig()
{
	parent.window.location.href = 'setup.asp?menu=setup&page=network';
}
function ifDataOK()
{
	init();
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none" onload="document.getElementById('if_data').src = 'wizard_data.asp?' + g_token">
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="100%" height="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">
	<tr>
	  <td valign="top">
        <table id="data_container" border="0" cellpadding="0" cellspacing="0" width="100%" height="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">
		  <tr>
  			<td valign="top" id="maincontent_container">
    		  <table height="100%" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
    			<tr>
    			  <td>
    				<div id="maincontent">
      				  <!-- === BEGIN MAINCONTENT === -->
      				  <div id="box_header"> 
      				    <h1 id="hTitle"><span id="sTitle">internet connection settings</span></h1>
      				    <span id="sTitleInfo">
      					  In this section, you can setup the IP camera&#39;s network interface settings. 
						  If you are configuring this device for the first time, D-Link recommends 
						  that you click the Internet Connection Setup Wizard button, and follow 
						  the instructions on screen. If you wish to modify or configure the IP 
						  camera settings manually, click the Manual Internet Connection Setup 
						  button.<br><br>
						</span>
        				<div align=center>
        				  <span>&nbsp;</span>
        				  <INPUT id="btndoSmartWizard"type="button" width="80" value="Internet Connection Setup Wizard" onclick="doSmartWizard();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id="btnDoManualConfig" type="button" width="80" value="Manual Internet Connection Setup" onclick="doManualConfig();">
        				</div>
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
	  <td valign="top" width="150" id="sidehelp_container" align="left">
        <table cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
      		<td id="help_text">
        	  <span id="sHelpInfo">
        	    <b>Helpful Hints..</b><br><br>
        		If you are an advanced user and have configured an Internet 
				camera before, click &#39;Manual Internet Connection Setup&#39; to input all the 
				settings manually.
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
