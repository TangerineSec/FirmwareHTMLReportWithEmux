var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Audio and Video", 
"VIDEO PROFILE",
"Encode Type",
"Resolution",
"Bit Rate",
"Frame Rate",
"RTSP URL",
"H.264",
"Jpeg Quality",
"MJPEG",
"Audio Setup",
"Microphone Enable",
"Volume",
"Speaker Enable",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_AUDIO_AND_VIDEO = 3;
var I_VIDEO_PROFILE = 4;
var I_ENCODE_TYPE = 5;
var I_RESOLUTION = 6;
var I_BITRATE = 7;
var I_FRAMERATE = 8;
var I_RTSP_URL = 9;
var I_H264 = 10;
var	I_JPEG_QUALITY = 11;
var I_MJPEG = 12;
var I_AUDIO_SETUP = 13;
var I_MICROPHONE_ENABLE = 14;
var I_VOLUME = 15;
var I_SPEAKER_ENABLE = 16;

var des_item_name = new Array (
"In this section, you can configure the camera video quality, resolution, and frame rate.",
"<b>Helpful Hints..</b>\
<br><br><b>Resolution</b><br>The options depend on display system used.\
<br><br><b>Bit Rate</b><br>(bits per second) - Select a fixed bandwidth for \
your camera operation. Higher value means a higher quality image but \
consumes more network bandwidth.\
<br><br><b>Frame Rate</b><br>(frames per second) - The higher the frame \
rate, the smoother the video will appear. Note that a higher frame rate \
setting also uses more bandwidth.\
<br><br><b>Jpeg Quality</b><br> - Default value is Medium. \
<br><br><b>Microphone</b><br>Enable this feature to hear audio from the camera's microphone.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"3 Mbps",
"2.5 Mbps",
"2 Mbps",
"1.5 Mbps",
"1 Mbps",
"768 Kbps",
"512 Kbps",
"384 Kbps",
"256 Kbps",
"128 Kbps",
"64 Kbps",
"Very Low",
"Low",
"Medium",
"High",
"Very High",
""
);

var O_BITRATE_3M = 0;
var O_BITRATE_2dot5M = 1;
var O_BITRATE_2M = 2;
var O_BITRATE_1dot5M = 3;
var O_BITRATE_1M = 4;
var O_BITRATE_768K = 5;
var O_BITRATE_512K = 6;
var O_BITRATE_384K = 7;
var O_BITRATE_256K = 8;
var O_BITRATE_128K = 9;
var O_BITRATE_64K = 10;
var O_QUALITY_VERY_LOW = 11;
var O_QUALITY_LOW = 12;
var O_QUALITY_MEDIUM = 13;
var O_QUALITY_HIGH = 14;
var O_QUALITY_VERY_HIGH = 15;

var pop_msg = new Array (
"There was a problem with the request.",
""
);

var PMSG_REQUEST_FAILED = 0;
