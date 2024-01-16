var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Wireless Setup", 
"wireless settings",
"Band",
"2.4 GHz",
"5 GHz",
"SSID",
"Site survey",
"Channel",
"Connection Mode",
"Infrastructure",
"Ad-Hoc",
"Security Mode",
"None",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"Authentication",
"Open System",
"Shared Key",
"Encryption Mode",
"Key Format",
"Default Key",
"Key1",
"Key2",
"Key3",
"Key4",
"Cipher Type",
"TKIP",
"AES",
"Pre-Shared Key",
"(8-63 ASCII or 64 HEX characters)",
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
"In this section, you can configure the wireless settings of your camera.",
"<b>Helpful Hints..</b>\
<br><br>You may enable the wireless setting on your camera and connect \
to a wireless network by entering the <b>SSID</b> (unique name of your \
wireless network), or click the <b>Site Survey</b> \
button to select an available wireless network. Then you may choose a \
channel number. When there is interference from the wireless networks \
that overlap with one another, you may change the channel to obtain \
maximum performance from your connection.\
<br><br>There are two connection modes. <b>Infrastructure</b> is a \
wireless connection using an access point as the transmission point of \
all wireless devices. <b>Ad-Hoc</b> is a wireless connection used \
without an access point, which connects the PC directly to the DCS-935L. \
<br><br>For security there are three choices of wireless encryption, \
<b>None</b>, <b>WEP</b>, and <b>WPA-PSK / WPA2-PSK</b>. Select the same \
encryption method that is being used by your wireless device/ router. If \
you have selected <b>WPA-PSK or WPA2-PSK</b> \
setting, you may need to enter the appropriate <b>Pre-Shared Key</b> \
in order to connect to the wireless network.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64Bits",
"128Bits",
"HEX",
"ASCII",
"Key1",
"Key2",
"Key3",
"Key4",
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
"There was a problem with the request.",
"The format of Key must be 5 ASCII characters",
"The format of Key must be 10 HEX characters",
"The format of Key must be 13 ASCII characters",
"The format of Key must be 26 HEX characters",
"The format of Pre-Shared Key is invalid.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
