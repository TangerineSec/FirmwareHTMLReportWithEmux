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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_upgrade_status.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_sec=1;
function loadText()
{
	setText(document.getElementById("sUpgrade"), item_name[I_UPGRADE]);
	setText(document.getElementById("p_upgrade_fw_ok"), item_name[I_FIRMWARE_UPGRADE_OK]);
	setText(document.getElementById("p_upgrade_is_running"), item_name[I_FIRMWARE_IS_RUNNING]);
	setText(document.getElementById("p_file_invalid"), item_name[I_FILE_INVALID]);
	setText(document.getElementById("sWaitFW"), item_name[I_WAIT_FW_RUNNING]);
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
	var status = getWebQuery("status", "");
	if (status == "file_ok")
	{
		document.getElementById("tb_wait").style.display = "";
		window.setInterval("showSec()", 1000);
		setTimeout("checkReboot()", 135 * 1000);
		setTimeout("document.location.href = \"/upgrade_status.asp?status=upgrade_ok\";", 240 * 1000);
	}
	else if (status == "upgrade_ok")
	{
		document.getElementById("p_upgrade_fw_ok").style.display = "";	
	}
	else if (status == "update_is_running")
	{
		document.getElementById("p_upgrade_is_running").style.display = "";
	}
	else if (status == "file_invalid")
	{
		document.getElementById("p_file_invalid").style.display = "";
	}
	resizePage();
}
function changeInnerHTML(divId,html)
{
	var e = null;
   	if (document.getElementById) 
   	{
		e = document.getElementById(divId);
		if(!e)
			return false;
		if ("innerHTML" in e)
		{
			e.innerHTML=html;return true
		}
		else 
		{
			if ("firstChild" in e && "data" in e.firstChild)
			{
            	e.firstChild.data=html;return true;
         	}
		}
   }
   return false;
}
function showSec() 
{
	if (g_sec < 10)
		changeInnerHTML("CountTime", "0" + g_sec.toString() + " " + item_name[I_SEC]);
    else
		changeInnerHTML("CountTime", g_sec.toString() + " " + item_name[I_SEC]);
	if (g_sec < 240)
		g_sec = g_sec+1;
}
var g_checkRebootID;
function checkReboot()
{
	g_checkRebootID = window.setInterval(function(){makeRequestByGet("/cgi/admin/finish.cgi", waitFWUpgrade);}, 2000);
}
function waitFWUpgrade(http_request)
{
	if (http_request.readyState == 4) 
	{
        if (http_request.status == 200)
        {
        	window.clearInterval(g_checkRebootID);
        	setTimeout("document.location.href = \"/upgrade_status.asp?status=upgrade_ok\";", 200);
        }
    }
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
                        <h1 id="hUpgrade"><span id="sUpgrade">Upgrade</span></h1>
                        <p id="p_upgrade_fw_ok" name="p_upgrade_fw_ok" style="display: none">
						Firmware upgrade completed.</p>
							<p id="p_upgrade_is_running" name="p_upgrade_is_running" style="display: none">
						A firmware upgrade is now being performed on your device.</p>
                        <p id="p_file_invalid" name="p_file_invalid" style="display: none">
						Invalid file!</p>
                        <table id="tb_wait" name="tb_wait" cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="#DFDFDF" style="display: none">
                          <TR>
                            <TD>&nbsp;</TD>
                            <TD colspan=2>
                              <br>
                              <FONT COLOR=#BA5322>
                                <span id="sWaitFW">
                                  A firmware upgrade is now being performed on your device. Please wait, as it may take up to 140 seconds to complete this process.
                                </span>
                              </FONT>
                              <br>
                              <br>
                            </TD>
                          </TR>
                          <TR>
                            <TD>&nbsp;</TD>
                            <TD><IMG src="img/dloadbar.gif" width="410" height="26"></TD>
                            <TD nowrap><SPAN ID="CountTime"></SPAN></TD>
                          </TR>
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
            <td id="help_text"></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <script type="text/javascript" language="javascript">init();</script>
</body>  
</html>
