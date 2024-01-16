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
var SnapshotEnable=decodeBase64("<% getEventSnapshotInfo(Enable); %>");
var MotionEnableTrigger=decodeBase64("<% getEventSnapshotInfo(SignalMotionEvent); %>");
var SoundEnableTrigger=decodeBase64("<% getEventSnapshotInfo(SignalAudioEvent); %>");
var ScheduleEnableTrigger=decodeBase64("<% getEventSnapshotInfo(SignalScheduleEvent); %>");
var Profile=decodeBase64("<% getEventSnapshotInfo(Profile); %>");
var SendEmail=decodeBase64("<% getEventSnapshotInfo(SendEmail); %>");
var FTPUpload=decodeBase64("<% getEventSnapshotInfo(FTPUpload); %>");
var PostFrame=decodeBase64("<% getEventSnapshotInfo(PostFrame); %>");
var PreFrame=decodeBase64("<% getEventSnapshotInfo(PreFrame); %>");
var SnapshotInterval=decodeBase64("<% getEventSnapshotInfo(Interval); %>");
<% generateToken(eventsnapshot.cgi); %>
var Token1=decodeBase64("<% getToken(eventsnapshot.cgi@0); %>");
var Token2=decodeBase64("<% getToken(eventsnapshot.cgi@1); %>");
var Token3=decodeBase64("<% getToken(eventsnapshot.cgi@2); %>");
var Token4=decodeBase64("<% getToken(eventsnapshot.cgi@3); %>");
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
