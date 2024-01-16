var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"移动侦测", 
"实时视频",
"启用视频动作",
"灵敏度",
"面积比",
"定义模式",
"定义动作区域",
"删除动作区域",
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
"在本章节中，您可以配置您摄像机的动作设置。请注意，您计算机上的实时查看窗口需要安装Java。<br><br>\
如果您的计算机不能显示动作探测实时查看窗口的实时视频，请访问 <a href=\"http://www.java.com\">http://www.java.com</A> 并下载。",
"<b>帮助提示..</b><br><br>\
<b>灵敏度</b><br>设置摄像头触发动作探测的灵敏度。高灵敏度将更易探测到活动物体。\
<br><br><b>定义动作区域</b><br>拖动您的鼠标，添加动作探测范围。\
<br><br><b>删除动作区域</b><br>拖动鼠标，删除动作探测范围。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"請求失敗",
"灵敏度必须为整数",
"灵敏度取值范围必须在整数0至100之间。",
"面积比必须为整数",
"面积比取值范围必须在整数0至100之间。",
"请定义动作区域",
"警告：如果您要启用动作检测功能，请选中[启用视频动作]。 如果您要禁用动作检测功能，请清除动作区域。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
