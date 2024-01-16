var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Tag & Nacht", 
"Tag / Nacht-Modus-Einstellungen",
"Tag & Nacht",
"Automatisch",
"Manuell",
"Immer-Tag-Modus",
"Immer-Nacht-Modus",
"Zeitplanmodus Tagmodus",
"Beispiel",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DAYNIGHT_TITLE = 3;
var I_DAYNIGHT_SETTING = 4;
var I_DAYNIGHT_MODE = 5;
var I_AUTO = 6;
var I_MANUAL = 7;
var I_ALWAYS_DAY_MODE = 8;
var I_ALWAYS_NIGHT_MODE = 9;
var I_DAY_MODE_SCHEDULE = 10;
var I_EXAMPLE = 11;

var des_item_name = new Array (
"In diesem Abschnitt können Sie das Umschalten für den Tag/Nacht-Modus konfigurieren. \
Der Tag/Nacht-Modus bietet ein gutes Video-Beleuchtungssystem in Tag- und Nachtbedingungen.\
<br><br>Im Tagmodus ist die Infrarotbeleuchtung ausgeschaltet, das Infrarotlicht ist gesperrt und die Videoaufnahme ist in Farbe. \
Im Nachtmodus ist die Infrarotbeleuchtung eingeschaltet, das Infrarotlicht ist sichtbar und die Videoaufnahmen sind in schwarz und weiß.",
"<b>Nützliche Hinweise..</b><br><br><b>Auto</b> - Die Kamera wechselt zwischen Tag- und Nachtmodus. Die Kamera ist normalerweise im Tagmodus. \
Sie wechselt automatisch bei dunkleren Lichtverhältnissen in den Nachtmodus.\
<br><br><b>Manual</b> (Manuell) - Die Kamera kann auf der Video Live-Anzeigeseite manuell in den Tag- oder Nachtmodus gesetzt werden.\
<br><br><b>Always Day Mode</b> (Immer-Tag-Modus) - Die Kamera ist immer im Tagmodus.<br><br><b>Always Night Mode</b> \
(Immer-Nacht-Modus) - Die Kamera ist immer im Nachtmodus.\
<br><br><b>Day Mode Schedule</b> (Tag-Modus-Zeitplan) - Die Kamera ist zu dem von Ihnen im Zeitplan angegebenen Datum und der angegebenen Uhrzeit im Tagmodus. Sie wechselt während aller anderen Zeiten in den Nachtmodus.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
""
);

var PMSG_REQUEST_FAILED = 0;
