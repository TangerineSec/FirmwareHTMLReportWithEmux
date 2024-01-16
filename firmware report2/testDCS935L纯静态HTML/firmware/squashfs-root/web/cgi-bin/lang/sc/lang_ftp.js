var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设", "保存",
"FTP", 
"FTP服务器 - 视频剪辑",
"主机名",
"端口",
"（预设值为21）",
"用户名",
"密码",
"路径",
"被动模式",
"是",
"否",
"FTP服务器测试 - 视频剪辑",
"测试",
"FTP服务器 - 快照",
"FTP服务器测试 - 快照",
"间隔",
"秒（范围10~86400秒）",
"秒（范围30~86400秒）",
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
"在本章节中，您可以配置FTP服务器以接收这些图像。",
"<b>帮助提示..</b>\
<br><br><b>主机名</b> - 此为您将连接到的FTP服务器的IP地址。\
<br><br><b>端口</b> - 默认为端口21。\
<br><br><b>用户名</b> - 访问外部FTP服务器所需的用户名。\
<br><br><b>密码</b> - 访问外部FTP服务器所需的密码。<br><br><b>被动模式</b> - 如果您的摄像机位于受防火墙保护的路由器之后，启用被动模式将允许访问外部FTP服务器。\
<br><br><b>测试FTP服务器</b> - 当您单击 <b>测试</b> 后，一个图像文件会被发送到FTP 服务器。",
"JPEG文件将发送到上述FTP服务器进行测试。（文件名：test_date_time.jpg）",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"請求失敗",
"端口格式无效。",
"测试FTP成功",
"测试FTP失败",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
