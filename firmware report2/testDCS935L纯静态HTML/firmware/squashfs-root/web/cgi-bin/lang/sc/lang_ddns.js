var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"动态DNS", 
"动态DNS设置",
"动态DNS启用",
"服务器地址",
"主机名",
"用户名",
"密码",
"超时",
"小时",
"禁用",
"已更新",
"初始化中",
"连接失败",
"状态",
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
"动态DNS特性允许您使用域名建立服务器（Web，FTP，Game服务器等），该域名（www.whateveryournameis.com）\
是您从宽带ISP处购得。使用动态DNS供应商提供的服务，无论您的IP 地址是什么，您的朋友输入您的主机名即可连接到您的IP摄像机。",
"<b>帮助提示..</b>\
<br><br>如果您的DSL或Cable服务供应商定期更改您的调制解调器IP，\
那么动态DNS很有用。您可以据此为您的摄像机指定一个网站域名，以替代摄像机的IP地址。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"选择一个动态DNS服务器",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"請求失敗",
"主机名格式无效。",
"用户名格式无效。",
"密码格式无效。",
"超时范围为240小时到65535小时。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

