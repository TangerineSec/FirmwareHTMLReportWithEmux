var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"DNS dynamique", 
"Paramètres DNS dynamique",
"Activer DDNS",
"Adresse serveur",
"Nom d'hôte",
"Nom d’utilisateur",
"Mot de passé",
"Expiration du délai",
"heures",
"Désactivé",
"Mise à jour",
"Initialisation en cours",
"Échec de la connexion",
"État",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DDNS = 3;
var I_DDNS_SETTING = 4;
var I_DDNS_ENABLE = 5;
var I_SERVER_ADDRESS = 6;
var I_HOSTNAME = 7;
var I_UID = 8;
var I_PWD = 9;
var I_TIMEOUT = 10;
var I_HOURS = 11;
var I_STATUS_DISABLE = 12;
var I_STATUS_UPDATED = 13;
var I_STATUS_INITIALIZING = 14;
var I_STATUS_CONNECTION_FAILED = 15;
var I_STATUS = 16;

var des_item_name = new Array (
"La fonction DNS dynamique vous permet d'héberger un serveur (Web, FTP, caméra, etc.) \
en utilisant un nom de domaine que vous avez acquis (www.nomdedomainequelconque.com) auprès de votre fournisseur d'accès\
 à Internet (FAI) haut débit. Si vous utilisez un service DDNS, vos amis peuvent saisir votre nom d'hôte pour se connecter \
 à votre caméra IP, quelle que soit votre adresse IP.",
"<b>Conseils utiles...</b>\
<br><br>Un serveur DNS dynamique est utile si votre fournisseur \
d\'accès DSL ou votre câblo-opérateur change périodiquement l\'adresse IP de votre modem. Avec un \
DNS dynamique, il est possible d\'attribuer un nom de domaine à votre caméra plutôt que d\'avoir une connexion par adresse IP.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

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

