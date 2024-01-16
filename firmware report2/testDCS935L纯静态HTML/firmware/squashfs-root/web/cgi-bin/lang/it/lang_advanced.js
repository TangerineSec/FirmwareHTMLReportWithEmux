var languageNum = new Array("en","sc","tc");
var item_name = new Array("Amministratore", "IMPOSTAZIONE PASSWORD AMMINISTRATORE", "Vecchia password",
"Nuova password",
"Digita nuovamente Password",
"Impostazioni server",
"IP Camera Name",
"LED bianco",
"Standard",
"OFF",
"Autenticazione URL per l'istantanea",
"Attiva",
"Disattiva",
"OSD Ora",
"Colore",
"Applica",
"Cancella",
"AGGIUNGI ACCOUNT UTENTE",
"Nome utente",
"Password",
"Aggiungi",
"ELENCO UTENTI",
"No.",
"Nome",
"Modifica",
"Elimina",
"{$31} caratteri al massimo",
"{$31} caratteri al massimo",
"{$10} caratteri al massimo",
"massimo 10 utenti",
"Salva",
""
);
var I_ADMIN = 0;
var I_ADMIN_PWD_SETTING = 1;
var I_OLD_PWD = 2;
var I_NEW_PWD = 3;
var I_RETYPE_PWD = 4;
var I_SERVER_SETTING = 5;
var I_CAMERA_NAME = 6;
var I_LED_CONTROL = 7;
var I_NORMAL = 8;
var I_OFF = 9;
var I_SNAPSHOT_URL_AUTH = 10;
var I_ENABLE = 11;
var I_DISABLE = 12;
var I_OSD_TIME = 13;
var I_COLOR = 14;
var I_APPLY = 15;
var I_CANCEL = 16;
var I_ADD_USER_ACCOUNT = 17;
var I_USER_NAME = 18;
var I_PWD = 19;
var I_ADD = 20;
var I_USER_LIST = 21;
var I_NO = 22;
var I_NAME = 23;
var I_MODIFY = 24;
var I_DELETE = 25;
var I_PWD_LENGTH_DES = 26;
var I_UID_LENGTH_DES = 27;
var I_CAMERA_NAME_LENGTH_DES = 28;
var I_USER_MAX_DES = 29;
var I_SAVING = 30;

var des_item_name = new Array (
"Qui è possibile modificare la password dell'amministratore e configurare \
l'impostazione del server per la videocamera. Inoltre è possibile aggiungere, modificare e/o eliminare gli account o l'account utente.",
"<b>Suggerimenti utili...</b><br><br>Per motivi di sicurezza, si raccomanda di cambiare la password per gli account Administrator. Assicurarsi di annotare i nuovi \
nomi di accesso e le nuove password per evitare di dover ripristinare la \
videocamera qualora venissero dimenticati.",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Nero",
"Bianco",
"Blu",
"Giallo",
"Rosso",
"Arancione",
"Ciano",
"Oro",
""
);

var O_COLOR_BLACK = 0;
var O_COLOR_WHITE = 1;
var O_COLOR_BLUE = 2;
var O_COLOR_YELLOW = 3;
var O_COLOR_RED = 4;
var O_COLOR_ORANGE = 5;
var O_COLOR_CYAN = 6;
var O_COLOR_GOLD = 7;

var pop_msg = new Array(
"Si è verificato un problema relativo alla richiesta.",
"La password immessa non è corretta. Riprovare.",
"La password non è stata confermata correttamente. Verificare che la nuova password e la password di verifica siano identiche.",
"Il formato di Nome videocamera non è valido.",
"Il nome utente immesso non è corretto. Riprovare.",
"Fare clic su 'OK' per modificate l'utente selezionato.",
"Numero utenti massimo superato",
"Account o password non validi",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_PWD_INCORRECT = 1;
var PMSG_PWD_RETYPE_INCORRECT = 2;
var PMSG_CAMERA_NAME_INVALID = 3;
var PMSG_USER_NAME_INCORRECT = 4;
var PMSG_CLICK_TO_MODIFY_USER = 5;
var PMSG_MAX_USER_EXCEED = 6;
var PMSG_INVALID_ACCOUNT_OR_PWD = 7;
