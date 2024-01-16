var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"rilevamento movimento", 
"Video in diretta",
"Abilita Motion Video",
"Sensibilità",
"percentuale",
"Modalità disegno",
"Disegna area rilev. movimento",
"Elimina area rilev. movimento",
"Cancella",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_MOTION_DETECTION = 3;
var I_LIVE_VIDEO = 4;
var I_ENABLE_MOTION = 5;
var I_SENSITIVITY = 6;
var I_PERCENTAGE = 7;
var I_DRAWING_MODE = 8;
var I_DRAW_MOTION_AREA = 9;
var I_ERASE_MOTION_AREA = 10;
var I_CLEAR = 11;

var des_item_name = new Array (
"In questa sezione è possibile configurare le impostazioni del \
rilevamento del movimento per la videocamera.<br><br>\
Si noti che per poter visualizzare la finestra di configurazione del rilevamento del movimento, è necessario che nel computer sia installato Java. Se il video in diretta non viene \
visualizzato, visitare il sito <a href=\"http://www.java.com\">\
http://www.java.com</A> per scaricare e installare Java.",
"<b>Suggerimenti utili</b><br><br>\
<b>Sensibilità</b><br>Consente di impostare la sensibilità della videocamera per attivare il rilevamento del movimento. Una sensibilità elevata facilita il rilevamento dei movimenti.\
<br><br><b>Disegna area rilev. movimento</b><br>Trascinare il mouse per aggiungere l'intervallo di rilevamento del movimento.\
<br><br><b>Elimina area rilev. movimento</b><br>Trascinare il mouse per cancellare l'intervallo di rilevamento del movimento.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"Il valore di Sensibilità deve essere un numero intero",
"Il valore di Sensibilità deve essere un numero intero compreso tra 0 e 100",
"Il valore di percentuale deve essere un numero intero",
"Il valore di percentuale deve essere un numero intero compreso tra 0 e 100",
"Disegnare l'area di rilevamento del movimento",
"Avviso: se si desidera abilitare la funzione di rilevamento del movimento, selezionare [Abilita Motion Video]. Se si desidera disabilitare la funzione di rilevamento del movimento, deselezionare l'area del movimento.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
