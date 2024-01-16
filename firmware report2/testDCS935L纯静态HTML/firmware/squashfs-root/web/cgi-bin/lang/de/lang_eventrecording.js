var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Videoclip", 
"Videoclip",
"Videoclip",
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
"Videoclip",
"Dateiformat",
"Aufnahme vor dem Ereignis",
"Sekunden",
"Maximale Dauer",
"Ziel",
"Dateiformat",
"E-Mail",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_VIDEOCLIP_TITLE = 3;
var I_VIDEOCLIP = 4;
var I_VIDEOCLIP_ITEM = 5;
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
var I_RECORDING_TYPE = 19;
var I_FILE_FORMAT = 20;
var I_PREEVENT_RECORDING = 21;
var I_SECONDS = 22;
var I_MAXIMUM_DURATION = 23;
var I_TARGET = 24;
var I_FTP = 25;
var I_EMAIL = 26;

var des_item_name = new Array (
"Mit der Video Clip-Funktion können Sie Videoclips über FTP oder E-Mail senden, wenn eine Auslöseaktion aktiviert wird.",
"<b>Nützliche Hinweise..</b><br><br>Die Videoclip-Funktion bietet die Möglichkeit, Videoclips auf einen fernen E-Mail- oder \
FTP-Server auf Basis der Bewegungserkennung und der ausgelösten externen Sensoreingabe zu speichern oder zu senden.\
<br><br><b>Trigger by</b> (Auslösen durch)\
<br><b>Bewegung</b><br>Videoclip-Aufnahmen nach einer Bewegungserkennung beginnen.\
<br><b>Zeitplan</b><br>Videoclip-Aufnahmen in einer angegebenen Zeit.\
<br><b>Immer</b><br>Fortlaufende Videoclip-Aufnahmen.\
<br><b>Ton</b><br>Videoclip-Aufnahmen nach einer Tonerkennung beginnen.<br><br><b>Video Clip</b>(Art des Videoclips)<br>Sie \
können hier die Aufnahme vor dem Ereignis und max. Dauer angeben.<br><br><b>Pre-event recording</b>(Aufnahme vor dem Ereignis)<br>Geben\
 Sie an, wie viele Sekunden aufgenommen werden sollen, bevor der Videoclip aufgenommen wird.<br><br><b>Maximum duration</b>(Maximale Dauer)\
 <br>Geben Sie an, wie viele Sekunden des Videoclips aufgenommen werden sollen.<br><br><b>Target</b>(Ziel)<br>Sie können das Ziel als FTP \
 oder E-Mail für den Videoclip wählen.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Bewegung",
"Zeitplan",
"Immer",
"Ton",
"Avi, .avi",
"Mp4, .mp4",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;
var O_AVI = 4;
var O_MP4 = 5;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Startzeit muss vor der Endzeit sein",
"Wählen Sie mindestens einen Tag",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
