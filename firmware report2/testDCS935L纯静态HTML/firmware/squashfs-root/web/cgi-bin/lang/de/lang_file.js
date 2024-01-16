var languageNum = new Array("en","sc","tc");
var item_name = new Array("System", "System", "Auf lokale Festplatte speichern",
"Konfiguration speichern",
"Von lokaler Festplatte laden",
"Konfiguration laden",
"Auf Standardwerte zurücksetzen",
"Standardwerte wiederherstellen",
"Reboot the device",
"Speichern",
"Wiederherstellung",
"Verarbeitung",
"So",
"Mo",
"Di",
"Mi",
"Do",
"Fr",
"Sa",
"Uhrzeit",
"Gerät neu starten",
"Enable Schedule Reboot",
"Speichern",
""
);

var I_SYSTEM = 0;
var I_SYSTEM_SETTING = 1;
var I_SAVE_TO_HARDDRIVE = 2;
var I_SAVE_CONF = 3;
var I_LOAD_FROM_HARDDRIVE = 4;
var I_RESTORE_FROM_FILE = 5;
var I_RESTORE_TO_DEFAULT = 6;
var I_RESTORE_TO_DEFAULT_2 = 7;
var I_REBOOT_DEVICE = 8;
var I_SAVING = 9;
var I_RESTORING = 10;
var I_PROCESSING = 11;
var I_SUN = 12;
var I_MON = 13;
var I_TUE = 14;
var I_WED = 15;
var I_THU = 16;
var I_FRI = 17;
var I_SAT = 18;
var I_TIME = 19;
var I_REBOOT_SETTING = 20;
var I_SCHEDULE_REBOOT = 21;
var I_BTN_SAVE = 22;

var pop_msg = new Array(
"Bei der Anfrage ist ein Problem aufgetreten.",
"Firmware-Upgrade ist zurzeit im Gange.",
"Die Datei ist ungültig.",
"Das Abrufen der Backup-Datei ist fehlgeschlagen. Versuchen Sie es bitte noch einmal.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_FW_IS_RUNNING = 1;
var PMSG_INVALID_FILE = 2;
var PMSG_GET_BACKFILE_FAILED = 3;

var des_item_name = new Array (
"Hier können Sie Ihre Konfiguration speichern und wiederherstellen, die Werkseinstellungen wiederherstellen und/oder Ihre Kamera neu starten.",
"<b>Nützliche Hinweise..</b><br><br>Sobald Sie die Einstellungen für Ihre Kamera vorgenommen haben, können Sie diese auf Ihrer Festplatte speichern, um in Zukunft bei Bedarf darauf zurückgreifen zu können.\
<br><br>Mithilfe einer solchen vorher gespeicherten Datei können die Konfigurationseinstellungen auf Ihrer Kamera wiederhergestellt werden. Sie haben auch die Möglichkeit, Ihre Kamera auf die werkseitig vorgenommenen Standardeinstellungen zurückzusetzen.",
""
);

var D_SYSTEM_INFO = 0;
var D_HELP_INFO = 1;
