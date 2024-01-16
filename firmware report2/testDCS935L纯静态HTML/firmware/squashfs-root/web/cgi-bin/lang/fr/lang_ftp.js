var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"FTP", 
"Serveur FTP - Clip vidéo",
"Nom d'hôte",
"Port",
"(Défaut 21)",
"Nom utilisateur",
"Mot de passe",
"Chemin",
"Mode passif",
"oui",
"Non",
"Tester serveur FTP - Clip vidéo",
"Tester",
"Serveur FTP - instantané",
"Tester serveur FTP - instantané",
"Intervalle",
"Secondes (Intervalle : 10 à 86400 secondes)",
"Secondes (Intervalle : 30 à 86400 secondes)",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_FTP_TITLE = 3;
var I_FTP_SERVER = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_UID = 8;
var I_PWD = 9;
var I_PATH = 10;
var I_PASSIVE_MODE = 11;
var I_YES = 12;
var I_NO = 13;
var I_TEST_FTP_SERVER = 14;
var I_TEST = 15;
var I_FTP_SERVER_SNAPSHOT = 16;
var I_TEST_FTP_SERVER_SNAPSHOT = 17;
var I_INTERVAL = 18;
var I_INTERVAL_SNAPSHOT_DES = 19;
var I_INTERVAL_VIDEOCLIP_DES = 20;

var des_item_name = new Array (
"Cette section vous permet de configurer votre caméra pour qu’elle envoie des images vers un serveur FTP.",
"<b>Conseils utiles...</b>\
<br><br><b>Nom d'hôte</b> :\
<br>Adresse IP du serveur FTP auquel vous vous connecterez.\
<br><br><b>Port</b> : \
<br>Le numéro de port par défaut est le 21. \
<br><br><b>Nom utilisateur</b> : \
<br>Nom d'utilisateur de la personne souhaitant accéder au serveur FTP externe. \
<br><br><b>Mot de passe</b> : \
<br>Mot de passe du serveur FTP externe. \
<br><br><b>Mode passif</b> - L'activation du mode passif permet d'accéder à un serveur FTP externe si la caméra se trouve derrière un routeur protégé par un pare-feu.\
<br><br><b>Tester le serveur FTP</b>\
<br>Un fichier image est envoyé au serveur FTP dès que vous cliquez sur <b>Tester</b>.",
"Un fichier JPEG sera envoyé au serveur FTP ci-dessus afin de le tester. \
(Nom du fichier : test_date_time.jpg)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"Le format du port est incorrect.",
"Test FTP réussi",
"Échec du test FTP",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
