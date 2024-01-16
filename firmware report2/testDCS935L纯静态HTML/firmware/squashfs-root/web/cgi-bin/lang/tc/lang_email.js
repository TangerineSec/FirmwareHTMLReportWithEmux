var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"電子郵件", 
"電子郵件帳戶 - 視訊短片",
"SMTP 伺服器位址",
"SMTP伺服器通訊埠",
"(預設值為 25)",
"寄件者 E-mail 位址",
"收件者 E-mail 位址",
"使用者名稱",
"密碼",
"使用 SSL-TLS/STARTTLS",
"不使用",
"SSL-TLS",
"STARTTLS",
"寄送測試信 - 視訊短片",
"測試",
"電子郵件帳戶 - 快照",
"寄送測試信 - 快照",
"间隔",
"秒 (範圍為 30 到 86400 秒)",
"秒 (範圍為 60 到 86400 秒)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SMTP_TITLE = 3;
var I_EMAIL_ACCOUNT = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_SENDER_ADDRESS = 8;
var I_RECEIVER_ADDRESS = 9;
var I_UID = 10;
var	I_PWD = 11;
var I_AUTH_ENABLE = 12;
var I_NO = 13;
var I_SSLTLS = 14;
var I_STARTTLS = 15;
var I_TEST_EMAIL_ACCOUNT = 16;
var I_TEST = 17;
var I_EMAIL_ACCOUNT_SNAPSHOT = 18;
var I_TEST_EMAIL_ACCOUNT_SNAPSHOT = 19;
var I_INTERVAL = 20;
var I_INTERVAL_SNAPSHOT_DES = 21;
var I_INTERVAL_VIDEOCLIP_DES = 22;

var des_item_name = new Array (
"此項目可以讓您調整攝影機的電子郵件通知設定。若詳細資料改了，或發生通知信問題，就要調整這邊的設定。",
"<b>說明項目..</b>\
<br><br><b>SMTP 伺服器位址</b>：外部電子郵件伺服器的網域名稱或 IP 位址。\
<br><br><b>寄件者 E-mail 位址</b>：攝影機快照的寄件者電子郵件位址。\
<br><br><b>收件者 E-mail 位址</b>：SMTP 伺服器的收件者電子郵件位址。\
<br><br><b>使用者名稱</b>：電子郵件帳戶的使用者名稱。\
<br><br><b>密碼</b>：電子郵件帳戶的密碼。\
<br><br><b>使用 SSL-TLS/STARTTLS</b>：若 SMTP 伺服器需要 TLS 驗證，請選 <b>SSL-TLS</b> 或 <b>STARTTLS</b>。",
"寄出測試信件到上面所列的電子郵件位址。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"請求失敗",
"SMTP 伺服器通訊埠格式無效。",
"發送測試郵件成功",
"發送測試郵件失敗",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
