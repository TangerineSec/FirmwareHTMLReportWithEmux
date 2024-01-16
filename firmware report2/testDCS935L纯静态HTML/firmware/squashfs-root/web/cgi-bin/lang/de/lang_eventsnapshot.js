var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Momentaufnahme", 
"Momentaufnahme",
"Momentaufnahme",
"Auslösen durch",
"Only During (Nur während)",
"Tage",
"So",
"Mo",
"Di",
"Mi",
"Do",
"Fr",
"Sa",
"Uhrzeit",
"Start",
"Ende",
"Momentaufnahme",
"Momentaufnahme- Single",
"Ziel",
"FTP",
"E-Mail",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SNAPSHOT_TITLE = 3;
var I_SNAPSHOT = 4;
var I_SNAPSHOT_ITEM = 5;
var I_TRIGGER_BY = 6;
var I_ONLY_DURING = 7;
var I_DAY = 8;
var I_SUN = 9;
var I_MON = 10;
var I_TUE = 11;
var I_WED = 12;
var I_THU = 13;
var I_FRI = 14;
var I_SAT = 15;
var I_TIME = 16;
var I_START = 17;
var I_END = 18;
var I_SNAPSHOT_TYPE = 19;
var I_SINGLE = 20;
var I_TARGET = 21;
var I_FTP = 22;
var I_EMAIL = 23;

var des_item_name = new Array (
"Damit Ihre Kamera Momentaufnahmen machen kann, müssen Sie das Kontrollkästchen \'Snapshot\' (Momentaufnahme). \
Sie können dann das/die Auslöserereignis(se) sowie die Ereignisbenachrichtigung(en) entweder über E-Mail und/oder FTP angeben.",
"<b>Nützliche Hinweise..</b><br><br>Die Momentaufnahmenfunktion bietet die Möglichkeit, \
Bilder auf einem fernen E-Mail- oder FTP-Server auf Basis der Bewegungserkennung und der ausgelösten externen \
Sensoreingabe zu speichern oder dorthin zu senden.<br><br><b>Trigger by</b>(Auslösen durch)<br><b>Bewegung</b>\
<br>beginnt eine Momentaufnahme nachdem eine Bewegung erkannt wurde.\
<br><b>Zeitplan</b>\
<br>Momentaufnahme in einer angegebenen Zeit.\
<br><b>Immer</b>\
<br>Fortlaufende Momentaufnahme.\
<br><b>Ton</b><br>beginnt eine Momentaufnahme nach einer Tonerkennung.\
<br><br><b>Snapshot Type</b> (Art der Momentaufnahme)<br>Einzelmomentaufnahme oder 6 \
Momentaufnahmen hier einrichten.<br><br><b>`6 snapshots</b> (6 Momentaufnahmen)<br>Fortlaufende 6 Bilder für jede Momentaufnahme wählen.\
<br><br><b>Target</b> (Ziel)<br>Sie können das Ziel als FTP oder E-Mail für die Momentaufnahme wählen.",
"6 Momentaufnahmen mit \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
Intervall (Sekunden) (3 Frames vor und 3 nach dem Bewegungseinzelbild)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"Bewegung",
"Zeitplan",
"Immer",
"Ton",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Startzeit muss vor der Endzeit sein",
"Wählen Sie mindestens einen Tag",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
