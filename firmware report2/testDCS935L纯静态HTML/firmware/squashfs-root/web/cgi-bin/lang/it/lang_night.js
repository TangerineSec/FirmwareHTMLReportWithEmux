var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Giorno e notte", 
"Impostazioni modalità giorno / notte",
"Giorno e notte",
"Automatico",
"Manuale",
"Sempre modalità diurna",
"Sempre modalità notturna",
"Modalità diurna pianificazione",
"esempio",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DAYNIGHT_TITLE = 3;
var I_DAYNIGHT_SETTING = 4;
var I_DAYNIGHT_MODE = 5;
var I_AUTO = 6;
var I_MANUAL = 7;
var I_ALWAYS_DAY_MODE = 8;
var I_ALWAYS_NIGHT_MODE = 9;
var I_DAY_MODE_SCHEDULE = 10;
var I_EXAMPLE = 11;

var des_item_name = new Array (
"In questa sezione è possibile configurare il metodo di commutazione alla modalità diurna/notturna. \
La modalità diurna/notturna offre un'ottima qualità sia in ambienti diurni \
che notturni.<br><br>\
In modalità diurna l'illuminazione a infrarossi è spenta, la luce infrarossa è bloccata e il video è \
a colori. In modalità notturna l'illuminazione a infrarossi è accesa, la luce infrarossa è visibile \
e il video è in bianco e nero.",
"<b>Suggerimenti utili...</b>\
<br><br><b>Automatico</b> - la videocamera di rete alterna automaticamente tra la modalità diurna \
e notturna. La videocamera normalmente funziona in modalità diurna. In un ambiente scarsamente illuminato \
passa automaticamente in modalità notturna.\
<br><br><b>Manuale</b> - L'utente può controllare manualmente il funzionamento della videocamera \
in modalità diurna o notturna nella pagina di visualizzazione del video in diretta.\
<br><br><b>Sempre modalità diurna</b>: la videocamera funziona sempre in \
modalità diurna.<br><br><b>Sempre modalità notturna</b>: la videocamera funziona sempre in \
modalità notturna.\
<br><br><b>Pianificazione modalità diurna</b>: la videocamera funziona in modalità diurna in base alla data e all'ora \
configurate nella pianificazione. La videocamera passa alla modalità \
notturna in tutti gli altri orari.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
""
);

var PMSG_REQUEST_FAILED = 0;
