var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"FTP", 
"Server FTP - Clip video",
"Nome host",
"Porta",
"(Predefinito 21)",
"Nome utente",
"Password",
"Percorso",
"Modalità passiva",
"sì",
"No",
"test server FTP - Clip video",
"Test",
"Server FTP - istantanea",
"test server FTP - istantanea",
"Intervallo",
"Secondi  (Intervallo: da 10 a 86400 secondi)",
"Secondi  (Intervallo: da 30 a 86400 secondi)",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_FTP_TITLE = 3;
var I_FTP_SERVER = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_UID = 8;
var I_PWD = 9;
var I_PATH = 10;
var I_PASSIVE_MODE = 11;
var I_YES = 12;
var I_NO = 13;
var I_TEST_FTP_SERVER = 14;
var I_TEST = 15;
var I_FTP_SERVER_SNAPSHOT = 16;
var I_TEST_FTP_SERVER_SNAPSHOT = 17;
var I_INTERVAL = 18;
var I_INTERVAL_SNAPSHOT_DES = 19;
var I_INTERVAL_VIDEOCLIP_DES = 20;

var des_item_name = new Array (
"In questa sezione è possibile configurare la videocamera per l'invio di immagini a un server FTP.",
"<b>Suggerimenti utili...</b>\
<br><br><b>Nome host</b>:\
<br>Indirizzo IP del server FTP a cui si verrà connessi.\
<br><br><b>Porta</b>: \
<br>La porta predefinita è la 21. \
<br><br><b>Nome utente</b>: \
<br>Nome utente richiesto per accedere al server FTP esterno. \
<br><br><b>Password</b>: \
<br>Password del server FTP esterno. \
<br><br><b>Modalità passiva</b>: l'abilitazione della modalità passiva consente l'accesso \
a un server FTP esterno quando la videocamera è mascherata da un router protetto da un firewall.\
<br><br><b>Test server FTP</b>\
<br>Dopo aver fatto clic su <b>Test</b> al server FTP verrà inviato un file immagine.",
"Un file JPEG di prova verrà inviato al server FTP indicato sopra. \
(Nome file: data_ora_test.jpg)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"Il formato della porta non è valido.",
"Test FTP riuscito",
"Test FTP non riuscito",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
