var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Jour / Nuit", 
"Paramètres du mode Jour / Nuit",
"Mode Jour / Nuit",
"Automatique",
"Manuel",
"Toujours en mode jour",
"Toujours en mode nuit",
"Programmation mode jour",
"Example",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DAYNIGHT_TITLE = 3;
var I_DAYNIGHT_SETTING = 4;
var I_DAYNIGHT_MODE = 5;
var I_AUTO = 6;
var I_MANUAL = 7;
var I_ALWAYS_DAY_MODE = 8;
var I_ALWAYS_NIGHT_MODE = 9;
var I_DAY_MODE_SCHEDULE = 10;
var I_EXAMPLE = 11;

var des_item_name = new Array (
"Dans cette section, vous pouvez configurer la méthode de commutation du mode jour/nuit. \
Le mode jour/nuit garantit un bon éclairage pour la vidéo aussi bien le jour que la nuit.<br><br>\
En mode Jour, l'éclairage IR est éteint, la lumière infrarouge est bloquée et la vidéo est en couleur. \
En mode nuit, l'éclairage IR est allumé, la lumière infrarouge est visible et la vidéo est en noir et blanc.",
"<b>Conseils utiles...</b>\
<br><br><b>Auto</b> - La caméra bascule automatiquement entre le mode jour et et le mode nuit. \
La caméra fonctionne habituellement en mode jour. Elle passe automatiquement en mode nuit lorsque l'éclairage est plus sombre.\
<br><br><b>Manuel</b> - L'utilisateur peut régler manuellement le fonctionnement de la caméra en mode jour ou en mode nuit sur la \
page vidéo en direct.\
<br><br><b>Toujours en mode jour</b> - La caméra fonctionne toujours en mode jour.<br><br><b>Toujours en mode nuit</b> - \
La caméra fonctionne toujours en mode nuit.\
<br><br><b>Programmation mode jour</b> - La caméra fonctionne en mode jour aux dates et aux heures configurées dans le calendrier. La caméra passe en mode nuit aux autres heures.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
""
);

var PMSG_REQUEST_FAILED = 0;
