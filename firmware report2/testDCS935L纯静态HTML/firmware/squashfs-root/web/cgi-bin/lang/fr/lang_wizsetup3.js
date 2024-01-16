var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-Link Corporation", "SANS FIL", "CAMÉRA INTERNET",
"VIDÉO EN DIRECT",
"Produit", 
"Version du microprogramme",
"Étape 2 : Configuration de DDNS",
"Précédent",
"Suivant",
"Annuler",
"Activer la fonction DDNS",
"Adresse serveur",
"Nom d'hôte",
"Nom utilisateur",
"Mot de passe",
"Expiration du délai",
"heures",
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
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Tous droits réservés.",
"Si vous avez un compte DNS dynamique et que vous souhaitez que l'adresse IP de la caméra se mette à jour automatiquement, \
activez la fonction DDNS et renseignez les informations sur l'hôte ci-dessous. Cliquez sur le bouton <b>Suivant< /b> pour continuer.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var option_content = new Array (
"Sélectionnez un serveur DNS dynamique",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"Le format du nom d'hôte est incorrect.",
"Le format du nom d'utilisateur est incorrect.",
"Le format du mot de passe est incorrect.",
"Le délai d'attente est compris dans la plage de 24 à 65535 heures.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

