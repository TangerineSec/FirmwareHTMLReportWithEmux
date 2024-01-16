var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存", 
"时间和日期", 
"时间配置",
"当前时间",
"时区",
"夏令时",
"自动夏令时",
"手动设置夏令时",
"偏移值",
"年",
"月",
"日",
"周次",
"日",
"时",
"分",
"秒",
"开始时间",
"结束时间",
"自动时间配置",
"与NTP服务器同步",
"NTP服务器",
"手动设置日期和时间",
"手动设置日期和时间",
"复制您的计算机时间设置",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_TIME_AND_DATE = 3;
var I_TIME_CONFIGURATION = 4;
var I_CURRECT_TIME = 5;
var I_TIMEZONE = 6;
var I_DAYLIGHT_SAVING = 7;
var I_AUTO_DST = 8;
var I_MANAUAL_DST = 9;
var I_OFFSET = 10;
var I_YEAR = 11;
var I_MONTH = 12;
var I_DAY = 13;
var I_WEEK = 14;
var I_DAY_OF_WEEK = 15;
var I_HOUR = 16;
var I_MINUTE = 17;
var I_SECOND = 18;
var I_START = 19;
var I_END = 20;
var I_AUTO_TIME_CONFIGURATION = 21;
var I_SYNC_WITH_NTP_SERVER = 22;
var I_NTP_SERVER = 23;
var I_SET_DATETIME_MANUAL = 24;
var I_SET_THE_DATETIME_MANUAL2 = 25;
var I_COPY_COMPUTER_TIME = 26;

var des_item_name = new Array (
"时间配置选项使用户能配置、升级和维护内部系统时钟的时间。从本章节开始，您可以设置您所在的时区并设置时间服务器。",
"<b>帮助提示..</b>\
<br><br><b>时区</b> - 本地时间设置的地理区域。\
<br><br><b>自动时间配置</b> - 如果选择了该选项，摄像机启动时会通过Internet 与NTP服务器同步时间设置。 如果时间服务器不可达，将不会应用任何时间设置。\
<br><br><b>NTP服务器</b> - 时间服务器的IP地址或域名。\
<br><br><b>夏令时</b> - 启用夏令时将根据夏令时偏移和日期调整时间。\
<br><br>您也可以<b>手动设置日期和时间</b>，或<b>复制您的计算机时间设置</b>。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六",
"选择一个NTP服务器",
"第一",
"第二",
"第三",
"第四",
"第五",
"第六",
"一月",
"二月",
"三月",
"四月",
"五月",
"六月",
"七月",
"八月",
"九月",
"十月",
"十一月",
"十二月",
"12 am",
"1 am",
"2 am",
"3 am",
"4 am",
"5 am",
"6 am",
"7 am",
"8 am",
"9 am",
"10 am",
"11 am",
"12 pm",
"1 pm",
"2 pm",
"3 pm",
"4 pm",
"5 pm",
"6 pm",
"7 pm",
"8 pm",
"9 pm",
"10 pm",
"11 pm",
"(GMT-12:00)日界线西",
"(GMT-10:00)夏威夷",
"(GMT-09:00)阿拉斯加",
"(GMT-08:00)太平洋时间（美国和加拿大）",
"(GMT-08:00)蒂华呐，巴哈，加利福利亚",
"(GMT-07:00)奇瓦瓦，拉巴斯，马扎特兰",
"(GMT-07:00)山地时间（美国和加拿大）",
"(GMT-07:00)亚利桑那",
"(GMT-06:00)中美洲",
"(GMT-06:00)瓜达拉哈拉，墨西哥城，蒙特雷",
"(GMT-06:00)萨斯喀彻温",
"(GMT-06:00)中部时间（美国和加拿大）",
"(GMT-05:00)波哥大，利马，基多",
"(GMT-05:00)东部时间（美国和加拿大）",
"(GMT-05:00)印第安那州（东部）",
"(GMT-04:30)加拉加斯",
"(GMT-04:00)拉巴斯，乔治敦，圣胡安",
"(GMT-04:00)大西洋时间（加拿大）",
"(GMT-04:00)马瑙斯",
"(GMT-04:00)亚松森",
"(GMT-04:00)库亚巴",
"(GMT-03:30)纽芬兰",
"(GMT-03:00)圣地亚哥",
"(GMT-03:00)布宜诺斯艾利斯",
"(GMT-03:00)巴西利亚",
"(GMT-03:00)格陵兰",
"(GMT-03:00)蒙得维的亚",
"(GMT-03:00)卡宴，福塔雷萨",
"(GMT-03:00)萨尔瓦多",
"(GMT-02:00)中大西洋",
"(GMT-01:00)亚速尔群岛",
"(GMT-01:00)佛得角群岛",
"(GMT)卡萨布兰卡",
"(GMT)格林威治标准时间：都柏林，爱丁堡，里斯本，伦敦",
"(GMT)蒙罗维亚，雷克雅维克",
"(GMT+01:00)贝尔格莱德，布拉迪斯拉发，布达佩斯，卢布尔雅那，布拉格",
"(GMT+01:00)中非西部",
"(GMT+01:00)萨拉热窝，斯科普里，华沙，萨格雷布",
"(GMT+01:00)布鲁塞尔，哥本哈根，马德里，巴黎",
"(GMT+01:00)阿姆斯特丹，柏林，伯尔尼，罗马，斯德哥尔摩，维也纳",
"(GMT+01:00)温得和克",
"(GMT+02:00)赫尔辛基，基辅，里加，索菲亚，塔林，维尔纽斯",
"(GMT+02:00)雅典，布加勒斯特，伊斯坦布尔",
"(GMT+02:00)贝鲁特",
"(GMT+02:00)哈拉雷，比勒陀利亚",
"(GMT+02:00)开罗",
"(GMT+02:00)安曼",
"(GMT+02:00)耶路撒冷",
"(GMT+02:00)大马士革",
"(GMT+02:00)尼科西亚",
"(GMT+03:00)明斯克，加里宁格勒",
"(GMT+03:00)巴格达",
"(GMT+03:00)内罗毕",
"(GMT+03:00)威特，利雅得",
"(GMT+03:30)德黑兰",
"(GMT+03:00)莫斯科，圣彼得堡，伏尔加格勒",
"(GMT+04:00)巴库",
"(GMT+04:00)阿布扎比，马斯喀特",
"(GMT+04:00)第比利斯",
"(GMT+04:00)耶烈万",
"(GMT+04:00)路易港",
"(GMT+04:30)喀布尔",
"(GMT+05:00)伊斯兰堡，卡拉奇，塔什干",
"(GMT+05:30)马德拉斯，加尔各答，孟买，新德里",
"(GMT+05:30)科伦坡",
"(GMT+05:45)加德满都",
"(GMT+06:00)阿斯塔纳，达卡",
"(GMT+05:00)叶卡特琳堡",
"(GMT+06:30)仰光",
"(GMT+07:00)曼谷，河内，雅加达",
"(GMT+06:00)新西伯利亚",
"(GMT+08:00)北京，重庆，香港特别行政区，乌鲁木齐",
"(GMT+08:00)台北",
"(GMT+08:00)乌兰巴托",
"(GMT+08:00)珀斯",
"(GMT+08:00)吉隆坡，新加坡",
"(GMT+07:00)克拉斯若亚尔斯克",
"(GMT+09:00)大坂，札幌，东京",
"(GMT+09:00)首尔",
"(GMT+08:00)伊尔库茨克",
"(GMT+09:30)阿德睐德",
"(GMT+09:30)达尔文",
"(GMT+10:00)霍巴特",
"(GMT+10:00)布里斯班",
"(GMT+10:00)堪培拉，墨尔本，悉尼",
"(GMT+10:00)关岛，莫尔兹比港",
"(GMT+09:00)雅库茨克",
"(GMT+11:00)所罗门群岛，新喀里多尼亚",
"(GMT+10:00)符拉迪沃斯托克",
"(GMT+12:00)斐济",
"(GMT+12:00)奥克兰，惠灵顿",
"(GMT+10:00)马加丹",
"(GMT+13:00)努库阿洛法",
"(GMT+13:00)萨摩亚",
""
);

var O_SUNDAY = 0;
var O_MONDAY = 1;
var O_TUESDAY = 2;
var O_WEDNESDAY = 3;
var O_THUSDAY = 4;
var O_FRIDAY = 5;
var O_SATURDAY = 6;
var O_SELECT_NTP_SERVER = 7;
var O_FIRST = 8;
var O_SECOND = 9;
var O_THIRD = 10;
var O_FOURTH = 11;
var O_FIFTH = 12;
var O_SIXTH = 13;
var O_JAN = 14;
var O_FEB = 15;
var O_MAR = 16;
var O_APR = 17;
var O_MAY = 18;
var O_JUN = 19;
var O_JUL = 20;
var O_AUG = 21;
var O_SEP = 22;
var O_OCT = 23;
var O_NOV = 24;
var O_DEC = 25;
var O_12_AM = 26;
var O_1_AM = 27;
var O_2_AM = 28;
var O_3_AM = 29;
var O_4_AM = 30;
var O_5_AM = 31;
var O_6_AM = 32;
var O_7_AM = 33;
var O_8_AM = 34;
var O_9_AM = 35;
var O_10_AM = 36;
var O_11_AM = 37;
var O_12_PM = 38;
var O_1_PM = 39;
var O_2_PM = 40;
var O_3_PM = 41;
var O_4_PM = 42;
var O_5_PM = 43;
var O_6_PM = 44;
var O_7_PM = 45;
var O_8_PM = 46;
var O_9_PM = 47;
var O_10_PM = 48;
var O_11_PM = 49;
var O_LANG_TIMEZONE_START = 50;

var pop_msg = new Array (
"請求失敗",
"无效NTP服务器地址",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
