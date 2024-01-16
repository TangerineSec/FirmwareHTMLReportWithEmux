var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Bewegungserk.", 
"Live Video",
"Video-Bewegungserk. aktivieren",
"Empfindlichkeit",
"Prozentsatz",
"Bereichbestimmungsmodus",
"Bewegungsbereich festlegen",
"Bewegungsbereich entfernen",
"Inhalt löschen",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_MOTION_DETECTION = 3;
var I_LIVE_VIDEO = 4;
var I_ENABLE_MOTION = 5;
var I_SENSITIVITY = 6;
var I_PERCENTAGE = 7;
var I_DRAWING_MODE = 8;
var I_DRAW_MOTION_AREA = 9;
var I_ERASE_MOTION_AREA = 10;
var I_CLEAR = 11;

var des_item_name = new Array (
"In diesem Abschnitt können Sie die Bewegungserkennung für Ihre Kamera konfigurieren.\
<br><br>Beachten Sie bitte, dass auf Ihrem Computer Java installiert sein muss, \
damit das Bewegungserkennungs-Konfigurationsfenster angezeigt werden kann. Falls Sie die Live Videoaufnahme unten nicht sehen, \
rufen Sie im Internet die Seite <a href=\"http://www.java.com\"> http://www.java.com</A> auf, um Java herunterzuladen und zu installieren.",
"<b>Nützliche Tipps...</b><br><br>\
<b>Empfindlichkeit</b><br>Geben Sie die Empfindlichkeit der Kamera zum Auslösen der Bewegungserk. an. Eine hoch eingestellte Empfindlichkeit macht das Erkennen von Bewegungen leichter.\
<br><br><b>Bewegungsbereich festlegen</b><br>Ziehen Sie Ihre Maus, um einen Bewegungserk.ber. hinzuzufügen.\
<br><br><b>Bewegungsbereich entfernen</b><br>Ziehen Sie Ihre Maus, um einen Bewegungserk.ber. zu entfernen.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Empfindlichkeitsangabe muss eine Ganzzahl sein",
"Empfindlichkeitsangabe muss eine Ganzzahl und zwischen 0 bis 100 sein",
"Prozentsatz muss eine Ganzzahl sein",
"Prozentsatz muss eine Ganzzahl und zwischen 0 bis 100 sein",
"Legen Sie einen Bewegungsbereich fest",
"Achtung: Markieren Sie [Video-Bewegungserk. aktivieren], wenn Sie die Bewegungserkennungsfunktion aktivieren möchten. Um die Bewegungserkennungsfunktion jedoch zu deaktivieren, löschen Sie bitte den Bewegungsbereich.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
