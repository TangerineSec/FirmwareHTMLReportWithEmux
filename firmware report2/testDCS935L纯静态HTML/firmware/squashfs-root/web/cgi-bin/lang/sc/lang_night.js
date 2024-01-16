var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存", 
"日/夜模式",
"日/夜模式设定",
"日/夜模式",
"自动",
"手动",
"保持日间模式",
"保持夜间模式",
"日间模式计划",
"实例",
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
"在本节中，您可以配置日/夜模式切换方法。日/夜模式功能，提供日间和夜间的照明环境，良好的视频。<br><br>\
若在日间模式工作,红外灯将关闭,视频将是全彩色。若在夜间模式工作,红外灯将打开，视频切换到黑/白模式。",
"<b>帮助提示..</b>\
<br><br><b>自动</b> - 摄像机自动切换日/夜模式。摄像机通常工作在日间模式。在黑暗的地方,将会自动切换到夜间模式。\
<br><br><b>手动</b> - 在实时浏览页面中,用户可以手动切换成日间/夜间模式。\
<br><br><b>保持日间模式</b> - 摄像机保持工作在日间模式。\
<br><br><b>保持夜间模式</b> - 摄像机保持工作在夜间模式。\
<br><br><b>日间模式计划</b> - 摄像机可以根据事先设定的计划任务自动切换成日间模式,并在其余时间工作在夜间模式。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"请求失败",
""
);

var PMSG_REQUEST_FAILED = 0;
