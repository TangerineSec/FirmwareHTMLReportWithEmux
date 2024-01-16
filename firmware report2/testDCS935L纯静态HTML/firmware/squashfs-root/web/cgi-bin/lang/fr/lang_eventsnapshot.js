var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Instantané", 
"Instantané",
"Instantané",
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
"Instantané",
"unique  Instantané",
"cible",
"FTP",
"Email",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SNAPSHOT_TITLE = 3;
var I_SNAPSHOT = 4;
var I_SNAPSHOT_ITEM = 5;
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
var I_SNAPSHOT_TYPE = 19;
var I_SINGLE = 20;
var I_TARGET = 21;
var I_FTP = 22;
var I_EMAIL = 23;

var des_item_name = new Array (
"Pour que la caméra puisse prendre des instantanés, vous devez cocher la case \'Instantané\'. \
Vous pouvez ensuite déterminer les événements déclencheurs et les notifications par FTP et/ou email.",
"<b>Conseils utiles...</b><br><br>Instantané permet de stocker ou d'envoyer des images sur un serveur de messagerie ou \
FTP distant en cas de détection de mouvement déclenchée par un capteur d’entrée externe.<br><br>\
<b>Déclenchement par</b>\
<br><b>Mouvement</b><br>L'instantané est capturé lorsqu'un mouvement est détecté.\
<br><b>Calendrier</b><br>L'instantané est capturé à un moment déterminé.\
<br><b>Toujours</b><br>Instantanés continus.\
<br><b>Son</b><br>L'instantané est capturé quand un son est détecté.<br><br>\
<b>Type d'instantané</b><br>Instantané unique ou 6 instantanés.<br><br>\
<b>6 instantanés</b><br>Sélectionnez cette option pour capturer 6 images de façon continue pour chaque instantané.<br><br>\
<b>Cible</b><br>Vous pouvez sélectionner FTP ou email comme cible pour l'instantané.",
"6 instantanés avec \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
seconde d'intervalle (3 images avant et 3 images après l'image du mouvement détecté)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"Mouvement",
"Calendrier",
"Toujours",
"Son",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"L'heure de début doit être antérieure à l'heure de fin.",
"Veuillez choisir au moins un jour.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
