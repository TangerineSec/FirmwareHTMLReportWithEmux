var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"视频剪辑", 
"视频剪辑",
"视频剪辑",
"触发条件",
"只在...期间",
"日",
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六",
"时间",
"开始",
"结束",
"视频剪辑类型",
"文件格式",
"预先录制",
"秒",
"最长时间",
"目标",
"FTP",
"邮件",
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
"录像片段可用于当发生移动侦测触发或者数据输入触发时，可让网络摄影机传送一段录像片段到E-mail账号或者FTP服务器。",
"<b>帮助提示..</b><br><br>\
当移动侦测触发时，录像片段被储存或者发送录制的影像到E-mail地址或者FTP服务器。\
<br><br><b>触发条件</b><br>\
<b>动作</b><br>\
当移动侦测触发后，开始录制视频。<br>\
<b>计划</b><br>\
正在录制视频时是特殊的时间<br>\
<b>始终启用</b><br>\
继续录制<br>\
<b>声音</b><br>\
当音频侦测触发后，开始录制视频。<br><br>\
<b>视频剪辑</b><br>\
您可以设置预先录制和最长时间。<br><br>\
<b>预先录制</b><br>\
在动作发生前有多少秒被记录到视频剪辑中。<br><br>\
<b>最长时间 </b><br>\
明确说明需要录制多少秒。<br><br>\
<b>目标</b><br>可以选择FTP服务器或者E-Mail地址作为录制视频的存储地址。",
""
);

var option_content = new Array (
"动作",
"计划",
"始终启用",
"声音",
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
"开始时间必须小于结束时间。",
"请至少选择一天",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
