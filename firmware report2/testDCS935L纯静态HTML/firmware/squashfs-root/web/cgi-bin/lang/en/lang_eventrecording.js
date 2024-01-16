var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Video Clip", 
"Video Clip",
"Video Clip",
"Trigger by",
"Only During",
"Day",
"Sun",
"Mon",
"Tue",
"Wed",
"Thu",
"Fri",
"Sat",
"Time",
"Start",
"End",
"Video Clip Type",
"File Format",
"Pre-event recording",
"Seconds",
"Maximum duration",
"Target",
"FTP",
"E-mail",
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
"Video Clip is a feature to send video clips via FTP or E-Mail when a trigger is activated.",
"<b>Helpful Hints..</b><br><br>\
Video Clip is the ability to store or send video clips to a remote E-mail or FTP server based on motion detection, external sensor input triggered.\
<br><br><b>Trigger by</b><br>\
<b>Motion</b><br>\
Begin video clipping after a motion is detected.<br>\
<b>Schedule</b><br>\
Video clipping in a specified time.<br>\
<b>Always</b><br>\
Continuous video clipping.<br>\
<b>Sound</b><br>\
Begin video clipping after sound is detected.<br><br>\
<b>Video Clip</b><br>\
You can set Pre-event recording and Maximum duration here.<br><br>\
<b>Pre-event recording</b><br>\
Specify how much seconds of video will be recorded, before the video clip is taken.<br><br>\
<b>Maximum duration</b><br>\
Specify how much seconds of video clip.<br><br>\
<b>Target</b><br>You can select the target as FTP or E-mail for the video clip.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Motion",
"Schedule",
"Always",
"Sound",
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

var pop_msg = new Array (
"There was a problem with the request.",
"Start time have to be smaller than then end time",
"Please choose at least one day",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
