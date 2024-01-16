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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_logout.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
function loadText()
{
	document.title = item_name[I_DINK_CORPORATION];
	if (Wireless == "1")
		document.title += " | " + item_name[I_WIRELESS];
	document.title += " " + item_name[I_INTERNET_CAMERA];
	document.title += " | " + item_name[I_LIVE_VIDEO];
	setText(document.getElementById("sLogout"), item_name[I_LOGOUT]);
}
function init() 
{
	loadText();
}
</script>
</head>
<BODY bgColor=#757575>
<CENTER>
<DIV id=box_header style="WIDTH: 424px; HEIGHT: 155px; TEXT-ALIGN: left">
<H1 id="sLogout">logout</H1>
<script type="text/javascript" language="Javascript">
  Browser = CheckBrower();
  if ((Browser == "IE") || (Browser == "IE10") || (Browser == "KKMAN") || (Browser == "Opera"))
  {
     document.write(item_name[I_LOGOUT_CLICK_CLOSE_BROWSER]);
     document.write("\<P\>\<BR\>\<BR\>\<\/P\>");
     document.write("\<CENTER\>\<INPUT type=\"button\" width=\"80\" value=" + item_name[I_LOGOUT_2] + " onclick=\"javascript:window.close();\"\>\<\/CENTER\>");
  }
  else
  {
     document.write(item_name[I_LOGOUT_MANUALLY_CLOSE]);
  }
</script>
</DIV>
</CENTER>
<script type="text/javascript" language="javascript">init();</script>
</body>
</html>
