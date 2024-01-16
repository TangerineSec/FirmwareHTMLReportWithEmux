var languageNum = new Array("en","sc","tc");
var item_name = new Array("INFORMACIÓN DEL DISPOSITIVO", "INFORMACIÓN", "IP Camera Name",
"Fecha y hora",
"Versión actual del firmware: ",
"Agente de la versión",
"Dirección MAC",
"Dirección IP",
"Máscara de subred",
"Puerta de enlace predeterminada",
"DNS primario",
"DNS secundario",
"DDNS",
"Activar redireccionamiento de puerto UPnP",
"Configuración inalámbrica",
"Infraestructura",
"conexión",
"SSID",
"Canal",
"Nombre de seguridad de solo lectura",
"Recargar",
"Activar",
"Desactivar",
"Infraestructura",
"Ad-Hoc",
"sí",
"Ninguno",
"Ninguno",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"Actualizar",
"Estado de PPPoE",
"Conectado",
"Fallo de conexión",
"Hardware Version",
""
);
var I_DEVICE_INFO = 0;
var I_BASIC_INFORMATION = 1;
var I_CAMERA_NAME = 2;
var I_TIME_AND_DATE = 3;
var I_FWVERSION = 4;
var I_AGENT_VERSION = 5;
var I_MAC_ADDRESS = 6;
var I_IP_ADDRESS = 7;
var I_SUBNET_MASK = 8;
var I_DEFAULT_GATEWAY = 9;
var I_PRIMARY_DNS = 10;
var I_SECONDARY_DNS = 11;
var I_DDNS = 12;
var I_UPNP_PORT_FORWARDING = 13;
var I_WIRELESS_STATUS = 14;
var I_CONNECTION_MODE = 15;
var I_LINK = 16;
var I_SSID = 17;
var I_CHANNEL = 18;
var I_ENCRYPTION = 19;
var I_REFRESH = 20;
var I_ENABLE = 21;
var I_DISABLE = 22;
var I_INFRASTRUCTURE = 23;
var I_ADHOC = 24;
var I_YES = 25;
var I_NO = 26;
var I_NONE = 27;
var I_WEP = 28;
var I_WPAPSK = 29;
var I_WPA2PSK = 30;
var I_REFRESHING = 31;
var I_PPPOE_STATUS = 32;
var I_PPPOE_CONNECT_SUCCESS = 33;
var I_PPPOE_CONNECT_FAIL = 34;
var I_HWVERSION = 35;

var des_item_name = new Array (
"Todos los detalles sobre la conexión de red se muestran en la página de Información del dispositivo. La versión de firmware también se muestra aquí.",
"<b>Sugerencias útiles.</b><br><br>En esta página se muestran todos los detalles de la conexión de red.",
""
);

var D_DEVICE_INFO = 0;
var D_HELP_INFO = 1;
