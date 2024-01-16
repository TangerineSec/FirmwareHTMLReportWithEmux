var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Configuration de l’image", 
"Vidéo en direct",
"Paramètres image",
"Luminosité",
"Saturation",
"Contraste",
"Teinte",
"Netteté",
"N/B",
"Symétrie",
"Retournement",
"Fréquence",
"Restaurer les paramètres par défaut",
"traitement",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_IMAGE_SETTING = 3;
var I_LIVE_VIDEO = 4;
var I_IMAGE_SETTING_TITLE = 5;
var I_BRIGHTNESS = 6;
var I_SATURATION = 7;
var I_CONTRAST = 8;
var I_HUE = 9;
var I_SHARPNESS = 10;
var I_BW = 11;
var	I_MIRROR = 12;
var I_FLIP = 13;
var I_FREQUENCY = 14;
var I_RESET_TO_DEFAULT = 15;
var I_PROCESSING = 16;

var des_item_name = new Array (
"Les modifications apportées aux paramètres des images entrent immédiatement en vigueur. Les résultats peuvent être observés dans la fenêtre Vidéo en direct ci-dessous.",
"<b>Conseils utiles...</b>\
<br><br>La luminosité, la saturation, le contraste et la teinte peuvent être réglés de 0 à 100, vous permettant de régler avec précision les paramètres de l'image.\
<br><br><b>Luminosité</b><br>Compense les scènes en contre-jour.\
<br><br><b>Saturation</b><br>Contrôle la force d'une couleur du noir et blanc aux couleurs vives.\
<br><br><b>Contraste</b><br>Permet de régler le contraste des couleurs de l'objet. Il aide à améliorer l'image sous un ciel gris maussade.\
<br><br><b>Teinte</b><br>Ce paramètre contrôle les différents degrés de stimulation qu'une couleur exerce sur les yeux humains.\
<br><br><b>Netteté</b><br>Cette fonction est utilisée pour ajuster la netteté de l’image.\
<br><br><b>N/B</b><br>Sélectionnez cette option pour activer ou désactiver le mode noir et blanc pour la caméra.\
<br><br><b>Symétrie</b><br>Sélectionnez cette fonction pour obtenir une image symétrique.\
<br><br><b>Retournement</b><br>Sélectionnez cette fonction si la caméra est installée à l'envers au plafond.\
<br><br><b>Fréquence</b><br>Choisissez entre \'Off\', \'50\' ou \'60\' Hz (selon le pays).<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Off",
"50Hz",
"60Hz",
""
);

var O_FREQUENCY_AUTO = 0;
var O_FREQUENCY_50 = 1;
var O_FREQUENCY_60 = 2;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
""
);

var PMSG_REQUEST_FAILED = 0;
