var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"邮件", 
"E-mail帐号 - 视频剪辑",
"SMTP服务器地址",
"SMTP服务器端口",
"(默认值为25)",
"发送方E-mail地址",
"接收方E-mail地址",
"用户名",
"密码",
"使用SSL-TLS/STARTTLS",
"否",
"SSL-TLS",
"STARTTLS",
"测试E-mail帐号 - 视频剪辑",
"测试",
"E-mail帐号 - 快照",
"测试E-mail帐号 - 快照",
"間隔",
"秒（范围30~86400秒）",
"秒（范围60~86400秒）",
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
"在该章节中您可以设定和配置摄像机的E-mail提醒设置。如果您需要详细地更改，或您熟悉告警设置，那么您可能需要更改这些设置。",
"<b>帮助提示..</b>\
<br><br><b>SMTP服务器地址</b>:\
<br>此为您的外部邮件服务器的域名或IP地址。\
<br><br><b>发送方E-mail地址</b>:\
<br>这是发送摄像机抓拍图片的E-mail地址。\
<br><br><b>接收方E-mail地址</b>:\
<br>这是SMTP服务器接收者的E-mail地址。\
<br><br><b>用户名</b>: \
<br>您的E-mail帐户用户名。\
<br><br><b>密码</b>: \
<br>您的E-mail帐户密码。\
<br><br><b>使用SSL-TLS/STARTTLS</b>: \
<br>如果SMTP服务器需要TLS验证，则选择<b>SSL-TLS</b>或<b>STARTTLS</b>。",
"测试的E-mail将发送到以上列出的E-mail帐号。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"請求失敗",
"SMTP服务器端口格式无效。",
"发送测试邮件成功",
"发送测试邮件失败",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
