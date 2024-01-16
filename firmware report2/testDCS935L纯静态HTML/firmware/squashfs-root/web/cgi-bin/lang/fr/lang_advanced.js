var languageNum = new Array("en","sc","tc");
var item_name = new Array("Admin", "DÉFINITION DU MOT DE PASSE ADMINISTRATEUR", "Ancien mot de passe",
"Nouveau mot de passe",
"Ressaisir le mot de passe",
"Configuration du serveur",
"Nom de la caméra",
"Diode de contrôle",
"Normal",
"Arrêt",
"Authentification de l'URL de l'instantané",
"Activer",
"Désactiver",
"Heure OSD",
"Couleur",
"Appliquer",
"Effacer",
"AJOUTER UN UTILISATEUR",
"Nom utilisateur",
"Mot de passe",
"Ajouter",
"LISTE",
"Num.",
"Nom",
"Modifier",
"Supprimer",
"31 caractères au maximum",
"31 caractères au maximum",
"10 caractères au maximum",
"10 utilisateurs maximum",
"Enregistrer",
""
);
var I_ADMIN = 0;
var I_ADMIN_PWD_SETTING = 1;
var I_OLD_PWD = 2;
var I_NEW_PWD = 3;
var I_RETYPE_PWD = 4;
var I_SERVER_SETTING = 5;
var I_CAMERA_NAME = 6;
var I_LED_CONTROL = 7;
var I_NORMAL = 8;
var I_OFF = 9;
var I_SNAPSHOT_URL_AUTH = 10;
var I_ENABLE = 11;
var I_DISABLE = 12;
var I_OSD_TIME = 13;
var I_COLOR = 14;
var I_APPLY = 15;
var I_CANCEL = 16;
var I_ADD_USER_ACCOUNT = 17;
var I_USER_NAME = 18;
var I_PWD = 19;
var I_ADD = 20;
var I_USER_LIST = 21;
var I_NO = 22;
var I_NAME = 23;
var I_MODIFY = 24;
var I_DELETE = 25;
var I_PWD_LENGTH_DES = 26;
var I_UID_LENGTH_DES = 27;
var I_CAMERA_NAME_LENGTH_DES = 28;
var I_USER_MAX_DES = 29;
var I_SAVING = 30;

var des_item_name = new Array (
"Cette section vous permet de modifier le mot de passe de l'administrateur et de configurer le\
 serveur de votre caméra. Vous pouvez également ajouter, modifier et/ou supprimer des comptes utilisateur.",
"<b>Conseils utiles...</b><br><br>Pour des raisons de sécurité, il est recommandé de modifier le mot de \
passe des comptes administrateur. Veillez à écrire les nouveaux noms d'utilisateur et mots de passe pour \
éviter de devoir réinitialiser la caméra en cas d'oubli.",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Noir",
"Blanc",
"Bleu",
"Jaune",
"Rouge",
"Orange",
"Cyan",
"Doré",
""
);

var O_COLOR_BLACK = 0;
var O_COLOR_WHITE = 1;
var O_COLOR_BLUE = 2;
var O_COLOR_YELLOW = 3;
var O_COLOR_RED = 4;
var O_COLOR_ORANGE = 5;
var O_COLOR_CYAN = 6;
var O_COLOR_GOLD = 7;

var pop_msg = new Array(
"Un problème est survenu avec la requête.",
"Vous avez entré un mot de passe incorrect. Veuillez réessayer.",
"Le mot de passe n'a pas été correctement confirmé. Veuillez vous assurer que le nouveau mot de passe et le mot de passe ressaisi soient identiques.",
"Le format du nom de la caméra est incorrect.",
"Vous avez entré un nom d'utilisateur incorrect. Veuillez réessayer.",
"Cliquez sur OK pour modifier l'utilisateur sélectionné.",
"Le nombre maximum d'utilisateurs est dépassé.",
"Compte ou mot de passe incorrect.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_PWD_INCORRECT = 1;
var PMSG_PWD_RETYPE_INCORRECT = 2;
var PMSG_CAMERA_NAME_INVALID = 3;
var PMSG_USER_NAME_INCORRECT = 4;
var PMSG_CLICK_TO_MODIFY_USER = 5;
var PMSG_MAX_USER_EXCEED = 6;
var PMSG_INVALID_ACCOUNT_OR_PWD = 7;
