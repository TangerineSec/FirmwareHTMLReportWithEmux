var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Time and Date", 
"Time Configuration",
"Current Time",
"Time Zone",
"Daylight Saving",
"Auto Daylight Saving",
"Set DST Manually",
"Offset",
"Year",
"Month",
"Day",
"Week",
"Day of Week",
"Hour",
"Minute",
"Second",
"Start",
"End",
"Automatic time configuration",
"Synchronize with NTP Server",
"NTP Server",
"Set The Date And Time Manually",
"Set Date and Time Manually",
"Copy Your Computer's Time Settings",
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
"The Time Configuration option allows you to configure, update, and \
maintain the internal system clock. In this section you can set the time \
zone the camera is in, and set the NTP (Network Time Protocol) Server.",
"<b>Helpful Hints..</b>\
<br><br><b>Time Zone</b> - The geographical zone for the local time setting.\
<br><br><b>Automatic Time Configuration</b> - With this option selected, \
the camera will synchronize its date and time settings with an NTP \
server over the Internet upon camera start up. If the timeserver cannot \
be reached, no time settings will be applied. \
<br><br><b>NTP server</b> - The IP address or domain name of the Time Server.\
<br><br><b>Daylight Saving</b> - Enable daylight saving that will adjust \
the time depending on the daylight saving time offset and date.\
<br><br>You may also <b>Set the Date and Time Manually</b> or <b>Copy \
your Computer\'s Time Settings</b>.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Sunday",
"Monday",
"Tuesday",
"Wednesday",
"Thusday",
"Friday",
"Saturday",
"Select NTP Server",
"1st",
"2nd",
"3rd",
"4th",
"5th",
"6th",
"Jan",
"Feb",
"Mar",
"Apr",
"May",
"Jun",
"Jul",
"Aug",
"Sep",
"Oct",
"Nov",
"Dec",
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
"(GMT-12:00) International Date Line West",
"(GMT-10:00) Hawaii",
"(GMT-09:00) Alaska",
"(GMT-08:00) Pacific Time (US & Canada)",
"(GMT-08:00) Tijuana, Baja California",
"(GMT-07:00) Chihuahua, La Paz, Mazatlan",
"(GMT-07:00) Mountain Time (US & Canada)",
"(GMT-07:00) Arizona",
"(GMT-06:00) Central America",
"(GMT-06:00) Guadalajara, Mexico City, Monterrey",
"(GMT-06:00) Saskatchewan",
"(GMT-06:00) Central Time (US & Canada)",
"(GMT-05:00) Bogota, Lima, Quito",
"(GMT-05:00) Eastern Time (US & Canada)",
"(GMT-05:00) Indiana (East)",
"(GMT-04:30) Caracas",
"(GMT-04:00) La Paz, Georgetown, San Juan",
"(GMT-04:00) Atlantic Time (Canada)",
"(GMT-04:00) Manaus",
"(GMT-04:00) Asuncion",
"(GMT-04:00) Cuiaba",
"(GMT-03:30) Newfoundland",
"(GMT-03:00) Santiago",
"(GMT-03:00) Buenos Aires",
"(GMT-03:00) Brasilia",
"(GMT-03:00) Greenland",
"(GMT-03:00) Montevideo",
"(GMT-03:00) Cayenne, Fortaleza",
"(GMT-03:00) Salvador",
"(GMT-02:00) Mid-Atlantic",
"(GMT-01:00) Azores",
"(GMT-01:00) Cape Verde Is.",
"(GMT) Casablanca",
"(GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London",
"(GMT) Monrovia, Reykjavik",
"(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague",
"(GMT+01:00) West Central Africa",
"(GMT+01:00) Sarajevo, Skopje, Warsaw, Zagreb",
"(GMT+01:00) Brussels, Copenhagen, Madrid, Paris",
"(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna",
"(GMT+01:00) Windhoek",
"(GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius",
"(GMT+02:00) Athens, Bucharest, Istanbul",
"(GMT+02:00) Beirut",
"(GMT+02:00) Harare, Pretoria",
"(GMT+02:00) Cairo",
"(GMT+02:00) Amman",
"(GMT+02:00) Jerusalem",
"(GMT+02:00) Damascus",
"(GMT+02:00) Nicosia",
"(GMT+03:00) Minsk, Kaliningrad",
"(GMT+03:00) Baghdad",
"(GMT+03:00) Nairobi",
"(GMT+03:00) Kuwait, Riyadh",
"(GMT+03:00) Moscow, St. Petersburg, Volgograd",
"(GMT+03:30) Tehran",
"(GMT+04:00) Baku",
"(GMT+04:00) Abu Dhabi, Muscat",
"(GMT+04:00) Tbilisi",
"(GMT+04:00) Yerevan",
"(GMT+04:00) Port Louis",
"(GMT+04:30) Kabul",
"(GMT+05:00) Islamabad, Karachi, Tashkent",
"(GMT+05:00) Yekaterinburg",
"(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi",
"(GMT+05:30) Sri Jayawardenepura",
"(GMT+05:45) Kathmandu",
"(GMT+06:00) Astana, Dhaka",
"(GMT+06:00) Novosibirsk",
"(GMT+06:30) Yangon (Rangoon)",
"(GMT+07:00) Bangkok, Hanoi, Jakarta",
"(GMT+07:00) Krasnoyarsk",
"(GMT+08:00) Beijing, Chongqing, Hong Kong, Urumqi",
"(GMT+08:00) Taipei",
"(GMT+08:00) Ulaanbaatar",
"(GMT+08:00) Perth",
"(GMT+08:00) Kuala Lumpur, Singapore",
"(GMT+08:00) Irkutsk",
"(GMT+09:00) Osaka, Sapporo, Tokyo",
"(GMT+09:00) Seoul",
"(GMT+09:00) Yakutsk",
"(GMT+09:30) Adelaide",
"(GMT+09:30) Darwin",
"(GMT+10:00) Hobart",
"(GMT+10:00) Brisbane",
"(GMT+10:00) Canberra, Melbourne, Sydney",
"(GMT+10:00) Guam, Port Moresby",
"(GMT+10:00) Vladivostok",
"(GMT+10:00) Magadan",
"(GMT+11:00) Solomon Is., New Caledonia",
"(GMT+12:00) Fiji",
"(GMT+12:00) Auckland, Wellington",
"(GMT+13:00) Nukualofa",
"(GMT+13:00) Samoa",
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
"There was a problem with the request.",
"The format of NTP Server Used is invalid.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
