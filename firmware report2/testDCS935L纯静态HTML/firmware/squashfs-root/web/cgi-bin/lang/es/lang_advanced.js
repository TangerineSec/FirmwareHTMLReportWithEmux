var languageNum = new Array("en","sc","tc");
var item_name = new Array("Admin", "CONFIGURACIÓN DE CONTRASEÑA DE ADMINISTRACIÓN", "Contraseña antigua",
"Nueva contraseña",
"Reescribir contraseña",
"Configuración del servidor ",
"IP Camera Name",
"LED Control",
"Normal",
"APAGADO",
"Autenticación URL de instantánea",
"Activar",
"Desactivar",
"OSD Hora",
"Color",
"Aplicar",
"Borrar",
"AGREGAR CUENTA DE USUARIO",
"Nombre de usuario",
"Contraseña",
"Añadir",
"LISTA DE USUARIOS",
"No.",
"Nombre",
"Modificar",
"Borrar",
"{$31} caracteres, como máximo",
"{$31} caracteres, como máximo",
"{$10} caracteres, como máximo",
"Máximo 10usuarios",
"Guardar",
""
);
var I_ADMIN = 0;
var I_ADMIN_PWD_SETTING = 1;
var I_OLD_PWD = 2;
var I_NEW_PWD = 3;
var I_RETYPE_PWD = 4;
var I_SERVER_SETTING = 5;
var I_CAMERA_NAME = 6;
var I_LED_CONTROL = 7;
var I_NORMAL = 8;
var I_OFF = 9;
var I_SNAPSHOT_URL_AUTH = 10;
var I_ENABLE = 11;
var I_DISABLE = 12;
var I_OSD_TIME = 13;
var I_COLOR = 14;
var I_APPLY = 15;
var I_CANCEL = 16;
var I_ADD_USER_ACCOUNT = 17;
var I_USER_NAME = 18;
var I_PWD = 19;
var I_ADD = 20;
var I_USER_LIST = 21;
var I_NO = 22;
var I_NAME = 23;
var I_MODIFY = 24;
var I_DELETE = 25;
var I_PWD_LENGTH_DES = 26;
var I_UID_LENGTH_DES = 27;
var I_CAMERA_NAME_LENGTH_DES = 28;
var I_USER_MAX_DES = 29;
var I_SAVING = 30;

var des_item_name = new Array (
"Aquí puede cambiar la contraseña del administrador y configurar el parámetro del servidor \
para la cámara. Asimismo, puede añadir, modificar y/o borrar las cuentas de usuario.",
"<b>Sugerencias útiles.</b><br><br>Por motivos de seguridad, se recomienda cambiar la contraseña de \
las cuentas de administrador. Asegúrese de anotar los nuevos nombres de inicio de sesión y contraseñas para \
evitar tener que reiniciar la cámara en el caso de que las olvide.",
""
);

var D_ADMIN_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Negro",
"Blanco",
"Azul",
"Amarillo",
"Rojo",
"Naranja",
"Cián",
"Dorado",
""
);

var O_COLOR_BLACK = 0;
var O_COLOR_WHITE = 1;
var O_COLOR_BLUE = 2;
var O_COLOR_YELLOW = 3;
var O_COLOR_RED = 4;
var O_COLOR_ORANGE = 5;
var O_COLOR_CYAN = 6;
var O_COLOR_GOLD = 7;

var pop_msg = new Array(
"Se ha producido un problema con la solicitud.",
"Ha introducido una contraseña incorrecta. Vuelva a intentarlo.",
"La contraseña no se ha confirmado correctamente. Asegúrese de que la nueva contraseña y la contraseña que ha reescrito coinciden exactamente.",
"El formato del nombre de la cámara no es válido.",
"Ha introducido un nombre de usuario incorrecto. Vuelva a intentarlo.",
"Haga clic en \"Aceptar\" para modificar el usuario seleccionado.",
"Supera el número máximo de usuarios",
"Cuenta o contraseña no válida.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_PWD_INCORRECT = 1;
var PMSG_PWD_RETYPE_INCORRECT = 2;
var PMSG_CAMERA_NAME_INVALID = 3;
var PMSG_USER_NAME_INCORRECT = 4;
var PMSG_CLICK_TO_MODIFY_USER = 5;
var PMSG_MAX_USER_EXCEED = 6;
var PMSG_INVALID_ACCOUNT_OR_PWD = 7;
