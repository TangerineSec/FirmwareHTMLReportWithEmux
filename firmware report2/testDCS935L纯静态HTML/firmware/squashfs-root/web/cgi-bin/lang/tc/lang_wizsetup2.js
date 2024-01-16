var languageNum = new Array("en","sc","tc");
var item_name = new Array("友訊科技", "無線", "網際網路攝影機",
"即時影像",
"產品", 
"韌體版本", 
"第 1 步：設定 LAN",
"上一步",
"下一步",
"取消",
"DHCP連線",
"固定 IP 位址",
"IP 位址",
"子網路遮罩",
"預設閘道",
"主要 DNS",
"次要 DNS",
"PPPoE",
"使用者 ID",
"密碼",
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
"版權所有 2014 友訊科技股份有限公司",
"請選擇攝影機要用 DHCP 連線、固定 IP 位址，還是 PPPoE 來連上網際網路。若攝影機連接在路由器上，\
或您不確定要選哪一種，D-Link 建議您採用預設值：DHCP 連線。否則您可以按固定 IP 位址來手動指派 IP 位址\
，再按<b>下一步</b>按鈕。<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var pop_msg = new Array (
"請求失敗",
"IP位址無效。",
"子網路遮罩無效。",
"預設閘道器無效。",
"輸入的 TCP/IP 設定錯誤。",
"使用者 ID 格式無效。",
"密碼格式無效。",
"主要 DNS 無效。",
"次要 DNS 無效。",
"通訊埠號格式無效。",
"Bonjour名稱格式無效。",
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
