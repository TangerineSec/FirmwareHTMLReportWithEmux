var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"GESTION DE LA CARTE SD",
"CARTE?SD",
"NON VALABLE",
"Total?:",
"Espace libre?:",
"Formater la carte?SD",
" Ko",
"Veuillez noter qu'il n'y a pas de carte SD connectee a la camera ou que la carte SD n'est pas inscriptible.",
"Voulez-vous desactiver l'enregistrement et redemarrer??",
"Voulez-vous initialiser??",
"Etat de la carte SD?: ",
"Protegee en ecriture",
"Prete",
"Non valable",
"Voulez-vous sauvegarder les fichiers??",
"Voulez-vous formater la carte?SD??",
"La carte?SD est totalement formatee.",
"Carte?SD",
"Type d'enregistrement?: ",
"Type d'enregistrement ",
"Nom",
"Nombre de fichiers",
"Taille",
"Taille",
"Utilisee?:",
"Video",
"Date",
"Heure",
"Fichier",
"Supprimer",
"OK",
"Le fichier selectionne sera supprime, etes-vous sur ?",
"Aucun fichier n’est selectionne !",
"Actualiser",
"Monter d'un niveau",
"Fichiers par page?:",
"de",
"Echec du formatage de la carte?SD.",
"Des fichiers sont en train d'etre enregistres par la camera sur la carte?SD?; arretez l'enregistrement avant de la formater.",
"ACTIVER L'ENREGISTREMENT SUR CARTE SD",
"Si vous voulez parcourir la carte SD, veuillez d'abord desactiver la carte",
"Enregistrement",
"premiere page",
"LE SYSTEME DE FICHIERS EST CORROMPU",
"Le systeme de fichiers de la carte SD est corrompu. Veuillez suivre les instructions ci-dessous pour recuperer.",
"La carte SD est pleine",
"Desactivez l'enregistrement et redemarrez la camera.",
"Sauvegardez les fichiers enregistres et reformatez la carte SD, sinon l'enregistrement sur la carte SD pourrait echouer facilement.",
"Apres l’etape 2, vous pouvez aller sur la ",
" page pour reactiver l'enregistrement.",
"Veuillez suivre les etapes suivantes apres le redemarrage de la camera :",
"Desactivez l'enregistrement et redemarrez la camera",
"La camera a redemarre, veuillez patienter ",
" secondes...",
"Echec de la desactivation de l'enregistrement.",
"Plus de 16 Go",
"Veuillez patienter",
"Veuillez patienter",
"Reinitialisation",
"Pages :",
"Traitement",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SDMANAGEMENT = 3
var I_SDMANAGEMENT_ITEM = 4
var I_INVAKID = 5
var I_TOTAL_SPACE = 6
var I_OVER_SPACE = 7
var I_SD_FORMAT = 8
var I_KB = 9
var I_SDNOTE = 10
var I_REBOOT_CONFIRM = 11
var I_REBOOT_CONFIRM2 = 12
var I_SDCARDSTATUS = 13
var I_WRITE_PROTECTED = 14
var I_CARD_READY = 15
var I_CARD_INVALID = 16
var I_BACKUP_CONFIRM = 17
var I_FORMAT_CONFIRM = 18
var I_COMPLETE_FORMAT = 19
var I_RECORDS = 20
var I_RECORD_TYPE = 21
var I_RECORD_TYPE1 = 22
var I_NAME = 23
var I_NUM_OF_FILES = 24
var I_FILE_SIZE = 25
var I_FOLDER_SIZE = 26
var I_USED_SPACE = 27
var I_VIDEO = 28
var I_DATE = 29
var I_HOUR = 30
var I_FILE = 31
var I_DELETE = 32
var I_OK = 33
var I_DELETE_CONFIRM = 34
var I_DELETE_CONFIRM1 = 35
var I_REFRESH = 36
var I_TOP_LEVEL = 37
var I_FILE_PER_PAGE = 38
var I_PAGE_OF = 39
var I_FORMAT_FAILED = 40
var I_FORMAT_RECORDING = 41
var I_SD_REC_ERROR = 42
var I_SD_REC_ERROR1 = 43
var I_RECORDING = 44
var I_SD_REC_ERROR2 = 45
var I_FORMAT_ERROR = 46
var I_FORMAT_ERR_MSG = 47
var I_WRITE_FULL = 48
var I_RECORD_ERR1 = 49
var I_RECORD_ERR2 = 50
var I_RECORD_ERR3 = 51
var I_RECORD_ERR4 = 52
var I_FORMAT_ERR_MSG2 = 53
var I_RECOVER = 54
var I_REBOOT1 = 55
var I_REBOOT2 = 56
var I_DIABLE_REC_FAIL = 57
var I_OVER_4G = 58
var I_WAIT = 59
var I_ONLY_WAIT = 60
var I_REINIT = 61
var I_PAGE = 62
var I_PROCESSING = 63;

var des_item_name = new Array (
"Ici, vous pouvez parcourir et gérer les fichiers stockés sur la carte SD.	",
"Veuillez noter qu'il n'y a pas de carte SD connectée à la caméra ou que la carte SD n'est pas inscriptible.<br>Pour formater la carte SD dans la caméra, veuillez d'abord désactiver l'enregistrement SD.	",
"<b>Conseils utiles...</b><br><br><b>Carte SD</b><br>Indique le chemin d'accès actuel vers la carte SD.<br><br><b>État de la carte SD</b><br>Indique l'état actuel de la carte SD (si une carte est insérée ou détectée).<br><br><b>Fichiers par page</b><br>Le nombre de fichiers par page.<br><br><b>Pages</b><br>Vous pouvez sélectionner la page à afficher ici.<br><br><b>Formater la carte SD</b><br>Cliquez sur ce bouton pour formater automatiquement la carte SD et créer le dossier pour les instantanés et la vidéo. Pour formater la carte SD, vous devez d'abord désactiver l'enregistrement sur carte SD.<br><br><b>Total</b><br>La capacité totale de la carte SD.<br><br><b>Utilisée	</b><br>La capacité utilisée de la carte SD.<br><br><b>Espace libre</b><br>La capacité libre de la carte SD.<br>",
""
);

var D_TITLE_INFO = 0;
var D_ERROR_INFO = 1;
var D_HELP_INFO = 2;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
""
);

var PMSG_REQUEST_FAILED = 0;
