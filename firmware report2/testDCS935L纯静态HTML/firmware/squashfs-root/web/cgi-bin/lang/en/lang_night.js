var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Day/Night Mode", 
"Day/Night Mode Settings",
"Day/Night Mode",
"Auto",
"Manual",
"Always Day Mode",
"Always Night Mode",
"Day Mode Schedule",
"Example",
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
"In this section, you can configure the Day/Night mode switching method. \
Day/Night mode ensures good video illumination in both day and night \
environments.<br><br>\
In Day mode, IR illumination is off, IR light is blocked and the video is \
in color. In Night mode, IR illumination is on, IR light is visible and \
the video is in black and white.",
"<b>Helpful Hints..</b>\
<br><br><b>Auto</b> - Camera automatically switches between Day and \
Night mode. The camera normally works in Day mode. It automatically \
changes to Night mode in darker lighting.\
<br><br><b>Manual</b> - User can manually control the camera to work in \
Day or Night mode on the live video view page.\
<br><br><b>Always Day Mode</b> - The camera always works in the Day \
mode.<br><br><b>Always Night Mode</b> - The camera always works in the Night mode.\
<br><br><b>Day Mode Schedule</b> - The camera works in Day mode based on \
the day and time configured in the schedule. The camera changes to Night \
mode during all other times.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"There was a problem with the request.",
""
);

var PMSG_REQUEST_FAILED = 0;
