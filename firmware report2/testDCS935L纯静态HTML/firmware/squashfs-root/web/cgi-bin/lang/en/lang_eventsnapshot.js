var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"snapshot", 
"snapshot",
"Snapshot",
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
"Snapshot Type",
"Single snapshot",
"Target",
"FTP",
"E-mail",
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
"In order to enable your camera to take snapshots, you must select the checkbox of \'Snapshot\'. \
Then, you can determine the trigger event(s) and FTP and/or E-mail notification(s).",
"<b>Helpful Hints..</b><br><br>\
Snapshot is the ability to store or send pictures to a remote E-mail or FTP \
server based on motion detection, external sensor input triggered.<br><br>\
<b>Trigger by</b>\
<br><b>Motion</b><br>\
Begin snapshot after a motion is detected.<br>\
<b>Schedule</b><br>\
Snapshot in a specified time.<br>\
<b>Always</b><br>\
Continuous Snapshot.<br>\
<b>Sound</b><br>\
Begin snapshot after sound is detected.<br><br>\
<b>Snapshot Type</b><br>\
Single snapshot or 6 snapshots here.<br><br>\
<b>6 snapshots</b><br>\
Select to take continuous 6 pictures for each snapshot.<br><br>\
<b>Target</b><br>\
You can select the target as FTP or E-mail for the snapshot.",
"6 snapshots with \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
second interval (3 frames before and 3 frames after motion frame)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"Motion",
"Schedule",
"Always",
"Sound",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"There was a problem with the request.",
"Start time have to be smaller than then end time",
"Please choose at least one day",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
