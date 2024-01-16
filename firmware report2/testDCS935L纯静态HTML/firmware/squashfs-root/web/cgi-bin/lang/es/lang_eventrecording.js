var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Clip de vídeo", 
"Clip de vídeo",
"Clip de vídeo",
"Activado por",
"Solo durante",
"días",
"Domingo",
"Lunes",
"Martes",
"Miércoles",
"Jueves",
"Viernes",
"Sábado",
"Hora",
"Iniciar",
"Finalizar",
"Clip de vídeo",
"Formato de archivo",
"Grabación del evento previo",
"Segundos",
"Duración máxima",
"Destino",
"Formato de archivo",
"Correo electrónico",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_VIDEOCLIP_TITLE = 3;
var I_VIDEOCLIP = 4;
var I_VIDEOCLIP_ITEM = 5;
var I_TRIGGER_BY = 6;
var I_ONLY_DURING = 7;
var I_DAY = 8;
var I_SUN = 9;
var I_MON = 10;
var I_TUE = 11;
var I_WED = 12;
var I_THU = 13;
var I_FRI = 14;
var I_SAT = 15;
var I_TIME = 16;
var I_START = 17;
var I_END = 18;
var I_RECORDING_TYPE = 19;
var I_FILE_FORMAT = 20;
var I_PREEVENT_RECORDING = 21;
var I_SECONDS = 22;
var I_MAXIMUM_DURATION = 23;
var I_TARGET = 24;
var I_FTP = 25;
var I_EMAIL = 26;

var des_item_name = new Array (
"Clip de vídeo es una característica para enviar clips de vídeo a través de FTP o correo electrónico cuando se produce una activación.",
"<b>Sugerencias útiles.</b><br><br>Clip de vídeo es la capacidad para almacenar o enviar clips de vídeo a \
un servidor remoto de correo electrónico o FTP en función de la detección de movimiento, entrada activada del sensor externo.\
<br><br><b>Activado por</b><br><b>Movimiento</b><br>Empezar a crear clips de vídeo tras la detección de un movimiento.\
<br><b>Programar</b><br>Instantánea a una hora especificada.\
<br><b>Siempre</b><br>Instantánea continua.\
<br><b>Sonido</b><br>Empezar a crear clips de vídeo después de detectar el sonido.<br><br><b>Clip de vídeo</b>\
<br>Puede establecer aquí la grabación del evento previo y la duración máxima.<br><br><b>Grabación del evento previo</b>\
<br>Especifique cuántos segundos de vídeo se grabarán antes de realizar el clip de vídeo.<br><br><b>Duración máxima</b>\
<br>Especifique los segundos del clip de vídeo.<br><br><b>Destino</b>\
<br>Puede seleccionar el destino del clip de vídeo como FTP o correo electrónico.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Movimiento",
"Programar",
"Siempre",
"Sonido",
"Avi, .avi",
"Mp4, .mp4",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;
var O_AVI = 4;
var O_MP4 = 5;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"La hora de inicio debe ser inferior a la hora final",
"Elija al menos un día",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
