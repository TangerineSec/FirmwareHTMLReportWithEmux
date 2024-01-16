var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Heure et date", 
"Configuration de l'heure",
"Heure actuelle",
"Fuseau horaire",
"L’heure d'été est active.",
"Ajuster automatiquement les changements d'heure d'été.",
"Définir l'heure d'été manuellement",
"Décalage",
"Année",
"Mois",
"Jour",
"Semaine",
"Jour",
"Heure",
"Minute",
"Seconde",
"Heure de début",
"Heure de fin",
"Configuration automatique de l'heure",
"Synchroniser avec un serveur NTP",
"Serveur NTP",
"Définir la date et l'heure manuellement",
"Définir la date et l'heure manuellement",
"Copier les paramètres horaires de votre ordinateur",
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
"L'option Configuration de l'heure vous permet de configurer, de mettre à jour et de gérer l'horloge système interne. Dans cette section, \
vous pouvez définir le fuseau horaire de la caméra et configurer le serveur NTP (Network Time Protocol).",
"<b>Conseils utiles...</b>\
<br><br><b>Fuseau horaire</b> - Zone géographique pour le réglage de l'heure locale.\
<br><br><b>Configuration automatique de l'heure</b> - Si vous sélectionnez cette option, \
la caméra synchronise à chaque démarrage les paramètres horaires avec un serveur NTP Internet. \
Si aucun serveur de temps ne peut être atteint, aucun paramètre horaire ne sera appliqué. \
<br><br><b>Serveur NTP</b> - Indiquez l'adresse IP ou le nom de domaine du serveur de temps.\
<br><br><b>Heure d'été</b> - Activez l'heure d'été qui règle automatiquement l'heure en fonction \
de la date et des décalages heure été/heure d'hiver.\
<br><br>Vous pouvez aussi <b>Régler la date et l'heure manuellement</b> ou <b>Copier les paramètres horaires de votre ordinateur</b>.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Dimanche",
"Lundi",
"Mardi",
"Mercredi",
"Jeudi",
"Vendredi",
"Samedi",
"Sélectionner un serveur NTP",
"1er",
"2ème",
"3éme",
"4ème",
"5ème",
"6ème",
"Jan",
"Fév",
"Mar",
"Avr",
"Mai",
"Juin",
"Juil",
"Aou",
"Sep",
"Oct",
"Nov",
"Déc",
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
"(GMT-12:00) IDLW - Côté ouest de la ligne de changement de date,
"(GMT-10:00) Hawaii,
"(GMT-09:00) Alaska,
"(GMT-08:00) Heure du Pacifique (États-Unis et Canada),
"(GMT-08:00) Tijuana, Basse Californie,
"(GMT-07:00) Chihuahua, La Paz, Mazatlán,
"(GMT-07:00) Heure des Rocheuses (États-Unis et Canada),
"(GMT-07:00) Arizona,
"(GMT-06:00) Amérique centrale,
"(GMT-06:00) Guadalajara, Mexico City, Monterrey,
"(GMT-06:00) Saskatchewan,
"(GMT-06:00) Heure du Centre (États-Unis et Canada),
"(GMT-05:00) Bogota, Lima, Quito,
"(GMT-05:00) Heure de l'Est (États-Unis et Canada),
"(GMT-05:00) Indiana (Est),
"(GMT-04:30) Caracas,
"(GMT-04:00) La Paz, Georgetown, San Juan,
"(GMT-04:00) Heure de l'Atlantique (Canada),
"(GMT-04:00) Manaus,
"(GMT-04:00) Asuncion,
"(GMT-04:00) Cuiaba,
"(GMT-03:30) Terre-Neuve,
"(GMT-03:00) Santiago,
"(GMT-03:00) Buenos Aires,
"(GMT-03:00) Brasilia,
"(GMT-03:00) Groenland,
"(GMT-03:00) Montevideo,
"(GMT-03:00) Cayenne, Fortaleza,
"(GMT-03:00) Salvador,
"(GMT-02:00) Atlantique centrale,
"(GMT-01:00) Açores,
"(GMT-01:00) Îles du Cap-Vert,
"(GMT) Casablanca, Monrovia,
"(GMT) Temps moyen de Greenwich : Dublin, Édimbourg, Lisbonne, Londres,
"(GMT) Monrovia, Reykjavik,
"(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague,
"(GMT+01:00) Afrique centrale de l'Ouest,
"(GMT+01:00) Sarajevo, Skopje, Varsovie, Zagreb,
"(GMT+01:00) Bruxelles, Copenhague, Madrid, Paris,
"(GMT+01:00) Amsterdam, Berlin, Berne, Rome, Stockholm, Vienne,
"(GMT+01:00) Windhoek,
"(GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius,
"(GMT+02:00) Athènes, Bucarest, Istanbul,
"(GMT+02:00) Beyrouth,
"(GMT+02:00) Harare, Pretoria,
"(GMT+02:00) Le Caire,
"(GMT+02:00) Amman,
"(GMT+02:00) Jérusalem,
"(GMT+02:00) Damas,
"(GMT+02:00) Nicosie,
"(GMT+03:00) Minsk, Kaliningrad,
"(GMT+03:00) Bagdad,
"(GMT+03:00) Nairobi,
"(GMT+03:00) Koweït, Riyad,
"(GMT+03:00) Moscou, Saint-Pétersbourg, Volgograd,
"(GMT+03:30) Téhéran,
"(GMT+04:00) Bakou,
"(GMT+04:00) Abou Dabi, Muscat,
"(GMT+04:00) Tbilissi,
"(GMT+04:00) Erevan,
"(GMT+04:00) Port-Louis,
"(GMT+04:30) Kaboul,
"(GMT+05:00) Islamabad, Karachi, Tachkent,
"(GMT+05:00) Ekaterinbourg,
"(GMT+05:30) Chennai, Calcutta, Bombay, New Delhi,
"(GMT+05:30) Sri Jayawardenepura,
"(GMT+05:45) Katmandou,
"(GMT+06:00) Astana, Dhaka,
"(GMT+06:00) Novossibirsk,
"(GMT+06:30) Yangon (Rangoun),
"(GMT+07:00) Bangkok, Hanoï, Jakarta,
"(GMT+07:00) Krasnoïarsk,
"(GMT+08:00) Pékin, Chongqing, Hong Kong, Urumqi,
"(GMT+08:00) Taipei,
"(GMT+08:00) Oulan-Bator,
"(GMT+08:00) Perth,
"(GMT+08:00) Kuala Lumpur, Singapour,
"(GMT+08:00) Irkoutsk,
"(GMT+09:00) Osaka, Sapporo, Tokyo,
"(GMT+09:00) Séoul,
"(GMT+09:00) Iakoutsk,
"(GMT+09:30) Adélaïde,
"(GMT+09:30) Darwin,
"(GMT+10:00) Hobart,
"(GMT+10:00) Brisbane,
"(GMT+10:00) Canberra, Melbourne, Sydney,
"(GMT+10:00) Guam, Port Moresby,
"(GMT+11:00) Îles Salomon, Nouvelle-Calédonie,
"(GMT+10:00) Magadan,
"(GMT+10:00) Vladivostok,
"(GMT+12:00) Fidji,
"(GMT+12:00) Auckland, Wellington,
"(GMT+13:00) Nuku'alofa,
"(GMT+13:00) Samoa,
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
"Un problème est survenu avec la requête.",
"Le format du serveur NTP utilisé est incorrect.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_NTP_SERVER_FORMAT_INVALID = 1;
