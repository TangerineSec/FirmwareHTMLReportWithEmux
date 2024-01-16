var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"音频和视频", 
"视频配置",
"编码类型",
"分辨率",
"比特率",
"帧/秒",
"RTSP URL",
"H.264",
"Jpeg品质",
"MJPEG",
"音频设置",
"扬声器启用",
"音量",
"麦克风启用",
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
"在该章节中，您可以配置摄像机的视频质量、分辨率、以及帧率。",
"<b>帮助提示..</b>\
<br><br><b>分辨率</b><br>根据所用的显示系统有多个选项。\
<br><br><b>比特率</b><br>（比特/秒） - 为您的摄像机选择固定带宽。带宽值越高图片的质量就越高，但也会消耗更多的网络带宽。 \
<br><br><b>帧/秒</b><br>（帧每秒）- 帧速率越高，视频播放越流畅。请注意，更高的帧速率设置会消耗更多的带宽。 \
<br><br><b>Jpeg质量</b><br> - 默认值为 中等。 \
<br><br><b>扬声器</b><br>选择此功能后，您可以通过计算机的话筒通话，您的声音会传送至摄像机的外置扬声器。",
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
"极低",
"低",
"中",
"高",
"极高",
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
"請求失敗",
""
);

var PMSG_REQUEST_FAILED = 0;
