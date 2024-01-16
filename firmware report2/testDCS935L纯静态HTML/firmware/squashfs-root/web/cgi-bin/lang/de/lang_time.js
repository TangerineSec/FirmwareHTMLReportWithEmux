var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Zeit und Datum", 
"ZEITKONFIGURATION",
"Aktuelle Zeit",
"SNTP-Datum und Uhrzeit",
"Sommerzeit ist aktiviert.",
"Automatische Anpassung für Änderungen der Sommerzeiteinstellung.",
"Sommerzeit manuell festlegen",
"Ausgleich",
"Jahr",
"Monat",
"Tag",
"Woche",
"Tag",
"Stunde",
"Minuten",
"Sekunde",
"Startzeit",
"Ende",
"AUTOMATISCHE ZEITEINSTELLUNG",
"NTP-Server",
"NTP-Server",
"DATUM UND UHRZEIT MANUELL EINSTELLEN",
"DATUM UND UHRZEIT MANUELL EINSTELLEN",
"Zeiteinstellungen des Computers kopieren",
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
"Die Zeitkonfigurationsoption ermöglicht die Konfiguration, Aktualisierung und Verwaltung der internen Systemuhr. \
In diesem Abschnitt können Sie die Zeitzone, in der sich die Kamera befindet, und den NTP-Server (Network Time Protocol\
 / Netzwerkzeitprotokoll) einstellen.",
"<b>Nützliche Hinweise..</b> <br><br><b>Time Zone</b> (Zeitzone) - Die geographische Zone für die lokale Zeiteinstellung.\
<br><br><b>Automatic Time Configuration</b> (Automatische Zeitkonfiguration) - Bei Wahl dieser Option synchronisiert die Kamera bei jedem Kamerastart die Zeiteinstellungen mit dem NTP-Server über das Internet. Kann keine Verbindung zum Zeitserver hergestellt werden, werden keine Zeiteinstellungen vorgenommen. \
<br><br><b>NTP Server</b> - Geben Sie die IP-Adresse oder den Domänennamen des Zeitservers an.\
<br><br><b>Daylight Saving</b> (Sommerzeit) - Ein Aktivieren des Sommerzeitmodus passt die Zeit je nach Sommerzeitausgleich und Datumsangabe an.\
<br><br>Sie können auch <b>Set the Date and Time Manually</b> (Datum und Zeit manuell einstellen) oder <b>Copy your Computer\'s Time Settings</b> (Zeiteinstellungen des Computers übernehmen) wählen.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Sonntag",
"Montag",
"Dienstag",
"Mittwoch",
"Donnerstag",
"Freitag",
"Samstag",
"Wählen Sie einen NTP-Serve",
"1st",
"2nd",
"3rd",
"4th",
"5th",
"6th",
"Januar",
"Februar",
"März",
"April",
"Mai",
"Juni",
"Juli",
"August",
"September",
"Oktober",
"November",
"Dezember",
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
"(GMT-12:00) Internationale Datumsgrenze West",
"(GMT-10:00) Hawaii",
"(GMT-09:00) Alaska",
"(GMT-08:00) Pacific Time (USA & Kanada)",
"(GMT-08:00) Tijuana, Baja California",
"(GMT-07:00) Chihuahua, La Paz, Mazatlan",
"(GMT-07:00) Mountain Time (USA & Kanada)",
"(GMT-07:00) Arizona",
"(GMT-06:00) Mittelamerika",
"(GMT-06:00) Guadalajara, Mexico City, Monterrey",
"(GMT-06:00) Saskatchewan",
"(GMT-06:00) Central Time (USA & Kanada)",
"(GMT-05:00) Bogota, Lima, Quito",
"(GMT-05:00) Eastern Time (USA & Kanada)",
"(GMT-05:00) Indiana (Ost)",
"(GMT-04:30) Caracas",
"(GMT-04:00) La Paz, Georgetown, San Juan",
"(GMT-04:00) Atlantic Time (Kanada)",
"(GMT-04:00) Manaus",
"(GMT-04:00) Asuncion",
"(GMT-04:00) Cuiaba",
"(GMT-03:30) Neufundland",
"(GMT-03:00) Santiago",
"(GMT-03:00) Buenos Aires",
"(GMT-03:00) Brasilia",
"(GMT-03:00) Grönland",
"(GMT-03:00) Montevideo",
"(GMT-03:00) Cayenne, Fortaleza",
"(GMT-03:00) Salvador da Bahia",
"(GMT-02:00) Mittelatlantik",
"(GMT-01:00) Azoren",
"(GMT-01:00) Kapverdische Inseln",
"(GMT) Casablanca",
"(GMT) Greenwich Mean Time: Dublin, Edinburgh, Lissabon, London",
"(GMT) Monrovia, Reykjavik",
"(GMT+01:00) Belgrad, Bratislava, Budapest, Ljubljana, Prag",
"(GMT+01:00) West-Zentralafrika",
"(GMT+01:00) Sarajevo, Skopje, Warschau, Zagreb",
"(GMT+01:00) Brüssel, Kopenhagen, Madrid, Paris",
"(GMT+01:00) Amsterdam, Berlin, Bern, Rom, Stockholm, Wien",
"(GMT+01:00) Windhoek",
"(GMT+02:00) Helsinki, Kiew, Riga, Sofia, Tallinn, Vilnius",
"(GMT+02:00) Athen, Bukarest, Istanbul",
"(GMT+02:00) Beirut",
"(GMT+02:00) Harare, Pretoria",
"(GMT+02:00) Kairo",
"(GMT+02:00) Amman",
"(GMT+02:00) Jerusalem",
"(GMT+02:00) Damaskus",
"(GMT+02:00) Nikosia",
"(GMT+03:00) Minsk, Kaliningrad",
"(GMT+03:00) Bagdad",
"(GMT+03:00) Nairobi",
"(GMT+03:00) Kuwait, Riad",
"(GMT+03:30) Teheran",
"(GMT+03:00) Moskau, St. Petersburg, Wolgograd",
"(GMT+04:00) Baku",
"(GMT+04:00) Abu Dhabi, Muscat",
"(GMT+04:00) Tiflis",
"(GMT+04:00) Erewan",
"(GMT+04:00) Port Louis",
"(GMT+04:30) Kabul",
"(GMT+05:00) Islamabad, Karatschi, Taschkent",
"(GMT+05:30) Chennai, Kalkutta, Mumbai, Neu-Delhi",
"(GMT+05:30) Sri Jayawardenepura",
"(GMT+05:45) Kathmandu",
"(GMT+06:00) Astana, Dhaka",
"(GMT+05:00) Jekaterinburg",
"(GMT+06:30) Rangun",
"(GMT+07:00) Bangkok, Hanoi, Jakarta",
"(GMT+06:00) Nowosibirsk",
"(GMT+08:00) Peking, Chongqing, Hongkong, Urumqi",
"(GMT+08:00) Taipeh",
"(GMT+08:00) Ulaanbaatar",
"(GMT+08:00) Perth",
"(GMT+08:00) Kuala Lumpur, Singapur",
"(GMT+07:00) Krasnojarsk",
"(GMT+09:00) Osaka, Sapporo, Tokio",
"(GMT+09:00) Seoul",
"(GMT+08:00) Irkutsk",
"(GMT+09:30) Adelaide",
"(GMT+09:30) Darwin",
"(GMT+10:00) Hobart",
"(GMT+10:00) Brisbane",
"(GMT+10:00) Canberra, Melbourne, Sydney",
"(GMT+10:00) Guam, Port Moresby",
"(GMT+09:00) Jakutsk",
"(GMT+11:00) Salomoninseln, Neukaledonien",
"(GMT+10:00) Wladiwostok",
"(GMT+12:00) Fidschi",
"(GMT+12:00) Auckland, Wellington",
"(GMT+10:00) Magadan",
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
"Bei der Anfrage ist ein Problem aufgetreten.",
"Die Angabe des verwendeten NTP-Servers ist ungültig.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
