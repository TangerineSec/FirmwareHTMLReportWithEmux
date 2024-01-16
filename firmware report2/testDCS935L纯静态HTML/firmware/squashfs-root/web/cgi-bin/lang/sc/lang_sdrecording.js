var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置","不保存设置","保存",
"SD卡录制",
"SD卡录制",
"SD卡录制",
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
"录制类型",
"文件格式",
"预先录制",
"快照",
"视频",
"来源",
"可在此配置",
"音频和视频",
"录制长度",
"分钟的视频短片",
"SD卡",
"保留空闲空间",
"最小为200",
"循环录制 ",
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
"在这里可以对摄像机的SD卡录制界面进行设定。选择“SD卡录制”选项来启动此功能。",
"<b>帮助提示..</b><br><br>\
SD卡录制根据移动侦测或者排程时间，录制视频或快照存放到本地的SD卡中\
<br><br><b>触发条件</b><br>\
<b>动作</b><br>\
动作触发之后SD卡开始录制。<br>\
<b>计划</b><br>\
在一个时间限定内进行SD卡录制<br>\
<b>始终启用</b><br>\
SD卡持续录制<br>\
<b>声音</b><br>\
声音触发之后SD卡开始录制。<br><br>\
<b>录制类型</b><br>\
您可以设定SD卡录制的视频配置，当触发条件为动作时，可以设置预先录制和延后录制。您也可以选择把录制类型设为快照或视频。<br><br>\
<b>录制长度 </b><br>\
设定录制档案长度。<br><br>\
<b>SD卡</b><br>\
您可以设置SD卡要保留多少剩余空间以及是否要循环录制。<br><br>\
<b>保留空闲空间</b><br>\
为了避免系统的不稳定性，给本机的SD卡设置一个保留空闲空间值。<br><br>\
<b>循环录制</b><br>\
如果选择这个选项，那储存空间已满时，会删除最旧的文件夹，来存放新的档案。<br><br>\
",
"请注意，移动侦测没有启用，请到移动侦测页面进行配置。",
"请注意，音频侦测没有启用，请到音频侦测页面进行配置。",
"请注意，摄像机中没有插入SD卡或SD卡不可写入。",
"请注意，SD卡存储已满。",
"要格式化摄像机中的SD卡，请先禁用SD卡录制，然后到",
"SD卡管理",
"页面。",
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
var D_MOTIONNOTE_INFO = 2;
var D_AUDIONOTE_INFO = 3;
var D_SDNOTE_INFO = 4;
var D_SDNOTE_FULL_INFO = 5;
var D_SD_MANAGEMENT_1_INFO = 6;
var D_SD_MANAGEMENT_2_INFO = 7;
var D_SD_MANAGEMENT_3_INFO = 8;

var pop_msg = new Array (
"請求失敗",
"开始时间必须小于结束时间。",
"请至少选择一天",
"预先录制秒数必须为整数且在0-5之间。",
"SD卡保留空闲空间必须为整数，且在200~32768之间。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;