var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Data e ora", 
"CONFIGURAZIONE ORA",
"ora attuale",
"Fuso orario",
"L'ora legale è attiva.",
"Regola automaticamente le modifiche dell'ora legale.",
"Imposta ora legale manualmente",
"Offset",
"Anno",
"Mese",
"Giorno",
"Settimana",
"Giorno",
"Ora",
"Minuti",
"Secondo",
"Ora di avvio",
"Ora di fine",
"CONFIGURAZIONE AUTOMATICA ORA",
"Server NTP",
"Server NTP",
"IMPOSTAZIONE MANUALE DI DATA E ORA",
"IMPOSTAZIONE MANUALE DI DATA E ORA",
"Copia le impostazioni di data e ora del computer",
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
"L'opzione Configurazione ora consente di configurare, \
aggiornare e gestire l'orologio interno del sistema. In questa sezione è possibile impostare il fuso orario \
della videocamera e il server NTP (Network Time Protocol).",
"<b>Suggerimenti utili...</b>\
<br><br><b>Fuso orario</b>: l'area geografica per l'impostazione del fuso orario.\
<br><br><b>Configurazione ora automatica</b>: se questa opzione è selezionata, \
le impostazioni di data e ora della videocamera verranno sincronizzate \
tramite Internet all'avvio della videocamera. Se non è possibile raggiungere il server di riferimento \
per l'ora, non verrà applicata alcuna impostazione di orario. \
<br><br><b>Server NTP</b>: il nome di dominio o l'indirizzo IP del server di riferimento per l'ora.\
<br><br><b>Aggiornamento ora legale</b> - Consente di abilitare l'aggiornamento dell'ora legale che regola l'ora in base all'offset dell'ora legale e alla data.\
<br><br>È anche possibile <b>impostare data e ora manualmente</b> o <b>copiare l\'ora dal computer</b>.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"domenica",
"Lunedi",
"martedì",
"mercoledì",
"Giovedi",
"venerdì",
"sabato",
"Seleziona NTP Server",
"1st",
"2nd",
"3rd",
"4th",
"5th",
"6th",
"gennaio",
"febbraio",
"marzo",
"aprile",
"maggio",
"giugno",
"luglio",
"agosto",
"settembre",
"ottobre",
"novembre",
"dicembre",
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
"(GMT - 12.00 h) Linea cambiamento data internazionale (occidentale)",
"(GMT - 10.00 h) Hawaii",
"(GMT - 9.00 h) Alaska",
"(GMT - 8.00 h) ora del Pacifico (USA e Canada)",
"(GMT - 8.00 h) Tijuana, Baja California",
"(GMT - 7.00 h) Chihuahua, La Paz, Mazatlan",
"(GMT - 7.00 h) Fuso occidentale (USA e Canada)",
"(GMT - 7.00 h) Arizona",
"(GMT - 6.00 h) America centrale",
"(GMT - 6.00 h) Guadalajara, Città del Messico, Monterrey",
"(GMT - 6.00 h) Saskatchewan",
"(GMT - 6.00 h) Fuso centrale (USA e Canada)",
"(GMT - 5.00 h) Bogotà Lima, Quito",
"(GMT - 5.00 h) Fuso orientale (USA e Canada)",
"(GMT - 5.00 h) Indiana (Est)",
"(GMT - 4.30 h) Caracas",
"(GMT - 4.00 h) La Paz, Georgetown, San Juan",
"(GMT - 4.00 h) Ora costa atlantica (Canada)",
"(GMT - 4.00 h) Manaus",
"(GMT - 4:00 h) Asuncion",
"(GMT - 4:00 h) Cuiaba",
"(GMT - 3.30 h) Terranova",
"(GMT - 3.00 h) Santiago",
"(GMT - 3.00 h) Buenos Aires",
"(GMT - 3.00 h) Brasilia",
"(GMT - 3.00 h) Groenlandia",
"(GMT - 3.00 h) Montevideo",
"(GMT - 3:00 h) Caienna, Fortaleza",
"(GMT - 3:00 h) Salvador",
"(GMT - 2.00 h) Medioatlantico",
"(GMT - 1.00 h) Azzorre",
"(GMT - 1.00 h) Isole di Capo Verde",
"(GMT) Casablanca",
"(GMT) Ora di Greenwich: Dublino, Edimburgo, Lisbona, Londra",
"(GMT) Monrovia, Reykjavik",
"(GMT + 1.00 h) Belgrado, Bratislava, Budapest, Lubiana, Praga",
"(GMT + 1.00 h) Africa centro-occidentale",
"(GMT + 1.00 h) Sarajevo, Skopje, Varsavia, Zagabria",
"(GMT + 1.00 h) Bruxelles, Copenaghen, Madrid, Parigi",
"(GMT + 1.00 h) Amsterdam, Berlino, Berna, Roma, Stoccolma, Vienna",
"(GMT + 1.00 h) Windhoek",
"(GMT + 2.00 h) Helsinki, Kiev, Riga, Sofia, Tallinn, Vilnius",
"(GMT + 2.00 h) Atene, Bucarest, Istanbul",
"(GMT + 2.00 h) Beirut",
"(GMT + 2.00 h) Harare, Pretoria",
"(GMT + 2.00 h) Cairo",
"(GMT + 2.00 h) Amman",
"(GMT + 2.00 h) Gerusalemme",
"(GMT + 2:00 h) Damasco",
"(GMT + 2:00 h) Nicosia",
"(GMT + 3.00 h) Minsk, Kaliningrad",
"(GMT + 3.00 h) Bagdad",
"(GMT + 3.00 h) Nairobi",
"(GMT + 3.00 h) Kuwait, Riyad",
"(GMT + 3.30 h) Teheran",
"(GMT + 3.00 h) Mosca, S. Pietroburgo, Volgograd",
"(GMT + 4.00 h) Baku",
"(GMT + 4.00 h) Abu Dhabi, Muscat",
"(GMT + 4.00 h) Tbilisi",
"(GMT + 4.00 h) Yerevan",
"(GMT + 4:00 h) Port Louis",
"(GMT + 4.30 h) Kabul",
"(GMT + 5.00 h) Islamabad, Karachi, Tashkent",
"(GMT + 5.30 h) Chennai, Kolkata (Calcutta), Mumbai, Nuova Delhi",
"(GMT + 5.30 h) Sri Jayawardenepura",
"(GMT + 5.45 h) Kathmandu",
"(GMT + 6.00 h) Astana, Dhaka",
"(GMT + 5.00 h) Ekaterinburg",
"(GMT + 6.30 h) Yangon (Rangoon)",
"(GMT + 7.00 h) Bangkok, Hanoi, Giacarta",
"(GMT + 6.00 h) Novosibirsk",
"(GMT + 8.00 h) Pechino, Chongqing, Hong Kong, Urumchi",
"(GMT + 8.00 h) Taipei",
"(GMT + 8.00 h) Ulaanbaatar",
"(GMT + 8.00 h) Perth",
"(GMT + 8.00 h) Kuala Lumpur, Singapore",
"(GMT + 7.00 h) Krasnoyarsk",
"(GMT + 9.00 h) Osaka, Sapporo, Tokyo",
"(GMT + 9.00 h) Seul",
"(GMT + 8.00 h) Irkutsk",
"(GMT + 9.30 h) Adelaide",
"(GMT + 9.30 h) Darwin",
"(GMT + 10.00 h) Hobart",
"(GMT + 10.00 h) Brisbane",
"(GMT + 10.00 h) Canberra, Melbourne, Sydney",
"(GMT + 10.00 h) Guam, Port Moresby",
"(GMT + 09.00 h) Yakutsk",
"(GMT + 11.00 h) Is. Salomone, Nuova Caledonia",
"(GMT + 10.00 h) Vladivostok",
"(GMT + 12.00 h) Fiji",
"(GMT + 12.00 h) Auckland, Wellington",
"(GMT + 10.00 h) Magadan",
"(GMT + 13.00 h) Nukualofa",
"(GMT + 13.00 h) Samoa",
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
"Si è verificato un problema relativo alla richiesta.",
"Il formato di Server NTP utilizzato non è valido.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
