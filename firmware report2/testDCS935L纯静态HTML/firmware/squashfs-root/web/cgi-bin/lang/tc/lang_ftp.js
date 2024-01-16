var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"FTP", 
"FTP 伺服器 - 視訊短片",
"主機名稱",
"通訊埠",
"(默认值为21)",
"使用者名稱",
"密碼",
"路徑",
"被動模式",
"是",
"否",
"對 FTP 伺服器進行測試 - 視訊短片",
"測試",
"FTP 伺服器 - 快照",
"對 FTP 伺服器進行測試 - 快照",
"間隔",
"秒 (範圍為 10 到 86400 秒)",
"秒 (範圍為 30 到 86400 秒)",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_FTP_TITLE = 3;
var I_FTP_SERVER = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_UID = 8;
var I_PWD = 9;
var I_PATH = 10;
var I_PASSIVE_MODE = 11;
var I_YES = 12;
var I_NO = 13;
var I_TEST_FTP_SERVER = 14;
var I_TEST = 15;
var I_FTP_SERVER_SNAPSHOT = 16;
var I_TEST_FTP_SERVER_SNAPSHOT = 17;
var I_INTERVAL = 18;
var I_INTERVAL_SNAPSHOT_DES = 19;
var I_INTERVAL_VIDEOCLIP_DES = 20;

var des_item_name = new Array (
"此部份可讓您設定 FTP 伺服器來接收影像。",
"<b>說明項目..</b>\
<br><br><b>主機名稱</b> - 要連接的 FTP 伺服器 IP 位址。\
<br><br><b>通訊埠</b> - 預設通訊埠是 21。\
<br><br><b>使用者名稱</b> - 用來存取外部 FTP 伺服器的使用者名稱。\
<br><br><b>密碼</b> - 用來存取外部 FTP 伺服器的密碼。\
<br><br><b>被動模式</b> - 若攝影機位於有防火牆保護的路由器後面，請啟用被動模式，就可以存取外部 FTP 伺服器。\
<br><br><b>對 FTP 伺服器進行測試</b> – 按下<b>測試</b>後，會上傳一個影像檔到 FTP 伺服器。",
"會送一個 JPEG 檔案到上面的 FTP 伺服器。（檔名：test_date_time.jpg）",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"請求失敗",
"通訊埠號格式無效",
"測試FTP成功",
"測試FTP失敗",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
