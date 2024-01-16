var languageNum = new Array("en","sc","tc");
var item_name = new Array("MENU ASSISTANCE", "Admin", "Système",
"Mise à jour du microprogramme",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"Vous pouvez utiliser cette page pour configurer le mot de passe administrateur et les comptes utilisateur.<br><br>",
"<b>Nom de la caméra</b> - Un nom unique pour la caméra.<br><br>",
"<b>Contrôle du voyant</b> - Sélectionnez Normal pour activer le voyant. Sélectionnez Désactivé pour désactiver le voyant.<br><br>",
"<b>Contrôle de l'accès des utilisateurs</b> - Activez cette option pour permettre aux autres utilisateurs d'accéder à la caméra.<br><br>",
"<b>Authentification de l'URL de l'instantané</b> - Pour activer cette option, vous devez saisir le nom d'utilisateur et le mot de passe pour accéder à http ://Adresse IP de la caméra IP/image/jpeg.cgi afin d'obtenir une image instantanée.<br><br>",
"<b>Heure affichée sur l'écran</b> - Activez cette option pour permettre l'affichage de l'heure sur l'écran.<br><br>",
"<b>Nom d'utilisateur</b> - Créez un nouvel utilisateur pour accéder aux images vidéo. 8 comptes utilisateur au maximum peuvent être ajoutés à la liste d'utilisateurs. Vous pouvez également modifier et supprimer des comptes utilisateur ici.",
"<b>Enregistrer sur le disque dur local</b> - Après avoir configuré la caméra, vous pouvez enregistrer la configuration sur votre disque dur en vue de la restaurer plus tard<br><br>",
"<b>Charger depuis le disque dur local</b> - Cette option vous permet de charger un fichier précédemment enregistré et de restaurer les paramètres de configuration sur votre caméra.<br><br>",
"<b>Restaurer les paramètres par défaut</b> - Cette option réinitialise la caméra et en restaure les paramètres par défaut. Les paramètres que vous avez configurés seront tous remplacés.<br><br>",
"<b>Réinitialiser le périphérique</b> - Cette option redémarre la caméra.",
"<b>Mettre à jour le microprogramme</b> - Cette option permet à l'utilisateur de mettre à jour le microprogramme via le navigateur. Cliquez sur <b>Parcourir</b> pour localiser le fichier qui contient le nouveau microprogramme, puis cliquez sur <b>Charger</b> pour appliquer le nouveau microprogramme à la caméra.",
""
);

var D_ADMIN_INFO = 0;
var D_CAM_NAME_INFO = 1;
var D_LED_CONTROL_INFO = 2;
var D_USER_ACCESS_CONTROL_INFO = 3;
var D_SNAPSHOT_URL_INFO = 4;
var D_OSD_TIME_INFO = 5;
var D_USER_NAME_INFO = 6;
var D_SAVE_TO_LOCAL_INFO = 7;
var D_LOAD_FROM_LOCAL_INFO = 8;
var D_FACTORY_RESET_INFO = 9;
var D_REBOOT_INFO = 10;
var D_FWIPGRADE_INFO = 11;
