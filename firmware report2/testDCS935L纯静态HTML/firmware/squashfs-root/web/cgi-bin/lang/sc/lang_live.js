var languageNum = new Array("en","sc","tc");
var item_name = new Array("摄像机", "视频压缩格式", "H.264",
"MJPEG",
"实时视频",
"放大",
"缩小",
"切和宽度",
"切和高度",
"原始大小",
"全屏",
"快照",
"设置存储文件夹",
"录制",
"停止录制",
"监听",
"停止监听",
"通话",
"停止通话",
"红外LED亮",
"红外LED灭",
"缩放倍率",
"放大/缩小",
""
);
var I_CAMERA_INFO = 0;
var I_VIDEO_COMPRESSION_FORMAT = 1;
var I_H264 = 2;
var I_MJPEG = 3;
var I_LIVE_VIDEO = 4;
var I_ZOOM_IN = 5;
var I_ZOOM_OUT = 6;
var I_FIT_WIDTH = 7;
var I_FIT_HEIGHT = 8;
var I_ORIGNAL_SIZE = 9;
var I_FULL_SCREEN = 10;
var I_SNAPSHOT = 11;
var I_SET_STORAGE_FOLDER = 12;
var I_RECORD = 13;
var I_STOP_RECORDING = 14;
var I_LISTEN = 15;
var I_STOP_LISTENING = 16;
var I_TALK = 17;
var I_STOP_TALKING = 18;
var I_IRLED_ON = 19;
var I_IRLED_OFF = 20;
var I_ZOOM_RATE = 21;
var I_ZOOM_IN_OUT = 22;

var des_item_name = new Array (
"本章讲述IP摄像机的实时视频。您可以通过以下按钮控制您的设置。当前分辨率为\
<span id=\"sResolution\" name=\"sResolution\"></span>.",
""
);

var D_CAMERA_INFO = 0;

var option_content = new Array (
"AVI",
"MP4",
""
);

var O_AVI = 0;
var O_MP4 = 1;

var pop_msg = new Array (
"音频线被占用，请稍后再试。",
"创建音频流输出失败，创建套接字失败。",
"通话禁用",
"连接到服务器失败",
"未知错误",
""
);

var PMSG_SPEAKER_OCCUPIED = 0;
var PMSG_OPEN_MICROPHONE_FAILED = 1;
var PMSG_SPEAKER_DISABLED = 2;
var PMSG_NETWORK_ERROR = 3;
var PMSG_UNKNOW_ERROR = 4;
