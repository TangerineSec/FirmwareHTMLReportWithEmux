var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Audio et vidéo", 
"PROFIL VIDÉO",
"Type d'encodage",
"Résolution",
"Débit binaire",
"Fréquence d'images",
"URL RTSP",
"H.264",
"Qualité JPEG",
"MJPEG",
"Mécanisme audio",
"Activer le microphone",
"Volume sonore",
"Activer le haut-parleur",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_AUDIO_AND_VIDEO = 3;
var I_VIDEO_PROFILE = 4;
var I_ENCODE_TYPE = 5;
var I_RESOLUTION = 6;
var I_BITRATE = 7;
var I_FRAMERATE = 8;
var I_RTSP_URL = 9;
var I_H264 = 10;
var	I_JPEG_QUALITY = 11;
var I_MJPEG = 12;
var I_AUDIO_SETUP = 13;
var I_MICROPHONE_ENABLE = 14;
var I_VOLUME = 15;
var I_SPEAKER_ENABLE = 16;

var des_item_name = new Array (
"Dans cette section, vous pouvez configurer la qualité vidéo, la résolution et la fréquence d'images de la caméra.",
"<b>Conseils utiles...</b>\
<br><br><b>Résolution</b><br>Les options dépendent du système d'affichage utilisé.\
<br><br><b>Débit binaire</b><br>(bits par seconde) - Sélectionnez une bande passante fixe pour le fonctionnement de la caméra. Plus la valeur est élevée, plus la qualité d'image est bonne, mais plus la consommation en bande passante est importante.\
<br><br><b>Fréquence d’images</b><br>(images par seconde) - Plus la fréquence d'images est élevée, plus la vidéo semble fluide. Mais elle consomme également plus de bande passante.\
<br><br><b>Qualité JPEG</b><br> - La valeur par défaut est Moyenne. \
<br><br><b>Microphone</b><br>Activez cette fonction pour écouter le son provenant du microphone de la caméra.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"3 Mbps",
"2.5 Mbps",
"2 Mbps",
"1.5 Mbps",
"1 Mbps",
"768 Kbps",
"512 Kbps",
"384 Kbps",
"256 Kbps",
"128 Kbps",
"64 Kbps",
"Très basse",
"Basse",
"Moyenne",
"Élevée",
"Très élevée",
""
);

var O_BITRATE_3M = 0;
var O_BITRATE_2dot5M = 1;
var O_BITRATE_2M = 2;
var O_BITRATE_1dot5M = 3;
var O_BITRATE_1M = 4;
var O_BITRATE_768K = 5;
var O_BITRATE_512K = 6;
var O_BITRATE_384K = 7;
var O_BITRATE_256K = 8;
var O_BITRATE_128K = 9;
var O_BITRATE_64K = 10;
var O_QUALITY_VERY_LOW = 11;
var O_QUALITY_LOW = 12;
var O_QUALITY_MEDIUM = 13;
var O_QUALITY_HIGH = 14;
var O_QUALITY_VERY_HIGH = 15;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
""
);

var PMSG_REQUEST_FAILED = 0;
