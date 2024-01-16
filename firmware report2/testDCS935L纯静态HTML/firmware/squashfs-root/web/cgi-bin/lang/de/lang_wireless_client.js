var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Netzwerk-SETUP", 
"Netzwerk-SETUP",
"Band",
"2.4 GHz",
"5 GHz",
"SSID",
"Standortübersicht",
"Kanal",
"Verbindungsmodus",
"Infrastruktur",
"Ad-Hoc",
"Sicherheitsmodus",
"Keine",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"Authentifizierung",
"Open System",
"Shared Key",
"Verschlüsselungsmodus",
"Schlüsselformat",
"Standardschlüssel",
"Schlüssel-1",
"Schlüssel-2",
"Schlüssel-3",
"Schlüssel-4",
"Cipher Type",
"TKIP",
"AES",
"Pre-Shared Key",
"(8-63 ASCII oder 64 HEX buchstaben)",
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
"In diesem Abschnitt können Sie die Drahtloseinstellungen Ihrer Kamera konfigurieren.",
"<b>Helpful Hints..</b><br><br>Sie können die Drahtloseinstellungen auf Ihrer Kamera aktivieren und eine \
Verbindung zur einem drahtlosen Netz durch Eingabe der <b>SSID</b> (eindeutiger Name Ihres drahtlosen Netzes) herstellen, \
oder auf <b>Site Survey</b> (Standortübersicht)klicken, um ein verfügbares drahtloses Netz zu wählen. Sie können dann eine \
Kanalnummer wählen. Liegen Störungen ausgehend von den drahtlosen Netzen vor, die sich überschneiden, können Sie zur Gewährleistung \
der bestmöglichen Leistung Ihrer Verbindung den Kanal ändern.\
<br><br>Es stehen Ihnen zwei Verbindungsmodi zur Verfügung. <b>Infrastructure</b> ist ein drahtloser Verbindungsmodus, bei dem ein \
Access Point als Übertragungspunkt aller drahtloser Geräte verwendet wird. <b>Ad-Hoc</b> ist ein drahtloser Verbindungsmodus, bei dem \
kein Access Point verwendet wird und die DCS-935L direkt mit dem PC verbunden ist. \
<br><br>Es stehen folgende drei Optionen zur Verschlüsselung in drahtlosen Netzen zur Verfügung: <b>None (Keine)</b>, <b>WEP</b> und <b>WPA-PSK / WPA2-PSK</b>. Wählen Sie die gleiche Verschlüsselungsmethode wie die, die von Ihrem drahtlosen Gerät/Router verwendet wird. Wenn Sie die <b>WPA-PSK- oder WPA2-PSK</b>-Einstellung gewählt haben, müssen Sie ggf. den passenden <b>Pre-Shared Key</b> eingeben, um eine Verbindung zu dem drahtlosen Netz herzustellen.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64Bits",
"128Bits",
"HEX",
"ASCII",
"Schlüssel-1",
"Schlüssel-2",
"Schlüssel-3",
"Schlüssel-4",
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
"Bei der Anfrage ist ein Problem aufgetreten.",
"Der Schlüssel muss 5 ASCII-Zeichen lang sein.",
"Der Schlüssel muss 10 HEX-Zeichen lang sein.",
"Der Schlüssel muss 13 ASCII-Zeichen lang sein.",
"Der Schlüssel muss 26 HEX-Zeichen lang sein.",
"Der Pre-Shared Key ist ungültig.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
