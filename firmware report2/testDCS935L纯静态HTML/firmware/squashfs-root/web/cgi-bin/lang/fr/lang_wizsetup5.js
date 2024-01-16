var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "SANS FIL", "CAMÉRA INTERNET",
"VIDÉO EN DIRECT",
"Produit", 
"Version du microprogramme",
"Étape 4 : Configurer le fuseau horaire",
"Précédent",
"Suivant",
"Annuler",
"Heure actuelle",
"Fuseau horaire",
""
);
var I_DINK_CORPORATION = 0;
var I_WIRELESS = 1;
var I_INTERNET_CAMERA = 2;
var I_LIVE_VIDEO = 3;
var I_PRODUCT = 4;
var I_FWVERSION = 5;
var I_TITLE = 6;
var I_BACK = 7;
var I_NEXT = 8;
var I_CANCEL = 9;
var I_CURRECT_TIME = 10;
var I_TIMEZONE = 11;

var des_item_name = new Array (
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Tous droits réservés.",
"Choisissez le fuseau horaire de la caméra, puis cliquez sur le bouton <b>Suivant</b>.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var option_content = new Array (
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

var O_LANG_TIMEZONE_START = 0;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
""
);

var PMSG_REQUEST_FAILED = 0;

