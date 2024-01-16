var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值","不要儲存設定","儲存", 
"SD 卡管理",
"SD 卡管理",
"無效",
"總空間 :",
"剩餘空間 :",
"格式化 SD 卡",
" KB",
"請注意，攝影機並未插入 SD 卡，或 SD 卡無法寫入。",
"您要停用錄影並重新啟動嗎？",
"您要初始化嗎？",
"SD 狀態：",
"寫入保護",
"就緒",
"無效",
"是否要備份檔案？",
"是否要格式化 SD 卡？",
"SD 卡已格式化完成。",
"SD 卡",
"錄製類型：",
"錄製類型",
"名稱",
"檔案數量",
"大小",
"大小",
"已使用 :",
"視訊",
"日期",
"小時",
"檔案",
"刪除",
"確定",
"您確定要刪除勾選的檔案嗎？",
"沒有選取任何檔案！",
"重新整理 ",
"往上一層",
"每頁檔案數：",
"之",
"SD 卡格式化失敗。",
"攝影機正在使用 SD 卡進行錄影，請先停止錄影再格式化。",
"SD 卡錄影啟用",
"若要瀏覽 SD 卡，請先在此停用 SD 卡：",
"錄影",
"頁面。",
"檔案系統損毀",
"SD 卡的檔案系統損毀。請循以下說明進行復原。",
"SD 卡已滿",
"請停止錄影並重新啟動攝影機。",
"備份已錄製的檔案並重新格式化 SD 卡，否則 SD 卡錄影可能會不正常。",
"完成步驟 2 之後，可至 ",
" 頁面重新啟用錄影。",
"攝影機重新啟動後，請執行下列步驟：",
"停止錄影並重新啟動攝影機",
"攝影機已重新啟動，請稍待 ",
" 秒 ...",
"停止錄影失敗。",
"超過 16G",
"請稍待",
"請稍待",
"重新初始化",
"頁數：",
"處理中",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SDMANAGEMENT = 3
var I_SDMANAGEMENT_ITEM = 4
var I_INVAKID = 5
var I_TOTAL_SPACE = 6
var I_OVER_SPACE = 7
var I_SD_FORMAT = 8
var I_KB = 9
var I_SDNOTE = 10
var I_REBOOT_CONFIRM = 11
var I_REBOOT_CONFIRM2 = 12
var I_SDCARDSTATUS = 13
var I_WRITE_PROTECTED = 14
var I_CARD_READY = 15
var I_CARD_INVALID = 16
var I_BACKUP_CONFIRM = 17
var I_FORMAT_CONFIRM = 18
var I_COMPLETE_FORMAT = 19
var I_RECORDS = 20
var I_RECORD_TYPE = 21
var I_RECORD_TYPE1 = 22
var I_NAME = 23
var I_NUM_OF_FILES = 24
var I_FILE_SIZE = 25
var I_FOLDER_SIZE = 26
var I_USED_SPACE = 27
var I_VIDEO = 28
var I_DATE = 29
var I_HOUR = 30
var I_FILE = 31
var I_DELETE = 32
var I_OK = 33
var I_DELETE_CONFIRM = 34
var I_DELETE_CONFIRM1 = 35
var I_REFRESH = 36
var I_TOP_LEVEL = 37
var I_FILE_PER_PAGE = 38
var I_PAGE_OF = 39
var I_FORMAT_FAILED = 40
var I_FORMAT_RECORDING = 41
var I_SD_REC_ERROR = 42
var I_SD_REC_ERROR1 = 43
var I_RECORDING = 44
var I_SD_REC_ERROR2 = 45
var I_FORMAT_ERROR = 46
var I_FORMAT_ERR_MSG = 47
var I_WRITE_FULL = 48
var I_RECORD_ERR1 = 49
var I_RECORD_ERR2 = 50
var I_RECORD_ERR3 = 51
var I_RECORD_ERR4 = 52
var I_FORMAT_ERR_MSG2 = 53
var I_RECOVER = 54
var I_REBOOT1 = 55
var I_REBOOT2 = 56
var I_DIABLE_REC_FAIL = 57
var I_OVER_4G = 58
var I_WAIT = 59
var I_ONLY_WAIT = 60
var I_REINIT = 61
var I_PAGE = 62
var I_PROCESSING = 63;

var des_item_name = new Array (
"您可在此瀏覽並管理 SD 卡儲存的錄影檔案。",
"請注意，攝影機並未插入 SD 卡，或 SD 卡無法寫入。<br>要格式化SD卡，請先禁用SD卡錄影。",
"<b>說明項目..</b><br><br><b>SD卡</b><br>顯示SD卡的當前路徑。<br><br><b>SD 狀態</b><br>此狀態會顯示目前SD記憶卡是否已插入或被偵測。<br><br><b>每頁檔案數</b><br>每頁顯示的檔案數量。<br><br><b>頁數</b><br>當前要顯示第幾頁。<br><br><b>格式化 SD 卡</b><br>請按此圖示自動格式化 SD 卡，並建立影像資料夾。進行SD卡格式化，請先關閉SD錄影功能。<br><br><b>總空間</b><br>SD卡的總空間。<br><br><b>已使用</b><br>已使用的SD卡空間。<br><br><b>剩餘空間</b><br>SD卡剩餘空間。<br>",
""
);

var D_TITLE_INFO = 0;
var D_ERROR_INFO = 1;
var D_HELP_INFO = 2;

var pop_msg = new Array (
"請求失敗",
""
);

var PMSG_REQUEST_FAILED = 0;