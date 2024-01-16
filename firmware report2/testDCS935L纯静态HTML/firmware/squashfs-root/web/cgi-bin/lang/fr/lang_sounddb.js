var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Détection de son", 
"Paramètres de la détection de son",
"Détection de son",
"Activer",
"Désactiver",
"Niveau de détection",
"dB",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SOUND_DETECTION = 3;
var I_SOUND_DETECTION_SETTING = 4;
var I_SOUND_DETECTION_ITEM = 5;
var I_ENABLE = 6;
var I_DISABLE = 7;
var I_LEVEL = 8;
var I_DB = 9;

var des_item_name = new Array (
"Dans cette section, vous pouvez configurer les paramètres de détection du son de la caméra.\
<br><br>Notez que Java doit être installé sur votre ordinateur pour voir la fenêtre dB sonore/Durée. \
Si vous ne voyez pas la fenêtre dB sonore/Durée ci-dessous, visitez le site <a href=\"http://www.java.com\">\
http://www.java.com</A> pour télécharger Java et l'installer.",
"Le microphone est désactivé, veuillez l'activer.",
""
);

var D_TITLE_INFO = 0;
var D_MICROPHONE_DISABLED = 1;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
""
);

var PMSG_REQUEST_FAILED = 0;
