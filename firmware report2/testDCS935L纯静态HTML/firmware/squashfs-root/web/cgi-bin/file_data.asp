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
<% generateToken(whardfactorydefault.cgi); %>
<% generateToken(wrestart.cgi); %>
<% generateToken(scheduleReboot.cgi); %>
var Token1=decodeBase64("<% getToken(whardfactorydefault.cgi@0); %>");
var Token2=decodeBase64("<% getToken(whardfactorydefault.cgi@1); %>");
var Token3=decodeBase64("<% getToken(whardfactorydefault.cgi@2); %>");
var Token4=decodeBase64("<% getToken(whardfactorydefault.cgi@3); %>");
var Token5=decodeBase64("<% getToken(wrestart.cgi@0); %>");
var Token6=decodeBase64("<% getToken(wrestart.cgi@1); %>");
var Token7=decodeBase64("<% getToken(wrestart.cgi@2); %>");
var Token8=decodeBase64("<% getToken(wrestart.cgi@3); %>");
var Token9=decodeBase64("<% getToken(scheduleReboot.cgi@0); %>");
var Token10=decodeBase64("<% getToken(scheduleReboot.cgi@1); %>");
var Token11=decodeBase64("<% getToken(scheduleReboot.cgi@2); %>");
var Token12=decodeBase64("<% getToken(scheduleReboot.cgi@3); %>");
var ScheduleReboot=decodeBase64("<% getCamSystemInfo(ScheduleReboot); %>");
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
