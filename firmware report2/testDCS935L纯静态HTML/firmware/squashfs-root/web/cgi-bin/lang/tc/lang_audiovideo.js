var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存",
"音訊和視訊", 
"視訊資料",
"編碼類型",
"解析度",
"位元傳輸率",
"畫面更新率",
"RTSP URL",
"H.264",
"JPEG 品質",
"MJPEG",
"音訊設定",
"喇叭啟用",
"音量",
"麥克風啟用",
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
"此部份可以讓您調整攝影機的視訊品質、解析度和訊框率。",
"<b>說明項目..</b>\
<br><br><b>解析度</b><br>取決於所用的顯示系統。\
<br><br><b>位元傳輸率</b><br>(每秒位元數) - 請選擇攝影機運作的固定頻寬。選擇的頻寬數值越高可以讓影像的品質越好，但是也會佔用較多的網路頻寬。 \
<br><br><b>畫面更新率</b><br>（每秒框數）- 畫面更新率越高，呈現出來的視訊會越順暢，但是也會佔用較多的頻寬。 \
<br><br><b>JPEG 品質</b><br> - 預設值是中。 \
<br><br><b>喇叭</b><br>啟用本選項時，您可對著電腦的麥克風說話，聲音會傳到攝影機上的喇叭播放出來。",
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
"非常低",
"低",
"中",
"高",
"非常高",
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
