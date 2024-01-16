var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Correo electrónico", 
"Dirección de correo electrónico - Clip de vídeo",
"Servidor SMTP",
"Servidor SMTP Puerto",
"(Predeterminado 25)",
"Dirección de correo electrónico del remitente",
"Dirección de correo electrónico del destinatario",
"Nombre de usuario ",
"Contraseña",
"Use SSL-TLS/STARTTLS",
"No",
"SSL-TLS",
"STARTTLS",
"prueba de correo electrónico del remitente - Clip de vídeo",
"Probar",
"Servidor SMTP - Instantánea",
"prueba de correo electrónico del remitente - Instantánea",
"Intervalo",
"Segundos (Rango: de 30 a 86.400 segundos)",
"Segundos (Rango: de 60 a 86.400 segundos)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SMTP_TITLE = 3;
var I_EMAIL_ACCOUNT = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_SENDER_ADDRESS = 8;
var I_RECEIVER_ADDRESS = 9;
var I_UID = 10;
var	I_PWD = 11;
var I_AUTH_ENABLE = 12;
var I_NO = 13;
var I_SSLTLS = 14;
var I_STARTTLS = 15;
var I_TEST_EMAIL_ACCOUNT = 16;
var I_TEST = 17;
var I_EMAIL_ACCOUNT_SNAPSHOT = 18;
var I_TEST_EMAIL_ACCOUNT_SNAPSHOT = 19;
var I_INTERVAL = 20;
var I_INTERVAL_SNAPSHOT_DES = 21;
var I_INTERVAL_VIDEOCLIP_DES = 22;

var des_item_name = new Array (
"Esta sección permite instalar y configurar los parámetros de notificación por correo electrónico de la cámara. \
Si sus datos cambian o está experimentando problemas con las notificaciones de alerta, puede que necesite modificar estos parámetros.",
"<b>Sugerencias útiles.</b><br><br><b>Dirección del servidor SMTP</b>:\
<br>este es el nombre de dominio o la dirección IP de su servidor de correo electrónico externo.\
<br><br><b>Dirección de correo electrónico del remitente</b>:\
<br>es la dirección de correo electrónico de la persona que envía las instantáneas de la cámara.\
<br><br><b>Dirección de correo electrónico del destinatario</b>:\
<br>es la dirección de correo electrónico del destinatario para el servidor SMTP.\
<br><br><b>Nombre de usuario</b>: \
<br>el nombre de usuario de su cuenta de correo electrónico.\
<br><br><b>Contraseña</b>: \
<br>la contraseña de su cuenta de correo electrónico.\
<br><br><b>Utilice SSL-TLS/STARTTLS</b>: \
<br>seleccione <b>SSL-TLS</b> o <b>STARTTLS</b> si el servidor SMTP requiere autenticación TLS.",
"Se enviará un correo electrónico de prueba a la cuenta de correo electrónico indicada anteriormente.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"El formato del puerto del servidor SMTP no es válido.",
"Envío de mensaje de prueba correcto",
"Error al enviar un mensaje de prueba",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
