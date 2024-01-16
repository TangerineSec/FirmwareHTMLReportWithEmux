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
var Wireless=decodeBase64("<% getHWInfo(Wireless); %>");
var CameraName=decodeBase64("<% getCamSystemInfo(CameraName); %>");
var DateTime=decodeBase64("<% getDateTime(); %>");
var Version=decodeBase64("<% getHWInfo(Version); %>");
var Build=decodeBase64("<% getHWInfo(Build); %>");
var Mac=decodeBase64("<% getNetStatus(Mac); %>");
var IP=decodeBase64("<% getNetStatus(IP); %>");
var SubnetMask=decodeBase64("<% getNetStatus(SubnetMask); %>");
var Gateway=decodeBase64("<% getNetStatus(Gateway); %>");
var DNS0=decodeBase64("<% getNetStatus(DNS0); %>");
var DNS1=decodeBase64("<% getNetStatus(DNS1); %>");
var Wan_IP=decodeBase64("<% getNetStatus(WanIP); %>");
var DDNSEnable=decodeBase64("<% getDDNSInfo(Enable); %>");
var UPnPPortForward=decodeBase64("<% getUPnPInfo(EnablePortForward); %>");
var SSID=decodeBase64("<% getWirelessClientInfo(SSID); %>");
var Mode=decodeBase64("<% getWirelessClientInfo(Mode); %>");
var Authentication=decodeBase64("<% getWirelessClientInfo(Authentication); %>");
var Encryption=decodeBase64("<% getWirelessClientInfo(Encryption); %>");
var Link=decodeBase64("<% getWirelessStatus(Link); %>");
var Channel=decodeBase64("<% getWirelessStatus(Channel); %>");
var PPPoE=decodeBase64("<% getNetStatus(PPPoE); %>");
var PPPoEEnable=decodeBase64("<% getIPv4Info(PPPoEEnable); %>");
var AgentVersion=decodeBase64("<% getAgentInfo(AgentVersion); %>");
var HWVersion=decodeBase64("<% getHWInfo(HWVersion); %>");
if (HWVersion.length > 1)
	HWVersion = HWVersion.substring(0, 1);
function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
