var languageNum = new Array("en","sc","tc");
var item_name = new Array("MENU ASSISTANCE", "Assistant", "Configuration réseau",
"Configuration Wi-Fi",
"Configuration répéteur",
"DNS dynamique",
"FILTRE IP",
"Configuration de l’image",
"Audio et vidéo",
"Masque de confidentialité",
"Détection de mouvement",
"Détecttion de son",
"Email",
"FTP",
"Instantané",
"Clip vidéo",
"Heure et date",
"Mode Jour / nuit",
"Gestion de la carte SD",
""
);
var I_SUPPORT_MENU = 0;
var I_WIZARD = 1;
var I_NETWORK_SETUP = 2;
var I_WIRELESS_SETUP = 3;
var I_EXTENDER_SETUP = 4;
var I_DDNS = 5;
var I_IPFILTER = 6;
var I_IMAGE_SETUP = 7;
var I_AUDIO_VIDEO_SETUP = 8;
var I_PRIVACY_MASK = 9;
var I_MOTION_DETECTION = 10;
var I_SOUND_DETECTION = 11;
var I_MAIL = 12;
var I_FTP = 13;
var I_SNAPSHOT = 14;
var I_VIDEO_CLIP = 15;
var I_TIME_AND_DATE = 16;
var I_DAY_NIGHT_MODE = 17;
var I_SD_MANAGEMENT = 18;

var des_item_name = new Array (
"<b>Assistant de configuration de connexion Internet</b> - Cette page sert à configurer la DCS-935L à l'aide de l'assistant qui vous guide tout au long de la configuration de la caméra pour votre réseau. La configuration peut être manuelle à l'aide d'une adresse IP statique ou automatique à l'aide du protocole PPPoE ou DHCP (le protocole DHCP est un protocole réseau qui autorise la concession d'une adresse IP à un client par un serveur pendant une durée déterminée).<br><br>\
<b>PPPoE</b> - (protocole point à point sur Ethernet). Si vous utilisez la DCS-935L pour vous connecter directement à Internet, indiquez dans ces champs le nom d'utilisateur et le mot de passe donnés par votre fournisseur d'accès Internet lors de la configuration de votre compte.<br><br>\
<b>DDNS</b> - (Serveur de noms de domaine dynamique). Si vous avez configuré le service DDNS, vous devez saisir dans ces champs votre nom d'utilisateur et votre mot de passe si votre DCS-935L utilise une adresse IP publique. Cela permet au serveur DDNS de suivre votre adresse IP même si elle change.",
"<b>Paramètres du réseau local</b> -  La configuration peut être manuelle à l'aide d'une adresse IP fixe ou automatique à l'aide du protocole PPPoE ou DHCP (le protocole DHCP est un protocole réseau qui autorise la concession d'une adresse IP à un client par un serveur pendant une durée déterminée).<br><br>\
<b>PPPoE (protocole point à point sur Ethernet)</b> - Si vous utilisez la DCS-935L pour vous connecter directement à Internet, vous devrez indiquer un nom d'utilisateur et un mot de passe valables fournis par votre fournisseur d'accès Internet.<br><br>\
<b>Un serveur DNS</b> (système de noms de domaine) est un service Internet qui traduit des noms de domaine (par exemple, www.dlink.com) en adresses IP (par exemple, 192.168.0.20). L'adresse IP DNS peut être reçue de votre FAI.<br><br>\
<b>Configuration des ports</b> - La plupart des FAI n'ouvrent pas le port 80 (un port de transfert vidéo par défaut de la DCS-935L) pour les clients particuliers, mais la DCS-935L a la possibilité d'utiliser un autre port en activant le deuxième port HTTP pour la vidéo en transit. Tous les ports non utilisés, comme les ports 800, 801, etc. peuvent être utilisés. N'oubliez pas que si la DCS-935L se trouve derrière un routeur, vous devez rediriger ce port vers l'adresse IP de la DCS-935L. Lors de l'accès à la caméra, vous devez renseigner son adresse IP suivie du numéro de port (par exemple, http://192.168.0.20:800).<br><br>\
<b>Paramètres UPnP</b> - UPnP est l'acronyme de Universal Plug and Play, une architecture de réseau qui assure la compatibilité de tous les équipements, logiciels ou périphériques connectés en réseau. La DCS-935L est une caméra Internet compatible UPnP et elle fonctionne donc avec d'autres périphériques UPnP. \
Cette fonction est activée par défaut. Si vous ne voulez pas l'utiliser, vous pouvez la désactiver en cochant la case <b>Désactivé</b>.<br><br>\
<b>Redirection de port UPnP</b> - La redirection de port UPnP permettra à une caméra IP de communiquer avec un routeur réseau compatible UPnP fournissant un accès simple au périphérique sur le réseau local et un accès distant via Internet. Pour utiliser la redirection de port UPnP, vous devez d'abord vous assurer que la fonction UPnP est prise en charge et qu'elle est activée sur votre routeur. Après cette confirmation, vous devrez activer la redirection de port UPnP sur votre caméra IP. \
Si les ports utilisés par défaut sont libres pour la redirection de port, vous pouvez les utiliser. Sinon, vous devez changer les ports HTTP utilisés pour permettre une redirection correcte de port UPnP. Après que les ports corrects du réseau aient été attribués à votre camera IP, vous pourrez y accéder sur l'Internet. <br><br>\
<b>Bonjour</b> - Si ce service est activé, la caméra est accessible via un navigateur Bonjour, comme le navigateur Safari d'Apple sous Mac.<br><br>\
<b>Nom Bonjour</b> - Saisissez le nom de votre caméra ici. Il s'agit du nom affiché par le service Bonjour.",
"<b>SSID</b> - Il s'agit de l'identifiant unique d'un réseau sans fil.<br><br>\
<b>Canal</b> - N'importe quel canal peut être sélectionné pour votre réseau. Vous pouvez toujours changer de canal s'il y a beaucoup d'interférences sur un canal particulier.<br><br>\
<b>Mode de connexion</b>  - <b>La connexion Infrastructure</b> est une connexion sans fil qui utilise un point d'accès comme point de transmission de tous les clients sans fil. <b>Ad-Hoc</b> est une connexion sans fil utilisée sans point d'accès, où la caméra est connectée directement à votre PC.<br><br>\
<b>Visite des lieux</b> - Une fenêtre contextuelle s'affichera pour vous permettre de sélectionner un réseau sans fil pour la connexion.<br><br>\
<b>Mode de sécurité sans fil -</b><br>\
<b>Aucun</b> - Aucun chiffrement.<br>\
<b>Chiffrement WEP</b> - Wired Equivalent Privacy, chiffrement de 64 bits et de 128 bits au format hexadécimal (0 à 9, a à f) ou ASCII (texte).\
<br>64 bits -> 10 caractères hexadécimaux ou 5 caractères ASCII\
<br>128 bits -> 26 caractères hexadécimaux ou 13 caractères ASCII\
<br><b>WPA-PSK / WPA2-PSK</b> - Accès protégé Wi-Fi avec <b>Clé pré-partagée</b> ; le champ Clé doit être rempli. Les types de chiffrement TKIP (Temporal Key Integrity Protocol) et AES sont pris en charge.",
"<b>Paramètres du réseau sans fil étendu</b> - Dans cette section, vous pouvez configurer la fonction de prolongateur sans fil de votre caméra qui vous permet d'étendre la portée d'un réseau sans fil existant. Vous pouvez choisir de conserver le même nom de réseau sans fil pour le réseau étendu ou vous pouvez en créer un nouveau.<br><br><b>Mode de sécurité sans fil -</b><br>\
<b>Aucun</b> - Aucun chiffrement.\
<br><b>Chiffrement WEP</b> - Wired Equivalent Privacy, chiffrement de 64 bits et de 128 bits au format hexadécimal (0 à 9, a à f) ou ASCII (texte).\
<br>64 bits -> 10 caractères hexadécimaux ou 5 caractères ASCII\
<br>128 bits -> 26 caractères hexadécimaux ou 13 caractères ASCII\
<br><b>WPA-PSK / WPA2-PSK</b> - Accès protégé Wi-Fi avec <b>Clé pré-partagée</b> ; le champ Clé doit être rempli. Les types de chiffrement TKIP (Temporal Key Integrity Protocol) et AES sont pris en charge.",
"<B>DNS dynamique </b> (serveur de noms de domaine dynamique) - Un serveur DNS dynamique synchronise automatiquement l'adresse IP publique du modem. N'importe quel utilisateur peut se connecter à la caméra en utilisant le <b>Nom d'hôte</b> que vous avez acquis auprès de votre FAI. Un nom d'utilisateur et un mot de passe sont requis si vous utilisez le service DDNS.<br><br>\
<b>Adresse du serveur</b> - Adresse du serveur DNS. Vous pouvez saisir l'adresse ou sélectionner un serveur DDNS dans la liste déroulante.<br><br>\
<b>Nom d'hôte</b> - Nom de domaine choisi par le service DDNS.<br><br>\
<b>Nom d'utilisateur</b> - Nom du compte du service DDNS.<br><br>\
<b>Mot de passe</b> - Mot de passe du compte du service DDNS.<br><br>\
<b>Délai d'attente</b> - Durée avant que le serveur DDNS ne réinitialise la connexion.",
"<b>Filtre IP</b> - Pour activer les filtres IP de votre caméra, vous devez sélectionner la case à cocher « Filtrage des listes d'accès ». Modifiez ensuite vos réglages avec cette page.\
<br><br><b>Type de filtre</b> - Vous pouvez sélectionner Autoriser ou Refuser pour les adresses IP spécifiées au niveau de la liste des filtres.\
<br><br><b>Liste des filtres</b> - Adresses IP spécifiées.\
<br><br><b>Unique</b> - Spécifiez une seule adresse IP.\
<br><br><b>Sous-réseau</b> - Spécifiez un sous-réseau d'adresses IP.\
<br><br><b>Plage</b> - Spécifiez une plage d'adresses IP.\
<BR><br><b>Adresse IP de l'administrateur< /b> - Vous pouvez activer et définir une adresse IP comme adresse IP de l'administrateur pour qu'elle soit toujours accessible pour la caméra.",
"<b>Luminosité</b> - Compense les scènes en contre-jour.\
<br><br><b>Saturation</b> - Contrôle la force d'une couleur du noir et blanc aux couleurs vives.\
<br><br><b>Contraste</b> - Permet de régler le contraste des couleurs de l'objet. Elle aide à améliorer l'image sous un ciel gris maussade.\
<br><br><b>Teinte</b> - Ce paramètre contrôle les différents degrés de stimulation qu'une couleur exerce sur les yeux humains.\
<br><br><b>Netteté</b> - Cette fonction est utilisée pour ajuster la netteté de l’image.\
<br><br><b>N/B</b> - Sélectionnez cette option pour activer ou désactiver le mode noir et blanc pour la caméra.\
<br><br><b>Symétrie</b> - Sélectionnez cette fonction pour obtenir une image symétrique.\
<br><br><b>Retournement</b> - Sélectionnez cette fonction si la caméra est installée à l'envers au plafond.\
<br><br><b>Fréquence</b> - Choisissez entre Off, 50 ou 60 Hz (selon le pays).",
"<b>Profil vidéo</b> - Vous pouvez configurer de façon indépendante divers paramètres d'image (comme la qualité et la fréquence d'images) pour les quatre types de vidéo de la caméra : H.264 et JPEG.\
<br><br><b>Résolution</b> - Plusieurs options de dimension sont disponibles.\
<br><br><b>I/s</b> (Images par seconde) - Nombre maximum d'images affichées en 1 seconde. La fréquence de 30 images/seconde est la meilleure qualité vidéo pour cette caméra. En général, toute fréquence d'images supérieure à 15 i/s est imperceptible à l'œil nu.\
<br><br><b>bits/s</b> (bits par seconde) - Sélectionnez une bande passante fixe pour le fonctionnement de la caméra. Cette option vous permet de sélectionner une fréquence d'images personnalisée adaptée à la bande passante et à l'espace de stockage.\
<br><br><b>Qualité</b> - Réglez la qualité de l'image. La meilleure qualité d'image est obtenue en sélectionnant Excellente.\
<br><br><b>CONFIGURATION AUDIO</b> - Vous pouvez activer ou désactiver le microphone ou régler le volume.\
<br><br><b>Activer le microphone</b> - Si vous activez le microphone, vous pouvez contrôler le son à partir du micro de la caméra IP.\
<br><br><b>Volume du microphone</b> - Vous pouvez régler le volume du microphone à l'aide du réglage du niveau sonore.",
"<b>Masque de confidentialité</b> - Cliquez sur la case associée pour activer cette fonction. Maintenant utilisez la souris pour tracer un rectangle autour de la zone que vous souhaitez masquer.",
"<b>Détection de mouvement</b> - Lorsqu'elle est activée, la détection de mouvement est activée. Lorsqu'elle est désactivée, la détection de mouvement est désactivée.",
"<b>Détection du son</b> - Lorsqu'elle est activée, la détection du son est activée. Lorsqu'elle est désactivée, la détection du son est désactivée.",
"<b>Adresse du serveur SMTP</b> - Nom de domaine ou adresse IP du serveur de messagerie externe.\
<br><br><b>Adresse électronique de l'expéditeur</b> - Adresse électronique de la personne qui envoie les images de la caméra.\
<br><br><b>Adresse électronique du destinataire</b> - Adresse électronique du destinataire pour le serveur SMTP.\
<br><br><b>Nom d'utilisateur</b> - Nom d'utilisateur du compte de messagerie électronique.\
<br><br><b>Mot de passe</b> - Mot de passe du compte de messagerie électronique.\
<br><br><b>Intervalle </b> - Intervalle de temps entre chaque instantané/clip vidéo.\
<br><br><b>Utiliser SSL-TLS/STARTTLS</b> - Sélectionnez SSL-TLS ou STARTTLS si le serveur SMTP requiert une authentification TLS.\
<br><br><b>Tester le compte de messagerie</b> - Un instantané est envoyé au compte de messagerie que vous avez configuré. Si vous avez bien configuré le compte SMTP, vous pourrez envoyer un fichier de test au compte de messagerie du destinataire.",
"<b>Nom d'hôte</b> - Adresse IP du serveur FTP auquel vous vous connecterez.\
<br><br><b>Port</b> - Par défaut, il s'agit du port 21.\
<br><br><b>Nom d'utilisateur</b> - Nom d'utilisateur requis pour accéder au serveur FTP externe.\
<br><br><b>Mot de passe</b> - Mot de passe requis pour accéder au serveur FTP externe.\
<br><br><b>Chemin</b> - Indique le répertoire ou le dossier cible sur le serveur FTP externe.\
<br><br><b>Intervalle </b> - Intervalle de temps entre chaque instantané/clip vidéo.\
<br><br><b>Mode passif</b> - L'activation du mode passif permet d'accéder à un serveur FTP externe si la caméra se trouve derrière un routeur protégé par un pare-feu.\
<br><br><b>Tester le serveur FTP</b> - Un fichier image est envoyé au serveur FTP dès que vous cliquez sur Tester. ",
"<b>Instantané</b> - Si vous sélectionnez cette option, vous pouvez envoyer une ou 6 images fixes depuis cet ordinateur vers un serveur de courrier électronique ou FTP.\
<br><br><b>Déclenchement par</b><br><b>Mouvement</b> - L'instantané est capturé lorsqu'un mouvement est détecté.\
<br><b>Calendrier</b> - L'instantané est capturé à un moment déterminé.\
<br><b>Toujours</b> - Instantanés continus.\
<br><b>Son</b> - L'instantané est capturé quand un son est détecté.\
<br><br><b>Type d'instantané</b> - Instantané unique ou 6 instantanés.\
<br><br><b>Cible</b> - Vous pouvez sélectionner FTP ou courrier électronique comme cible pour l'instantané.",
"<b>Clip vidéo</b> - Si vous sélectionnez cette option, vous pouvez envoyer un clip vidéo depuis cet ordinateur vers un serveur de courrier électronique ou FTP.\
<br><br><b>Déclenchement par</b><br><b>Mouvement</b> - La fonction Clip vidéo est déclenchée lorsqu'un mouvement est détecté.\
<br><b>Calendrier</b> - La fonction Clip vidéo est déclenchée à un moment déterminé.\
<br><b>Toujours</b> - Clips vidéo continus.\
<br><b>Son</b> - Le clip vidéo est capturé quand le son est déclenché.\
<br><br><b>Clip vidéo</b> - Ici, vous pouvez sélectionner le profil vidéo souhaité pour l'enregistrement des clips vidéo et définir Enregistrement avant événement et Durée maximale.\
<br><br><b>Enregistrement avant événement</b> - Précisez combien de secondes de vidéo seront enregistrées, avant que la fonction Clip vidéo ne soit déclenchée.\
<br><br><b>Durée maximale</b> - Précisez combien de secondes de clip vidéo.\
<br><br><b>Cible</b> - Vous pouvez sélectionner FTP ou courrier électronique comme cible pour le clip vidéo.",
"<b>Fuseau horaire</b> - Zone géographique pour le réglage de l'heure locale.\
<br><br><b>Activer l'heure d'été</b> - Active le mode heure d'été qui règle automatiquement l'heure en fonction de la date et des décalages heure été/heure d'hiver.\
<br><br><b>Heure d'été automatique</b> - Si vous sélectionnez cette option, l'horloge est automatiquement réglée en fonction de l'heure d'été du fuseau horaire sélectionné.\
<br><br><b>Définir l'heure d'été manuellement</b> - Réglez et définissez manuellement les règles de l'heure d'été.\
<br><br><b>Décalage</b> - Indiquez le nombre d'heures à avancer ou à reculer quand l'heure d'été est activée.\
<br><br><b>Dates de changement d'heure</b> - Indiquez la date et l'heure auxquelles doit commencer et se terminer l'heure d'été.\
<br><br><b>Synchroniser avec le serveur NTP</b> - Si vous sélectionnez cette option, la caméra synchronise à chaque démarrage les paramètres horaires avec un serveur NTP Internet. Si aucun serveur NTP ne peut être atteint, aucun paramètre horaire ne sera appliqué.\
<br><br><b>Serveur NTP</b> - Indiquez l'adresse IP ou le nom de domaine du serveur NTP.\
<br><br><b>Régler la date et l'heure manuellement</b> - Réglez et définissez manuellement la date et l'heure.\
<br><br><b>Copier les paramètres horaires de votre ordinateur</b> - Pour synchroniser la date et l'heure de la caméra avec les réglages de votre ordinateur.",
"<b>Auto</b>\
 - La caméra bascule automatiquement entre le mode jour et et le mode nuit. La caméra fonctionne habituellement en mode jour. Elle passe automatiquement en mode nuit lorsque l'éclairage est plus sombre.\
<br><br><b>Manuel</b> - L'utilisateur peut régler manuellement le fonctionnement de la caméra en mode jour ou en mode nuit sur la page vidéo en direct.\
<br><br><b>Toujours en mode jour</b> - La caméra fonctionne toujours en mode jour.\
<br><br><b>Toujours en mode nuit</b> - La caméra fonctionne toujours en mode nuit.\
<br><br><b>Calendrier du mode jour</b> - La caméra fonctionne en mode jour aux dates et aux heures configurées dans le calendrier. La caméra passe en mode nuit aux autres heures.",
"<b>Carte SD</b> - Indique le chemin d'accès actuel vers la carte SD.\
<br><br><b>État de la carte SD</b> - Indique l'état actuel de la carte SD (si une carte est insérée ou détectée).\
<br><br><b>Fichiers par page</b> - Le nombre de fichiers par page.\
<br><br><b>Actualiser</b> - Cette option est utilisée pour actualiser le contenu de la page Web avec les données les plus récentes.\
<br><br><b>Pages</b> - Vous pouvez sélectionner la page à afficher ici.\
<br><br><b>Supprimer</b> - Le bouton Supprimer permet de supprimer les fichiers ou les dossiers qui sont sélectionnés.\
<br><br><b>Nom</b> - Affiche tout nom de fichier ou de dossier enregistré.\
<br><br><b>Taille</b> - Affiche la taille du fichier.\
<br><br><b>Formater la carte SD</b> - Cette option est utilisée pour supprimer toutes les données enregistrées sur la carte SD.\
<br><br><b>Total</b> - La capacité totale de la carte SD.\
<br><br><b>Utilisée</b> - La capacité utilisée de la carte SD.\
<br><br><b>Espace libre</b> - La capacité libre de la carte SD.",
""
);

var D_WIZARD = 0;
var D_NETWORK_SETUP = 1;
var D_WIRELESS_SETUP = 2;
var D_EXTENDER_SETUP = 3;
var D_DDNS = 4;
var D_IPFILTER = 5;
var D_IMAGE_SETUP = 6;
var D_AUDIO_VIDEO_SETUP = 7;
var D_PRIVACY_MASK = 8;
var D_MOTION_DETECTION = 9;
var D_SOUND_DETECTION = 10;
var D_MAIL = 11;
var D_FTP = 12;
var D_SNAPSHOT = 13;
var D_VIDEO_CLIP = 14;
var D_TIME_AND_DATE = 15;
var D_DAY_NIGHT_MODE = 16;
var D_SD_MANAGEMENT = 17;