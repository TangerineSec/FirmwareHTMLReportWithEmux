var languageNum = new Array("en","sc","tc");
var item_name = new Array("支援功能表", "攝影機",
""
);
var I_SUPPORT_MENU = 0;
var I_CAMERA = 1;

var des_item_name = new Array (
"<b>H.264</b> - 使用H.264串流來瀏覽攝影機的即時影像。 若您電腦使用的網頁瀏覽器不是Internet Explorer，\
則必須安裝Java後才能使用H.264的格式來觀看攝影機的即時影像。 請到<a href=\"http://www.java.com\">\
http://www.java.com</A>網站下載及安裝Java程式。<br><br>",
"<b>MJPEG </b> - 使用MJPEG串流來瀏覽攝影機即時影像。 您的電腦必須安裝Java程式才能使用MJPEG串流來觀看\
攝影機即時影像。 請到<a href=\"http://www.java.com\">http://www.java.com</A>網站下載及安裝Java程式。<br><br>",
"<b>縮放</b> – 縮放採用數位放大。最多可將影像放大 8x。<br><br>",
"<b>音訊開/關</b> – 按下「關閉」按鈕可以靜音。按「開啟」可以繼續監控聲音。<br><br>",
"<b>夜晚模式開啟/關閉</b> - 您可以透過按鍵手動設定攝影機夜晚模式。假如您要使用這個選項，您必須先將白天/夜晚模式設定為手動。<br><br>",
""
);

var D_H264 = 0;
var D_MJPEG = 1;
var D_ZOOM = 2;
var D_AUDIO = 3;
var D_NIGHT_MODE = 4;
