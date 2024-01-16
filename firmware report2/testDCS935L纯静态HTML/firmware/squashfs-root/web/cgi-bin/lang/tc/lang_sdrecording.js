var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值","不要儲存設定","儲存", 
"SD 錄影",
"SD 錄影",
"SD 錄影",
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
"錄製類型", 
"檔案格式", 
"事件前錄影", 
"快照", 
"視訊", 
"來源", 
"在此可設定", 
"音訊和視訊", 
"錄影長度", 
"分鍾的視訊短片", 
"SD 卡", 
"保留可用空間", 
"最小是 200", 
"循環錄影", 
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
var I_SNAPSHOT = 22;
var I_VIDEO = 23;
var I_SOURCE = 24;
var I_DESCRIPTION1 = 25;
var I_DESCRIOTION2 = 26;
var I_REC_LEN = 27;
var I_FILE_MIN = 28;
var I_SDCARD = 29;
var I_QUOTA = 30;
var I_MIN = 31;
var I_CYCLIC =32;


var des_item_name = new Array (
"您可在此設定與排程攝影機錄影。請勾選「SD 錄影」方塊來打開本功能。",
"<b>說明項目..</b><br><br>\
SD 錄製功能可根據移動偵測或排程時間，將視訊影片或快照 (每秒) 存到本機 SD 卡。 \
<br><br><b>觸發條件</b><br>\
<b>移動</b><br>\
偵測到移動後開始 SD 錄影。<br>\
<b>排程</b><br>\
在特定時間進行 SD 錄影。<br>\
<b>總是</b><br>\
持續進行 SD 錄影。<br>\
<b>聲音</b><br>\
偵測到聲音後開始 SD 錄影。<br><br>\
<b>錄製類型</b><br>\
您可以設定 SD 錄影的設定資料，當觸發條件?移動時，可以設定事件前錄影與事件後錄影。也可以選擇把錄影類型設成快照或視訊。<br><br>\
<b>錄影長度</b><br>\
設定錄影檔案長度。<br><br>\
<b>SD 卡</b><br>\
您可決定 SD 卡要保留多少剩餘空間，以及是否要做循環錄影。<br><br>\
<b>保留可用空間</b><br>\
為本機 SD 卡設定一個適當的保留空間，藉此避免造成系統不穩定的狀況。<br><br>\
<b>循環錄影</b><br>\
若選擇本選項，則在儲存空間已滿時，會刪除最舊的資料夾，以存放新的檔案。<br><br>\
",
"請注意，移動偵測尚未啟用，請至「移動偵測」網頁進行設定。",
"請注意，音頻偵測尚未啟用，請至「音頻偵測」網頁進行設定。",
"請注意，攝影機並未插入 SD 卡，或 SD 卡無法寫入。",
"請注意，SD 卡空間已滿。",
"要格式化SD卡，請先禁用SD卡錄影，然後到",
"SD卡管理",
"頁面。",
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
var D_MOTIONNOTE_INFO = 2;
var D_AUDIONOTE_INFO = 3;
var D_SDNOTE_INFO = 4;
var D_SDNOTE_FULL_INFO = 5;
var D_SD_MANAGEMENT_1_INFO = 6;
var D_SD_MANAGEMENT_2_INFO = 7;
var D_SD_MANAGEMENT_3_INFO = 8;

var pop_msg = new Array (
"請求失敗",
"開始時間必須小於結束時間",
"請至少選擇一天",
"事件前錄影秒數必須為整數，且介於 0 到 5 之間",
"SD卡保留可用空間必須是整數，且介於 200 到 32768 之間。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;