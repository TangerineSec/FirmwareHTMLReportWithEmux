var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Día y noche", 
"Ajustes del modo día / noche",
"Día y noche",
"Automático",
"Manual",
"Siempre en modo Día",
"Siempre en modo Noche",
"Modo Día Modo Programar",
"ejemplo",
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
"En esta sección, puede configurar el método para cambiar en el modo día/noche. \
El modo Día/Noche garantiza una iluminación de vídeo óptima en entornos con luz diurna y nocturna.\
<br><br>En el modo Día, la iluminación de IR está desactivada, la luz de IR está bloqueada y el vídeo es en color. En el modo Noche, \
la iluminación de IR está activada, la luz de IR es visible y el vídeo es en blanco y negro.",
"<b>Sugerencias útiles.</b><br><br><b>Automático</b>: la cámara alterna automáticamente entre el modo Día y el modo Noche. \
La cámara funciona normalmente en modo Día. Cambia automáticamente al modo Noche cuando la iluminación es más oscura.\
<br><br><b>Manual</b>: el usuario puede controlar manualmente el funcionamiento de la cámara en modo Día o \
Noche en la página de visualización de vídeo en directo.\
<br><br><b>Siempre en modo Día</b>: la cámara funciona siempre en modo Día.<br><br><b>Siempre en modo Noche</b>\
: la cámara siempre funciona en modo Noche.\
<br><br><b>Programa de modo de Día</b>: la cámara funciona en modo Día en función del día y la hora configurados en el programa. La cámara cambia al modo Noche durante todas las horas restantes.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
""
);

var PMSG_REQUEST_FAILED = 0;
