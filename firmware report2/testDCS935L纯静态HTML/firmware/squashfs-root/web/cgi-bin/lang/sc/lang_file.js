var languageNum = new Array("en","sc","tc");
var item_name = new Array("系统", "系统", "保存到本地硬盘",
"保存配置",
"从本地硬盘加载",
"从文件中恢复配置",
"恢复到出厂默认设置",
"恢复出厂默认",
"重启设备",
"保存",
"回复中",
"处理中",
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六",
"时间",
"重启",
"重启排程",
"保存",
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
"請求失敗",
"固件升级正在运行。",
"文件无效",
"取得备份文件失败，请再试一次。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_FW_IS_RUNNING = 1;
var PMSG_INVALID_FILE = 2;
var PMSG_GET_BACKFILE_FAILED = 3;

var des_item_name = new Array (
"在此您可保存和恢复配置，恢复到出厂默认设置，或重启摄像机。",
"<b>帮助提示..</b><br><br>在您完成摄像机的配置设置后，您可保持设置到硬盘作为以后使用。\
<br><br>您可查找先前保存的文件并恢复摄像机预先定义的配置或设置。 您也可选种恢复出厂默认设置来复位摄像机。",
""
);

var D_SYSTEM_INFO = 0;
var D_HELP_INFO = 1;
