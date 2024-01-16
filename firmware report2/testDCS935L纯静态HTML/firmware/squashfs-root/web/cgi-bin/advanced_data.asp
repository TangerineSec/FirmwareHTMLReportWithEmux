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
var authorization=decodeBase64("<% getAuthorization(fake); %>");
var CameraName=decodeBase64("<% getCamSystemInfo(CameraName); %>");
var IndicatedLED=decodeBase64("<% getCamSystemInfo(IndicatedLED); %>");
var SnapshotAuthentication=decodeBase64("<% getHTTPInfo(SnapshotAuthentication); %>");
var UserAccess=decodeBase64("<% getHTTPInfo(Authenticate); %>");
var IncludeDateTime=decodeBase64("<% getTextOverlayInfo(IncludeDateTime); %>");
var OSDChColor=decodeBase64("<% getTextOverlayInfo(ChColor); %>");
var OSDText=decodeBase64("<% getTextOverlayInfo(Text); %>");
var IP=decodeBase64("<% getNetStatus(IP); %>");
<% generateToken(serverSetting.cgi); %>
<% generateToken(wpwdgrp.cgi); %>

var Token1=decodeBase64("<% getToken(serverSetting.cgi@0); %>");
var Token2=decodeBase64("<% getToken(serverSetting.cgi@1); %>");
var Token3=decodeBase64("<% getToken(serverSetting.cgi@2); %>");
var Token4=decodeBase64("<% getToken(serverSetting.cgi@3); %>");
var Token5=decodeBase64("<% getToken(wpwdgrp.cgi@0); %>");
var Token6=decodeBase64("<% getToken(wpwdgrp.cgi@1); %>");
var Token7=decodeBase64("<% getToken(wpwdgrp.cgi@2); %>");
var Token8=decodeBase64("<% getToken(wpwdgrp.cgi@3); %>");

var usersList = new Array();
<% printUserList(users) %>
function getConfig(configName)
{
	return eval(configName);
}
function getheader_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
			authorization=decodeBase64(http_request.responseText);
        	if(parent)parent.ifDataOK();
        }else {
			setTimeout('makeRequestByGet("/cgi/admin/wgetheader.cgi", getheader_callback);', 100);
        }
    }
}
function init()
{
	makeRequestByGet("/cgi/admin/wgetheader.cgi", getheader_callback);
}
</script>
</head>
<body onload="init();">
</body>
</html>
