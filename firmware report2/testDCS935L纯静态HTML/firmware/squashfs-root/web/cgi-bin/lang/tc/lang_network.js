var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"網路設定", 
"LAN設定",
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
"通訊埠設定",
"HTTP通訊埠",
"HTTPS設定",
"HTTPS啟用",
"HTTPS通訊埠",
"UPnP設定",
"UPnP啟用",
"BONJOUR設定",
"Bonjour啟用",
"Bonjour名稱",
"最多 32 字元",
"RTSP 通訊埠",
"UPnP 通訊埠轉送",
"外部 HTTP 通訊埠",
"外部 HTTPS 通訊埠",
"外部 RTSP 通訊埠",
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
"您可在此進行 LAN 與網際網路設定。",
"<b>說明項目..</b>\
<br><br>若網路上有 DHCP 伺服器，您也想讓 DHCP 自動指派 IP 位址給攝影機，請選<b>「DHCP 連線」</b>。\
您也可手動輸入<b>固定 IP 位址</b>與所有相關網路資訊。若您是使用 <b>PPPoE</b> 服務將 DCS-935L 直接連上網際網路，\
請選 PPPoE。若您選的是 PPPoE，則須輸入 ISP 提供給您的使用者 ID 與密碼。\
<br><br><b>DNS (Domain Name System，網域名稱系統) 伺服器</b>是一種將網域名稱 (如 www.dlink.com) 轉換成 IP 位址 (如 192.168.0.20) \
的網際網路服務。IP 位址可從 ISP 取得。\
<br><b>- 主要 DNS</b>：將名稱轉換成 IP 位址的主要網域名稱伺服器。\
<br><b>- 次要 DNS</b>：次要網域名稱伺服器，當作主要 DNS 的備援。\
<br><br><b>通訊埠設定</b> – 大部分 ISP 會把家庭用戶的通訊埠 80 關掉 （這個通訊埠是 DCS-935L 的預設視訊傳輸通訊埠）\
，DCS-935L 可以變更 HTTP 通訊埠來作視訊傳輸。只要沒有被用掉的通訊埠都可以拿來用，如 800、801 等等。注意，若 DCS-935L 位於路由器後方\
，必須把這個通訊埠轉送到 DCS-935L 的 IP 位址。若要存取攝影機，必須輸入攝影機的 IP 位址加上通訊埠號（如 http://<br>192.168.0.20:800）。<br><br><b>UPnP</b>設定可讓您把攝影機設定成網路上的 UPnP 裝置。\
<br><br><b>Bonjour</b>將提供一個簡易方式用來搜尋ip cam多種服務。",
"(您可以使用字母大小寫,數字以及連字號來設定成Bonjour名稱。)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

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
