var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Détection de mouvement", 
"Vidéo en direct",
"Activer la détection de présence par vidéo",
"Sensibilité",
"pourcentage",
"Mode définition",
"Définir une zone de mouvement",
"Effacer une zone de mouvement",
"Effacer",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_MOTION_DETECTION = 3;
var I_LIVE_VIDEO = 4;
var I_ENABLE_MOTION = 5;
var I_SENSITIVITY = 6;
var I_PERCENTAGE = 7;
var I_DRAWING_MODE = 8;
var I_DRAW_MOTION_AREA = 9;
var I_ERASE_MOTION_AREA = 10;
var I_CLEAR = 11;

var des_item_name = new Array (
"Dans cette section, vous pouvez configurer les paramètres de détection de mouvement de la caméra.\
<br><br>Notez que Java doit être installé sur votre ordinateur pour voir la fenêtre de configuration de \
détection de mouvement. Si vous ne voyez pas la vidéo en direct ci-dessous, visitez le site <a href=\"http://www.java.com\">\
http://www.java.com</A> pour télécharger Java et l'installer.",
"<b>Conseils utiles...</b><br><br>\
<b>Sensibilité</b><br>Réglez la sensibilité de la caméra au déclenchement sur détection de mouvement. Une haute sensibilité facilite la détection des mouvements.\
<br><br><b>Définir une zone de mouvement</b><br>Faites glisser la souris pour ajouter une plage de détection de mouvement.\
<br><br><b>Effacer une zone de mouvement</b>Faites glisser la souris pour effacer une plage de détection de mouvement.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"La sensibilité doit être un entier",
"La sensibilité doit être un entier compris entre 0 et 100.",
"La pourcentage doit être un entier",
"La pourcentage doit être un entier compris entre 0 et 100.",
"Définissez une zone de mouvement,",
"Avertissement : Si vous souhaitez activer la fonction de détection de mouvement, veuillez cocher [Activer la détection de présence par vidéo]. Toutefois, si vous souhaitez désactiver la fonction de détection de mouvement, veuillez effacer les zones de mouvement.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
