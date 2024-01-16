var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Configuración inalámbrica", 
"Configuración inalámbrica",
"banda",
"2.4 GHz",
"5 GHz",
"SSID",
"Estudio del sitio",
"Canal",
"Modo de conexión",
"Infraestructura",
"Ad-Hoc",
"Modo de seguridad",
"Ninguno",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"Autenticación",
"Sistema abierto",
"Clave compartida",
"Modo de cifrado",
"Formato de la clave",
"Clave predeterminada",
"Clave1",
"Clave2",
"Clave3",
"Clave4",
"Tipo de cifrado",
"TKIP",
"AES",
"Clave precompartida",
"(8-63 ASCII o 64 HEX caracteres)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_WIRELESS_SETUP = 3;
var I_WIRELESS_SETTING = 4;
var I_BAND = 5;
var I_2dot4GHZ = 6;
var I_5GHZ = 7;
var I_SSID = 8;
var I_SITE_SURVEY = 9;
var I_CHANNEL = 10;
var I_CONNECTION_MODE = 11;
var I_INFRASTRUCTURE = 12;
var I_ADHOC = 13;
var I_SECURITY_MODE = 14;
var I_NONE = 15;
var I_WEP = 16;
var I_WPAPSK = 17;
var I_WPAPSK2 = 18;
var I_AUTHENTICATION = 19;
var I_OPEN_SYSTEM = 20;
var I_SHARED_KEY = 21;
var I_ENCRYPTION_MODE = 22;
var I_KEY_FORMAT = 23;
var I_DEFAULT_KEY = 24;
var I_KEY1 = 25;
var I_KEY2 = 26;
var I_KEY3 = 27;
var I_KEY4 = 28;
var I_CIPHER_TYPE = 29;
var I_TKIP = 30;
var I_AES = 31;
var I_PRESHARED_KEY = 32;
var I_PRESHARED_KEY_DES = 33;


var des_item_name = new Array (
"En esta sección, puede configurar los parámetros inalámbricos de la cámara.",
"<b>Sugerencias útiles.</b><br><br>Puede activar la configuración inalámbrica de la cámara y conectarse a una red inalámbrica introduciendo el <b>SSID</b> (nombre exclusivo de su red inalámbrica) o haciendo clic en el botón <b>Estudio del sitio</b> para seleccionar una red inalámbrica disponible. A continuación, puede elegir un número de canal. Cuando existen interferencias procedentes de las redes inalámbricas que se superponen entre sí, puede cambiar el canal para obtener el máximo rendimiento de su conexión.\
<br><br>Existen dos modos de conexión. <b>Infraestructura</b> es una conexión inalámbrica que utiliza un punto de acceso como el punto de transmisión de todos los dispositivos inalámbricos. <b>Ad-Hoc</b> es una conexión inalámbrica utilizada sin un punto de acceso que conecta directamente el PC a la DCS-935L. \
<br><br>Para la seguridad existen tres opciones de cifrado inalámbrico, <b>Ninguno</b>, <b>WEP</b> y <b>WPA-PSK / WPA2-PSK</b>. Seleccione el mismo método de cifrado que esté utilizando su dispositivo / router inalámbrico. Si ha seleccionado la configuración <b>WPA-PSK o WPA2-PSK</b>, puede que necesite introducir la <b>clave precompartida</b> adecuada para poder conectarse a la red inalámbrica.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64Bits",
"128Bits",
"HEX",
"ASCII",
"Clave1",
"Clave2",
"Clave3",
"Clave4",
""
);

var O_64BITS = 0;
var O_128BITS = 1;
var O_HEX = 2;
var O_ASCII = 3;
var O_KEY1 = 4;
var O_KEY2 = 5;
var O_KEY3 = 6;
var O_KEY4 = 7;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"El formato de la clave debe ser de 5 caracteres ASCII",
"El formato de la clave debe ser de 10 caracteres hexadecimales",
"El formato de la clave debe ser de 13 caracteres ASCII",
"El formato de la clave debe ser de 26 caracteres hexadecimales",
"El formato de la clave precompartida no es válido.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
