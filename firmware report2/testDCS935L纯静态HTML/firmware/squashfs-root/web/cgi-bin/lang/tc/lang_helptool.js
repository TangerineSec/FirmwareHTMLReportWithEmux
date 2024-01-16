var languageNum = new Array("en","sc","tc");
var item_name = new Array("支援功能表", "管理", "系統",
"韌體更新",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"此頁面可設定管理員密碼與其他使用者帳戶。<br><br>",
"<b>攝影機名稱</b> – 獨特的攝影機名稱。<br><br>",
"<b>LED 控制</b> - 選擇「正常」以啟用LED，選擇「關閉」則停用LED。<br><br>",
"<b>使用者存取控制</b> - 啟用此選項才能讓其他使用者存取攝影機。<br><br>",
"<b>快照 URL 驗證</b> - 啟用此選項時，使用者必須輸入帳號密碼才能存取 http://IP 攝影機的 IP 位址/image/jpeg.cgi 觀看靜態影像。<br><br>",
"<b>OSD時間</b> - 啟用此選項將在畫面上顯示OSD時間。<br><br>",
"<b>使用者名稱</b> - 新增可以存取視訊影像的使用者。使用者清單最多可放 8 名使用者，並可在事後修改與刪除。",
"<b>儲存到本機硬碟</b> - 會出現提示讓您把攝影機設定檔存到電腦，供未來回復使用。<br><br>",
"<b>從本機硬碟載入</b> - 可找出之前儲存的檔案，並將攝影機回復成之前設定的參數。<br><br>",
"<b>將所有設定回復成出廠預設值</b> - 此項目可以重設攝影機，並將設定回復成出廠預設值。所有先前的設定都會消失。<br><br>",
"<b>重新啟動裝置</b> - 此項目可重新啟動攝影機。",
"<b>更新韌體</b> – 此項目可讓使用者透過瀏覽器更新韌體。按<b>瀏覽</b>找到新版韌體檔，再按<b>上傳</b>把新韌體灌進攝影機。",
""
);

var D_ADMIN_INFO = 0;
var D_CAM_NAME_INFO = 1;
var D_LED_CONTROL_INFO = 2;
var D_USER_ACCESS_CONTROL_INFO = 3;
var D_SNAPSHOT_URL_INFO = 4;
var D_OSD_TIME_INFO = 5;
var D_USER_NAME_INFO = 6;
var D_SAVE_TO_LOCAL_INFO = 7;
var D_LOAD_FROM_LOCAL_INFO = 8;
var D_FACTORY_RESET_INFO = 9;
var D_REBOOT_INFO = 10;
var D_FWIPGRADE_INFO = 11;
