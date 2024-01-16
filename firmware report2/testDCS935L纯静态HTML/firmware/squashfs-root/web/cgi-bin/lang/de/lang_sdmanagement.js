var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern","Einstellungen nicht speichern","Speichern",
"SD-MANAGEMENT",
"SD-KARTE",
"UNGULTIG",
"Gesamt:",
"Frei:",
"SD-Karte formatieren",
" KB",
"Beachten Sie, dass keine SD-Karte in die Kamera eingesetzt oder diese nicht beschreibbar ist.",
"Mochten Sie die Aufnahmefunktion deaktivieren und einen Neustart durchfuhren?",
"Initialisieren?",
"SD-Status: ",
"Schreibgeschutzt",
"Bereit",
"Ungultig",
"Mochten Sie Dateien sichern?",
"Mochten Sie die SD-Karte formatieren?",
"Die SD-Karte ist komplett formatiert.",
"SD-Karte",
"Aufnahmetyp: ",
"Aufnahmetyp ",
"Name",
"Anzahl Dateien",
"Grose",
"Grose",
"Verwendet:",
"Video",
"Datum",
"Stunde",
"Datei",
"Loschen",
"OK",
"Die ausgewahlte Datei wird geloscht. Sind Sie sicher?",
"Es ist keine Datei ausgewahlt.",
"Aktualisieren",
"Ubergeordneter Ordner",
"Dateien pro Seite:",
"von",
"Formatierung der SD-Karte ist fehlgeschlagen.",
"Kamera nimmt jetzt Dateien auf der SD-Karte auf. Stoppen Sie die Aufnahme, bevor Sie die Karte formatieren.",
"SD-KARTENAUFNAHME AKTIVIEREN",
"Wenn Sie die SD-Karte durchsuchen mochten, deaktivieren Sie die SD-Karte in",
"Aufnahme",
"Seite 1.",
"DATEISYSTEM BESCHADIGT",
"Das Dateisystem auf der SD-Karte ist beschadigt. Folgen Sie den Anleitungen zur Wiederherstellung unten.",
"SD-Kartenkapazitat ausgeschopft",
"Aufnahme deaktivieren und Kamera neu starten.",
"Aufgenommene Datei sichern und SD-Karte neu formatieren. SD-Kartenaufnahme konnte leicht versagen.",
"Nach Schritt 2 konnen Sie zur folgenden Seite gehen -  ",
" um die Aufnahme wieder zu aktivieren.",
"Gehen Sie nach dem Neustart der Kamera wie folgt vor:",
"Aufnahme deaktivieren und Kamera neu starten",
"Die Kamera wurde neu gestartet. Bitte warten Sie ein paar ",
" Sekunden...",
"Das Deaktivieren der Aufnahme ist fehlgeschlagen.",
"Uber 16G",
"Bitte warten",
"Bitte warten",
"Reinitialisierung",
"Seiten:",
"Verarbeitung",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SDMANAGEMENT = 3
var I_SDMANAGEMENT_ITEM = 4
var I_INVAKID = 5
var I_TOTAL_SPACE = 6
var I_OVER_SPACE = 7
var I_SD_FORMAT = 8
var I_KB = 9
var I_SDNOTE = 10
var I_REBOOT_CONFIRM = 11
var I_REBOOT_CONFIRM2 = 12
var I_SDCARDSTATUS = 13
var I_WRITE_PROTECTED = 14
var I_CARD_READY = 15
var I_CARD_INVALID = 16
var I_BACKUP_CONFIRM = 17
var I_FORMAT_CONFIRM = 18
var I_COMPLETE_FORMAT = 19
var I_RECORDS = 20
var I_RECORD_TYPE = 21
var I_RECORD_TYPE1 = 22
var I_NAME = 23
var I_NUM_OF_FILES = 24
var I_FILE_SIZE = 25
var I_FOLDER_SIZE = 26
var I_USED_SPACE = 27
var I_VIDEO = 28
var I_DATE = 29
var I_HOUR = 30
var I_FILE = 31
var I_DELETE = 32
var I_OK = 33
var I_DELETE_CONFIRM = 34
var I_DELETE_CONFIRM1 = 35
var I_REFRESH = 36
var I_TOP_LEVEL = 37
var I_FILE_PER_PAGE = 38
var I_PAGE_OF = 39
var I_FORMAT_FAILED = 40
var I_FORMAT_RECORDING = 41
var I_SD_REC_ERROR = 42
var I_SD_REC_ERROR1 = 43
var I_RECORDING = 44
var I_SD_REC_ERROR2 = 45
var I_FORMAT_ERROR = 46
var I_FORMAT_ERR_MSG = 47
var I_WRITE_FULL = 48
var I_RECORD_ERR1 = 49
var I_RECORD_ERR2 = 50
var I_RECORD_ERR3 = 51
var I_RECORD_ERR4 = 52
var I_FORMAT_ERR_MSG2 = 53
var I_RECOVER = 54
var I_REBOOT1 = 55
var I_REBOOT2 = 56
var I_DIABLE_REC_FAIL = 57
var I_OVER_4G = 58
var I_WAIT = 59
var I_ONLY_WAIT = 60
var I_REINIT = 61
var I_PAGE = 62
var I_PROCESSING = 63;

var des_item_name = new Array (
"Hier können Sie die auf der SD-Karte gespeicherten Dateien durchsuchen und verwalten.",
"Beachten Sie, dass keine SD-Karte in die Kamera eingesetzt oder diese nicht beschreibbar ist.<br>Um die SD-Karte in der Kamera zu formatieren, deaktivieren Sie bitte zuerst die SD-Aufzeichnung.",
"<b>Nützliche Tipps...</b><br><br><b>SD-Karte</b><br>Dies kann den aktuellen Pfad der SD-Karte anzeigen.<br><br><b>SD-Status</b><br>Dies kann den aktuellen Status der SD-Speicherkarte anzeigen (d. h. ob eine Karte eingesetzt ist oder erkannt wurde).<br><br><b>Dateien pro Seite</b><br>Die Anzahl der Dateien pro Seite.<br><br><b>Seiten</b><br>Sie können wählen, welche Seite hier angezeigt werden soll.<br><br><b>SD-Karte formatieren</b><br>Klicken Sie auf diese Schaltfläche, um die SD-Karte automatisch zu formatieren und Ordner für Momentaufnahmen und Videos zu erstellen. Um die SD-Karte zu formatieren, müssen Sie zuerst die SD-Aufnahmefunktion deaktivieren.<br><br><b>Gesamt</b><br>Die gesamte Leistungsfähigkeit der SD-Karte.<br><br><b>Verwendet</b><br>Die genutzte Leistungsfähigkeit der SD-Karte.<br><br><b>Frei</b><br>Die frei verfügbare Leistungsfähigkeit der SD-Karte.<br>",
""
);

var D_TITLE_INFO = 0;
var D_ERROR_INFO = 1;
var D_HELP_INFO = 2;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
""
);

var PMSG_REQUEST_FAILED = 0;