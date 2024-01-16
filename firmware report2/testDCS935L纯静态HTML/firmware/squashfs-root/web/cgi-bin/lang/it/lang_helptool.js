var languageNum = new Array("en","sc","tc");
var item_name = new Array("MENU SUPPORTO", "Amministratore", "Sistema",
"Aggiornamento firmware",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"È possibile utilizzare questa pagina per configurare la password dell'amministratore e gli account utente.<br><br>",
"<b>Nome videocamera</b>: nome univoco della videocamera.<br><br>",
"<b>Controllo LED</b>: selezionare Normale per abilitare il LED. Selezionare Spento per disabilitare il LED.<br><br>",
"<b>Controllo di accesso utente</b>: abilitare questa opzione per consentire ad altri utenti di accedere alla videocamera.<br><br>",
"<b>Autenticazione URL per l'istantanea</b>:-per abilitare questa opzione è necessario immettere il nome utente e la password per accedere alla pagina http://indirizzo IP della videocamera/image/jpeg.cgi per l'acquisizione di un'immagine fissa.<br><br>",
"<b>Intervallo OSD</b>: abilitare questa opzione per consentire la visualizzazione dell'intervallo OSD..<br><br>",
"<b>Nome utente</b>: consente di creare un nuovo utente per accedere all'immagine video. All'elenco utenti è possibile aggiungere un massimo di otto account utente. È inoltre possibile modificare ed eliminare account utente.",
"<b>Salva su disco rigido locale</b>: dopo aver configurato la videocamera, è possibile salvare le impostazioni nel disco rigido locale per eventuali ripristini futuri.<br><br>",
"<b>Carica da disco rigido locale</b>: consente di caricare un file salvato in precedenza e di ripristinare \
le impostazioni di configurazione nella videocamera.<br><br>",
"<b>Ripristina impostazioni predefinite</b>: questa opzione consente di ripristinare \
le impostazioni predefinite per la videocamera. L'operazione \
eliminerà tutte le impostazioni di configurazione effettuate precedentemente.<br><br>",
"<b>Riavvia il dispositivo</b>: questa opzione riavvia la videocamera.",
"<b>Aggiorna firmware</b>: l'opzione consente all'utente di aggiornare il firmware \
tramite il browser. Fare clic su <b>Sfoglia</b> per individuare il file che contiene il nuovo firmware, quindi fare clic su <b>Carica</b> per applicare il \
nuovo firmware alla videocamera.",
""
);

var D_ADMIN_INFO = 0;
var D_CAM_NAME_INFO = 1;
var D_LED_CONTROL_INFO = 2;
var D_USER_ACCESS_CONTROL_INFO = 3;
var D_SNAPSHOT_URL_INFO = 4;
var D_OSD_TIME_INFO = 5;
var D_USER_NAME_INFO = 6;
var D_SAVE_TO_LOCAL_INFO = 7;
var D_LOAD_FROM_LOCAL_INFO = 8;
var D_FACTORY_RESET_INFO = 9;
var D_REBOOT_INFO = 10;
var D_FWIPGRADE_INFO = 11;
