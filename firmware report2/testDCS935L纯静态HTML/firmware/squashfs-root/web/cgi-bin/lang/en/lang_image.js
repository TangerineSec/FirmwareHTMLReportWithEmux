var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Image Setup", 
"Live Video",
"image settings",
"Brightness",
"Saturation",
"Contrast",
"Hue",
"Sharpness",
"B/W",
"Mirror",
"Flip",
"Frequency",
"Reset to Default",
"Processing",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_IMAGE_SETTING = 3;
var I_LIVE_VIDEO = 4;
var I_IMAGE_SETTING_TITLE = 5;
var I_BRIGHTNESS = 6;
var I_SATURATION = 7;
var I_CONTRAST = 8;
var I_HUE = 9;
var I_SHARPNESS = 10;
var I_BW = 11;
var	I_MIRROR = 12;
var I_FLIP = 13;
var I_FREQUENCY = 14;
var I_RESET_TO_DEFAULT = 15;
var I_PROCESSING = 16;

var des_item_name = new Array (
"Your changes made for the image settings will be reflected immediately. The results can be seen and found in the Live Video window below.",
"<b>Helpful Hints..</b>\
<br><br>Brightness, Saturation, Contrast, Hue can be adjusted from 0 to 100, allowing you to fine-tune your image settings.\
<br><br><b>Brightness</b><br>It is used to compensate for backlit scenes.\
<br><br><b>Saturation</b><br>It controls the strength of color from black and white to bold colors.\
<br><br><b>Contrast</b><br>Adjustable to control the contrast of colors between the object. It helps to improve the image under a dull grey sky.\
<br><br><b>Hue</b><br>It controls different degree of a color stimulating to human eyes.\
<br><br><b>Sharpness</b><br>It is used to adjust image sharpness.\
<br><br><b>B/W</b><br>Select to enable or disable black-and-white mode for your camera.\
<br><br><b>Mirror</b><br>Select this feature to obtain mirror image.\
<br><br><b>Flip</b><br>Select this feature when your camera is installed up-side down on the ceiling.\
<br><br><b>Frequency</b><br>You may need to choose \'Off\', \'50\' or \'60\' Hz frequency (depends on country).<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Off",
"50Hz",
"60Hz",
""
);

var O_FREQUENCY_AUTO = 0;
var O_FREQUENCY_50 = 1;
var O_FREQUENCY_60 = 2;

var pop_msg = new Array (
"There was a problem with the request.",
""
);

var PMSG_REQUEST_FAILED = 0;
