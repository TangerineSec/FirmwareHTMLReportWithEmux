var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni","Non salvare impostazioni","Salva",
"Registrazione su SD",
"Registrazione su SD",
"Registrazione su SD",
"Attivato da",
"Solo durante",
"Giorni",
"Dom",
"Lun",
"Mar",
"Mer",
"Gio",
"Ven",
"Sab",
"Ora",
"Avvio",
"Fine",
"Tipo di registrazione",
"Formato del file",
"Registrazione pre-evento",
"Istantanea",
"Video",
"Origine",
"Configurabile in",
"Audio e video",
"Durata registrazione",
"minuti per file",
"Scheda SD",
"Mantieni spazio libero",
"Il valore minimo e 200",
"Ciclica ",
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
"Qui e possibile configurare e pianificare la registrazione della videocamera. Per attivare la funzione e necessario selezionare la casella di controllo 'Registrazione su SD.",
"<b>Suggerimenti utili…</b><br><br>\
La funzione Registrazione su SD consente di registrare video o istantanee (al secondo) sulla scheda SD locale sulla base di movimenti rilevati o a un'ora specificata.<p> \
<br><br><b>Attivato da</b><br>\
<b>Movimento</b><br>\
Inizia la registrazione su SD in seguito al rilevamento di un movimento.<br>\
<b>Pianificazione</b><br>\
Avvia la registrazione su SD a un'ora specificata.<br>\
<b>Sempre</b><br>\
Registrazione su SD senza interruzioni.<br>\
<b>Suono</b><br>\
Inizia la registrazione su SD in seguito al rilevamento di un suono.<br><br>\
<b>Tipo di registrazione</b><br>\
Qui e possibile configurare il profilo video, impostare la registrazione pre-evento e post-evento quando l'opzione Attivato da e impostata su Movimento. E inoltre possibile selezionare la registrazione come Istantanea o Video.<br><br>\
<b>Durata registrazione</b><br>\
 Consente di impostare la durata di ogni video registrato.<br><br>\
<b>Scheda SD</b><br>\
E possibile indicare quanto spazio libero lasciare nella scheda SD e se impostare o meno la registrazione ciclica.<br><br>\
<b>Mantieni spazio libero</b><br>\
 Consente di impostare la capacita della scheda SD locale in modo da prevenire l'instabilita del sistema.<br><br>\
<b>Ciclica</b><br>\
 Quando e selezionata questa opzione, la cartella meno recente sara eliminata quando il sistema necessita di spazio di archiviazione per nuovi file.<br><br>\
",
"Rilevamento del movimento non è abilitato. Passare alla pagina Web di Rilevamento del movimento per configurarlo.",
"Rilevamento suono non è abilitato. Passare alla pagina Web di Rilevamento suono per configurarlo.",
"Nella videocamera non è inserita alcuna scheda SD oppure la scheda SD non supporta operazioni di scrittura.",
"La capacità della scheda SD si è esaurita.",
"Per formattare la scheda SD nella videocamera, disabilitare prima Registrazione su SD e quindi passare alla pagina ",
"Gestione SD",
".",
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
"Movimento",
"Pianificazione",
"Sempre",
"Suono",
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
"Si è verificato un problema relativo alla richiesta.",
"L'ora iniziale deve essere anteriore all'ora finale",
"Scegliere almeno un giorno",
"Il valore dei secondi per la registrazione pre-evento deve essere un numero intero compreso tra 0 e 5",
"Il valore di Mantieni spazio libero per la scheda SD deve essere un numero intero compreso tra 200 e 32768",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;