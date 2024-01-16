var languageNum = new Array("en","sc","tc");
var item_name = new Array("ADMIN", "ADMIN PASSWORD SETTING", "Old Password",
"New Password",
"Retype Password",
"SERVER SETTING",
"Camera Name",
"LED Control",
"Normal",
"Off",
"Snapshot URL Authentication",
"Enable",
"Disable",
"OSD Time",
"Color",
"  Apply  ",
"  Cancel  ",
"ADD USER ACCOUNT",
"User Name",
"Password",
"  Add  ",
"USER LIST",
"no.",
"name",
"modify",
"delete",
"31 characters maximum",
"31 characters maximum",
"10 characters maximum",
"10 users maximum",
"Saving",
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
"Here you can change the administrator\'s password and configure the server \
setting for your camera. You can also add, modify and/or delete the user account(s).",
"<b>Helpful Hints..</b><br><br>For security reasons, it is recommended that you change the \
Password for the Administrator accounts. Be sure to write down the new \
Login Names and Passwords to avoid having to reset the camera in the \
event that they are forgotten.",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Black",
"White",
"Blue",
"Yellow",
"Red",
"Orange",
"Cyan",
"Gold",
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
"There was a problem with the request.",
"You have entered an incorrect password. Please try again.",
"The password was not correctly confirmed. Please ensure that the new password and retype password match exactly.",
"The format of Camera Name is invalid.",
"You have entered an incorrect User Name. Please try again.",
"Click 'OK' to modify the selected user.",
"Exceed maximum users",
"Invalid account or password!",
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
