var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Network Setup", 
"lan settings",
"DHCP Connection",
"Static IP Address",
"IP Address",
"Subnet Mask",
"Default Gateway",
"Primary DNS",
"Secondary DNS",
"PPPoE",
"User ID",
"Password",
"Port settings",
"HTTP Port",
"HTTPS settings",
"HTTPS Enable",
"HTTPS Port",
"UPnP SETTINGS",
"UPnP Enable",
"BONJOUR SETTINGS",
"Bonjour Enable",
"Bonjour Name",
"32 characters maximum",
"RTSP Port",
"UPnP Port Forward",
"External HTTP Port",
"External HTTPS Port",
"External RTSP Port",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_NETWORK_TITLE = 3;
var I_LAN_SETTING = 4;
var I_DHCP = 5;
var I_STATIC_IP = 6;
var I_IP_ADDRESS = 7;
var I_SUBNET_MASK = 8;
var I_DEFAULT_GATEWAY = 9;
var I_DNS1 = 10;
var I_DNS2 = 11;
var I_PPPOE = 12;
var I_UID = 13;
var I_PWD = 14;
var I_PORT_SETTING = 15;
var I_HTTP_PORT = 16;
var I_HTTPS_SETTING = 17;
var I_HTTPS_ENABLE = 18;
var I_HTTPS_PORT = 19;
var I_UPNP_SETTIGN = 20;
var I_UPNP_ENABLE = 21;
var I_BONJOUR_SETTING = 22;
var I_BONJOUR_ENABLE = 23;
var I_BONJOUR_NAME = 24;
var I_MAX_CHAR_32 = 25;
var I_RTSP_PORT = 26;
var I_UPNP_PORT_FORWARD = 27;
var I_UPNP_EXTERN_HTTP = 28;
var I_UPNP_EXTERN_HTTPS = 29;
var I_UPNP_EXTERN_RTSP = 30;

var des_item_name = new Array (
"You can configure your LAN and Internet settings here.",
"<b>Helpful Hints..</b>\
<br><br>Select \"<b>DHCP Connection</b>\" if you are running a DHCP server \
on your network and would like an IP address assigned to your camera \
automatically. You may choose to manually enter a \
<b>Static IP Address</b> and all the relevant network information or \
select <b>PPPoE</b> if you connect your DCS-935L directly to the \
Internet that uses a PPPoE service. If you choose PPPoE you must enter \
the user ID and password that was given by your Internet Service \
Provider.\
<br><br><b>DNS</b> (Domain Name System) server is an Internet service \
that translates domain names (i.e. www.dlink.com) into IP addresses \
(i.e. 192.168.0.20). The IP addresses can be obtained from your ISP.\
<br>- <b>Primary DNS</b>: Primary domain name server that translates \
names to IP addresses.\
<br>- <b>Secondary DNS</b>: Secondary domain name server to backup the \
primary one.\
<br><br><b>Port Settings</b> - Most ISPs do not open port 80 (a \
DCS-935L default video transfer port) for their residential customers, \
the DCS-935L has the ability to use a different port by enabling the \
second http port for its video streaming. Any unused ports can be used \
such as port 800, 801, etc. Remember that if the DCS-935L is behind a \
router, you will need to forward that port to the DCS-935L\'s IP \
Address. When accessing the camera, you would need to type the camera\'s \
IP Address followed by the colon character and the port number (for \
example http://192.168.0.20:800).\
<br><br><b>UPnP</b> Settings will allow you to configure your camera as \
an UPnP device in the network.\
<br><br><b>Bonjour</b> provides a simple way of discovering various \
services on your camera.",
"(Characters you may use in a Bonjour Name: \"upper or lower case \
letters\", \"numbers\" and \"hyphens\".)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

var pop_msg = new Array (
"There was a problem with the request.",
"The IP Address is invalid.",
"The Subnet Mask is invalid.",
"The Default Gateway is invalid.",
"You enter incorrect TCP/IP configuration.",
"The format of User ID is invalid.",
"The format of Password is invalid.",
"The Primary DNS is invalid.",
"The Secondary DNS is invalid.",
"The format of Port Number is invalid.",
"The format of Bonjour Name is invalid.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_IPADDRESS = 1;
var PMSG_INVALID_SUBNET_MASK = 2;
var PMSG_INVALID_GATEWAY = 3;
var PMSG_INCORRECT_TCPIP_CONFIG = 4;
var PMSG_INVALID_UID = 5;
var PMSG_INVALID_PWD = 6;
var PMSG_INVALID_DNS1 = 7;
var PMSG_INVALID_DNS2 = 8;
var PMSG_INVALID_PORT_NUMBER = 9;
var PMSG_INVALID_BONJOUR_NAME = 10;
