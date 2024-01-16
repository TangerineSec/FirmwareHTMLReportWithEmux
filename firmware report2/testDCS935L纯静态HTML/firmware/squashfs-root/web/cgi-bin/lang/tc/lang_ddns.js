var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"動態DNS", 
"動態DNS設定",
"動態DNS啟用",
"伺服器位址",
"主機名稱",
"使用者名稱",
"密碼",
"逾時",
"小時",
"停用",
"已更新",
"初始化",
"連線失敗",
"狀態",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DDNS = 3;
var I_DDNS_SETTING = 4;
var I_DDNS_ENABLE = 5;
var I_SERVER_ADDRESS = 6;
var I_HOSTNAME = 7;
var I_UID = 8;
var I_PWD = 9;
var I_TIMEOUT = 10;
var I_HOURS = 11;
var I_STATUS_DISABLE = 12;
var I_STATUS_UPDATED = 13;
var I_STATUS_INITIALIZING = 14;
var I_STATUS_CONNECTION_FAILED = 15;
var I_STATUS = 16;

var des_item_name = new Array (
"動態 DNS 功能可讓您把伺服器 (Web、FTP、攝影機等等) 掛在一個跟 ISP 買來的網域名稱上 (www.whateveryournameis.com) \
。若使用 DDNS 服務，友人就可輸入主機名稱連到 IP 攝影機，不用管攝影機的 IP 是多少。",
"<b>說明項目..</b>\
<br><br>若您使用 DSL 或纜線服務，而服務商會經常改變數據機的 IP 位址的話，動態 DNS 就很有用處了。\
這樣您就可以為攝影機取個網域名稱，不必再打 IP 位址做連線了。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"選取動態 DNS 伺服器位址",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"請求失敗",
"主機名稱格式無效。",
"使用者名稱格式無效。",
"密碼格式無效。",
"逾時值的範圍在 240 到 65535 小時之間。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

