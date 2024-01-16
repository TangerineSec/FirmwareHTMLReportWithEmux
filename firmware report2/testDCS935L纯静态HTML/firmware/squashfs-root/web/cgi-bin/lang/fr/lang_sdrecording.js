var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Enregistrement sur carte SD", 
"Enregistrement sur carte SD",
"Enregistrement sur carte SD",
"Déclenchement par",
"Seulement pendant",
"jour",
"Dim",
"Lun",
"Mar",
"Mer",
"Jeu",
"Ven",
"Sam",
"Heure",
"Début",
"Fin",
"Type d'enregistrement",
"Format de fichier",
"Enregistrement avant événement",
"Instantané",
"Vidéo",
"Source",
"Configurable dans",
"Audio et vidéo",
"Durée de l'enregistrement",
"minutes par fichier",
"Carte SD",
"Conserver de l'espace libre",
"Le minimum est de 200",
"Cyclique",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_VIDEOCLIP_TITLE = 3;
var I_VIDEOCLIP = 4;
var I_VIDEOCLIP_ITEM = 5;
var I_TRIGGER_BY = 6;
var I_ONLY_DURING = 7;
var I_DAY = 8;
var I_SUN = 9;
var I_MON = 10;
var I_TUE = 11;
var I_WED = 12;
var I_THU = 13;
var I_FRI = 14;
var I_SAT = 15;
var I_TIME = 16;
var I_START = 17;
var I_END = 18;
var I_RECORDING_TYPE = 19;
var I_FILE_FORMAT = 20;
var I_PREEVENT_RECORDING = 21;
var I_SNAPSHOT = 22;
var I_VIDEO = 23;
var I_SOURCE = 24;
var I_DESCRIPTION1 = 25;
var I_DESCRIOTION2 = 26;
var I_REC_LEN = 27;
var I_FILE_MIN = 28;
var I_SDCARD = 29;
var I_QUOTA = 30;
var I_MIN = 31;
var I_CYCLIC =32;

var des_item_name = new Array (
"Cette section vous permet de configurer et programmer l'enregistrement de la camera. Vous devez cocher la case « Enregistrement sur carte SD » pour activer cette fonction.",
"<b>Helpful Hints..</b><br><br>\
L'enregistrement sur carte SD permet d'enregistrer de la video ou des instantanes (par seconde) sur une carte SD locale basee sur la detection de mouvement ou a un moment determine. \
<br><br><b>Declenchement par</b><br>\
<b>Mouvement</b><br>\
L'enregistrement sur carte SD demarre lorsqu'un mouvement est detecte.<br>\
<b>Calendrier</b><br>\
L'enregistrement sur carte SD se fait a un moment determine.<br>\
<b>Toujours</b><br>\
Enregistrement continu sur carte SD.<br>\
<b>Son</b><br>\
L'enregistrement sur carte SD demarre lorsqu'un son est detecte.<br><br>\
<b>Type d'enregistrement</b><br>\
Vous pouvez definir Profil video, Enregistrement avant evenement, et Enregistrement apres evenement ici lorsque Declenchement par est defini sur Mouvement. Vous pouvez egalement selectionner l'enregistrement comme Instantane ou Video.<br><br>\
<b>Duree de l'enregistrement</b><br>\
Definit la duree de chaque enregistrement video.<br><br>\
<b>Carte SD</b><br>\
Vous pouvez definir combien d'espace libre conserver sur la carte SD et si l'enregistrement est cyclique ou non.<br><br>\
<b>Conserver de l'espace libre</b><br>\
Definit la capacite de votre carte SD local afin d'eviter que le systeme ne devienne instable.<br><br>\
<b>Cyclique</b><br>\
Lorsque cette option est selectionnee, les fichiers les plus anciens sont supprimes quand le systeme a besoin d'espace disque pour de nouveaux fichiers.<br><br>\
",
"Veuillez noter que la Détection de mouvements n'est pas activée, veuillez vous rendre sur la page Web de la Détection de mouvements pour la configurer.",
"Veuillez noter que la Détection de sons n'est pas activée, veuillez vous rendre sur la page Web de la Détection de sons pour la configurer.",
"Veuillez noter qu'il n'y a pas de carte SD connectée à la caméra ou que la carte SD n'est pas inscriptible.",
"Veuillez noter que la carte SD est pleine.",
"Pour formater la carte SD dans la caméra, veuillez d'abord désactiver l'enregistrement SD puis aller à la page ",
"Gestion de la carte SD",
".",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_MOTIONNOTE_INFO = 2;
var D_AUDIONOTE_INFO = 3;
var D_SDNOTE_INFO = 4;
var D_SDNOTE_FULL_INFO = 5;
var D_SD_MANAGEMENT_1_INFO = 6;
var D_SD_MANAGEMENT_2_INFO = 7;
var D_SD_MANAGEMENT_3_INFO = 8;
var option_content = new Array (
"Mouvement",
"Calendrier",
"Toujours",
"Son",
"Avi, .avi",
"Mp4, .mp4",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;
var O_AVI = 4;
var O_MP4 = 5;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"L'heure de début doit être antérieure à l'heure de fin.",
"Veuillez choisir au moins un jour.",
"Le paramètre Enregistrement avant événement en secondes doit être un entier compris entre 0 et 5",
"Le paramètre Conserver de l'espace libre de la carte SD doit être un entier compris entre 200 et 32768",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;