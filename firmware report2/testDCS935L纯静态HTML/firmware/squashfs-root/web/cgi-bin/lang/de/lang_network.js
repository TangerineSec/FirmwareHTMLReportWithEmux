var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Netzwerkeinrichtung", 
"LAN-EINSTELLUNGEN",
"DHCP",
"Statischer IP-Client",
"IP-Adresse",
"Subnetz-Maske",
"Standard-Gateway",
"Primärer DNS",
"Sekundärer DNS",
"PPPoE-Einstellungen",
"Benutzer-ID",
"Kennwort",
"Port-Einstellungen",
"HTTP-Port",
"HTTPS-SETUP",
"HTTPS-Diese Aufnahme aktivieren",
"HTTPS-Port",
"UPnP-SETUP",
"UPnP-Diese Aufnahme aktivieren",
"HTTP-BONJOUR",
"Bonjour-Diese Aufnahme aktivieren",
"Bonjour Name",
"Max. 32 Zeichen",
"RTSP-Port",
"UPnP Portweiterleitung",
"Externer HTTP-Port",
"Externer HTTPS-Port",
"Externer RTSP-Port",
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
"Hier können Sie Ihre LAN- und Interneteinstellungen konfigurieren.",
"<b>Nützliche Hinweise..</b><br><br>Wählen Sie \"<b>DHCP Connection</b>\" (DHCP-Verbindung), wenn Sie einen DHCP-Server in Ihrem Netzwerk verwenden und wünschen, dass Ihrer IP-Kamera automatisch eine IP-Adresse zugewiesen wird. Sie können eine <b>statische IP-Adresse</b> und alle relevanten Netzwerkinformationen manuell eingeben oder <b>PPPoE</b> wählen, wenn Sie Ihre DCS-935L direkt mit dem Internet verbinden, bei dem ein PPPoE-Dienst verwendet wird. Wenn Sie PPPoE wählen, müssen Sie die Benutzerkennung und das Kennwort eingeben, das Ihnen von Ihrem Internetdienstanbieter bereitgestellt wurde.\
<br><br><b>DNS</b> (Domain Name System) Server ist ein Internetdienst, der Domänennamen (z. B. www.dlink.com) in IP-Adressen (z. B. 192.168.0.20) umwandelt. Die IP-Adressen erhalten Sie von Ihrem Internetdienstanbieter.\
<br>- <b>Primärer DNS</b>: Primärer Domain-Namenserver, der Namen in IP-Adressen übersetzt.\
<br>- <b>Sekundärer DNS</b>: Sekundärer Domänennamenserver zur Unterstützung des bevorzugten primären DNS.\
<br><br><b>Porteinstellungen</b> - Die meisten Internetdienstanbieter öffnen den Port 80 nicht (ein standardmäßiger DCS-935L Videoübertragungs-Port für ihre spezifischen Kunden. Die DCS-935L kann einen anderen Port verwenden, indem sie den zweiten Http-Port für ihr Video Streaming aktiviert. Alle ungenutzten Ports können verwendet werden, wie z. B. Port 800, 801, usw. Befindet sich die DCS-935L hinter einem Router, muss dieser Port an die IP-Adresse der DCS-935L weitergeleitet werden. Bei Zugriff auf die Kamera müssten Sie die IP-Adresse der Kamera gefolgt von der Portnummer (z. B: http://192.168.0.20:800) eingeben.\
<br><br><b>Die UPnP</b>-Einstellungen ermöglichen Ihnen, Ihre Kamera als ein UPnP-Gerät im Netz zu konfigurieren.\
<br><br><b>Bonjour</b> bietet Ihnen eine einfache Methode, die verschiedenen Dienste Ihrer Kamera zu entdecken.",
"(In einem Bonjour-Namen können verwendet werden:  \"groß oder klein geschriebene Buchstaben\", \"Zahlen\" und \"Trennstriche\".)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
"Die IP-Adresse ist ungültig.",
"Die Subnetzmaske ist ungültig.",
"Das Standard-Gateway ist ungültig.",
"Inkorrekte TCP/IP-Konfiguration eingegeben.",
"Das Format der Benutzerkennung ist ungültig.",
"Das Kennwort ist ungültig.",
"Der Primäre DNS ist ungültig.",
"Der Sekundäre DNS ist ungültig.",
"Die Portnummer ist ungültig.",
"Der Bonjour-Name ist ungültig.",
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
