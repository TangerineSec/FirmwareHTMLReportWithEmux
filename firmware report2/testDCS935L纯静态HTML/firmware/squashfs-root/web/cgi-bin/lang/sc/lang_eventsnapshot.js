var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"快照", 
"快照",
"快照",
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
"快照类型",
"单拍",
"目标",
"FTP",
"邮件",
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
"必须勾选\"启用快照\"框，启用摄像机快照。然后，您可以决定触发事件和FTP和/或E-mail提醒。",
"<b>帮助提示..</b><br><br>\
快照是根据移动侦测，外部传感器输入的触发项存储或发送JPEG图片到远程E-mail或FTP服务器。<br><br>\
<b>触发条件</b><br><b>动作</b><br>\
在侦测到动作后开始快照。<br>\
<b>计划</b><br>\
在特定时间快照。<br>\
<b>始终启用</b><br>\
连拍。<br>\
<b>声音</b><br>\
在侦测到声音后开始快照。<br><br>\
<b>快照类型</b><br>\
设定单一快照或者六张快照。<br><br>\
<b>6张连拍</b><br>\
选择在每次快照时连续抓取6张图片。<br><br>\
<b>目标</b><br>\
您可以选择快照的目的地为FTP或E-mail。",
"六连拍在 \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
秒间隔（动作帧前后各三帧）",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"动作",
"计划",
"始终启用",
"声音",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"請求失敗",
"开始时间必须小于结束时间。",
"请至少选择一天",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
