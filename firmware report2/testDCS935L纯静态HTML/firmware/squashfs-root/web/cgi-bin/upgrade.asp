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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_upgrade.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
function upgradeFW()
{
	var obj = document.formup;
	document.getElementById("btn_update").disabled = true;
	obj.action = "/cgi/admin/update.cgi";
	obj.submit();
}
function upgradeFW_callback()
{
	if (window.frames['ifUpgradeFW'].document.body.innerHTML == "ok") {
		document.location.href = "/upgrade_status.asp?status=file_ok";
	}
	else if (window.frames['ifUpgradeFW'].document.body.innerHTML == "update_is_running") {
		document.location.href = "/upgrade_status.asp?status=update_is_running";
	}
	else if (window.frames['ifUpgradeFW'].document.body.innerHTML != "") {
		document.location.href = "/upgrade_status.asp?status=file_invalid";
	}
}
function loadText()
{
	setText(document.getElementById("sFirmwareUpgrade"), item_name[I_FIRMWARE_UPGRADE]);
	setText(document.getElementById("sFirmwareInfo"), item_name[I_FIRMWARE_INFO]);
	setText(document.getElementById("sCurrentFWVersion"), item_name[I_CURRENT_FW_INFO]);
	setText(document.getElementById("sFirmwareTitle"), item_name[I_FIRMWARE_UPGRADE_TITLE]);
	setText(document.getElementById("sFilePath"), item_name[I_FILE_PATH]);
	document.getElementById("btn_update").value = item_name[I_UPLOAD];
	document.getElementById("sFWUpInfo").innerHTML = des_item_name[D_FWUP_INFO];
	document.getElementById("sHelpInfo").innerHTML = des_item_name[D_HELP_INFO];
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
	loadText();
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
			setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + ".0" + splitVersion[1] + "." + strBuild);
			//setText(document.getElementById("sFWVersion_value"), splitVersion[0] + ".0" + splitVersion[1]);
		}
		else
		{
			setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + "." + splitVersion[1] + "." + strBuild);
			//setText(document.getElementById("sFWVersion_value"), splitVersion[0] + "." + splitVersion[1]);
		}
	}
	else
	{
		setText(document.getElementById("sFWVersion_value"), "v" + Version + "." + strBuild);
		//setText(document.getElementById("sFWVersion_value"), Version);
	}
	resizePage();
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
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
						<h1><span id="sFirmwareUpgrade">Firmware Upgrade</span></h1>
						<span id="sFWUpInfo">
						  A new firmware upgrade may be available for your camera. 
						  It is recommended that you keep your camera firmware up 
						  to date to maintain and improve its functionality and 
						  performance. Click here <A target='_parent' HREF='http://support.dlink.com/'><u>
						  D-Link Support Page</u></A> to check for the latest 
						  available firmware version.<br><br>
						  To upgrade the firmware on your IP camera, please 
						  download and save the latest firmware version from the 
						  D-Link Support Page to your local hard drive. Locate the 
						  file on your local hard drive by clicking the Browse 
						  button. Once you have found and opened the file using 
						  the browse button, click the <b>Upload</b> button to 
						  start the firmware upgrade.
						</span>
					  </div>
					  <div class="box">
						<h2><span id="sFirmwareInfo">firmware information</span></h2>
						<table cellpadding="2" cellspacing="1" border="0" bgcolor="white" bordercolor="#FFFFFF">
							<TR>
							  <TD width=150><span id="sCurrentFWVersion">Current 
								Firmware Version</span> :</TD>
							  <TD><span id="sFWVersion_value"></span></TD>
							</TR>
						</table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sFirmwareTitle">firmware upgrade</span></h2>
        			    <form action="/cgi/admin/update.cgi" method="post" enctype="multipart/form-data" name="formup" id="formup" target="ifUpgradeFW">
        				  <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				    <TR>
    				          <TD width=150><span id="sFilePath">File Path</span> 
								:</TD>
          				      <TD><INPUT type="file" size=38 id="file" name="file" class="text"></TD>
        				    </TR>
        				    <TR>
          				      <TD></TD>
          					  <TD><INPUT type="button" width="60" id="btn_update" name="btn_update" value=" Upload " onClick="upgradeFW();"></TD>
        			        </TR>
        				  </table>
        				</form>
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
        <table cellpadding="2" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
      	    <td id="help_text">
      	      <span id="sHelpInfo">
        	    <b>Helpful Hints..</b><br><br>
        	    Firmware updates are released periodically to improve the 
			    functionality of your IP camera and also to add new 
			    features. If you run into a problem with a specific feature 
			    of the IP camera, check our support site by clicking 
        	    <a target="_parent" href="http://support.dlink.com/"><u>here</u></A> and see 
			    if updated firmware is available for your IP camera.
			  </span>
      		</td>
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <iframe id="ifUpgradeFW" name="ifUpgradeFW" src="" frameborder="0" style="display: none" onload="upgradeFW_callback();"></iframe>
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
