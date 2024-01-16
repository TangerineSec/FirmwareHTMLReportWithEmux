var languageNum = new Array("en","sc","tc");
var item_name = new Array("系統", "系統", "儲存到本機硬碟",
"儲存設定",
"從本機硬碟載入",
"從載入的檔案來回復設定",
"將所有設定回復成出廠預設值",
"將所有設定回復成出廠預設值",
"重新啟動裝置",
"儲存",
"回復中",
"處理中",
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六",
"時間",
"重新啟動",
"重新啟動排程",
"儲存",
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
"韌體更新正在運行。",
"無效的檔案",
"取得備份檔案失敗，請再試一次。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_FW_IS_RUNNING = 1;
var PMSG_INVALID_FILE = 2;
var PMSG_GET_BACKFILE_FAILED = 3;

var des_item_name = new Array (
"此部份可以讓您儲存與回復設定、將設定回復成出廠預設值，以及重新啟動攝影機。",
"<b>說明項目..</b><br><br>攝影機設定完成後，可以把設定值存成檔案放到硬碟上，供未來使用。\
<br><br>您可以找出之前儲存的檔案，並將攝影機回復成之前設定的參數。\
也可以將所有設定回復成出廠預設值，將整台攝影機重置。",
""
);

var D_SYSTEM_INFO = 0;
var D_HELP_INFO = 1;
