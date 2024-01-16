var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置","不保存设置","保存",
"SD卡管理",
"SD卡管理",
"无效",
"总共：",
"空闲：",
"格式化SD卡",
" KB",
"请注意，摄像机中没有插入SD卡或SD卡不可写入。",
"您要禁止录制或重启吗？",
"您要初始化吗？",
"SD状态： ",
"写入保护",
"就绪",
"无效",
"您要备份文件吗？",
"您需要格式化SD卡吗？",
"SD卡格式化完成",
"SD卡",
"录制类型： ",
"录制类型： ",
"名称",
"",
"大小",
"大小",
"已使用：",
"视频",
"日期",
"小时",
"文件",
"删除",
"确定",
"将删除选中的文件，您确定?",
"没有文件被选中！",
"刷新",
"到上一级",
"每页文件数：",
"之",
"SD卡格式化失败。",
"摄像机正在录制文件到SD卡，格式化前请停止录制。",
"SD卡录制启用",
"如果您要浏览SD卡，请禁用SD卡",
"录制",
"页面第一项",
"文件系统损坏",
"SD卡的文件系统已损坏，请根据以下指令进行恢复。",
"SD卡容量已满。",
"禁用录制并重启摄像机。",
"备份录制的文件或重新格式化SD卡，或SD卡录制很可能失败。",
"步骤2后，您可以转到",
" 页面进行重新启用录制。",
"摄像机重启后，请执行以下步骤：",
"禁用录制和重启摄像机",
"已经重启摄像机，请等待 ",
" 数秒…",
"禁用录制失败。",
"超过16G",
"请等待",
"请等待",
"重新初始化",
"页数：",
"处理中",
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
"这里您可以浏览和管理存储在SD卡上的录制文件。",
"请注意，摄像机中没有插入SD卡或SD卡不可写入。<br>要格式化摄像机中的SD卡，请先禁用SD卡录制。",
"<b>帮助提示..</b><br><br><b>SD卡</b><br>显示SD卡的当前路径。<br><br><b>SD 状态</b><br>此状态会显示目前SD卡是否已插入或者被侦测。<br><br><b>每页文件数</b><br>每页显示的文件数量。<br><br><b>页数</b><br>当前要显示第几页。<br><br><b>格式化SD卡</b><br>单击此图标自动格式化SD卡和为视频创建文件夹。进行SD卡格式化，请先关闭的SD卡录制功能。<br><br><b>总共</b><br>	SD卡总容量。<br><br><b>已使用</b><br>已使用的SD卡容量。<br><br><b>空闲</b><br>SD卡空闲容量。<br>",
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