var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"FTP", 
"FTP Server - Video Clip",
"Host Name",
"Port",
"(Default is 21)",
"User Name",
"Password",
"Path",
"Passive Mode",
"Yes",
"No",
"Test FTP Server - Video Clip",
"Test",
"FTP Server - Snapshot",
"Test FTP Server - Snapshot",
"Interval",
"Seconds (Range : 10 to 86400 seconds)",
"Seconds (Range : 30 to 86400 seconds)",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_FTP_TITLE = 3;
var I_FTP_SERVER = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_UID = 8;
var I_PWD = 9;
var I_PATH = 10;
var I_PASSIVE_MODE = 11;
var I_YES = 12;
var I_NO = 13;
var I_TEST_FTP_SERVER = 14;
var I_TEST = 15;
var I_FTP_SERVER_SNAPSHOT = 16;
var I_TEST_FTP_SERVER_SNAPSHOT = 17;
var I_INTERVAL = 18;
var I_INTERVAL_SNAPSHOT_DES = 19;
var I_INTERVAL_VIDEOCLIP_DES = 20;

var des_item_name = new Array (
"In this section, you can configure the camera to send images to an FTP server.",
"<b>Helpful Hints..</b>\
<br><br><b>Host Name</b>:\
<br>This is the IP address of the FTP server that you will be connecting to.\
<br><br><b>Port</b>: \
<br>The default port is 21. \
<br><br><b>User Name</b>: \
<br>The user name required for accessing the external FTP server. \
<br><br><b>Password</b>: \
<br>The password of the external FTP server. \
<br><br><b>Passive mode</b> - Enabling passive mode will allow access to \
an external FTP server if your camera is behind a router protected by a firewall.\
<br><br><b>Test FTP server</b>\
<br>An image file will be sent to the FTP server after you click <b>Test</b>.",
"A JPEG file will be sent to the above FTP server for testing. \
(File name: test_date_time.jpg)",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"There was a problem with the request.",
"The format of Port is invalid.",
"Test FTP success",
"Test FTP failure",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_FTP_TEST_SUCCESS = 2;
var PMSG_FTP_TEST_FAILED = 3;
