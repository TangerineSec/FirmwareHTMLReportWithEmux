var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"視訊短片", 
"視訊短片",
"視訊短片",
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
"視訊短片類型",
"檔案格式",
"事件前錄影",
"秒",
"最長持續時間",
"目標",
"FTP",
"電子郵件",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_VIDEOCLIP_TITLE = 3;
var I_VIDEOCLIP = 4;
var I_VIDEOCLIP_ITEM = 5;
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
var I_RECORDING_TYPE = 19;
var I_FILE_FORMAT = 20;
var I_PREEVENT_RECORDING = 21;
var I_SECONDS = 22;
var I_MAXIMUM_DURATION = 23;
var I_TARGET = 24;
var I_FTP = 25;
var I_EMAIL = 26;

var des_item_name = new Array (
"視訊短片功能可在事件觸發時，透過 FTP 或 E-Mail 傳送視訊短片。",
"<b>說明項目..</b><br><br>\
視訊短片功能可根據移動偵測或外部感應器輸入觸發，來儲存或傳送視訊短片到遠端 E-mail 或 FTP 伺服器上。\
<br><br><b>觸發條件</b><br>\
<b>移動</b><br>\
偵測到移動後開始錄製短片。<br>\
<b>排程</b><br>\
在特定時間進行短片錄製。<br>\
<b>總是</b><br>\
持續進行錄影。<br>\
<b>聲音</b><br>\
偵測到聲音後開始錄製短片。<br><br>\
<b>視訊短片</b><br>\
您可設定事件前錄影與最長持續時間。<br><br>\
<b>事件前錄影</b><br>\
指定在視訊短片開始錄製前，短片要先預錄幾秒。<br><br>\
<b>最長持續時間</b><br>\
指定短片要錄幾秒。<br><br>\
<b>目標</b><br>視訊短片目標可選擇 FTP 或 E-mail。",
""
);

var option_content = new Array (
"移動",
"排程",
"總是",
"聲音",
"Avi, .avi",
"Mp4, .mp4",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;
var O_AVI = 4;
var O_MP4 = 5;

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"請求失敗",
"開始時間必須小於結束時間",
"請至少選擇一天",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
