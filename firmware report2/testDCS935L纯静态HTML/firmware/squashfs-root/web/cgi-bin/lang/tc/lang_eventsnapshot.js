var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"快照", 
"快照",
"快照",
"觸發條件",
"僅在下列時間之間",
"日",
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六",
"時間",
"開始",
"結束",
"快照類型",
"單一快照",
"目標",
"FTP",
"電子郵件",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SNAPSHOT_TITLE = 3;
var I_SNAPSHOT = 4;
var I_SNAPSHOT_ITEM = 5;
var I_TRIGGER_BY = 6;
var I_ONLY_DURING = 7;
var I_DAY = 8;
var I_SUN = 9;
var I_MON = 10;
var I_TUE = 11;
var I_WED = 12;
var I_THU = 13;
var I_FRI = 14;
var I_SAT = 15;
var I_TIME = 16;
var I_START = 17;
var I_END = 18;
var I_SNAPSHOT_TYPE = 19;
var I_SINGLE = 20;
var I_TARGET = 21;
var I_FTP = 22;
var I_EMAIL = 23;

var des_item_name = new Array (
"為啟用攝影機的快照功能，必須勾選「快照」方塊。接著便可設定觸發事件，以及 FTP 與 E-mail 通知。",
"<b>說明項目..</b><br><br>\
快照功能可根據移動偵測或外部感應器輸入觸發，來儲存或傳送 JPEG 的相片到遠端 E-mail 或 FTP 伺服器上。<br><br>\
<b>觸發條件</b><br><b>移動</b><br>\
偵測到移動後開始快照。<br>\
<b>排程</b><br>\
在特定時間進行快照。<br>\
<b>總是</b><br>\
持續進行快照。<br>\
<b>聲音</b><br>\
偵測到聲音後開始快照。<br><br>\
<b>快照類型</b><br>\
設定單一快照或著六張快照。<br><br>\
<b>6 張快照</b><br>\
選擇本項，以在每個快照動作中連續拍攝 6 張相片。<br><br>\
<b>目標</b><br>\
快照目標可選擇 FTP 或 E-mail。",
"6 張快照與 \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
秒間隔 (3 張移動之前，3 張移動之後)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"移動",
"排程",
"總是",
"聲音",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"請求失敗",
"開始時間必須小於結束時間",
"請至少選擇一天",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
