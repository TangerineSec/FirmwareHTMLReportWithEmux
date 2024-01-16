var languageNum = new Array("en","sc","tc");
var item_name = new Array("管理", "管理員密碼設定", "舊密碼",
"新密碼",
"重新輸入密碼",
"伺服器設定",
"攝影機名稱",
"LED 控制",
"一般",
"關閉",
"快照 URL 驗證",
"啟用",
"停用",
"OSD時間",
"顏色",
"  套用  ",
"  取消  ",
"新增使用者帳戶",
"使用者名稱",
"密碼",
"  添加  ",
"使用者清單",
"編號",
"名稱",
"修改",
"刪除",
"最多 31 字元",
"最多 31 字元",
"最多 10 字元",
"最多 10 個使用者",
"儲存",
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
"此部份可讓您更改管理員密碼與攝影機的伺服器設定。您也可新增、修改或刪除使用者帳戶。",
"<b>說明項目..</b><br><br>為安全性起見，建議您更改管理員帳戶的密碼。\
請一定要寫下新的登入名稱與密碼，未來若忘記密碼才不用去重設攝影機。",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"黑",
"白",
"藍",
"黃",
"紅",
"橙",
"青",
"金",
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
"密碼錯誤。請再試一次。",
"密碼未正確確認。請確定新密碼與重新輸入密碼的值完全相同。",
"攝影機名稱格式無效。",
"使用者名稱錯誤。請再試一次。",
"請按「確定」來修改選取的使用者。",
"超過最大使用者數",
"無效的帳戶或密碼！",
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

