var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern","Einstellungen nicht speichern","Speichern",
"SD-AUFNAHME",
"SD-AUFNAHME",
"SD-AUFNAHME",
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
"Aufnahmeart",
"Dateiformat",
"Aufnahme vor dem Ereignis",
"Momentaufnahme",
"Video",
"Quelle",
"Konfigurierbar in",
"Audio und Video",
"Aufnahmelänge",
"Minuten pro Datei",
"SD-Karte",
"Freien Speicherplatz behalten",
"Minimum ist 200",
"Zyklisch",
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
var I_SNAPSHOT = 22;
var I_VIDEO = 23;
var I_SOURCE = 24;
var I_DESCRIPTION1 = 25;
var I_DESCRIOTION2 = 26;
var I_REC_LEN = 27;
var I_FILE_MIN = 28;
var I_SDCARD = 29;
var I_QUOTA = 30;
var I_MIN = 31;
var I_CYCLIC =32;

var des_item_name = new Array (
"Hier konnen Sie die Aufnahmeeinstellungen Ihrer Kamera vornehmen und die Aufnahmen zeitlich einplanen. Sie mussen dazu das Kontrollkastchen 'SD-Aufnahme' markieren.",
"<b>Nutzliche Hinweise..</b><br><br>\
SD-Aufnahme bietet die Moglichkeit, Videos oder Momentaufnahmen (pro Sekunde) auf eine lokale SD-Karte auf der Basis von Bewegungserkennungen oder in einer angegebenen Zeit aufzunehmen. \
<br><br><b>Auslosen durch</b><br>\
<b>Bewegung</b><br>\
SD-Aufnahme nach einer Bewegungserkennung beginnen.<br>\
<b>Zeitplan</b><br>\
SD-Aufnahme in einer angegebenen Zeit.<br>\
<b>Immer</b><br>\
Fortlaufende SD-Aufnahme.<br>\
<b>Ton</b><br>\
Starte die SD-Aufnahme bei erkanntem Ton (Tonerkennung als Ausloser).<br><br>\
<b>Aufnahmeart</b><br>\
Sie konnen das Videoprofil, Aufnahmen vor und nach dem Ereignis hier einrichten, wenn der auslosende Faktor eine Bewegung ist. Sie konnen auch Aufnahmen als Momentaufnahme oder Video wahlen.<br><br>\
<b>Aufnahmelange</b><br>\
 Geben Sie die Lange der Zeit fur jede Videoaufnahme an.<br><br>\
<b>SD-Karte</b><br>\
Sie konnen angeben, wie viel freier Speicherplatz auf der SD-Karte verbleiben soll, und ob Aufnahmen zyklisch sein sollen oder nicht.<br><br>\
<b>Freien Speicherplatz behalten</b><br>\
 Geben Sie ausreichend Speicherkapazitat auf der lokalen SD-Karte an, um zu verhindern, dass das System instabil wird.<br><br>\
<b>Zyklisch</b><br>\
 Wenn diese Option ausgewahlt ist, werden die altesten Ordner geloscht, wenn das System Speicherplatz fur neue Dateien benotigt.<br><br>\
",
"Beachten Sie bitte, dass die Bewegungserkennung nicht aktiviert ist. Gehen Sie zur Bewegungserkennungs-Webseite, um die Konfiguration durchzuführen.",
"Beachten Sie bitte, dass die Tonerkennung nicht aktiviert ist. Gehen Sie zur Tonerkennungsseite, um die Konfiguration vorzunehmen.",
"Beachten Sie, dass keine SD-Karte in die Kamera eingesetzt oder diese nicht beschreibbar ist.",
"Beachten Sie bitte, dass die SD-Kartenkapazität ausgeschöpft ist.",
"Um die SD-Karte in der Kamera zu formatieren, deaktivieren Sie bitte zuerst die SD-Aufzeichnung und gehen Sie dann zu ",
"SD-Management",
" Seite.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_MOTIONNOTE_INFO = 2;
var D_AUDIONOTE_INFO = 3;
var D_SDNOTE_INFO = 4;
var D_SDNOTE_FULL_INFO = 5;
var D_SD_MANAGEMENT_1_INFO = 6;
var D_SD_MANAGEMENT_2_INFO = 7;
var D_SD_MANAGEMENT_3_INFO = 8;

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
"Aufnahmezeit vor dem Ereignis muss eine Ganzzahl und zwischen 0 und 5 sein",
"Freie Speicherplatzangabe auf der SD-Karte muss eine Ganzzahl und zwischen 200 und 32768 sein",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;