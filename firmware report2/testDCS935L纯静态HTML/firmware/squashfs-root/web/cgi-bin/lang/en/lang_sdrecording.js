var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"SD Recording", 
"SD Recording",
"SD Recording",
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
"Recording Type",
"File Format",
"Pre-event recording",
"Snapshot",
"Video",
"Source",
"Configurable in",
"Audio and Video",
"Recording Length",
"minutes per file",
"SD Card",
"Keep Free Space",
"Minimum is 200",
"Cyclic",
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
"Here you may configure and schedule the recording of your camera. You must select the checkbox of 'SD Recording' to turn on the feature.",
"<b>Helpful Hints..</b><br><br>SD Recording is the ability to record video or snapshot (per second) to local SD Card based on motion detection or in a specified time.<br><br><b>Trigger by</b><br><b>Motion</b><br>Begin SD recording after a motion is detected.<br><b>Schedule</b><br>SD recording in a specified time.<br><b>Always</b><br>Continuous SD recording.<br><b>Sound</b><br>Begin SD recording after sound is detected.<br><br><b>Recording Type</b><br>You can set video profile, set pre-event recording, and post-event recording here when Trigger by is Motion. You can also select recording as Snapshot or Video.<br><br><b>Recording Length</b><br>Set the time length of each recording video.<br><br><b>SD Card</b><br>You can set how much free space to keep in SD card and if recording cyclically or not.<br><br><b>Keep Free Space</b><br>Set the capacity of your local SD Card to prevent the system from becoming unstable.<br><br><b>Cyclic</b><br>When this option is selected, it will cause the oldest folder to be deleted when the system requires storage space for new files.<br><br>",
"Please note that Motion Detection is not enabled, please go to Motion Detection web page to configure.",
"Please note that Sound Detection is not enabled, please go to Sound Detection web page to configure.",
"Please note that there is no SD Card plugged into the camera or the SD Card is not writable.",
"Please note that SD Card capacity is full.",
"To format the SD Card in the camera, please disable SD Recording first and then go to the ",
"SD Management",
" page.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_MOTIONNOTE_INFO = 2;
var D_AUDIONOTE_INFO = 3;
var D_SDNOTE_INFO = 4;
var D_SDNOTE_FULL_INFO = 5;
var D_SD_MANAGEMENT_1_INFO = 6;
var D_SD_MANAGEMENT_2_INFO = 7;
var D_SD_MANAGEMENT_3_INFO = 8;

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
"Pre-event recording second must be an integer and between 0 to 5",
"SD Card Keep Free Space must be an integer and between 200 to 32768",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;