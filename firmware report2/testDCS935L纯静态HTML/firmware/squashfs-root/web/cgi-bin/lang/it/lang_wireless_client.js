var languageNum = new Array("en","sc","tc");
var item_name = new Array("Salva impostazioni", "Non salvare impostazioni", "Salva",
"Setup wireless", 
"Configurazione rete wireless",
"banda",
"2.4 GHz",
"5 GHz",
"SSID",
"Site Survey",
"Canale",
"Modalità di connessione",
"Infrastruttura",
"Ad-Hoc",
"Modalità protezione",
"Nessuno",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"Autenticazione",
"Sistema aperto",
"Chiave condivisa",
"Modalità di crittografia",
"Formato chiave",
"Chiave predefinita",
"Chiave1",
"Chiave2",
"Chiave3",
"Chiave4",
"Tipo di crittografia",
"TKIP",
"AES",
"Chiave precondivisa",
"(8-63 ASCII o 64 HEX caratteri)",
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
"In questa sezione è possibile configurare le impostazioni wireless della videocamera.",
"<b>Suggerimenti utili...</b>\
<br><br>È possibile abilitare le impostazioni wireless sulla videocamera e \
connettersi ad una rete wireless inserendo l'<b>SSID</b> (nome univoco \
della rete wireless) oppure facendo clic sul pulsante <b>Site Survey</b> \
per selezionare una rete wireless disponibile.. Quindi è possibile scegliere un \
numero di canale. In presenza di interferenze causate dalla sovrapposizione \
di reti wireless, è possibile cambiare il canale per ottenere \
prestazioni ottimali dalla connessione.\
<br><br>Sono disponibili due modalità di connessione. <b>Infrastruttura</b> è una \
connessione wireless che utilizza un punto di accesso come \
punto di trasmissione di tutti i dispositivi wireless. <b>Ad hoc</b> è una connessione wireless \
utilizzata senza punto di accesso, che connette il PC direttamente al dispositivo DCS-935L. \
<br><br>Per la protezione esistono tre opzioni di crittografia wireless, ovvero \
<b>Nessuna</b>, <b>WEP</b> e <b>WPA-PSK / WPA2-PSK</b>. Selezionare lo stesso \
metodo di crittografia utilizzato dal dispositivo/router wireless. Se è stata selezionata l'impostazione <b>WPA-PSK o WPA2-PSK</b>, \
per connettersi alla rete wireless può essere necessario immettere la <b>chiave precondivisa</b> \
appropriata.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64Bits",
"128Bits",
"HEX",
"ASCII",
"Chiave1",
"Chiave2",
"Chiave3",
"Chiave4",
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
"Si è verificato un problema relativo alla richiesta.",
"Il formato della chiave deve essere di 5 caratteri ASCII.",
"Il formato della chiave deve essere di 10 caratteri esadecimali.",
"Il formato della chiave deve essere di 13 caratteri ASCII.",
"Il formato della chiave deve essere di 26 caratteri esadecimali.",
"Il formato della chiave precondivisa non è valido.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
