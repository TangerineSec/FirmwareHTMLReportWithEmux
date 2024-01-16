var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "SANS FIL", "CAMÉRA INTERNET",
"VIDÉO EN DIRECT",
"Produit", 
"Version du microprogramme",
"étape 1 : configurer les paramètres du réseau local",
"Précédent",
"Suivant",
"Annuler",
"Connexion DHCP",
"Adressage IP statique",
"Adresse IP",
"Masque de sous-réseau IP",
"Passerelle par défaut",
"DNS principal",
"DNS secondaire",
"PPPoE",
"Nom utilisateur",
"Mot de passe",
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
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Tous droits réservés.",
"Cet assistant vous guidera étape par étape pour configurer votre nouvelle caméra D-Link et la connecter à Internet.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"The IP Address is invalid.",
"Le masque de sous-réseau est incorrect.",
"La passerelle par défaut est incorrecte.",
"Vous avez saisi une configuration TCP/IP incorrecte.",
"Le format du nom d'utilisateur est incorrect.",
"Le format du mot de passe est incorrect.",
"Le DNS principal est incorrect.",
"Le DNS secondaire est incorrect.",
"Le format du numéro de port est incorrect.",
"Le format du nom Bonjour est incorrect.",
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
