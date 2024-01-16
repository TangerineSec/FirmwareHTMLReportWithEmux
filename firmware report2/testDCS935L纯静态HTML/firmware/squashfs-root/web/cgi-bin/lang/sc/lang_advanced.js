var languageNum = new Array("en","sc","tc");
var item_name = new Array("管理员", "管理员密码设置", "旧密码",
"新密码",
"再次输入密码",
"服务器设置",
"摄像机名",
"LED控制",
"正常",
"关闭",
"抓拍URL验证",
"启用",
"禁用",
"OSD时间",
"颜色",
"  应用  ",
"  取消  ",
"添加用户帐号",
"用户名",
"密码",
"  添加  ",
"用户列表",
"no.",
"名称",
"修改",
"删除",
"最长31个字符",
"最长31个字符",
"最长10个字符",
"最多10个用户",
"保存",
""
);
var I_ADMIN = 0;
var I_ADMIN_PWD_SETTING = 1;
var I_OLD_PWD = 2;
var I_NEW_PWD = 3;
var I_RETYPE_PWD = 4;
var I_SERVER_SETTING = 5;
var I_CAMERA_NAME = 6;
var I_LED_CONTROL = 7;
var I_NORMAL = 8;
var I_OFF = 9;
var I_SNAPSHOT_URL_AUTH = 10;
var I_ENABLE = 11;
var I_DISABLE = 12;
var I_OSD_TIME = 13;
var I_COLOR = 14;
var I_APPLY = 15;
var I_CANCEL = 16;
var I_ADD_USER_ACCOUNT = 17;
var I_USER_NAME = 18;
var I_PWD = 19;
var I_ADD = 20;
var I_USER_LIST = 21;
var I_NO = 22;
var I_NAME = 23;
var I_MODIFY = 24;
var I_DELETE = 25;
var I_PWD_LENGTH_DES = 26;
var I_UID_LENGTH_DES = 27;
var I_CAMERA_NAME_LENGTH_DES = 28;
var I_USER_MAX_DES = 29;
var I_SAVING = 30;

var des_item_name = new Array (
"您可以在此处更改管理员的密码，然后为摄像机配置服务器设置。您也可以添加、修改和/或删除用户帐号（群）。",
"<b>帮助提示..</b><br><br>考虑到安全因素，建议您修改管理员账号密码。\
确认写下了新的登录名以及密码，防止应为忘记而复位摄像机。",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"黑色",
"白色",
"蓝色",
"黄色",
"红色",
"橙色",
"青色",
"金色",
""
);

var O_COLOR_BLACK = 0;
var O_COLOR_WHITE = 1;
var O_COLOR_BLUE = 2;
var O_COLOR_YELLOW = 3;
var O_COLOR_RED = 4;
var O_COLOR_ORANGE = 5;
var O_COLOR_CYAN = 6;
var O_COLOR_GOLD = 7;

var pop_msg = new Array(
"請求失敗",
"您输入了一个错误的密码。请再次尝试。",
"没有正确确认密码。请确认新密码，然后重新键入密码匹配验证。",
"摄像机名格式无效。",
"您输入了一个错误的用户名。请再次尝试。",
"点击“OK”修饰所选用户。",
"超出最大用户数",
"无效的帐户或密码！",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_PWD_INCORRECT = 1;
var PMSG_PWD_RETYPE_INCORRECT = 2;
var PMSG_CAMERA_NAME_INVALID = 3;
var PMSG_USER_NAME_INCORRECT = 4;
var PMSG_CLICK_TO_MODIFY_USER = 5;
var PMSG_MAX_USER_EXCEED = 6;
var PMSG_INVALID_ACCOUNT_OR_PWD = 7;

