var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Audio e video", 
"PROFILO VIDEO",
"Tipo codifica",
"Risoluzione",
"Velocità in bit",
"Frequenza dei fotogrammi",
"URL RTSP",
"H.264",
"Qualità JPEG",
"MJPEG",
"Meccanismo audio",
"Attiva microfono",
"Volume audio",
"Attiva speaker",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_AUDIO_AND_VIDEO = 3;
var I_VIDEO_PROFILE = 4;
var I_ENCODE_TYPE = 5;
var I_RESOLUTION = 6;
var I_BITRATE = 7;
var I_FRAMERATE = 8;
var I_RTSP_URL = 9;
var I_H264 = 10;
var	I_JPEG_QUALITY = 11;
var I_MJPEG = 12;
var I_AUDIO_SETUP = 13;
var I_MICROPHONE_ENABLE = 14;
var I_VOLUME = 15;
var I_SPEAKER_ENABLE = 16;

var des_item_name = new Array (
"In questa sezione è possibile configurare qualità, risoluzione e frequenza dei fotogrammi dei video della videocamera.",
"<b>Suggerimenti utili...</b>\
<br><br><b>Risoluzione</b><br>Le opzioni dipendono dal sistema di visualizzazione utilizzato.\
<br><br><b>Velocità in bit</b><br>Bit al secondo. Consente di selezionare una larghezza di banda fissa per il funzionamento della videocamera. Un valore più elevato consente di ottenere un'immagine di qualità \
superiore ma implica un consumo maggiore di larghezza di banda di rete.\
<br><br><b>Frequenza fotogrammi</b><br>Fotogrammi al secondo. Maggiore è la frequenza dei fotogrammi, migliore risulterà la qualità del video. Si noti che con una frequenza dei fotogrammi elevata \
viene utilizzata una maggiore larghezza di banda.\
<br><br><b>Qualità JPEG</b><br>Il valore predefinito è Media. \
<br><br><b>Microfono</b><br>Abilitare questa funzione per ascoltare l'audio dal microfono della videocamera.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"3 Mbps",
"2.5 Mbps",
"2 Mbps",
"1.5 Mbps",
"1 Mbps",
"768 Kbps",
"512 Kbps",
"384 Kbps",
"256 Kbps",
"128 Kbps",
"64 Kbps",
"Molto bassa",
"Bassa",
"Media",
"Alta",
"Molto alta",
""
);

var O_BITRATE_3M = 0;
var O_BITRATE_2dot5M = 1;
var O_BITRATE_2M = 2;
var O_BITRATE_1dot5M = 3;
var O_BITRATE_1M = 4;
var O_BITRATE_768K = 5;
var O_BITRATE_512K = 6;
var O_BITRATE_384K = 7;
var O_BITRATE_256K = 8;
var O_BITRATE_128K = 9;
var O_BITRATE_64K = 10;
var O_QUALITY_VERY_LOW = 11;
var O_QUALITY_LOW = 12;
var O_QUALITY_MEDIUM = 13;
var O_QUALITY_HIGH = 14;
var O_QUALITY_VERY_HIGH = 15;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
""
);

var PMSG_REQUEST_FAILED = 0;
