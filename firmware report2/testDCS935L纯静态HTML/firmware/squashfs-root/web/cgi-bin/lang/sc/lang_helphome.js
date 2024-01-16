var languageNum = new Array("en","sc","tc");
var item_name = new Array("支持菜单", "摄像机",
""
);
var I_SUPPORT_MENU = 0;
var I_CAMERA = 1;

var des_item_name = new Array (
"<b>H.264</b> - 使用H.264格式观看摄像机的实时视频。 如果您使用的不是IE浏览器，则需要为您的计算机安装Java程序，\
才能用H.264查看摄像机的实时视频， 请至<a href=\"http://www.java.com\">http://www.java.com</A>下载并安装Java程序\
。<br><br>",
"<b>MJPEG </b> - 使用MJPEG格式查看摄像机的实时视频。 您的电脑需要安装Java程序以使用MJPEG查看摄像机的实时视频。 \
请至<a href=\"http://www.java.com\">http://www.java.com</A>下载并安装Java程序。<br><br>",
"<b>缩放</b> - 数码变焦。 最大允许8x放大图像。<br><br>",
"<b>音频 On/Off</b> - 按下Off按钮使视频静音。 按下On按钮再次监控音频。<br><br>",
"<b>夜间模式 On/Off</b> - 您可以透过此按键手动设定摄影机夜间模式。假如您要使用这个选项，\
您必须先将日/夜模式设定为手动。<br><br>",
""
);

var D_H264 = 0;
var D_MJPEG = 1;
var D_ZOOM = 2;
var D_AUDIO = 3;
var D_NIGHT_MODE = 4;