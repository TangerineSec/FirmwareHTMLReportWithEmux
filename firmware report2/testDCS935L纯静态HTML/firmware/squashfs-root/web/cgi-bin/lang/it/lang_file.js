var languageNum = new Array("en","sc","tc");
var item_name = new Array("Sistema", "Sistema", "Salva su disco rigido locale",
"Salva configurazione",
"Carica da disco rigido locale",
"Carica configurazione",
"Ripristina le impostazioni di fabbrica",
"Ripristina le impostazioni di fabbrica",
"Reboot the device",
"Salva",
"Ripristino in corso",
"Elaborazione in corso",
"Dom",
"Lun",
"Mar",
"Mer",
"Gio",
"Ven",
"Sab",
"Ora",
"Riavvio",
"Abilitare il riavvio schedulato",
"Salva",
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
"Si è verificato un problema relativo alla richiesta.",
"È in corso l'aggiornamento del firmware.",
"File non valido.",
"Recupero del file di backup non riuscito. Riprovare.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_FW_IS_RUNNING = 1;
var PMSG_INVALID_FILE = 2;
var PMSG_GET_BACKFILE_FAILED = 3;

var des_item_name = new Array (
"In questa sezione è possibile salvare e ripristinare la configurazione, ripristinare le impostazioni di fabbrica e/o riavviare la videocamera.",
"<b>Suggerimenti utili...</b><br><br>Dopo aver terminato la configurazione delle impostazioni per la \
videocamera, è possibile salvarle nel disco rigido per eventuali utilizzi futuri.\
<br><br>È possibile individuare un file salvato in precedenza \
e ripristinare le impostazioni di configurazione della videocamera. È possibile inoltre reimpostare la videocamera \
ripristinando le impostazioni predefinite in fabbrica.",
""
);

var D_SYSTEM_INFO = 0;
var D_HELP_INFO = 1;
