var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Configuración de la imagen", 
"Vídeo en directo",
"PARÁMETROS DE IMAGEN",
"Brillo",
"Saturación",
"Contraste",
"Matiz",
"Nitidez",
"B/N",
"Reflejar",
"Dar la vuelta",
"Frecuencia",
"Reiniciar valor predeterminado",
"tratamiento",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_IMAGE_SETTING = 3;
var I_LIVE_VIDEO = 4;
var I_IMAGE_SETTING_TITLE = 5;
var I_BRIGHTNESS = 6;
var I_SATURATION = 7;
var I_CONTRAST = 8;
var I_HUE = 9;
var I_SHARPNESS = 10;
var I_BW = 11;
var	I_MIRROR = 12;
var I_FLIP = 13;
var I_FREQUENCY = 14;
var I_RESET_TO_DEFAULT = 15;
var I_PROCESSING = 16;

var des_item_name = new Array (
"Los cambios que ha realizado en los parámetros de imagen se reflejarán inmediatamente. Los resultados se pueden ver y encontrar en la ventana de Vídeo en directo siguiente.",
"<b>Sugerencias útiles.</b><br><br>Brillo, Saturación, Contraste y Matiz se pueden ajustar de 0 a 100, permitiéndole ajustar sus parámetros de imagen.\
<br><br><b>Brillo</b><br>Se utiliza para compensar en las escenas con retroiluminación.\
<br><br><b>Saturación</b><br>Controla la fuerza del color, desde el blanco y negro hasta los colores en negrita.\
<br><br><b>Contraste</b><br>Se puede ajustar para controlar el contraste de los colores entre los objetos. Ayuda a mejorar una imagen tomada bajo un cielo gris plomizo.\
<br><br><b>Matiz</b><br>Controla el distinto nivel de un color que estimula el ojo humano.\
<br><br><b>Nitidez</b><br>Se utiliza para ajustar la nitidez de la imagen.\
<br><br><b>B/N</b><br>Seleccione esta opción para activar o desactivar el modo blanco y negro de la cámara.\
<br><br><b>Reflejo</b><br>Seleccione esta característica para obtener una imagen reflejada.\
<br><br><b>Dar la vuelta</b><br>Seleccione esta característica cuando se instale la cámara invertida en el techo.\
<br><br><b>Frecuencia</b><br>Puede que necesite elegir una frecuencia \"Off\", de \"50\" o \"60\" Hz (dependiendo del país).<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Off",
"50Hz",
"60Hz",
""
);

var O_FREQUENCY_AUTO = 0;
var O_FREQUENCY_50 = 1;
var O_FREQUENCY_60 = 2;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
""
);

var PMSG_REQUEST_FAILED = 0;
