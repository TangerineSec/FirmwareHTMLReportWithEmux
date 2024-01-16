var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Configuration du Wi-Fi", 
"Paramètres du Wi-Fi",
"bande",
"2.4 GHz",
"5 GHz",
"SSID",
"Liste Wi-Fi",
"Canal",
"Mode de connexion",
"Infrastructure",
"Ad-hoc",
"Mode de sécurité",
"Aucun",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"Authentification",
"Système ouvert",
"Clé partagée",
"Mode de chiffrement",
"Format de la clé",
"Clé par défaut",
"Clef1",
"Clef2",
"Clef3",
"Clef4",
"Cipher Type",
"TKIP",
"AES",
"Clé pré-partagée",
"(8-63 ASCII ou 64 HEX caractères)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_WIRELESS_SETUP = 3;
var I_WIRELESS_SETTING = 4;
var I_BAND = 5;
var I_2dot4GHZ = 6;
var I_5GHZ = 7;
var I_SSID = 8;
var I_SITE_SURVEY = 9;
var I_CHANNEL = 10;
var I_CONNECTION_MODE = 11;
var I_INFRASTRUCTURE = 12;
var I_ADHOC = 13;
var I_SECURITY_MODE = 14;
var I_NONE = 15;
var I_WEP = 16;
var I_WPAPSK = 17;
var I_WPAPSK2 = 18;
var I_AUTHENTICATION = 19;
var I_OPEN_SYSTEM = 20;
var I_SHARED_KEY = 21;
var I_ENCRYPTION_MODE = 22;
var I_KEY_FORMAT = 23;
var I_DEFAULT_KEY = 24;
var I_KEY1 = 25;
var I_KEY2 = 26;
var I_KEY3 = 27;
var I_KEY4 = 28;
var I_CIPHER_TYPE = 29;
var I_TKIP = 30;
var I_AES = 31;
var I_PRESHARED_KEY = 32;
var I_PRESHARED_KEY_DES = 33;


var des_item_name = new Array (
"Dans cette section, vous pouvez configurer les paramètres sans fil de la caméra.",
"<b>Conseils utiles...</b>\
<br><br>Vous pouvez activer la fonction sans fil de votre caméra et vous connecter à un réseau sans fil \
en saisissant le <b>SSID</b> (le nom unique de votre réseau sans fil), ou en cliquant sur le bouton \
<b>Liste Wi-Fi</b> pour sélectionner un réseau sans fil disponible. Vous pouvez ensuite choisir un numéro de canal. \
En cas d'interférences dues à un chevauchement des réseaux sans fil, vous pouvez changer de canal pour obtenir \
des performances de connexion optimales.\
<br><br>Il y a deux modes de connexion. <b>Infrastructure</b> est une connexion sans fil qui utilise un point d'accès \
comme point de transmission de tous les périphériques sans fil. <b>Ad-Hoc</b> est une connexion sans fil utilisée \
sans point d'accès, où votre PC est connecté directement à la DCS-935L. \
<br><br>Pour la sécurité, il y a trois possibilités de chiffrement sans fil, <b>Aucun</b>, <b>WEP</b>, et <b>WPA-PSK / WPA2-PSK</b>. Sélectionnez la même méthode de chiffrement que celle utilisée par votre périphérique/routeur sans fil. Si vous avez choisi le chiffrement <b>WPA-PSK ou WPA2-PSK</b>, vous devrez peut-être saisir la <b>clé pré-partagée</b> appropriée pour vous connecter au réseau sans fil.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64Bits",
"128Bits",
"HEX",
"ASCII",
"Clef1",
"Clef2",
"Clef3",
"Clef4",
""
);

var O_64BITS = 0;
var O_128BITS = 1;
var O_HEX = 2;
var O_ASCII = 3;
var O_KEY1 = 4;
var O_KEY2 = 5;
var O_KEY3 = 6;
var O_KEY4 = 7;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"La clé doit comprendre 5 caractères ASCII",
"La clé doit comprendre 10 caractères hexadécimaux",
"La clé doit comprendre 13 caractères ASCII",
"La clé doit comprendre 26 caractères hexadécimaux",
"Le format de la clé pré-partagée est incorrect.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
