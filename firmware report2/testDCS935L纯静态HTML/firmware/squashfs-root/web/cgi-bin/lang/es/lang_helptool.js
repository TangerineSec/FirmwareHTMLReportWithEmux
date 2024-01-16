var languageNum = new Array("en","sc","tc");
var item_name = new Array("MENÚ DE SOPORTE", "Admin", "Sistema",
"Actualización del firmware",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"Puede utilizar esta página para configurar la contraseña y las cuentas de usuario de admin.<br><br>",
"<b>Nombre de la cámara</b>: un nombre exclusivo para su cámara.<br><br>",
"<b>Control de LED</b>: seleccione Normal para activar el LED. Seleccione Desactivado para desactivar el LED.<br><br>",
"<b>Control de acceso de usuarios</b>: active esta opción para permitir a otros usuarios acceder a su cámara.<br><br>",
"<b>Autenticación URL de instantánea</b>: para activar esta opción, debe introducir el nombre de usuario y \
la contraseña para acceder a http://IP Camera\'s IP address/image/jpeg.cgi para obtener una imagen fija.<br><br>",
"<b>Hora de OSD</b>: active esta opción para permitir la visualización de la hora de OSD.<br><br>",
"<b>Nombre de usuario</b>: cree un nuevo usuario para acceder a la imagen de vídeo. Se puede añadir un máximo de 8 \
cuentas de usuario a la lista de usuarios. También puede modificar y borrar aquí las cuentas de usuario.",
"<b>Guardar en el disco duro local</b>: tras la configuración de la cámara, \
puede guardar los parámetros en su disco duro para poder restaurarlos en el futuro.<br><br>",
"<b>Cargar desde el disco duro local</b>: esto cargará un archivo guardado con anterioridad y restaurará \
los parámetros de configuración en la cámara.<br><br>",
"<b>Restaurar en los parámetros predeterminados de fábrica</b>: esta opción reiniciará la cámara y restablecerá los parámetros \
predeterminados de fábrica para su cámara. Esta acción eliminará todos los parámetros de configuración establecidos con anterioridad.<br><br>",
"<b>Reiniciar el dispositivo</b>: esta opción reiniciará la cámara.",
"<b>Actualizar firmware</b>: esta opción permite al usuario actualizar el firmware a través del explorador. Haga clic en \
<b>Examinar</b> para localizar el archivo que contiene el nuevo firmware y, a continuación, haga clic en \
<b>Cargar</b> para aplicar el nuevo firmware a la cámara.",
""
);

var D_ADMIN_INFO = 0;
var D_CAM_NAME_INFO = 1;
var D_LED_CONTROL_INFO = 2;
var D_USER_ACCESS_CONTROL_INFO = 3;
var D_SNAPSHOT_URL_INFO = 4;
var D_OSD_TIME_INFO = 5;
var D_USER_NAME_INFO = 6;
var D_SAVE_TO_LOCAL_INFO = 7;
var D_LOAD_FROM_LOCAL_INFO = 8;
var D_FACTORY_RESET_INFO = 9;
var D_REBOOT_INFO = 10;
var D_FWIPGRADE_INFO = 11;
