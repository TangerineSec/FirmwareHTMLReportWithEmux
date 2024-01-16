﻿var languageNum = new Array("en","sc","tc");
var item_name = new Array("Videocamera", "Formato di compressione video", "H.264",
"MJPEG",
"Live Video",
"Zoom avanti",
"Zoom indietro",
"Adatta larghezza",
"Adatta altezza",
"Dimensioni originali",
"Schermo intero",
"Istantanea",
"Imposta cartella di archiviazione",
"Registrazione",
"Interrompi registrazione",
"Ascolta",
"Interrompi ascolto",
"Trasmissione vocale",
"Interrompi trasmissione vocale",
"LED infrarossi attivo",
"LED infrarossi disattivo",
"Percentuale zoom",
"Zoom avanti/indietro",
""
);
var I_CAMERA_INFO = 0;
var I_VIDEO_COMPRESSION_FORMAT = 1;
var I_H264 = 2;
var I_MJPEG = 3;
var I_LIVE_VIDEO = 4;
var I_ZOOM_IN = 5;
var I_ZOOM_OUT = 6;
var I_FIT_WIDTH = 7;
var I_FIT_HEIGHT = 8;
var I_ORIGNAL_SIZE = 9;
var I_FULL_SCREEN = 10;
var I_SNAPSHOT = 11;
var I_SET_STORAGE_FOLDER = 12;
var I_RECORD = 13;
var I_STOP_RECORDING = 14;
var I_LISTEN = 15;
var I_STOP_LISTENING = 16;
var I_TALK = 17;
var I_STOP_TALKING = 18;
var I_IRLED_ON = 19;
var I_IRLED_OFF = 20;
var I_ZOOM_RATE = 21;
var I_ZOOM_IN_OUT = 22;

var des_item_name = new Array (
"Questa sezione mostra il video in diretta della videocamera IP. È possibile \
controllare le proprie impostazioni utilizzando i seguenti pulsanti.<br>\
La risoluzione corrente è <span id=\"sResolution\" name=\"sResolution\"></span>.",
""
);

var D_CAMERA_INFO = 0;

var option_content = new Array (
"AVI",
"MP4",
""
);

var O_AVI = 0;
var O_MP4 = 1;

var pop_msg = new Array (
"La linea audio è occupata, riprovare più tardi.",
"Creazione uscita flusso audio non riuscita, creazione socket non riuscita",
"Altoparlante disabilitato",
"Connessione al server non riuscita",
"Errore sconosciuto",
""
);

var PMSG_SPEAKER_OCCUPIED = 0;
var PMSG_OPEN_MICROPHONE_FAILED = 1;
var PMSG_SPEAKER_DISABLED = 2;
var PMSG_NETWORK_ERROR = 3;
var PMSG_UNKNOW_ERROR = 4;
