var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Posta elettronica", 
"Indirizzo e-mail - Clip video",
"Server SMTP",
"Porta Server SMTP",
"(Predefinito 25)",
"Indirizzo e-mail mittente",
"Indirizzo e-mail destinatario",
"Nome utente",
"Password",
"Use SSL-TLS/STARTTLS",
"No",
"SSL-TLS",
"STARTTLS",
"test e-mail mittente - Clip video",
"Test",
"Indirizzo e-mail - istantanea",
"test e-mail mittente - istantanea",
"Intervallo",
"Secondi  (Intervallo: da 30 a 86400 secondi)",
"Secondi  (Intervallo: da 60 a 86400 secondi)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SMTP_TITLE = 3;
var I_EMAIL_ACCOUNT = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_SENDER_ADDRESS = 8;
var I_RECEIVER_ADDRESS = 9;
var I_UID = 10;
var	I_PWD = 11;
var I_AUTH_ENABLE = 12;
var I_NO = 13;
var I_SSLTLS = 14;
var I_STARTTLS = 15;
var I_TEST_EMAIL_ACCOUNT = 16;
var I_TEST = 17;
var I_EMAIL_ACCOUNT_SNAPSHOT = 18;
var I_TEST_EMAIL_ACCOUNT_SNAPSHOT = 19;
var I_INTERVAL = 20;
var I_INTERVAL_SNAPSHOT_DES = 21;
var I_INTERVAL_VIDEOCLIP_DES = 22;

var des_item_name = new Array (
"Questa sezione consente di configurare le impostazioni relative \
alla notifica tramite e-mail per la videocamera. Nel caso di cambiamento dei dati personali o di problemi \
con le notifiche di allarmi, è possibile modificare queste impostazioni.",
"<b>Suggerimenti utili...</b>\
<br><br><b>Indirizzo server SMTP</b>:\
<br>Nome di dominio o indirizzo IP del server di posta elettronica esterno.\
<br><br><b>Indirizzo e-mail mittente</b>:\
<br>Indirizzo e-mail della persona che invia le istantanee della videocamera.\
<br><br><b>Indirizzo e-mail destinatario</b>:\
<br>Indirizzo e-mail del destinatario per il server SMTP.\
<br><br><b>Nome utente</b>: \
<br>Nome utente dell'account e-mail.\
<br><br><b>Password</b>: \
<br>Password dell'account e-mail.\
<br><br><b>Utilizza SSL-TLS/STARTTLS</b>: \
<br>Selezionare <b>SSL-TLS</b> o <b>STARTTLS</b> se il server SMTP richiede l'autenticazione TLS.",
"Un messaggio e-mail di prova verrà inviato all'account e-mail elencato sopra.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"Il formato della porta del server SMTP non è valido.",
"Invio di un messaggio e-mail di prova riuscito",
"Invio di un messaggio e-mail di prova non riuscito",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
