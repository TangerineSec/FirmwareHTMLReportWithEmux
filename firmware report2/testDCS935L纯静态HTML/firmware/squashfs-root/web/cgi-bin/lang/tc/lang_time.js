var languageNum = new Array("en","sc","tc");
var item_name = new Array("儲存設定值", "不要儲存設定", "儲存", 
"時間與日期", 
"時間設定",
"目前時間",
"時區",
"日光節約",
"自動日光節約",
"手動設定日光節約",
"時差",
"年",
"月",
"日",
"週",
"日",
"時",
"分",
"秒",
"開始時間",
"結束時間",
"自動時間設定",
"與 NTP 伺服器同步",
"NTP 伺服器",
"手動設定日期和時間",
"手動設定日期和時間",
"複製您電腦的時間設定",
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
"時間設定功能可讓您設定、更新與維護系統內部時鐘的時間。您可設定所在時區，也可以設定 NTP（Network Time Protocol，網路時間協定）伺服器。",
"<b>說明項目..</b>\
<br><br><b>時區</b> - 當地時間設定的地理區域。\
<br><br><b>自動時間設定</b> – 若選擇此選項，攝影機啟動時就會跟網際網路上的 NTP 伺服器做時間同步。若時間伺服器無法連線，就不會做任何時間設定。\
<br><br><b>NTP 伺服器</b> – 時間伺服器的 IP 位址或網域名稱。\
<br><br><b>節約日光</b> - 啟用節約日光調整時間取決於節約日光時間偏移和日期。\
<br><br>您也可<b>手動設定日期與時間</b>，或<b>複製您電腦的時間設定</b>。",
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
"選擇 NTP 伺服器",
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
"(GMT-12:00) 國際換日線以西",
"(GMT-10:00) 夏威夷",
"(GMT-09:00) 阿拉斯加",
"(GMT-08:00) 太平洋時區 (美國 & 加拿大)",
"(GMT-08:00) 提華納、下加里福尼亞",
"(GMT-07:00) 奇瓦瓦、拉巴斯、馬薩特蘭",
"(GMT-07:00) 山區時間 (美國 & 加拿大)",
"(GMT-07:00) 亞歷桑納",
"(GMT-06:00) 中美洲",
"(GMT-06:00) 瓜達拉哈拉、墨西哥市、蒙特雷",
"(GMT-06:00) 薩克斯其萬省",
"(GMT-06:00) 中央標準時區 (美國 & 加拿大)",
"(GMT-05:00) 波哥大、利馬、基多",
"(GMT-05:00) 東方標準時區 (美國 & 加拿大)",
"(GMT-05:00) 印第安納州 (東部)",
"(GMT-04:30) 卡拉卡斯",
"(GMT-04:00) 拉巴斯、喬治城、聖胡安",
"(GMT-04:00) 大西洋時間 (加拿大)",
"(GMT-04:00) 馬瑙斯",
"(GMT-04:00) 亞松森",
"(GMT-04:00) 庫亞巴",
"(GMT-03:30) 紐芬蘭",
"(GMT-03:00) 聖地牙哥",
"(GMT-03:00) 布宜諾斯艾利斯",
"(GMT-03:00) 巴西利亞",
"(GMT-03:00) 格陵蘭",
"(GMT-03:00) 蒙特維多",
"(GMT-03:00) 卡宴、福塔雷薩",
"(GMT-03:00) 薩爾瓦多",
"(GMT-02:00) 中大西洋",
"(GMT-01:00) 亞速爾群島",
"(GMT-01:00) 維德角群島",
"(GMT) 卡薩布蘭加",
"(GMT) 格林威治標準時間：都柏林、愛丁保、里斯本、倫敦",
"(GMT) 蒙羅維亞、雷克雅維克",
"(GMT+01:00) 貝爾格勒、伯拉第斯拉瓦、布達佩斯、盧布爾雅那、布拉格",
"(GMT+01:00) 西中非",
"(GMT+01:00) 塞拉耶佛、史可普列、華沙、札格拉布",
"(GMT+01:00) 布魯塞爾、哥本哈根、馬德里、巴黎",
"(GMT+01:00) 阿姆斯特丹、柏林、伯恩、羅馬、斯德哥爾摩、維也納",
"(GMT+01:00) 溫得和克",
"(GMT+02:00) 赫爾辛基、基輔、索非亞、塔林、維爾紐斯",
"(GMT+02:00) 雅典、布佳勒斯特、伊斯坦堡",
"(GMT+02:00) 貝魯特",
"(GMT+02:00) 哈拉雷、普利托里亞",
"(GMT+02:00) 開羅",
"(GMT+02:00) 安曼",
"(GMT+02:00) 耶路撒冷",
"(GMT+02:00) 大馬士革",
"(GMT+02:00) 尼古西亞",
"(GMT+03:00) 明斯克、加里寧格勒",
"(GMT+03:00) 巴格達",
"(GMT+03:00) 奈洛比",
"(GMT+03:00) 科威特、利雅德",
"(GMT+03:00) 莫斯科、聖彼得堡、伏爾加格勒",
"(GMT+03:30) 德黑蘭",
"(GMT+04:00) 巴庫",
"(GMT+04:00) 阿布達比、馬斯喀特",
"(GMT+04:00) 第比利斯",
"(GMT+04:00) 葉里溫",
"(GMT+04:00) 路易港",
"(GMT+04:30) 喀布爾",
"(GMT+05:00) 伊斯蘭馬巴德、喀拉蚩、塔什干",
"(GMT+05:00) 葉卡捷琳堡",
"(GMT+05:30) 金奈、加爾各答、孟買、新德里",
"(GMT+05:30) 斯里蘭卡",
"(GMT+05:45) 加德滿都",
"(GMT+06:00) 阿斯塔那、達卡",
"(GMT+06:00) 新西伯利亞",
"(GMT+06:30) 仰光",
"(GMT+07:00) 曼谷、河內、雅加達",
"(GMT+07:00) 克拉斯諾亞爾斯克",
"(GMT+08:00) 北京、重慶、香港、烏魯木齊",
"(GMT+08:00) 台北",
"(GMT+08:00) 烏蘭巴托",
"(GMT+08:00) 伯斯",
"(GMT+08:00) 吉隆坡、新加坡",
"(GMT+08:00) 伊爾庫次克",
"(GMT+09:00) 大阪、札幌、東京",
"(GMT+09:00) 首爾",
"(GMT+09:00) 亞庫次克",
"(GMT+09:30) 阿得萊德",
"(GMT+09:30) 達爾文",
"(GMT+10:00) 霍巴特",
"(GMT+10:00) 布里斯班",
"(GMT+10:00) 坎培拉、墨爾本、雪梨",
"(GMT+10:00) 關島、摩爾斯比港",
"(GMT+11:00) 所羅門群島、新喀裡多尼亞",
"(GMT+10:00) 馬加丹",
"(GMT+10:00) 海參威",
"(GMT+12:00) 斐濟",
"(GMT+12:00) 奧克蘭、威靈頓",
"(GMT+13:00) 努瓜婁發",
"(GMT+13:00) 薩摩亞",
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
"NTP 伺服器位址無效",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;

