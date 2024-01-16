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
var MotionEnableTrigger=decodeBase64("<% getEventConfigMotionTrigInfo(Enable); %>");
var SoundEnableTrigger=decodeBase64("<% getEventConfigAudioTrigInfo(Enable); %>");
var ScheduleEnableTrigger=decodeBase64("<% getEventConfigScheduleTrigInfo(Enable); %>");
var Profile=decodeBase64("<% getEventConfigMotionTrigInfo(Profile); %>");
var SendEmail=decodeBase64("<% getEventConfigMotionTrigInfo(SendEmail); %>");
var FTPUpload=decodeBase64("<% getEventConfigMotionTrigInfo(FTPUpload); %>");
var EncodeFormat=decodeBase64("<% getEventConfigGeneralInfo(EncodeFormat); %>");
var FileFormat=decodeBase64("<% getEventConfigGeneralInfo(FileFormat); %>");
var PrebufferTime=decodeBase64("<% getEventConfigGeneralInfo(PrebufferTime); %>");
var PostbufferTime=decodeBase64("<% getEventConfigGeneralInfo(PostbufferTime); %>");
<% generateToken(eventrecording.cgi); %>
var Token1=decodeBase64("<% getToken(eventrecording.cgi@0); %>");
var Token2=decodeBase64("<% getToken(eventrecording.cgi@1); %>");
var Token3=decodeBase64("<% getToken(eventrecording.cgi@2); %>");
var Token4=decodeBase64("<% getToken(eventrecording.cgi@3); %>");

var lstarr = new Array();
<% getScheData(); %>
function data(name,weekday, start, end){
	var startarr;
	var endarr;
	this.name = name;
	this.weekday = null;
	this.start = null;
	this.starthr = null;
	this.startmin = null;
	this.endhr = null;
	this.endmin = null;
	if(weekday!=null)this.weekday = weekday;	
	if(start!=null)
	{
	
	this.start = start;
	startarr = start.split(":");
	this.starthr = startarr[0];
	this.startmin = startarr[1];

	}
	if(end!=null)
	{
	this.end = end;	
	endarr = end.split(":");
	this.endhr = endarr[0];
	this.endmin = endarr[1];

	}
	
	this.clone = function(){
		return new data(this.name,this.weekday,this.start,this.end);
	}
	this.equals = function (dataobj){
		if((dataobj.name == this.name)&&
		(dataobj.weekday == this.weekday)&&
		(dataobj.start == this.start)&&
		(dataobj.end == this.end))
			return true;
		return false;
		
	}
}
function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
