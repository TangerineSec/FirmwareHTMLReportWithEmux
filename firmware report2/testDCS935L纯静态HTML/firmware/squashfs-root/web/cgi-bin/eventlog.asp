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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_eventlog.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_nFirstLoadIfData = 1;
function loadText()
{
	setText(document.getElementById("sEventLog"), item_name[I_EVENT_LOG]);
	setText(document.getElementById("sCurrentLog"), item_name[I_CURRENT_LOG]);
	document.getElementById("btnRefresh").value = item_name[I_REFRESH];
	document.getElementById("sEventLogInfo").innerHTML = des_item_name[D_EVENT_LOG_INFO];
	document.getElementById("sHelpInfo").innerHTML = des_item_name[D_HELP_INFO];
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
	printLog();
	resizePage();
	if (parent)
    {
        setTimeout("parent.blockUI(false, '', 0);", 500);
    }
}
function printLog()
{
	var iffun = document.getElementById("if_data").contentWindow.getConfig;
	var logarr = iffun("logarr");
	var eventlog = "";

	for (var i = 0; i < logarr.length; i++)
	{
		eventlog += "<span>";
		eventlog += logarr[i].date + "&nbsp&nbsp&nbsp&nbsp&nbsp " + logarr[i].mesg;
		eventlog += "</span>";
		eventlog += "<br>";
	}
	document.getElementById("td_eventlog").innerHTML = eventlog;
}
function reflash()
{
	if (parent)
    {
    	parent.blockUI(true, item_name[I_REFRESHING], 1);
    }

	document.getElementById("if_data").contentWindow.document.location.reload();
	init(0);
}
function ifDataOK()
{
	init(!g_nFirstLoadIfData);
	g_nFirstLoadIfData = 0;
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF" style="display: none">
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
      					<h1><span id="sEventLog">Event Log</span></h1>
      					<span id="sEventLogInfo">
      					  The event log records camera video clip and snapshot events that have occurred.
      					</span>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sCurrentLog">Current Log</span></h2>
        				<table cellpadding="1" cellspacing="1" border="0" width="525">
        				  <tr>
        				    <td id="td_eventlog">
        				    </td>
        				  </tr>
        				</table>
      				  </div>
      				  <div align="center"><br><INPUT type=button id="btnRefresh" value='Refresh' onClick="reflash()"></div>
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
        	    <br><br>You can you can refresh the log by clicking on the Refresh button.
        	  </span>  
      		</td>
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <iframe id="if_data" name="if_data" frameborder="0" width="0" height="0" src="eventlog_data.asp" style="display: none"></iframe>
</body>
</html>