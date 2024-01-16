var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存", 
"白天/夜晚模式", 
"白天/夜晚模式設定",
"白天/夜晚模式",
"自動",
"手動",
"永遠採用白天模式",
"永遠採用夜晚模式",
"白天模式排程",
"範例",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DAYNIGHT_TITLE = 3;
var I_DAYNIGHT_SETTING = 4;
var I_DAYNIGHT_MODE = 5;
var I_AUTO = 6;
var I_MANUAL = 7;
var I_ALWAYS_DAY_MODE = 8;
var I_ALWAYS_NIGHT_MODE = 9;
var I_DAY_MODE_SCHEDULE = 10;
var I_EXAMPLE = 11;

var des_item_name = new Array (
"此處可讓您設定白天/夜晚模式的切換方式。白天/夜晚模式功能可在白天晚上都提供良好的視訊明亮度。<br><br>\
若攝影機為白天模式，IR LED 會關閉，視訊會以全彩顯示。若攝影機為夜晚模式，IR LED 會開啟，紅外光濾光鏡會切換成透明濾光鏡，視訊會切換成黑白顯示。",
"<b>說明項目..</b>\
<br><br><b>自動</b> - 讓攝影機自動切換白天/夜晚模式。攝影機平時會用白天模式運作。遇到陰暗環境會自動切換成夜晚模式。\
<br><br><b>手動</b> - 使用者可在<b>視訊即時影像</b>頁面自行切換攝影機的白天/夜晚模式。\
<br><br><b>永遠採用白天模式</b> - 攝影機永遠以白天模式運作。\
<br><br><b>永遠採用夜晚模式</b> - 攝影機永遠以夜晚模式運作。\
<br><br><b>白天模式排程</b> - 攝影機在您設定的排程時段會以白天模式運作。在其他時段會切換成夜晚模式。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"請求失敗",
""
);

var PMSG_REQUEST_FAILED = 0;
