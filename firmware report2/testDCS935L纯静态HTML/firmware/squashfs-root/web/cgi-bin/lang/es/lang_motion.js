var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"detección de movimiento", 
"Vídeo en directo",
"Activar movimiento de vídeo",
"Sensibilidad",
"porcentaje",
"Modo de dibujo",
"Dibujar área de movimiento",
"Borrar área de movimiento",
"Borrar",
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
"En esta sección, puede configurar los parámetros de detección de movimiento de la cámara.\
<br><br>Tenga en cuenta que el ordenador necesita tener instalado Java para poder ver la ventana de configuración de la \
detección de movimiento. Si no ve a continuación el vídeo en directo, visite \
<a href=\"http://www.java.com\">http://www.java.com</A> para descargar e instalar Java.",
"<b>Sugerencias útiles.</b><br><br>\
<b>Sensibilidad</b><br>Ajuste la sensibilidad de la cámara para activar la detección de movimiento. La sensibilidad elevada hace que los movimientos sean más fáciles de detectar.\
<br><br><b>Dibujar área de movimiento</b><br>Arrastre el ratón para añadir el rango de detección de movimiento.\
<br><br><b>Borrar área de movimiento</b>Arrastre el ratón para borrar el rango de detección de movimiento.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"La sensibilidad debe ser un número entero",
"La sensibilidad debe ser un número entero entre 0 y 100",
"La porcentaje debe ser un número entero",
"La porcentaje debe ser un número entero entre 0 y 100",
"Dibuje el área de movimiento",
"Advertencia: Si desea activar la función de detección de movimiento, marque [Activar movimiento de vídeo]. Sin embargo, si desea desactivar la función de detección de movimiento, borre el área de movimiento.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_SENSITIVITY_MUST_NUM = 1;
var PMSG_SENSITIVITY_RANGE_INVALID = 2;
var PMSG_PERCENTAGE_MUST_NUM = 3;
var PMSG_PERCENTAGE_RANGE_INVALID = 4;
var PMSG_PLEASE_DRAW_MOTION_AREA = 5;
var PMSG_PLEASE_CLEAR_MOTION_AREA = 6;
