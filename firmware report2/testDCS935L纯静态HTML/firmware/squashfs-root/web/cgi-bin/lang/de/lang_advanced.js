var languageNum = new Array("en","sc","tc");
var item_name = new Array("Admin", "ADMINISTRATOR-KENNWORT EINSTELLEN", "Altes Kennwort",
"Neues Kennwort",
"Kennwort wiederholen",
"Servereinstellung",
"IP Camera Name",
"LED-Steuerung",
"Standard",
"AUS",
"URL-Authentifizierung für Momentaufnahmen",
"Aktivieren",
"Deaktivieren",
"Uhrzeit- OSD",
"Farbe",
"Auf alle",
"Löschen",
"BENUTZERKONTO HINZUFÜGEN",
"Benutzername",
"Kennwort",
"Hinzufügen",
"BENUTZERLISTE",
"Nein.",
"Name",
"Ändern",
"Löschen",
"Maximal {$31} Zeichen",
"Maximal {$31} Zeichen",
"Maximal {$10} Zeichen",
"Max. 10 Benutzer",
"Speichern",
""
);
var I_ADMIN = 0;
var I_ADMIN_PWD_SETTING = 1;
var I_OLD_PWD = 2;
var I_NEW_PWD = 3;
var I_RETYPE_PWD = 4;
var I_SERVER_SETTING = 5;
var I_CAMERA_NAME = 6;
var I_LED_CONTROL = 7;
var I_NORMAL = 8;
var I_OFF = 9;
var I_SNAPSHOT_URL_AUTH = 10;
var I_ENABLE = 11;
var I_DISABLE = 12;
var I_OSD_TIME = 13;
var I_COLOR = 14;
var I_APPLY = 15;
var I_CANCEL = 16;
var I_ADD_USER_ACCOUNT = 17;
var I_USER_NAME = 18;
var I_PWD = 19;
var I_ADD = 20;
var I_USER_LIST = 21;
var I_NO = 22;
var I_NAME = 23;
var I_MODIFY = 24;
var I_DELETE = 25;
var I_PWD_LENGTH_DES = 26;
var I_UID_LENGTH_DES = 27;
var I_CAMERA_NAME_LENGTH_DES = 28;
var I_USER_MAX_DES = 29;
var I_SAVING = 30;

var des_item_name = new Array (
"Hier können Sie das Administrator-Kennwort ändern und die Servereinstellung für Ihre Kamera konfigurieren. \
Hier können Sie darüber hinaus auch Benutzerkonten hinzufügen, ändern und/oder löschen.",
"<b>Nützliche Hinweise..</b><br><br>Aus Sicherheitsgründen wird empfohlen, das Kennwort für die Administratorkonten zu ändern. \
Notieren Sie sich die neuen Anmeldenamen und Kennwörter, damit Sie die Kameraeinstellungen nicht zurücksetzen müssen, wenn sie einmal \
vergessen wurden.",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Schwarz",
"Weiß",
"Blau",
"Gelb",
"Rot",
"Orangefarben",
"Cyan",
"Goldfarben",
""
);

var O_COLOR_BLACK = 0;
var O_COLOR_WHITE = 1;
var O_COLOR_BLUE = 2;
var O_COLOR_YELLOW = 3;
var O_COLOR_RED = 4;
var O_COLOR_ORANGE = 5;
var O_COLOR_CYAN = 6;
var O_COLOR_GOLD = 7;

var pop_msg = new Array(
"Bei der Anfrage ist ein Problem aufgetreten.",
"Sie haben ein falsches Kennwort eingegeben. Versuchen Sie es bitte noch einmal.",
"Das Kennwort wurde nicht korrekt bestätigt. Stellen Sie sicher, dass das neue Kennwort und das von Ihnen zur Bestätigung erneut eingegebene Kennwort übereinstimmen.",
"Der Kameraname ist ungültig.",
"Sie haben einen falschen Benutzernamen eingegeben. Versuchen Sie es bitte noch einmal.",
"Klicken Sie auf 'OK', um den ausgewählten Benutzer zu ändern.",
"Überschreitet max. Benutzerzahl",
"Ungültiges Konto oder Kennwort.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_PWD_INCORRECT = 1;
var PMSG_PWD_RETYPE_INCORRECT = 2;
var PMSG_CAMERA_NAME_INVALID = 3;
var PMSG_USER_NAME_INCORRECT = 4;
var PMSG_CLICK_TO_MODIFY_USER = 5;
var PMSG_MAX_USER_EXCEED = 6;
var PMSG_INVALID_ACCOUNT_OR_PWD = 7;
