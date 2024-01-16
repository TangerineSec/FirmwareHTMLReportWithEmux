var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"网络设置", 
"LAN配置",
"DHCP连接",
"静态IP地址",
"IP地址",
"子网掩码",
"默认网关",
"首选DNS",
"备选DNS",
"PPPoE",
"用户ID",
"密码",
"端口设置",
"HTTP端口",
"HTTPS设置",
"HTTPS启用",
"HTTPS端口",
"UPnP设置",
"UPnP启用",
"BONJOUR设置",
"Bonjour启用",
"Bonjour名称",
"最长32个字符",
"RTSP端口",
"UPnP端口转发",
"外部HTTP端口",
"外部HTTPS端口",
"外部RTSP端口",
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
"您可以在这里配置您的LAN和Internet设置。",
"<b>帮助提示..</b>\
<br><br>如果您的网络中有DHCP服务器在运行，请选择DHCP连接，您的摄像机会自动分配到一个IP地址。\
您可以选择手动输入一个静态IP地址和所有相关的网络信息，如果您直接通过DCS-935L连接到使用PPPoE服务的Internet，那么选择PPPoE。\
如果您选择PPPoE，您必须输入由ISP提供的用户ID和密码。\
<br><br><b>DNS</b> DNS(域名系统)服务器是一种Internet服务，可以将域名（如：www.dlink.com）转换为IP地址（如：192.168.0.20）。 IP地址可以从ISP处获得。\
<br>- <b>首选DNS</b>: 首选域名服务器，用于将域名转换为IP地址\
<br>- <b>备选DNS</b>: 备选域名服务器，作为首选服务器的后备。\
<br><br><b>端口设置</b> - 多数ISP没有为住宅用户开启端口80 (DCS-935L默认视频传输端口)，DCS-935L能够变更HTTP端口来使用不同的端口用于视频传输。 任何未使用的端口都能采用，如端口800、801等等。注意，当DCS-935L位于路由器后面时，您会需要将此端口转发到DCS-935L的IP地址。当访问此摄像机时，您需要键入摄像机的IP地址，然后填入端口号（如：http://<br>192.168.0.20:800）。\
<br><br>您可以通过<b>UPnP设置</b>将您的摄像机配置为一个网络中的UPnP设备。\
<br><br><b>Bonjour</b>提供一个简单的方法来发现摄像机上的各种服务。",
"(描述您可能在Bonjour上使用的名称，可以使用大写或小写字母、数字及连字符。)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

var pop_msg = new Array (
"請求失敗",
"IP地址无效。",
"子网掩码无效。",
"默认网关无效。",
"您输出了错误的TCP/IP配置。",
"用户ID格式无效。",
"密码格式无效。",
"首选DNS无效。",
"备选DNS无效。",
"端口号格式无效。",
"Bonjour名称格式无效。",
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
