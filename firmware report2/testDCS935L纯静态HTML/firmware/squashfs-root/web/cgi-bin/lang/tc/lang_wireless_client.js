var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"無線網路設定", 
"無線網路設定",
"頻段",
"2.4 GHz",
"5 GHz",
"SSID",
"站台搜尋",
"頻道",
"連線模式",
"無線基礎點模式",
"Ad-hoc (點對點網路)",
"安全模式",
"無",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"驗證",
"開放系統",
"分享金鑰",
"加密模式",
"金鑰格式",
"預設金鑰",
"金鑰 1",
"金鑰 2",
"金鑰 3",
"金鑰 4",
"密碼類型",
"TKIP",
"AES",
"共享密碼",
"(8-63 ASCII 或 64 HEX 字元)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_WIRELESS_SETUP = 3;
var I_WIRELESS_SETTING = 4;
var I_BAND = 5;
var I_2dot4GHZ = 6;
var I_5GHZ = 7;
var I_SSID = 8;
var I_SITE_SURVEY = 9;
var I_CHANNEL = 10;
var I_CONNECTION_MODE = 11;
var I_INFRASTRUCTURE = 12;
var I_ADHOC = 13;
var I_SECURITY_MODE = 14;
var I_NONE = 15;
var I_WEP = 16;
var I_WPAPSK = 17;
var I_WPAPSK2 = 18;
var I_AUTHENTICATION = 19;
var I_OPEN_SYSTEM = 20;
var I_SHARED_KEY = 21;
var I_ENCRYPTION_MODE = 22;
var I_KEY_FORMAT = 23;
var I_DEFAULT_KEY = 24;
var I_KEY1 = 25;
var I_KEY2 = 26;
var I_KEY3 = 27;
var I_KEY4 = 28;
var I_CIPHER_TYPE = 29;
var I_TKIP = 30;
var I_AES = 31;
var I_PRESHARED_KEY = 32;
var I_PRESHARED_KEY_DES = 33;


var des_item_name = new Array (
"此部份可以讓您調整攝影機的無線網路設定。",
"<b>說明項目..</b>\
<br><br>您可輸入 <b>SSID</b> （無線網路上的唯一名稱）或按<b>站台搜尋</b>按鈕選擇可用的無線網路，來啟用攝影機的無線網路設定並將它連上無線網路。接著要選擇頻道號碼。若有其他無線網路蓋台產生干擾，您可改變頻道以取得較好的網路效能。\
<br><br>連線模式有兩種。<b>無線基礎點模式</b>採用存取點為所有無線裝置進行傳輸。<b>點對點模式</b>則不使用存取點，PC 會與 DCS-935L 直接連線。\
<br><br>無線加密有三種選擇：<b>無</b>、<b>WEP</b> 與 <b>WPA-PSK / WPA2- PSK</b>。請選擇跟其他無線裝置/路由器一樣的加密方式。若選擇 <b>WPA-PSK 或 WPA2-PSK</b> 設定，則須輸入適當的 <b>共享密碼</b> 才能連到無線網路。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64Bits",
"128Bits",
"HEX",
"ASCII",
"金鑰 1",
"金鑰 2",
"金鑰 3",
"金鑰 4",
""
);

var O_64BITS = 0;
var O_128BITS = 1;
var O_HEX = 2;
var O_ASCII = 3;
var O_KEY1 = 4;
var O_KEY2 = 5;
var O_KEY3 = 6;
var O_KEY4 = 7;

var pop_msg = new Array (
"請求失敗",
"金鑰的格式必須是 5 個 ASCII 字元",
"金鑰的格式必須是 10 個 HEX 字元",
"金鑰的格式必須是 13 個 ASCII 字元",
"金鑰的格式必須是 26 個 HEX 字元",
"共享密碼 格式無效。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
