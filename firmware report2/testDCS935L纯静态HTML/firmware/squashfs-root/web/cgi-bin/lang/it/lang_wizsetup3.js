var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "Wireless", "INTERNET CAMERA",
"Live Video",
"Prodotto", 
"Versione firmware",
"Passo 2: impostazioni nome {$1}",
"Indietro",
"Avanti",
"Cancella",
"Abilita funzione DDNS",
"Server address",
"Nome host",
"Nome utente",
"Password",
"Timeout",
"Stato",
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
var I_DDNS_ENABLE = 10;
var I_SERVER_ADDRESS = 11;
var I_HOSTNAME = 12;
var I_UID = 13;
var I_PWD = 14;
var I_TIMEOUT = 15;
var I_HOURS = 16;

var des_item_name = new Array (
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Tutti i diritti riservati.",
"Se si dispone di un account DNS dinamico e si desidera che l'indirizzo IP della \
videocamera venga aggiornato automaticamente, abilitare il DDNS e inserire le informazioni relative \
all'host di seguito. Fare clic su <b>Avanti</b> per continuare.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var option_content = new Array (
"Seleziona server DNS dinamico",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"Il formato di Nome host non è valido.",
"Il formato di Nome utente non è valido.",
"Il formato della password non è valido.",
"L'intervallo di timeout è compreso fra 24 e 65535 ore.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

