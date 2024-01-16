var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Istantanea", 
"Istantanea",
"Istantanea",
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
"Istantanea",
"Istantanea singola",
"obiettivo",
"FTP",
"Posta elettronica",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SNAPSHOT_TITLE = 3;
var I_SNAPSHOT = 4;
var I_SNAPSHOT_ITEM = 5;
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
var I_SNAPSHOT_TYPE = 19;
var I_SINGLE = 20;
var I_TARGET = 21;
var I_FTP = 22;
var I_EMAIL = 23;

var des_item_name = new Array (
"Per consentire alla videocamera di riprendere istantanee, è necessario selezionare la casella di controllo \'Istantanea\'. \
Quindi, è possibile determinare gli eventi di attivazione e le notifiche via FTP e/o e-mail.",
"<b>Suggerimenti utili...</b><br><br>\
Istantanea consente di memorizzare o inviare immagini a un server e-mail o FTP \
remoto sulla base di movimenti rilevati o dell'attivazione di un sensore esterno.<br><br>\
<b>Attivato da</b><br><b>Movimento</b><br>\
Inizia la creazione dell'istantanea in seguito al rilevamento di un movimento.<br>\
<b>Pianificazione</b>\
<br>Crea istantanea a un'ora specificata.\
<br><b>Sempre</b><br>\
Istantanea continua.<br>\
<b>Suono</b><br>\
Inizia la creazione di un'istantanea in seguito al rilevamento di un suono.<br><br>\
<b>Tipo di istantanea</b><br>\
Istantanea singola o 6 istantanee.<br><br>\
<b>6 istantanee</b><br>\
Selezionare questa opzione per scattare 6 immagini in continuo per ogni istantanea.<br><br>\
<b>Destinazione</b><br>\
È possibile selezionare FTP o E-mail come destinazione dell'istantanea.",
"6 istantanee a intervalli di \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
secondi (3 fotogrammi prima e 3 fotogrammi dopo il fotogramma del rilevamento del movimento)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"Movimento",
"Pianificazione",
"Sempre",
"Suono",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"L'ora iniziale deve essere anteriore all'ora finale",
"Scegliere almeno un giorno",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
