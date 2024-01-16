var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Dynamic DNS", 
"Dynamic DNS Settings",
"DDNS Enable",
"Server Address",
"Host Name",
"User Name",
"Password",
"Timeout",
"hours",
"Disabled",
"Updated",
"Initializing",
"Connection Failed",
"Status",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_DDNS = 3;
var I_DDNS_SETTING = 4;
var I_DDNS_ENABLE = 5;
var I_SERVER_ADDRESS = 6;
var I_HOSTNAME = 7;
var I_UID = 8;
var I_PWD = 9;
var I_TIMEOUT = 10;
var I_HOURS = 11;
var I_STATUS_DISABLE = 12;
var I_STATUS_UPDATED = 13;
var I_STATUS_INITIALIZING = 14;
var I_STATUS_CONNECTION_FAILED = 15;
var I_STATUS = 16;

var des_item_name = new Array (
"The Dynamic DNS feature allows you to host a server (Web, FTP, Camera, \
etc...) using a domain name that you have purchased \
(www.whateveryournameis.com) from your broadband Internet Service \
Provider (ISP). Using a DDNS service, your friends can enter your host \
name to connect to your IP Camera regardless of your IP address.",
"<b>Helpful Hints..</b>\
<br><br>Dynamic DNS is useful if you have a DSL or Cable service \
provider that changes your modem IP address periodically. This will \
allow you to assign a website domain name to your camera instead of \
connecting through an IP address.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Select Dynamic DNS Server",
""
);

var O_SELECT_DDNS_SERVER = 0;

var pop_msg = new Array (
"There was a problem with the request.",
"The format of Host Name is invalid.",
"The format of User Name is invalid.",
"The format of Password is invalid.",
"The Timeout range is from 24 to 65535 hours.",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_HOSTNAME = 1;
var PMSG_INVALID_UID = 2;
var PMSG_INVALID_PWD = 3;
var PMSG_INVALID_TIMEOUT_RANGE = 4;

