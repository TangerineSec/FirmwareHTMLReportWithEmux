var languageNum = new Array("en","sc","tc");
var item_name = new Array("D-LINK CORPORATION", "Wireless", "CÁMARA DE INTERNET",
"Vídeo en directo",
"Producto", 
"Versión del firmware",
"paso 1: configurar parámetros de LAN",
"Atrás",
"Avanzar",
"Borrar",
"DHCP",
"Direccionamiento de IP estática activado. Los parámetros de red se pueden modificar más adelante.",
"Dirección IP de inicio",
"Máscara de subred IP",
"Puerta de enlace predeterminada",
"DNS primario",
"DNS secundario",
"PPPoE",
"Nombre de usuario",
"Contraseña",
""
);
var I_DINK_CORPORATION = 0;
var I_WIRELESS = 1;
var I_INTERNET_CAMERA = 2;
var I_LIVE_VIDEO = 3;
var I_PRODUCT = 4;
var I_FWVERSION = 5;
var I_TITLE = 6;
var I_BACK = 7;
var I_NEXT = 8;
var I_CANCEL = 9;
var I_DHCP = 10;
var I_STATIC_IP = 11;
var I_IP_ADDRESS = 12;
var I_SUBNET_MASK = 13;
var I_DEFAULT_GATEWAY = 14;
var I_DNS1 = 15;
var I_DNS2 = 16;
var I_PPPOE = 17;
var I_UID = 18;
var I_PWD = 19;

var des_item_name = new Array (
"Copyright 2014, D-Link Corporation / D-Link Systems, Inc. Reservados todos los derechos.",
"Este asistente le guiará a través de un proceso paso a paso para configurar su nueva cámara D-Link y conectarla a Internet.<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var pop_msg = new Array (
"There was a problem with the request.",
"The IP Address is invalid.",
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
