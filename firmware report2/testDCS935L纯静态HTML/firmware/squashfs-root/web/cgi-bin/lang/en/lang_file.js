﻿var languageNum = new Array("en","sc","tc");
var item_name = new Array("SYSTEM", "SYSTEM", "Save To Local Hard Drive",
"Save Configuration",
"Load From Local Hard Drive",
"Restore Configuration From File",
"Restore To Factory Default",
"Restore Factory Defaults",
"Reboot The Device",
"Saving",
"Restoring",
"Processing",
"Sun",
"Mon",
"Tue",
"Wed",
"Thu",
"Fri",
"Sat",
"Time",
"Reboot",
"Schedule Reboot",
"Save",
""
);

var I_SYSTEM = 0;
var I_SYSTEM_SETTING = 1;
var I_SAVE_TO_HARDDRIVE = 2;
var I_SAVE_CONF = 3;
var I_LOAD_FROM_HARDDRIVE = 4;
var I_RESTORE_FROM_FILE = 5;
var I_RESTORE_TO_DEFAULT = 6;
var I_RESTORE_TO_DEFAULT_2 = 7;
var I_REBOOT_DEVICE = 8;
var I_SAVING = 9;
var I_RESTORING = 10;
var I_PROCESSING = 11;
var I_SUN = 12;
var I_MON = 13;
var I_TUE = 14;
var I_WED = 15;
var I_THU = 16;
var I_FRI = 17;
var I_SAT = 18;
var I_TIME = 19;
var I_REBOOT_SETTING = 20;
var I_SCHEDULE_REBOOT = 21;
var I_BTN_SAVE = 22;

var pop_msg = new Array(
"There was a problem with the request.",
"Firmware upgrading is running.",
"File is invalid.",
"Get Backup file failed, please do again.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_FW_IS_RUNNING = 1;
var PMSG_INVALID_FILE = 2;
var PMSG_GET_BACKFILE_FAILED = 3;

var des_item_name = new Array (
"Here you can save and restore your configuration, restore the factory settings, and/or restart the camera.",
"<b>Helpful Hints..</b><br><br>After finishing the configuration settings for your camera, you \
can save them to your hard drive for future use.\
<br><br>You can locate a previously saved file and restore the \
configuration settings on your camera. You can also choose to reset your \
camera by restoring the factory default settings.",
""
);

var D_SYSTEM_INFO = 0;
var D_HELP_INFO = 1;
