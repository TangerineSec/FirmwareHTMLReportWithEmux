var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Email", 
"Adresse email - Clip vidéo",
"Serveur SMTP",
"Serveur SMTP Port",
"(Défaut 25)",
"Adresse email de l'expéditeur",
"Adresse email du destinataire",
"Nom utilisateur",
"Mot de passe",
"Utiliser SSL-TLS/STARTTLS",
"Non",
"SSL-TLS",
"STARTTLS",
"Essai de compte e-mail - Clip vidéo",
"Essai",
"Serveur SMTP - instantané",
"Essai de compte e-mail - instantané",
"Intervalle",
"Secondes (Intervalle : 30 à 86400 secondes)",
"Secondes (Intervalle : 60 à 86400 secondes)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SMTP_TITLE = 3;
var I_EMAIL_ACCOUNT = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_SENDER_ADDRESS = 8;
var I_RECEIVER_ADDRESS = 9;
var I_UID = 10;
var	I_PWD = 11;
var I_AUTH_ENABLE = 12;
var I_NO = 13;
var I_SSLTLS = 14;
var I_STARTTLS = 15;
var I_TEST_EMAIL_ACCOUNT = 16;
var I_TEST = 17;
var I_EMAIL_ACCOUNT_SNAPSHOT = 18;
var I_TEST_EMAIL_ACCOUNT_SNAPSHOT = 19;
var I_INTERVAL = 20;
var I_INTERVAL_SNAPSHOT_DES = 21;
var I_INTERVAL_VIDEOCLIP_DES = 22;

var des_item_name = new Array (
"Cette section vous permet de configurer les paramètres de notification par courrier électronique pour votre caméra. En cas de \
changement d'informations ou de problèmes quelconques avec les notifications d'alerte, vous devrez probablement modifier ces paramètres.",
"<b>Conseils utiles...</b>\
<br><br><b>Adresse du serveur SMTP</b> :\
<br>Nom de domaine ou adresse IP du serveur de messagerie externe.\
<br><br><b>Adresse email de l'expéditeur</b> :\
<br>Adresse email de la personne qui envoie les instantanés de la caméra.\
<br><br><b>Adresse email du destinataire</b> :\
<br>Adresse email du destinataire pour le serveur SMTP.\
<br><br><b>Nom utilisateur</b> : \
<br>Nom d'utilisateur de votre compte de messagerie électronique.\
<br><br><b>Mot de passe</b> : \
<br>Mot de passe de votre compte de messagerie électronique.\
<br><br><b>Utiliser SSL-TLS/STARTTLS</b> : \
<br>Sélectionnez <b>SSL-TLS</b> ou <b>STARTTLS</b> si le serveur SMTP requiert une authentification TLS.",
"Un email test sera envoyé au compte de messagerie électronique indiqué ci-dessus.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"Le format du port du serveur SMTP est incorrect.",
"Envoi réussi d'un email test",
"Échec de l'envoi d'un email test",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
