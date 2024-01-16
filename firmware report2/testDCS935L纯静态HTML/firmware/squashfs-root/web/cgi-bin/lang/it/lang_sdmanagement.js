var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni","Non salvare impostazioni","Salva",
"GESTIONE SD",
"SCHEDA SD",
"NON VALIDA",
"Totale:",
"Libero:",
"Formatta scheda SD",
" KB",
"Nella videocamera non e inserita alcuna scheda SD oppure la scheda SD non supporta operazioni di scrittura.",
"Disabilitare la registrazione e riavviare?",
"Inizializzare?",
"Stato SD: ",
"Protetta da scrittura",
"Pronta",
"Non valida",
"Eseguire il backup dei file?",
"Formattare la scheda SD?",
"Scheda SD completamente formattata.",
"Scheda SD",
"Tipo di registrazione: ",
"Tipo di registrazione ",
"Nome",
"Num. di file",
"Dimensione",
"Dimensione",
"Utilizzato:",
"video",
"Data",
"Ora",
"File",
"Elimina",
"OK",
"Il file selezionato verra eliminato. Continuare?",
"Nessun file selezionato",
"Aggiorna",
"Su di un livello",
"File per pagina:",
"di",
"Formattazione della scheda SD non riuscita.",
"La videocamera e in fase di registrazione dei file sulla scheda SD. Prima di formattare la scheda arrestare la registrazione.",
"ABILITAZIONE REGISTRAZIONE SCHEDA SD",
"Se si desidera esplorare la scheda SD, disabilitarla nella pagina",
"Registrazione in corso",
".",
"FILE SYSTEM DANNEGGIATO",
"File system della scheda SD danneggiato. Attenersi alle istruzioni riportate di seguito per ripristinarlo.",
"Capacita scheda SD esaurita",
"Disabilitare la registrazione e riavviare la videocamera.",
"Eseguire il backup dei file registrati e riformattare la scheda SD. In caso contrario, potrebbero verificarsi piu facilmente errori durante la registrazione sulla scheda SD.",
"Dopo il passaggio 2, e possibile andare alla pagina ",
" per riabilitare la registrazione.",
"Effettuare le seguenti operazioni dopo il riavvio della videocamera:",
"Disabilitare la registrazione e riavviare la videocamera",
"La videocamera e stata riavviata, attendere per ",
" secondi...",
"Disabilitazione della registrazione non riuscita.",
"Piu di 16 GB",
"Attendere",
"Attendere",
"Reinizializzazione",
"Pagine:",
"Elaborazione in corso",
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
"Qui è possibile sfogliare e gestire file archiviati nella scheda SD.",
"Nella videocamera non è inserita alcuna scheda SD oppure la scheda SD non supporta operazioni di scrittura.<br>Per formattare la scheda SD nella videocamera, disabilitare prima Registrazione su SD.",
"<b>Suggerimenti utili</b><br><br><b>Scheda SD</b><br>Può indicare il percorso corrente della scheda SD.<br><br><b>Stato SD</b><br>Può indicare lo stato corrente della scheda SD (se la scheda è inserita o rilevata).<br><br><b>File per pagina</b><br>Numero di file per pagina.<br><br><b>Pagine</b><br>Qui è possibile selezionare la pagina da visualizzare.<br><br><b>Formatta scheda SD</b><br>Fare clic su questo pulsante per formattare automaticamente la scheda SD e creare la cartella per istantanee e video. Per formattare la scheda SD, è necessario prima di disabilitare la registrazione su SD.<br><br><b>Totale</b><br>Capacità totale della scheda SD.<br><br><b>Utilizzato</b><br>Capacità usata della scheda SD.<br><br><b>Libero</b><br>Capacità disponibile della scheda SD.<br>",
""
);

var D_TITLE_INFO = 0;
var D_ERROR_INFO = 1;
var D_HELP_INFO = 2;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
""
);

var PMSG_REQUEST_FAILED = 0;
