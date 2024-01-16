var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-LINK公司", "无线", "网络摄像机",
"实时视频",
"产品", 
"固件版本",
"第一步: 设置LAN配置",
"返回",
"下一步",
"取消",
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
""
);
var I_DINK_CORPORATION = 0;
var I_WIRELESS = 1;
var I_INTERNET_CAMERA = 2;
var I_LIVE_VIDEO = 3;
var I_PRODUCT = 4;
var I_FWVERSION = 5;
var I_TITLE = 6;
var I_BACK = 7;
var I_NEXT = 8;
var I_CANCEL = 9;
var I_DHCP = 10;
var I_STATIC_IP = 11;
var I_IP_ADDRESS = 12;
var I_SUBNET_MASK = 13;
var I_DEFAULT_GATEWAY = 14;
var I_DNS1 = 15;
var I_DNS2 = 16;
var I_PPPOE = 17;
var I_UID = 18;
var I_PWD = 19;

var des_item_name = new Array (
"Copyright 2014，D-Link Corporation/D-Link Systems, Inc。版权所有。",
"请选择是否以DHCP连接、静态IP地址或PPPoE的方式将您的摄像机连接到Internet。 \
如果您的摄像机已经连接到路由器，或是您不确定该选择哪种配置，D-Link建议您保持DHCP连接的默认选项。 \
否则，请点击Static IP address，手动分配IP地址，然后点击 <b>下一步</b> 按钮。<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

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
