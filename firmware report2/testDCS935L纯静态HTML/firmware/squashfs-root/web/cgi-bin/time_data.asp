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
var TimeZone=decodeBase64("<% getDataTimeInfo(TimeZone); %>");
var DayLightSaving=decodeBase64("<% getDataTimeInfo(DayLightSaving); %>");
var TimeSyncType=decodeBase64("<% getDataTimeInfo(Protocol); %>");
var NTPServer=decodeBase64("<% getDataTimeInfo(NTPServerIP); %>");
var NTPInterval=decodeBase64("<% getDataTimeInfo(SyncSchedule); %>");
var DstAuto=decodeBase64("<% getDataTimeInfo(DstAuto); %>");
var Offset=decodeBase64("<% getDataTimeInfo(Offset); %>");
var Starttime=decodeBase64("<% getDataTimeInfo(Starttime); %>");
var Stoptime=decodeBase64("<% getDataTimeInfo(Stoptime); %>");
var CameraDate=decodeBase64("<% getDate(); %>");
var CameraTime=decodeBase64("<% getTime(); %>");
var CameraDateTime=CameraDate + " " + CameraTime;
var lockDateTime=decodeBase64("<% getMyDlinkInfo(LRCLockDateTime); %>");
<% generateToken(wdatetime.cgi); %>
var Token1=decodeBase64("<% getToken(wdatetime.cgi@0); %>");
var Token2=decodeBase64("<% getToken(wdatetime.cgi@1); %>");
var Token3=decodeBase64("<% getToken(wdatetime.cgi@2); %>");
var Token4=decodeBase64("<% getToken(wdatetime.cgi@3); %>");

function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
