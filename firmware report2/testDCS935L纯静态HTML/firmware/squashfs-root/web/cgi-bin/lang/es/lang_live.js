var languageNum = new Array("en","sc","tc");
var item_name = new Array("Cámara", "Formato de compresión de vídeo", "H.264",
"MJPEG",
"Vídeo en directo",
"Ampliar",
"Reducir",
"Ajustar ancho",
"Ajustar altura",
"Tamaño original",
"Pantalla completa",
"Instantánea",
"Establecer carpeta de almacenamiento",
"Grabación",
"Detener Grabar",
"Escuchar",
"Detener Escuchar",
"Hablar",
"Detener Hablar",
"LED de IR encendido",
"LED de IR apagado",
"Velocidad de zoom",
"Ampliar/reducir",
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
"Esta sección muestra el vídeo en directo de la cámara IP. Puedecontrolar los parámetros utilizando los botones que aparecen a continuación.<br>La resolución actual es <span id=\"sResolution\" name=\"sResolution\"></span>.",
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
"La línea de audio está ocupada, inténtelo más tarde.",
"Error al crear salida de canalización de audio, error al crear la toma",
"El altavoz está desactivado",
"Error al conectar con el servidor",
"Error desconocido",
""
);

var PMSG_SPEAKER_OCCUPIED = 0;
var PMSG_OPEN_MICROPHONE_FAILED = 1;
var PMSG_SPEAKER_DISABLED = 2;
var PMSG_NETWORK_ERROR = 3;
var PMSG_UNKNOW_ERROR = 4;
