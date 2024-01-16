var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"DNS dinámico", 
"DNS dinámico",
"Activar DDNS",
"Server address",
"Nombre de host",
"Nombre de usuario",
"Contraseña",
"Tiempo de espera",
"(horas)",
"Desactivada",
"Actualizada",
"Inicializando",
"Fallo de conexión",
"Estado",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DDNS = 3;
var I_DDNS_SETTING = 4;
var I_DDNS_ENABLE = 5;
var I_SERVER_ADDRESS = 6;
var I_HOSTNAME = 7;
var I_UID = 8;
var I_PWD = 9;
var I_TIMEOUT = 10;
var I_HOURS = 11;
var I_STATUS_DISABLE = 12;
var I_STATUS_UPDATED = 13;
var I_STATUS_INITIALIZING = 14;
var I_STATUS_CONNECTION_FAILED = 15;
var I_STATUS = 16;

var des_item_name = new Array (
"La característica DNS dinámica permite alojar un servidor (Web, FTP, cámara, etc...) utilizando un nombre \
de dominio que haya adquirido (www.sunombre.com) a su proveedor de servicios de Internet (ISP) de banda ancha. \
Al utilizar un servicio de DDNS, sus amigos pueden introducir su nombre de host para conectarse a su cámara IP \
independientemente de su dirección IP.",
"<b>Sugerencias útiles.</b><br><br>El DNS dinámico resulta útil si tiene un proveedor de servicios \
DSL o por cable que cambia periódicamente la dirección IP de su módem. Esto le permitirá asignar un nombre \
de dominio de sitio web a su cámara en lugar de conectar a través de una dirección IP.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Seleccionar servidor DNS dinámico",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"El formato del nombre de host no es válido.",
"El formato del nombre de usuario no es válido.",
"El formato de la contraseña no es válido.",
"El rango del tiempo de espera es de 24 a 65.535 horas.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

