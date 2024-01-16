var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Configurazione rete", 
"IMPOSTAZIONI LAN",
"DHCP",
"Client IP statico",
"Indirizzo IP",
"Subnet mask",
"Router predefinito",
"DNS primario",
"DNS secondario",
"IMPOSTAZIONI PPPoE",
"ID utente",
"Password",
"Impostazioni porta",
"Porta HTTP",
"IMPOSTAZIONI HTTP",
"Attiva HTTPS",
"Porta HTTP",
"IMPOSTAZIONI UPnP",
"Attiva questa registrazione UPnP",
"IMPOSTAZIONI BONJOUR",
"Attiva questa registrazione Bonjour",
"Nome Bonjour",
"massimo 32 caratteri",
"Porta RTSP",
"Inoltro alla porta UPnP",
"Porta HTTP esterna",
"Porta HTTPS esterna",
"Porta RTSP esterna",
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
"Qui è possibile configurare le impostazioni relative alla rete LAN e Internet.",
"<b>Suggerimenti utili...</b>\
<br><br>Selezionare \"<b>Connessione DHCP</b>\" se sulla rete è in esecuzione un server DHCP \
e si desidera l'assegnazione automatica di un indirizzo IP alla \
videocamera. È possibile immettere manualmente un \
<b>indirizzo IP statico</b> e tutte le informazioni di rete pertinenti oppure \
selezionare il protocollo <b>PPPoE</b> se si connette il dispositivo DCS-935L direttamente alla \
connessione Internet che utilizza un servizio PPPoE. Se si seleziona PPPoE è necessario immettere \
il nome utente e la password forniti dal provider di servizi \
Internet (ISP).\
<br><br><b>DNS</b> Il server DNS (Domain Name System) è un servizio Internet \
che converte i nomi di dominio (ovvero www.dlink.com) in indirizzi IP \
(ovvero 192.168.0.20). Gli indirizzi IP possono essere ottenuti dall'ISP.\
<br>- <b>DNS primario</b>: server dei nomi di dominio primario che converte i nomi \
in indirizzi IP.\
<br>- <b>DNS secondario</b>: server dei nomi di dominio secondario come riserva \
per quello primario.\
<br><br><b>Impostazioni porta</b>: la maggior parte degli ISP non apre la porta 80 (una \
porta di trasferimento video predefinita del dispositivo DCS-935L) per i clienti privati. \
Il modello DCS-935L è in grado di utilizzare una porta diversa \
modificando la porta HTTP per lo streaming video. È possibile usare qualsiasi porta inutilizzata, \
ad esempio le porte 800, 801 e così via. Si noti che se il dispositivo DCS-935L è mascherato da \
un router, è necessario inoltrare tale porta all'indirizzo IP \
del dispositivo DCS-935L. Quando si accede alla videocamera, sarà necessario digitare l'indirizzo IP \
della videocamera seguito da due punti e dal numero di porta, ad esempio http://192.168.0.20:800.\
<br><br><b> Le impostazioni di UPnP</b> consentiranno di configurare la videocamera \
come dispositivo UPnP nella rete.\
<br><br><b>Bonjour</b> consente di rilevare facilmente diversi \
servizi nella videocamera.",
"Caratteri utilizzabili in un nome Bonjour: \"lettere in maiuscolo o \
minuscolo\", \"numeri\" e \"trattini\".",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_BONJOUR_DES = 2;

var pop_msg = new Array (
"Si è verificato un problema relativo alla richiesta.",
"L'indirizzo IP non è valido.",
"La Subnet Mask non è valida.",
"Il gateway predefinito non è valido.",
"La configurazione TCP/IP immessa non è valida.",
"Il formato dell'ID utente immesso non è valido.",
"Il formato della password non è valido.",
"Il DNS primario non è valido.",
"Il DNS secondario non è valido.",
"Il formato del numero di porta non è valido.",
"Il formato del nome Bonjour non è valido.",
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
