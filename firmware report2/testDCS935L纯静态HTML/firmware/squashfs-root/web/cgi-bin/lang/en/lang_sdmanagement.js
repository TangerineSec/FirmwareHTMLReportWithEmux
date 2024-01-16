var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"SD MANAGEMENT",
"SD CARD",
"INVALID",
"Total :",
"Free :",
"Format SD Card",
" KB",
"Please note that there is no SD Card plugged into the camera or the SD Card is not writable.",
"Do you want to disable recording and reboot?",
"Do you want to initialize?",
"SD Status : ",
"Write Protected",
"Ready",
"Invalid",
"Do you want to backup files?",
"Do you want to format SD Card?",
"SD Card is completely formatted.",
"SD Card",
"Record Type: ",
"Record Type ",
"Name",
"Num of files",
"Size",
"Size",
"Used :",
"video",
"Date",
"Hour",
"File",
"Delete",
"OK",
"The selected file will be deleted, are you sure?",
"No file is selected!",
"Refresh",
"Up One Level",
"Files per Page:",
" of",
"SD Card formatting failed.",
"Camera is recording files to SD Card now, please stop recording before format it.",
"SD CARD RECORDING ENABLE",
"If you want to browse SD Card, please disable SD Card in",
"Recording",
"page first.",
"FILE SYSTEM CORRUPT",
"File system of SD Card is corrupt. Please follow the instruction below to recover.",
"SD Card Capacity Full",
"Disable recording and reboot camera.",
"Backup recorded files and reformat SD Card ,or SD Card recording might fail easily.",
"After step2, you can go to ",
" page to re-enable recording.",
"Please doing the following steps after the camara rebooted:",
"Disable recording and reboot camera",
"Camera has been reboot, please wait for ",
" seconds ...",
"Disable recording fail.",
"Over 16G",
"Please wait",
"Please wait",
"Reinitialization",
"Pages:",
"Processing",
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
"Here you could browse and manage the files which stored in SD Card.",
"Please note that there is no SD Card plugged into the camera or the SD Card is not writable.<br>To format the SD Card in the camera, please disable SD Recording first.",
"<b>Helpful Hints..</b><br><br><b>SD Card</b>This can indicate the current path of SD Card.<br><br><b>SD Status</b>This can indicate the current SD Card status (whether it is inserted or detected).<br><br><b>Files per Page</b>The number of files per page.<br><br><b>Pages</b>You can select which page to display here.<br><br><b>Format SD Card</b>Click this button to automatically format the SD Card and create folder for snapshot and video. To format SD Card, you need to disable SD Recording first.<br><br><b>Total</b>The total capability of SD Card.<br><br><b>Used</b>The used capability of SD Card.<br><br><b>Free</b>The free capability of SD Card.",
""
);

var D_TITLE_INFO = 0;
var D_ERROR_INFO = 1;
var D_HELP_INFO = 2;

var pop_msg = new Array (
"There was a problem with the request.",
""
);

var PMSG_REQUEST_FAILED = 0;
