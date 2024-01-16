var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"影像設定", 
"即時影像",
"影像設定",
"亮度",
"飽和度",
"對比",
"色調",
"銳利度",
"黑白",
"鏡像",
"翻轉",
"頻率",
"重設為預設值",
"處理中",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_IMAGE_SETTING = 3;
var I_LIVE_VIDEO = 4;
var I_IMAGE_SETTING_TITLE = 5;
var I_BRIGHTNESS = 6;
var I_SATURATION = 7;
var I_CONTRAST = 8;
var I_HUE = 9;
var I_SHARPNESS = 10;
var I_BW = 11;
var	I_MIRROR = 12;
var I_FLIP = 13;
var I_FREQUENCY = 14;
var I_RESET_TO_DEFAULT = 15;
var I_PROCESSING = 16;

var des_item_name = new Array (
"影像設定所做的變更會立即生效。結果會顯示在下面的即時影像視窗中。",
"<b>說明項目..</b>\
<br><br>亮度、飽和度、對比、色調的調整範圍從 0 到 100，供您微調影像設定。\
<br><br><b>亮度</b><br>用來補償背光場景。\
<br><br><b>飽和度</b><br>以黑白方式控制色彩強度，營造大膽配色。\
<br><br><b>對比</b><br>調整物體之間的色彩對比。在灰暗天空下可提升影像品質。\
<br><br><b>色調</b><br>用來改變不同色相的程度對人眼的感覺。\
<br><br><b>銳利度</b><br>調整這個項目以控制畫面銳利度。\
<br><br><b>黑白</b><br>啟用/停用攝影機黑白模式。\
<br><br><b>鏡像</b><br>選擇此功能來取得鏡像。\
<br><br><b>翻轉</b><br>當攝影機倒掛在天花板時就要選擇此功能。\
<br><br><b>頻率</b><br>要選擇關閉或「50」或「60」Hz 頻率 (依國家/地區而定)。<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"關閉",
"50Hz",
"60Hz",
""
);

var O_FREQUENCY_AUTO = 0;
var O_FREQUENCY_50 = 1;
var O_FREQUENCY_60 = 2;

var pop_msg = new Array (
"請求失敗",
""
);

var PMSG_REQUEST_FAILED = 0;
