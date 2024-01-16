var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"FTP", 
"FTP-Server - Videoclip",
"Hostname",
"Port",
"(Standard 21)",
"Benutzername",
"Kennwort",
"Pfad",
"Passiv-Modus",
"ja",
"nicht",
"Test läuft FTP-Server - Videoclip",
"Test läuft",
"FTP-Server - Momentaufnahme",
"Test läuft FTP-Server - Momentaufnahme",
"Intervall",
"Sekunden (Bereich: 10 bis 86400 Sekunden)",
"Sekunden (Bereich: 30 bis 86400 Sekunden)",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_FTP_TITLE = 3;
var I_FTP_SERVER = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_UID = 8;
var I_PWD = 9;
var I_PATH = 10;
var I_PASSIVE_MODE = 11;
var I_YES = 12;
var I_NO = 13;
var I_TEST_FTP_SERVER = 14;
var I_TEST = 15;
var I_FTP_SERVER_SNAPSHOT = 16;
var I_TEST_FTP_SERVER_SNAPSHOT = 17;
var I_INTERVAL = 18;
var I_INTERVAL_SNAPSHOT_DES = 19;
var I_INTERVAL_VIDEOCLIP_DES = 20;

var des_item_name = new Array (
"In diesem Abschnitt können Sie das Senden von Bildern an einen FTP-Server konfigurieren.",
"<b>Nützliche Hinweise..</b><br><br><b>Host-Name</b>:\
<br>Dies ist die IP-Adresse des FTP-Servers, zu dem Sie eine Verbindung herstellen.\
<br><br><b>Port</b>: \
<br>Die Standard-Porteinstellung ist 21. \
<br><br><b>User Name</b> (Benutzername): \
<br>Der für den Zugang zum externen FTP-Server erforderliche Benutzername. \
<br><br><b>Password</b> (Kennwort): \
<br>Das Kennwort für den externen FTP-Server. \
<br><br><b>Passiv-Modus</b> - Das Aktivieren des Passiv-Modus ermöglicht den Zugang zu einem externen FTP-Server, wenn sich Ihre Kamera hinter einem von einer Firewall geschützten Router befindet.\
<br><br><b>Test FTP server</b> (FTP-Server-Test)<br>Wenn Sie auf <b>Testklicken, wird eine Bilddatei an den FTP-Server gesendet.</b>.",
"Zu Testzwecken wird eine JPEG-Datei an den obigen FTP-Server gesendet. \
(Dateiname: test_date_time.jpg)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Die Portangabe ist ungültig.",
"Die Portangabe ist ungültig.",
"FTP-Test-Fehler",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
