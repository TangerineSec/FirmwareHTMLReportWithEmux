<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
<script type="text/javascript" language="Javascript">
<% generateToken(ftp.cgi); %>
var Token1=decodeBase64("<% getToken(ftp.cgi@0); %>");
var Token2=decodeBase64("<% getToken(ftp.cgi@1); %>");
var Token3=decodeBase64("<% getToken(ftp.cgi@2); %>");
var Token4=decodeBase64("<% getToken(ftp.cgi@3); %>");

function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
