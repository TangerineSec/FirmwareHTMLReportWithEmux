var languageNum = new Array("en","sc","tc");
var item_name = new Array("Enregistrer les paramètres", "Ne pas enregistrer les paramètres", "Enregistrer",
"Configuration du réseau", 
"Paramètres réseau local",
"Connexion DHCP",
"Adresse IP statique",
"Adresse IP",
"Masque de sous-réseau",
"Passerelle par défaut",
"DNS principal",
"DNS secondaire",
"Paramètres PPPoE",
"Nom d'utilisateur",
"Mot de passe",
"Paramètres des ports",
"Port HTTP",
"Configuration HTTPS",
"Activer HTTPS",
"Port HTTPS",
"CONFIGURATION UPnP",
"Activer UPnP",
"CONFIGURATION BONJOUR",
"Activer Bonjour",
"Nom-Bonjour",
"32 caractères au maximum",
"Port RTSP",
"Redirection de port UPnP",
"Port HTTP externe",
"Port HTTPS externe",
"Port RTSP externe",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_NETWORK_TITLE = 3;
var I_LAN_SETTING = 4;
var I_DHCP = 5;
var I_STATIC_IP = 6;
var I_IP_ADDRESS = 7;
var I_SUBNET_MASK = 8;
var I_DEFAULT_GATEWAY = 9;
var I_DNS1 = 10;
var I_DNS2 = 11;
var I_PPPOE = 12;
var I_UID = 13;
var I_PWD = 14;
var I_PORT_SETTING = 15;
var I_HTTP_PORT = 16;
var I_HTTPS_SETTING = 17;
var I_HTTPS_ENABLE = 18;
var I_HTTPS_PORT = 19;
var I_UPNP_SETTIGN = 20;
var I_UPNP_ENABLE = 21;
var I_BONJOUR_SETTING = 22;
var I_BONJOUR_ENABLE = 23;
var I_BONJOUR_NAME = 24;
var I_MAX_CHAR_32 = 25;
var I_RTSP_PORT = 26;
var I_UPNP_PORT_FORWARD = 27;
var I_UPNP_EXTERN_HTTP = 28;
var I_UPNP_EXTERN_HTTPS = 29;
var I_UPNP_EXTERN_RTSP = 30;

var des_item_name = new Array (
"Cette section vous permet de configurer les paramètres Internet et ceux du réseau local.",
"<b>Conseils utiles...</b>\
<br><br>Sélectionnez \"<b>Connexion DHCP</b>\" si vous utilisez un serveur DHCP sur le réseau et souhaitez qu'une adresse IP soit \
automatiquement attribuée à la caméra. Choisissez de saisir manuellement une <b>adresse IP statique</b> et toutes les informations \
pertinentes, ou bien sélectionnez <b>PPPoE</b> si vous connectez votre DCS-935L directement à Internet et que celle-ci utilise le service \
PPPoE. Si vous choisissez PPPoE, vous devez saisir le nom d'utilisateur et le mot de passe fournis par votre fournisseur d'accès Internet.\
<br><br><b>Un serveur DNS</b> (système de noms de domaine) est un service Internet qui traduit des noms de domaine (par exemple, www.dlink.com)\
 en adresses IP (par exemple, 192.168.0.20). Les adresses IP peuvent être obtenues de votre FAI.\
<br>- <b>DNS principal</b> : Serveur de noms de domaine principal qui traduit les noms en adresses IP.\
<br>- <b>DNS secondaire</b> : Serveur de noms de domaine secondaire qui prend le relais en cas de problème avec le serveur principal.\
<br><br><b>Configuration des ports</b> - La plupart des FAI n'ouvrent pas le port 80 (un port de transfert vidéo par défaut de la DCS-935L) \
pour les clients particuliers, mais la DCS-935L a la possibilité d'utiliser un autre port en activant le deuxième port HTTP pour la vidéo en \
transit. Tous les ports non utilisés, comme les ports 800, 801, etc. peuvent être utilisés. N'oubliez pas que si la DCS-935L se trouve derrière \
un routeur, vous devez rediriger ce port vers l'adresse IP de la DCS-935L. Lors de l'accès à la caméra, vous devez renseigner son adresse IP \
suivie du numéro de port (par exemple, http://192.168.0.20:800).\
<br><br><b>Les paramètres UPnP</b> vous permettent de configurer la caméra en tant que périphérique UPnP sur le réseau.\
<br><br><b>Bonjour</b> fournit un moyen simple de découvrir différents services sur votre caméra.",
"(Les caractères que vous pouvez utiliser dans un nom Bonjour : \"lettres majuscules ou minuscules\", \"chiffres\" et \"tirets\".)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

var pop_msg = new Array (
"Un problème est survenu avec la requête.",
"L'adresse IP est incorrecte.",
"Le masque de sous-réseau est incorrect.",
"La passerelle par défaut est incorrecte.",
"Vous avez saisi une configuration TCP/IP incorrecte.",
"Le format du nom d'utilisateur est incorrect.",
"Le format du mot de passe est incorrect.",
"Le DNS principal est incorrect.",
"Le DNS secondaire est incorrect.",
"Le format du numéro de port est incorrect.",
"Le format du nom Bonjour est incorrect.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_IPADDRESS = 1;
var PMSG_INVALID_SUBNET_MASK = 2;
var PMSG_INVALID_GATEWAY = 3;
var PMSG_INCORRECT_TCPIP_CONFIG = 4;
var PMSG_INVALID_UID = 5;
var PMSG_INVALID_PWD = 6;
var PMSG_INVALID_DNS1 = 7;
var PMSG_INVALID_DNS2 = 8;
var PMSG_INVALID_PORT_NUMBER = 9;
var PMSG_INVALID_BONJOUR_NAME = 10;
