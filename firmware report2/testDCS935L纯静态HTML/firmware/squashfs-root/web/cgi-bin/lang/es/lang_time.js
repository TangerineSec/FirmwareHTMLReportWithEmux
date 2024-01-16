var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Fecha y hora", 
"CONFIGURACIÓN DE LA HORA",
"hora",
"Fecha y hora de SNTP",
"El horario de verano está activo.",
"Ajuste automáticamente los cambios en el horario de verano.",
"Configurar DST manualmente",
"Desfase",
"Año",
"Mes",
"Día",
"Semana",
"Día",
"Hora",
"Minutos",
"Segundo",
"Hora de inicio",
"Hora final",
"CONFIGURACIÓN DE HORA AUTOMÁTICA",
"Servidor NTP",
"Servidor NTP",
"ESTABLECER MANUALMENTE FECHA Y HORA",
"ESTABLECER MANUALMENTE FECHA Y HORA",
"Copiar los parámetros horarios del ordenador",
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
"La opción Configuración de la hora permite configurar, actualizar y mantener el reloj interno del sistema. \
En esta sección puede definir la zona horaria en la que se encuentra la cámara y definir el servidor NTP (Protocolo de hora de red).",
"<b>Sugerencias útiles.</b><br><br><b>Zona horaria</b>: la zona geográfica para el ajuste de la hora local.\
<br><br><b>Configuración automática de la hora</b>: con esta opción seleccionada, la cámara sincronizará sus parámetros de fecha y hora con un servidor NTP a través de Internet al iniciarse la cámara. Si no se puede llegar al servidor de hora, no se aplicarán los parámetros de tiempo. \
<br><br><b>Servidor NTP</b>: la dirección IP o el nombre de dominio del servidor de hora.\
<br><br><b>Horario de verano</b>: activa el horario de verano que ajustará la hora, en función del desfase horario del horario de verano y de la fecha.\
<br><br>También puede <b>Establecer manualmente la fecha y la hora</b> o <b>Copiar los parámetros horarios del ordenador</b>.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"domingo",
"lunes",
"martes",
"miércoles",
"jueves",
"viernes",
"sábado",
"Seleccionar servidor NTP",
"1st",
"2nd",
"3rd",
"4th",
"5th",
"6th",
"enero",
"febrero",
"marzo",
"abril",
"mayo",
"junio",
"julio",
"agosto",
"septiembre",
"octubre",
"noviembre",
"diciembre",
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
"(GMT-12:00) Línea de fecha internacional occidental",
"(GMT-10:00) Hawai",
"(GMT-09:00) Alaska,
"(GMT-08:00) Hora del Pacífico (EE.UU. y Canadá)",
"(GMT-08:00) Tijuana, Baja California",
"(GMT-07:00) Chihuahua, La Paz, Mazatlán",
"(GMT-07:00) Hora de las Rocosas (EE.UU. y Canadá)",
"(GMT-07:00) Arizona",
"(GMT-06:00) América Central",
"(GMT-06:00) Guadalajara, Ciudad de Méjico, Monterrey",
"(GMT-06:00) Saskatchewan",
"(GMT-06:00) Hora central (EE.UU. y Canadá)",
"(GMT-05:00) Bogotá, Lima, Quito",
"(GMT-05:00) Hora del este (EE.UU. y Canadá)",
"(GMT-05:00) Indiana (Este)",
"(GMT-04:30) Caracas",
"(GMT-04:00) La Paz, Georgetown, San Juan",
"(GMT-04:00) Hora del Atlántico (Canadá)",
"(GMT-04:00) Manaus",
"(GMT-04:00) Asunción",
"(GMT-04:00) Cuiaba",
"(GMT-03:30) Terranova",
"(GMT-03:00) Santiago",
"(GMT-03:00) Buenos Aires",
"(GMT-03:00) Brasilia",
"(GMT-03:00) Groenlandia",
"(GMT-03:00) Montevideo",
"(GMT-03:00) Cayena, Fortaleza",
"(GMT-03:00) Salvador",
"(GMT-02:00) Atlántico central",
"(GMT-01:00) Azores",
"(GMT-01:00) Islas de Cabo Verde",
"(GMT) Casablanca",
"(GMT) Hora del meridiano de Greenwich: Dublín, Edimburgo, Lisboa, Londres",
"(GMT) Monrovia, Reikiavik",
"(GMT+01:00) Belgrado, Bratislava, Budapest, Liubliana, Praga",
"(GMT+01:00) África central occidental",
"(GMT+01:00) Sarajevo, Skopje, Varsovia, Zagreb",
"(GMT+01:00) Bruselas, Copenhague, Madrid, París",
"(GMT+01:00) Ámsterdam, Berlín, Berna, Roma, Estocolmo, Viena",
"(GMT+01:00) Windhoek",
"(GMT+02:00) Helsinki, Kiev, Riga, Sofía, Tallin, Vilna",
"(GMT+02:00) Atenas, Bucarest, Estambul",
"(GMT+02:00) Beirut",
"(GMT+02:00) Harare, Pretoria",
"(GMT+02:00) Cairo",
"(GMT+02:00) Amán",
"(GMT+02:00) Jerusalén",
"(GMT+02:00) Damasco",
"(GMT+02:00) Nicosia",
"(GMT+03:00) Minsk, Kaliningrado",
"(GMT+03:00) Bagdad",
"(GMT+03:00) Nairobi,
"(GMT+03:00) Kuwait, Riad",
"(GMT+03:00) Moscú, San Petersburgo, Volgogrado",
"(GMT+03:30) Teherán",
"(GMT+04:00) Bakú",
"(GMT+04:00) Abu Dabi, Muscat",
"(GMT+04:00) Tiflis",
"(GMT+04:00) Yerevan",
"(GMT+04:00) Port Louis",
"(GMT+04:30) Kabul",
"(GMT+05:00) Islamabad, Karachi, Taskent",
"(GMT+05:00) Ekaterimburgo",
"(GMT+05:30) Chennai, Calcuta, Bombay, Nueva Delhi",
"(GMT+05:30) Sri Jayawardenepura",
"(GMT+05:45) Katmandú",
"(GMT+06:00) Astana, Dhaka",
"(GMT+06:00) Novosibirsk",
"(GMT+06:30) Yangon (Rangún)",
"(GMT+07:00) Bangkok, Hanoi, Yakarta",
"(GMT+07:00) Krasnoyarsk",
"(GMT+08:00) Pekín, Chongqing, Hong Kong, Urumqi",
"(GMT+08:00) Taipei",
"(GMT+08:00) Ulan Bator",
"(GMT+08:00) Perth",
"(GMT+08:00) Kuala Lumpur, Singapur",
"(GMT+08:00) Irkutsk",
"(GMT+09:00) Osaka, Sapporo, Tokio",
"(GMT+09:00) Seúl",
"(GMT+09:00) Yakutsk",
"(GMT+09:30) Adelaida",
"(GMT+09:30) Darwin",
"(GMT+10:00) Hobart",
"(GMT+10:00) Brisbane",
"(GMT+10:00) Canberra, Melbourne, Sidney",
"(GMT+10:00) Guam, Port Moresby",
"(GMT+11:00) Islas Salomón, Nueva Caledonia",
"(GMT+10:00) Magadán",
"(GMT+10:00) Vladivostok",
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
"Se ha producido un problema con la solicitud.",
"El formato del servidor NTP utilizado no es válido.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
