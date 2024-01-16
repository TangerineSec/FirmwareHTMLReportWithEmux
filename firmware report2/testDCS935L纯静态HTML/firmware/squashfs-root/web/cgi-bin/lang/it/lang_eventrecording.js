var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Video clip", 
"Video clip",
"Video clip",
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
"Video clip",
"Formato del file",
"Registrazione pre-evento",
"Secondi",
"Durata massima",
"Destinazione",
"Formato del file",
"Posta elettronica",
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
"La funzione Clip video consente di inviare clip video tramite FTP o e-mail quando viene attivato un trigger.",
"<b>Suggerimenti utili...</b><br><br>\
Clip video consente di memorizzare o inviare clip video a un server e-mail o FTP remoto sulla base di movimenti rilevati o dell'attivazione di un sensore esterno.\
<br><br><b>Attivato da</b><br>\
<b>Movimento</b><br>\
Inizia la creazione clip video in seguito al rilevamento di un movimento.<br>\
<b>Pianificazione</b><br>\
Crea istantanea a un'ora specificata.<br>\
<b>Sempre</b><br>\
Istantanea continua.<br>\
<b>Suono</b><br>\
Inizia la creazione di un clip video in seguito al rilevamento di un suono.<br><br>\
<b>Video clip</b><br>\
Qui è possibile impostare la registrazione pre-evento e la durata massima.<br><br>\
<b>Registrazione pre-evento</b><br>\
Consente di specificare il numero di secondi di video che verranno registrati prima della creazione del clip video.<br><br>\
<b>Durata massima</b><br>\
Consente di specificare il numero di secondi del clip video.<br><br>\
<b>Destinazione</b><br>È possibile selezionare FTP o E-mail come destinazione del clip video.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

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
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
