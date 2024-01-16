var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "Wireless", "INTERNET CAMERA",
"Live Video",
"Prodotto", 
"Versione firmware",
"Passaggio 1: impostazioni LAN",
"Indietro",
"Avanti",
"Cancella",
"DHCP",
"Indirizzamento IP statico abilitato. Le impostazioni di rete possono essere modificate come indicato di seguito.",
"Indirizzo IP iniziale",
"Subnet mask IP",
"Gateway predefinito",
"DNS primario",
"DNS secondario",
"PPPoE",
"Nome utente",
"Password",
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
var I_DHCP = 10;
var I_STATIC_IP = 11;
var I_IP_ADDRESS = 12;
var I_SUBNET_MASK = 13;
var I_DEFAULT_GATEWAY = 14;
var I_DNS1 = 15;
var I_DNS2 = 16;
var I_PPPOE = 17;
var I_UID = 18;
var I_PWD = 19;

var des_item_name = new Array (
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Tutti i diritti riservati.",
"Questa procedura guidata assiste l'utente nelle varie \
fasi di configurazione e connessione della videocamera D-Link \
a Internet.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"The IP Address is invalid.",
"La Subnet Mask non è valida.",
"Il gateway predefinito non è valido.",
"La configurazione TCP/IP immessa non è valida.",
"Il formato dell'ID utente immesso non è valido.",
"Il formato della password non è valido.",
"Il DNS primario non è valido.",
"Il DNS secondario non è valido.",
"Il formato del numero di porta non è valido.",
"Il formato del nome Bonjour non è valido.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_IPADDRESS = 1;
var PMSG_INVALID_SUBNET_MASK = 2;
var PMSG_INVALID_GATEWAY = 3;
var PMSG_INCORRECT_TCPIP_CONFIG = 4;
var PMSG_INVALID_UID = 5;
var PMSG_INVALID_PWD = 6;
var PMSG_INVALID_DNS1 = 7;
var PMSG_INVALID_DNS2 = 8;
var PMSG_INVALID_PORT_NUMBER = 9;
var PMSG_INVALID_BONJOUR_NAME = 10;
