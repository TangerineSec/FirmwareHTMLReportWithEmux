var languageNum = new Array("en","sc","tc");
var item_name = new Array("SYSTÈME", "SYSTÈME", "Enregistrer sur le disque local",
"Enregistrer la Configuration",
"Charger depuis le disque dur local",
"Charger la Configuration",
"Restaurer aux paramètres d’usine par défaut",
"Restaurer les paramètres d’usine par défaut",
"Redémarrer le produit",
"Enregistrer",
"Restauration",
"Traitement",
"Dim",
"Lun",
"Mar",
"Mer",
"Jeu",
"Ven",
"Sam",
"Heure",
"Redémarrer",
"Programmer redémarrage",
"Enregistrer",
""
);

var I_SYSTEM = 0;
var I_SYSTEM_SETTING = 1;
var I_SAVE_TO_HARDDRIVE = 2;
var I_SAVE_CONF = 3;
var I_LOAD_FROM_HARDDRIVE = 4;
var I_RESTORE_FROM_FILE = 5;
var I_RESTORE_TO_DEFAULT = 6;
var I_RESTORE_TO_DEFAULT_2 = 7;
var I_REBOOT_DEVICE = 8;
var I_SAVING = 9;
var I_RESTORING = 10;
var I_PROCESSING = 11;
var I_SUN = 12;
var I_MON = 13;
var I_TUE = 14;
var I_WED = 15;
var I_THU = 16;
var I_FRI = 17;
var I_SAT = 18;
var I_TIME = 19;
var I_REBOOT_SETTING = 20;
var I_SCHEDULE_REBOOT = 21;
var I_BTN_SAVE = 22;

var pop_msg = new Array(
"Un problème est survenu avec la requête.",
"La mise à jour du microprogramme est en cours d'exécution.",
"Le fichier est incorrect.",
"L'obtention du fichier de sauvegarde a échoué, veuillez recommencer.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_FW_IS_RUNNING = 1;
var PMSG_INVALID_FILE = 2;
var PMSG_GET_BACKFILE_FAILED = 3;

var des_item_name = new Array (
"Cette section vous permet d'enregistrer et de restaurer votre configuration, de restaurer les paramètres par défaut, et/ou de redémarrer la caméra.",
"<b>Conseils utiles...</b><br><br>Après avoir configuré la caméra, vous pouvez enregistrer la configuration sur le disque dur local pour la réutiliser ultérieurement.\
<br><br>Vous pouvez localiser un fichier précédemment enregistré et restaurer les paramètres de configuration sur votre caméra. \
Vous pouvez aussi choisir de réinitialiser la caméra en restaurant les paramètres par défaut.",
""
);

var D_SYSTEM_INFO = 0;
var D_HELP_INFO = 1;
