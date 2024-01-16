var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar",
"Configuración de red", 
"PARÁMETROS DE LAN",
"DHCP",
"Cliente de IP estática",
"Dirección IP",
"Máscara de subred",
"Puerta de enlace predeterminada",
"DNS primario",
"DNS secundario",
"Parámetros de PPPoE",
"ID de usuario",
"Contraseña",
"Parámetros del puerto",
"Puerto HTTP",
"Configuración HTTPS",
"Habilitar esta grabación HTTPS",
"Puerto HTTPS",
"Configuración UPnP",
"Habilitar esta grabación UPnP",
"Configuración BONJOUR",
"Habilitar esta grabación Bonjour",
"Nombre Bonjour",
"32 caracteres como máximo",
"Puerto RTSP",
"Direccionamiento de puertos UPnP",
"Puerto HTTP externo",
"Puerto HTTPS externo",
"Puerto RTSP externo",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_NETWORK_TITLE = 3;
var I_LAN_SETTING = 4;
var I_DHCP = 5;
var I_STATIC_IP = 6;
var I_IP_ADDRESS = 7;
var I_SUBNET_MASK = 8;
var I_DEFAULT_GATEWAY = 9;
var I_DNS1 = 10;
var I_DNS2 = 11;
var I_PPPOE = 12;
var I_UID = 13;
var I_PWD = 14;
var I_PORT_SETTING = 15;
var I_HTTP_PORT = 16;
var I_HTTPS_SETTING = 17;
var I_HTTPS_ENABLE = 18;
var I_HTTPS_PORT = 19;
var I_UPNP_SETTIGN = 20;
var I_UPNP_ENABLE = 21;
var I_BONJOUR_SETTING = 22;
var I_BONJOUR_ENABLE = 23;
var I_BONJOUR_NAME = 24;
var I_MAX_CHAR_32 = 25;
var I_RTSP_PORT = 26;
var I_UPNP_PORT_FORWARD = 27;
var I_UPNP_EXTERN_HTTP = 28;
var I_UPNP_EXTERN_HTTPS = 29;
var I_UPNP_EXTERN_RTSP = 30;

var des_item_name = new Array (
"Aquí puede configurar los parámetros de LAN e Internet.",
"<b>Sugerencias útiles.</b><br><br>Seleccione \"<b>Conexión DHCP</b>\" si está utilizando un servidor DHCP en la red y desea que se asigne automáticamente una dirección IP a su cámara. Puede optar por introducir manualmente una <b>dirección IP estática</b> y toda la información de red correspondiente o seleccionar <b>PPPoE</b> si conecta su DCS-935L directamente a Internet utilizando un servicio PPPoE. Si elige PPPoE, deberá introducir el ID de usuario y la contraseña suministrados por su proveedor de servicios de Internet.\
<br><br>El servidor <b>DNS</b> (Sistema de nombre de dominio) es un servicio de Internet que traduce los nombres de dominio (p. ej., www.dlink.com) a direcciones IP (p. ej., 192.168.0.20). Puede obtener las direcciones IP de su ISP.\
<br>- <b>DNS primario</b>: servidor de nombre de dominio primario que traduce los nombres a direcciones IP.\
<br>- <b>DNS secundario</b>: servidor de nombre de dominio secundario para respaldar al primario.\
<br><br><b>Parámetros del puerto</b>: la mayoría de los ISP no abren el puerto 80 (un puerto de transferencia de vídeo predeterminado de la DCS-935L) para sus clientes de zonas residenciales, la DCS-935L tiene la capacidad de utilizar un puerto diferente activando el segundo puerto http para su canalización de vídeo. Pueden utilizarse todos los puertos sin usar, como el puerto 800, 801, etc. No olvide que, si la DCS-935L está detrás de un router, necesitará enviar dicho puerto a la dirección IP de la DCS-935L. Al acceder a la cámara, necesitará escribir la dirección IP de la cámara,seguida de dos puntos y el número de puerto (por ejemplo, http://192.168.0.20:800).\
<br><br>Los parámetros de <b>UPnP</b> permitirán configurar la cámara como un dispositivo UPnP en la red.\
<br><br><b>Bonjour</b> proporciona una manera sencilla de descubrir diferentes servicios de la cámara.",
"(Caracteres que puede utilizar en un nombre de Bonjour: \"letras en mayúsculas o minúsculas\", \"números\" y \"guiones\".)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
"La dirección IP no es válida.",
"La máscara de subred no es válida.",
"La puerta de enlace predeterminada no es válida.",
"Ha introducido una configuración de TCP/IP incorrecta.",
"El formato de ID de usuario no es válido.",
"El formato de la contraseña no es válido.",
"El DNS primario no es válido.",
"El DNS secundario no es válido.",
"El formato del número de puerto no es válido.",
"El formato del nombre de Bonjour no es válido.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_IPADDRESS = 1;
var PMSG_INVALID_SUBNET_MASK = 2;
var PMSG_INVALID_GATEWAY = 3;
var PMSG_INCORRECT_TCPIP_CONFIG = 4;
var PMSG_INVALID_UID = 5;
var PMSG_INVALID_PWD = 6;
var PMSG_INVALID_DNS1 = 7;
var PMSG_INVALID_DNS2 = 8;
var PMSG_INVALID_PORT_NUMBER = 9;
var PMSG_INVALID_BONJOUR_NAME = 10;
