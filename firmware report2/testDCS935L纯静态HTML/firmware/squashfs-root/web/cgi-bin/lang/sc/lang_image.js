var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"图像设置", 
"实时视频",
"图像设置",
"亮度",
"饱和度",
"对比度",
"色调",
"锐度",
"黑白",
"镜像",
"翻转",
"频率",
"恢复默认设置",
"处理中",
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
"您对图像设置所做的更改将立刻生效。下面的实时视频窗口中可以找到和查看更改的效果。",
"<b>帮助提示..</b>\
<br><br>亮度、饱和度、对比度、色调可调值为0到100，允许您调整优化图像设置。\
<br><br><b>亮度</b><br>用于补偿背景光。\
<br><br><b>饱和度</b><br>控制从黑白到彩色的颜色强度。\
<br><br><b>对比度</b><br>可调整物体之间的颜色对比度。在阴暗的天气下可帮助提高图像画质。\
<br><br><b>色调</b><br>用来改变不同色相的程度对人眼的的感觉。\
<br><br><b>锐度</b><br>调整这个项目以控制画面锐度。\
<br><br><b>黑白</b><br>控制启用或禁用摄像机的黑到白模式。\
<br><br><b>镜像</b><br>选择此功能，获得镜像图像。\
<br><br><b>翻转</b><br>当摄像机倒置安装在天花板上时，选择该功能。\
<br><br><b>频率</b><br>您需要选择关闭或50或60Hz（取决于地区）。<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"关闭",
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
