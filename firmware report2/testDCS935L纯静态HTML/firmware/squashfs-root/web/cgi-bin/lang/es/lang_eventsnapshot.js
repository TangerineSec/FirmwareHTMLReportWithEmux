var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Instantánea", 
"Instantánea",
"Instantánea",
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
"Instantánea",
"solo Instantánea",
"objetivo",
"FTP",
"Correo electrónico",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SNAPSHOT_TITLE = 3;
var I_SNAPSHOT = 4;
var I_SNAPSHOT_ITEM = 5;
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
var I_SNAPSHOT_TYPE = 19;
var I_SINGLE = 20;
var I_TARGET = 21;
var I_FTP = 22;
var I_EMAIL = 23;

var des_item_name = new Array (
"Para permitir que su cámara haga instantáneas, debe seleccionar la casilla de verificación \"Instantánea\". \
A continuación, puede determinar los eventos de activación y las notificaciones de FTP y/o de correo electrónico.",
"<b>Sugerencias útiles.</b><br><br>Instantánea es la capacidad para almacenar o enviar imágenes a un servidor remoto de \
correo electrónico o FTP en función de la detección de movimiento, entrada activada del sensor externo.<br><br>\
<b>Activado por</b>\
<br><b>Movimiento</b><br>Empezar la instantánea tras la detección de un movimiento.<br><b>Sonido Iniciar</b>\
<br><b>Programar</b><br>Instantánea a una hora especificada.\
<br><b>Siempre</b><br>Instantánea continua.\
<br><b>Sonido</b>\
<br>Iniciar la instantánea después de detectar el sonido.<br><br><b>Tipo de instantánea</b>\
<br>Instantánea única o 6 instantáneas.<br><br><b>6 instantáneas</b>\
<br>Selecciónelo para tomar 6 imágenes continuas para cada instantánea.<br><br><b>Destino</b>\
<br>Puede seleccionar el destino de la instantánea como FTP o correo electrónico.",
"6 instantáneas con \
<select id=\"select_snapshot_interval\">\
<option value=\"1000\">1</option>\
<option value=\"2000\">2</option>\
</select> \
intervalo de segundos (3 imágenes anteriores y 3 imágenes posteriores a la imagen de movimiento)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_SNAPSHOT_INTERVAL = 2;

var option_content = new Array (
"Movimiento",
"Programar",
"Siempre",
"Sonido",
""
);

var O_MOTION = 0;
var O_SCHEDULE = 1;
var O_ALWAYS = 2;
var O_SOUND = 3;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"La hora de inicio debe ser inferior a la hora final",
"Elija al menos un día",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_TIME_START_MUST_LESS_END = 1;
var PMSG_PLEASE_SELECT_ONE_DAY = 2;
