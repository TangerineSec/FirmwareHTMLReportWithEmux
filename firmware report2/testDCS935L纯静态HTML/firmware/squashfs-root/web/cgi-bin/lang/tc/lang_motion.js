var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"移動偵測", 
"即時影像",
"啟動影像移動",
"靈敏度",
"面積比",
"繪圖模式",
"畫出移動範圍",
"清除移動範圍",
"清除",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_MOTION_DETECTION = 3;
var I_LIVE_VIDEO = 4;
var I_ENABLE_MOTION = 5;
var I_SENSITIVITY = 6;
var I_PERCENTAGE = 7;
var I_DRAWING_MODE = 8;
var I_DRAW_MOTION_AREA = 9;
var I_ERASE_MOTION_AREA = 10;
var I_CLEAR = 11;

var des_item_name = new Array (
"此部份可以讓您調整攝影機的移動偵測設定。<br><br>\
請注意，您的電腦必須安裝 Java 才能看即時檢視視窗。若電腦無法在移動偵測的即時檢視視窗中顯示即時影像，請至 \
<a href=\"http://www.java.com\">http://www.java.com</A> 下載程式。",
"<b>說明項目..</b><br><br>\
<b>靈敏度</b><br>設定攝影機靈敏度來觸發移動偵測。靈敏度越高，越容易偵測到移動。\
<br><br><b>畫出移動範圍</b><br>請拖拉滑鼠來新增移動偵測範圍。\
<br><br><b>清除移動範圍</b><br>請拖拉滑鼠來清除移動偵測範圍。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"請求失敗",
"靈敏度必須爲整數",
"靈敏度取值範圍必須在整數0至100之間。",
"面積比必須爲整數",
"面積比取值範圍必須在整數0至100之間。",
"請畫出移動範圍",
"警告:若要啟用移動偵測功能，請勾選 [啟用影像移動]。但若您要停用移動偵測功能，請清除移動偵測範圍。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
