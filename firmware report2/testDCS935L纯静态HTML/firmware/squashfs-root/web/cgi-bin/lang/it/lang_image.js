var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Configurazione immagine", 
"Live Video",
"IMPOSTAZIONI IMMAGINE",
"Luminosità",
"Saturazione",
"Contrasto",
"Tonalità",
"Nitidezza",
"Bianco e nero",
"Specchio",
"Capovolgi",
"Frequenza",
"Ripristina impostazioni predefinite",
"elaborazione",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_IMAGE_SETTING = 3;
var I_LIVE_VIDEO = 4;
var I_IMAGE_SETTING_TITLE = 5;
var I_BRIGHTNESS = 6;
var I_SATURATION = 7;
var I_CONTRAST = 8;
var I_HUE = 9;
var I_SHARPNESS = 10;
var I_BW = 11;
var	I_MIRROR = 12;
var I_FLIP = 13;
var I_FREQUENCY = 14;
var I_RESET_TO_DEFAULT = 15;
var I_PROCESSING = 16;

var des_item_name = new Array (
"Le modifiche effettuate per le impostazioni delle immagini saranno apportate all'istante. Il risultato è visibile nella finestra Video in diretta sottostante.",
"<b>Suggerimenti utili...</b>\
<br><br>Luminosità, saturazione, contrasto e tonalità possono essere regolati da 0 a 100 per consentire di ottimizzare le impostazioni dell'immagine.\
<br><br><b>Luminosità</b><br>Viene utilizzata per compensare le scene in controluce.\
<br><br><b>Saturazione</b><br>Controlla l'intensità di colore dal bianco e nero ai colori nitidi.\
<br><br><b>Contrasto</b><br>Regolabile, consente di controllare il contrasto di colori tra oggetti. Migliora l'immagine ripresa con un cielo grigio.\
<br><br><b>Tonalità</b><br>Consente di controllare diverse gradazioni di un colore rilevabili da un occhio umano.\
<br><br><b>Nitidezza</b><br>Viene utilizzato per regolare il livello di nitidezza delle immagini.\
<br><br><b>Bianco e nero</b><br>Selezionare questa opzione per attivare o disattivare la modalità bianco e nero della videocamera.\
<br><br><b>Specchio</b><br>Selezionare questa opzione per ottenere un'immagine speculare.\
<br><br><b>Capovolgi</b><br>Selezionare questa funzione quando la videocamera è installata in posizione capovolta sul soffitto.\
<br><br><b>Frequenza</b><br>Potrebbe essere necessario scegliere tra \'Off\', \'50\' o \'60\' per la frequenza in Hz (dipende dal paese).<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Off",
"50Hz",
"60Hz",
""
);

var O_FREQUENCY_AUTO = 0;
var O_FREQUENCY_50 = 1;
var O_FREQUENCY_60 = 2;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
""
);

var PMSG_REQUEST_FAILED = 0;
