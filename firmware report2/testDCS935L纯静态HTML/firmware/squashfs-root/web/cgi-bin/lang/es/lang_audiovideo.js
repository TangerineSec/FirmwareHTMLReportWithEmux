var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Audio y vídeo", 
"PERFIL DE VÍDEO",
"Tipo de codificación",
"Resolución",
"Tasa de bits",
"Frecuencia de imagen",
"RTSP URL",
"H.264",
"Calidad JPEG",
"MJPEG",
"Mecanismo de audio",
"Activar micrófono",
"Volumen de audio",
"Activar micrófono",
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
"En esta sección, puede configurar la calidad de vídeo, la resolución y la frecuencia de imagen de la cámara.",
"<b>Sugerencias útiles.</b><br><br><b>Resolución</b><br>Las opciones dependen del sistema de visualización utilizado.\
<br><br><b>Tasa de bits</b><br>(bits por segundo): seleccione un ancho de banda fijo para el funcionamiento de la cámara. Un valor más alto supone una imagen de mayor calidad pero consume más ancho de banda de red.\
<br><br><b>Frecuencia de imagen</b><br>(imágenes por segundo): cuanto más alta es la frecuencia de imagen, más uniforme será el aspecto del vídeo. Tenga en cuenta que un parámetro de frecuencia de imagen más alto utiliza también más ancho de banda.\
<br><br><b>Calidad Jpeg</b><br>: el valor predeterminado es Media. \
<br><br><b>Micrófono</b><br>Active esta característica para escuchar el sonido del micrófono de la cámara.",
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
"Muy bajo",
"Baja",
"Media",
"Alta",
"Muy alto",
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
"Se ha producido un problema con la solicitud.",
""
);

var PMSG_REQUEST_FAILED = 0;
