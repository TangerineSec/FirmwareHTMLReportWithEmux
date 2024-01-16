var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Clip vidéo", 
"Clip vidéo",
"Clip vidéo",
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
"Clip vidéo",
"Format de fichier",
"Enregistrement avant événement",
"Secondes",
"Durée maximale",
"Cible",
"Format du fichier",
"Email",
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
var I_SECONDS = 22;
var I_MAXIMUM_DURATION = 23;
var I_TARGET = 24;
var I_FTP = 25;
var I_EMAIL = 26;

var des_item_name = new Array (
"La fonction Clip vidéo envoie des clips vidéo via FTP ou email en cas de déclenchement.",
"<b>Conseils utiles...</b><br><br>Clip vidéo permet de stocker ou d'envoyer des clips vidéo sur un serveur de messagerie ou \
FTP distant en cas de détection de mouvement déclenchée par un capteur d’entrée externe.\
<br><br><b>Déclenchement par</b><br>\
<b>Mouvement</b><br>La fonction Clip vidéo est déclenchée lorsqu'un mouvement est détecté.<br>\
<b>Calendrier</b><br>L'instantané est capturé à un moment déterminé.<br>\
<b>Toujours</b><br>Instantanés continus.<br>\
<b>Son</b><br>La fonction Clip vidéo est déclenchée lorsqu'un son est détecté.<br><br>\
<b>Clip vidéo</b><br>Ici, vous pouvez définir Enregistrement avant événement et Durée maximale.<br><br>\
<b>Enregistrement avant événement</b><br>Précisez combien de secondes de vidéo seront enregistrées, avant que la fonction Clip \
vidéo ne soit déclenchée.<br><br>\
<b>Durée maximale</b><br>Précisez combien de secondes de clip vidéo.<br><br>\
<b>Cible</b><br>Vous pouvez sélectionner FTP ou email comme cible pour le clip vidéo.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

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
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
