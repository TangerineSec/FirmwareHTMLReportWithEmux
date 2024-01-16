var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"FTP", 
"Servidor FTP - Clip de vídeo",
"Nombre de host",
"Puerto",
"(Predeterminado 21)",
"Nombre de usuario",
"Contraseña",
"Ruta",
"Modo Pasivo",
"sí",
"No",
"Probar Servidor FTP - Clip de vídeo",
"Probar",
"Servidor FTP - Instantánea",
"Probar Servidor FTP - Instantánea",
"Intervalo",
"Segundos (Rango: de 10 a 86.400 segundos)",
"Segundos (Rango: de 30 a 86.400 segundos)",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_FTP_TITLE = 3;
var I_FTP_SERVER = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_UID = 8;
var I_PWD = 9;
var I_PATH = 10;
var I_PASSIVE_MODE = 11;
var I_YES = 12;
var I_NO = 13;
var I_TEST_FTP_SERVER = 14;
var I_TEST = 15;
var I_FTP_SERVER_SNAPSHOT = 16;
var I_TEST_FTP_SERVER_SNAPSHOT = 17;
var I_INTERVAL = 18;
var I_INTERVAL_SNAPSHOT_DES = 19;
var I_INTERVAL_VIDEOCLIP_DES = 20;

var des_item_name = new Array (
"En esta sección, puede configurar la cámara para enviar imágenes a un servidor FTP.",
"<b>Sugerencias útiles.</b><br><br><b>Nombre de host</b>:\
<br>se trata de la dirección IP del servidor FTP al que se va a conectar.\
<br><br><b>Puerto</b>: \
<br>el puerto predeterminado es el 21. \
<br><br><b>Nombre de usuario</b>: \
<br>el nombre de usuario necesario para acceder al servidor FTP externo. \
<br><br><b>Contraseña</b>: \
<br>la contraseña del servidor FTP externo. \
<br><br><b>Modo pasivo</b>: activando el modo pasivo se permitirá el acceso a un servidor FTP externo si la cámara está detrás de un router protegido por un cortafuegos.\
<br><br><b>Probar servidor FTP</b><br>Después de hacer clic en <b>Probar</b>, se enviará un archivo de imagen al servidor FTP.",
"Se enviará un archivo JPEG al servidor FTP anterior para realizar las pruebas. \
(Nombre de archivo: test_date_time.jpg)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"El formato del puerto no es válido.",
"Prueba de FTP correcta",
"Error de prueba FTP",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
