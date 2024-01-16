var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"DNS dinamico", 
"DNS dinamico",
"Abilita DDNS",
"Server address",
"Nome host",
"Nome utente",
"Password",
"Timeout",
"(ore)",
"Disabilitato",
"Aggiornato",
"Inizializzazione in corso",
"Connessione non riuscita",
"Stato",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DDNS = 3;
var I_DDNS_SETTING = 4;
var I_DDNS_ENABLE = 5;
var I_SERVER_ADDRESS = 6;
var I_HOSTNAME = 7;
var I_UID = 8;
var I_PWD = 9;
var I_TIMEOUT = 10;
var I_HOURS = 11;
var I_STATUS_DISABLE = 12;
var I_STATUS_UPDATED = 13;
var I_STATUS_INITIALIZING = 14;
var I_STATUS_CONNECTION_FAILED = 15;
var I_STATUS = 16;

var des_item_name = new Array (
"La funzione DNS dinamico consente di ospitare un server (Web, \
FTP, videocamera, ecc.), utilizzando un nome dominio acquistato \
(www.nomedominio.com) dal provider di servizi Internet (ISP) \
a banda larga. Tramite un servizio DDNS, altri utenti possono connettersi \
alla videocamera IP utilizzando il nome host, a prescindere dall'indirizzo IP.",
"<b>Suggerimenti utili...</b>\
<br><br>Il DNS dinamico è utile quando si dispone di un provider di servizi DSL o \
via cavo che cambia periodicamente l'indirizzo IP del modem. Ciò \
consente di assegnare un nome di dominio di sito Web alla videocamera \
anziché effettuare la connessione tramite un indirizzo IP.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Seleziona server DNS dinamico",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"Il formato di Nome host non è valido.",
"Il formato di Nome utente non è valido.",
"Il formato della password non è valido.",
"L'intervallo di timeout è compreso fra 24 e 65535 ore.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

