var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Motion Detection", 
"Live Video",
"Enable Video Motion",
"Sensitivity",
"Percentage",
"Drawing Mode",
"Draw motion area",
"Erase motion area",
"Clear",
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
"In this section, you can configure the motion detection settings for your \
camera.<br><br>\
Please note that your computer needs to have Java installed in order to \
view the motion detection configuration window. If you do not see the \
live video below, please visit <a href=\"http://www.java.com\">\
http://www.java.com</A> to download and install Java.",
"<b>Helpful Hints..</b><br><br>\
<b>Sensitivity</b><br>Set the sensitivity of camera to trigger motion detection. High sensitivity makes the motions easier to be detected.\
<br><br><b>Draw motion area</b><br>Drag your mouse to add motion detection range.\
<br><br><b>Erase motion area</b>Drag your mouse to erase motion detection range.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"There was a problem with the request.",
"Sensitivity must be an integer",
"Sensitivity must be an integer between 0 and 100",
"Percentage must be an integer",
"Percentage must be an integer between 0 and 100",
"Please draw motion area",
"Warning: If you want to enable the motion detection function, please check [Enable Video Motion]. However, if you want to disable the motion detection function, please clear motion area.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
