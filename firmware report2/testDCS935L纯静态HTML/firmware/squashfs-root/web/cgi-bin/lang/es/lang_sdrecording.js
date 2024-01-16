var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Grabación SD",
"Grabación SD",
"Grabación SD",
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
"Tipo de grabación",
"Formato de archivo",
"Grabación del evento previo",
"Instantánea",
"Vídeo",
"Origen",
"Configurable en",
"Audio y vídeo",
"Longitud de la grabación",
"minutos por archivo",
"Tarjeta SD",
"Mantener espacio libre",
"El mínimo es 200",
"Cíclico",
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
var I_SNAPSHOT = 22;
var I_VIDEO = 23;
var I_SOURCE = 24;
var I_DESCRIPTION1 = 25;
var I_DESCRIOTION2 = 26;
var I_REC_LEN = 27;
var I_FILE_MIN = 28;
var I_SDCARD = 29;
var I_QUOTA = 30;
var I_MIN = 31;
var I_CYCLIC =32;

var des_item_name = new Array (
"Aqui puede configurar y programar la grabacion de la camara. Debe seleccionar la casilla de verificacion de \"Grabacion SD\" para activar la caracteristica.",
"<b>Sugerencias utiles.</b><br><br>\
Grabacion SD es la capacidad para grabar video o instantaneas (por segundo en la tarjeta SD local en funcion de la deteccion de movimiento o de una hora especificada.<p> \
<br><br><b>Activado por</b><br>\
<b>Movimiento</b><br>\
Empiece la grabacion SD tras la deteccion de un movimiento.<br>\
<b>Programar</b><br>\
Grabacion SD en una hora especificada.<br>\
<b>Siempre</b><br>\
Grabacion continua en SD.<br>\
<b>Sonido</b><br>\
Empiece la grabacion SD tras la deteccion del sonido.<br><br>\
<b>Tipo de grabacion</b><br>\
Puede establecer el perfil de video, establecer la grabacion del evento previo y la grabacion del evento posterior aqui cuando Activado por es Movimiento. Puede elegir entre grabar como instantanea o como video.<br><br>\
<b>Longitud de la grabacion</b><br>\
 Establece la duracion de cada grabacion de video.<br><br>\
<b>Tarjeta SD</b><br>\
Puede establecer la cantidad de espacio libre que desea mantener en la tarjeta SD y si se debe grabar de forma ciclica o no.<br><br>\
<b>Mantener espacio libre</b><br>\
 Establece la capacidad de la tarjeta SD local para evitar que el sistema se vuelva inestable.<br><br>\
<b>Ciclico</b><br>\
 Cuando se selecciona esta opcion, hara que se borre la carpeta mas antigua cuando el sistema requiere espacio de almacenamiento para nuevos archivos.<br><br>\
",
"Tenga en cuenta que la detección de movimiento no está activada, vaya a la página web de detección de movimiento para configurarla.",
"Tenga en cuenta que la detección de sonido no está activada, vaya a la página web de detección de sonido para configurarla.",
"Tenga en cuenta que no hay ninguna tarjeta SD enchufada en la cámara o no se puede escribir en la tarjeta SD.",
"Tenga en cuenta la capacidad de la tarjeta SD está completa.",
"Para formatear la tarjeta SD, vaya a ",
"Gestión de SD",
" la página.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_MOTIONNOTE_INFO = 2;
var D_AUDIONOTE_INFO = 3;
var D_SDNOTE_INFO = 4;
var D_SDNOTE_FULL_INFO = 5;
var D_SD_MANAGEMENT_1_INFO = 6;
var D_SD_MANAGEMENT_2_INFO = 7;
var D_SD_MANAGEMENT_3_INFO = 8;

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
"El segundo de grabación del evento previo debe ser un número entero y estar entre 0 y 5",
"Mantener espacio libre en la tarjeta SD debe ser un número entero y estar entre 200 y 32.768",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
var PMSG_PREBUFFER_FAILED = 3;
var PMSG_QUOTA_FAILED = 4;
