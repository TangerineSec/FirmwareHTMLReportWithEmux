var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"E-Mail", 
"E-Mail-Adresse - Videoclip",
"SMTP-Server",
"SMTP-Server Port",
"(Standard 25)",
"Absender E-Mail-Adresse",
"E-Mail-Adresse des Empfängers",
"Benutzername",
"Kennwort",
"Use SSL-TLS/STARTTLS",
"nicht",
"SSL-TLS",
"STARTTLS",
"Test läuftE-Mail-Adresse - Videoclip",
"Test läuft",
"E-Mail-Adresse - Momentaufnahme",
"Test läuftE-Mail-Adresse - Momentaufnahme",
"Intervall",
"Sekunden (Bereich: 30 bis 86400 Sekunden)",
"Sekunden (Bereich: 60 bis 86400 Sekunden)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SMTP_TITLE = 3;
var I_EMAIL_ACCOUNT = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_SENDER_ADDRESS = 8;
var I_RECEIVER_ADDRESS = 9;
var I_UID = 10;
var	I_PWD = 11;
var I_AUTH_ENABLE = 12;
var I_NO = 13;
var I_SSLTLS = 14;
var I_STARTTLS = 15;
var I_TEST_EMAIL_ACCOUNT = 16;
var I_TEST = 17;
var I_EMAIL_ACCOUNT_SNAPSHOT = 18;
var I_TEST_EMAIL_ACCOUNT_SNAPSHOT = 19;
var I_INTERVAL = 20;
var I_INTERVAL_SNAPSHOT_DES = 21;
var I_INTERVAL_VIDEOCLIP_DES = 22;

var des_item_name = new Array (
"In diesem Abschnitt können Sie die E-Mail-Benachrichtigungseinstellungen für Ihre Kamera vornehmen. \
Sollten sich Ihre Details ändern oder Sie haben Schwierigkeiten mit den Warnhinweis-Benachrichtigungen, \
müssen Sie möglicherweise diese Einstellungen ändern.",
"<b>Nützliche Hinweise..</b><br><br><b>SMTP-Serveradresse</b>:\
<br>Dies ist der Domänennamen oder die IP-Adresse Ihres externen E-Mail-Servers.\
<br><br><b>Sender E-mail Address</b> (E-Mail-Adresse des Absenders):\
<br>Dies ist die E-Mail-Adresse der Person, die die Kameramomentaufnahmen sendet.\
<br><br><b>Receiver E-mail Address</b> (E-Mail-Adresse des Empfängers):\
<br>Dies ist die E-Mail-Adresse des Empfängers für den SMTP-Server.\
<br><br><b>User Name</b> (Benutzername): \
<br>Das ist der Benutzername für Ihr E-Mail-Konto.\
<br><br><b>Password</b> (Kennwort): \
<br>Das ist das Kennwort für Ihr E-Mail-Konto.\
<br><br><b>Use SSL-TLS/STARTTLS</b> (SSL-TLS/STARTTLS verwenden): \
<br>Wählen Sie <b>SSL-TLS</b> oder <b>STARTTLS</b>, wenn der SMTP-Server eine TLS-Authentifizierung erfordert.",
"Es wird eine Test-E-Mail an das oben angegebene E-Mail-Konto gesendet.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Der SMTP-Server-Port ist ungültig.",
"Test-E-Mail wurde erfolgreich gesendet",
"Das Senden einer Test-E-Mail ist fehlgeschlagen",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
