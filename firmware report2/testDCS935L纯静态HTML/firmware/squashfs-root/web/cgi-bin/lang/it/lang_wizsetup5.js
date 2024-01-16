var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "Wireless", "INTERNET CAMERA",
"Live Video",
"Prodotto", 
"Versione firmware",
"Passo 4: impostazioni fuso orario",
"Indietro",
"Avanti",
"Cancella",
"ora attuale",
"Abilita aggiornamento ora legale",
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
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Tutti i diritti riservati.",
"Selezionare il fuso orario della videocamera, quindi fare clic sul pulsante <b>Avanti</b>.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var option_content = new Array (
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

var O_LANG_TIMEZONE_START = 0;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
""
);

var PMSG_REQUEST_FAILED = 0;

