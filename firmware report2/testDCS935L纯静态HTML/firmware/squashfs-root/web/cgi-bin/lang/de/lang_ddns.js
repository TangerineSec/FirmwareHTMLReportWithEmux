var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Dynamischer DNS", 
"Dynamischer DNS",
"aktivieren Sie die DDNS",
"Server address",
"Hostname",
"Benutzername",
"Kennwort",
"Timeout",
"(Stunden)",
"Deaktiviert",
"Aktualisiert",
"Initialisieren",
"Herstellung einer Verbindung fehlgeschlagen",
"Status",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DDNS = 3;
var I_DDNS_SETTING = 4;
var I_DDNS_ENABLE = 5;
var I_SERVER_ADDRESS = 6;
var I_HOSTNAME = 7;
var I_UID = 8;
var I_PWD = 9;
var I_TIMEOUT = 10;
var I_HOURS = 11;
var I_STATUS_DISABLE = 12;
var I_STATUS_UPDATED = 13;
var I_STATUS_INITIALIZING = 14;
var I_STATUS_CONNECTION_FAILED = 15;
var I_STATUS = 16;

var des_item_name = new Array (
"Die Funktion 'Dynamischer DNS' (DDNS) ermöglicht Ihnen als Host eines Servers (Webserver, \
FTP-Server, usw.) mit einem Domänennamen (www.einbeliebigerdomänenname.com) zu fungieren, den Sie von Ihrem \
Breitband-Internetdienstanbieter erworben haben. Wenn Sie die Dienste eines DDNS-Anbieters nutzen, können Ihre \
Freunde durch einfache Eingabe Ihres Hostnamens, unabhängig von Ihrer aktuellen IP-Adresse, auf Ihre IP-Kamera zugreifen.",
"<b>Nützliche Hinweise..</b> <br><br>DDNS ist von Nutzen, wenn Sie einen DSL- oder Kabeldienstanbieter haben, \
der Ihre Modem-IP-Adresse in regelmäßigen Zeitabständen ändert. Dies ermöglicht Ihnen, Ihrer Kamera einen \
Website-Domänennamen zuzuweisen, statt eine Verbindung über eine IP-Adresse herstellen zu müssen.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Dynamischen DNS Server wählen",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Der Hostname ist ungültig.",
"Der Benutzername ist ungültig.",
"Das Kennwort ist ungültig.",
"Der gültige Bereich für die Zeitüberschreitung liegt zwischen 24 und 65535 Stunden.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

