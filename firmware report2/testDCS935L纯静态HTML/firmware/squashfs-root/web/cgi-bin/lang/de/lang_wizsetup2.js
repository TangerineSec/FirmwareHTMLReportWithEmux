var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "Wireless", "INTERNET CAMERA",
"Live Video",
"Produkt", 
"Firmware-Version",
"Schritt 1: LAN-Einstellungen vornehmen",
"Zurück",
"Weiter",
"Löschen",
"DHCP",
"Die statische IP-Adressierung ist aktiviert. Die Netzwerkeinstellungen können unten geändert werden.",
"Start-IP-Adresse",
"IP-Subnetz-Maske",
"Standard-Gateway",
"Primärer DNS",
"Sekundärer DNS",
"PPPoE",
"Benutzername",
"Kennwort",
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
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Alle Rechte vorbehalten.",
"Dieser Assistent führt Sie Schritt für Schritt durch den Konfigurationsprozess Ihrer neuen D-Link-Kamera und hilft Ihnen, \
eine Verbindung der Kamera zum Internet herzustellen.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"The IP Address is invalid.",
"Die Subnetzmaske ist ungültig.",
"Das Standard-Gateway ist ungültig.",
"Inkorrekte TCP/IP-Konfiguration eingegeben.",
"Das Format der Benutzerkennung ist ungültig.",
"Das Kennwort ist ungültig.",
"Der Primäre DNS ist ungültig.",
"Der Sekundäre DNS ist ungültig.",
"Die Portnummer ist ungültig.",
"Der Bonjour-Name ist ungültig.",
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
