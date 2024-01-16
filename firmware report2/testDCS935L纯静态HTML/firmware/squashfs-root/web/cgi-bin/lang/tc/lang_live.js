var languageNum = new Array("en","sc","tc");
var item_name = new Array("攝影機", "影像壓縮格式", "H.264",
"MJPEG",
"即時影像",
"放大",
"縮小",
"切和寬度",
"切和高度",
"原始大小",
"全螢幕",
"快照",
"設定儲存資料夾",
"錄影",
"停止錄影",
"監聽",
"停止監聽",
"對講",
"停止對講",
"開啟 IR LED 燈",
"關閉 IR LED 燈",
"縮放倍率",
"縮放",
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
"本區顯示您 IP 攝影機的即時影像。請用下列按鈕來控制設定。目前的解析度是 \
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
"音訊線路被佔用，請稍後再試。",
"建立音訊串流輸出失敗，建立 Socket 失敗",
"對講停用",
"伺服器連接失敗",
"未知錯誤",
""
);

var PMSG_SPEAKER_OCCUPIED = 0;
var PMSG_OPEN_MICROPHONE_FAILED = 1;
var PMSG_SPEAKER_DISABLED = 2;
var PMSG_NETWORK_ERROR = 3;
var PMSG_UNKNOW_ERROR = 4;
