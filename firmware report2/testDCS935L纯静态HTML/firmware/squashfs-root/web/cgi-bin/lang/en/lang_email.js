var languageNum = new Array("en","sc","tc");
var item_name = new Array(" Save Settings ", " Don't Save Settings ", "Saving",
"Mail", 
"E-mail Account - Video Clip",
"SMTP Server Address",
"SMTP Server Port",
"(Default is 25)",
"Sender E-mail Address",
"Receiver E-mail Address",
"User Name",
"Password",
"Use SSL-TLS/STARTTLS",
"No",
"SSL-TLS",
"STARTTLS",
"Test E-mail Account - Video Clip",
"Test",
"E-mail Account - Snapshot",
"Test E-mail Account - Snapshot",
"Interval",
"Seconds (Range : 30 to 86400 seconds)",
"Seconds (Range : 60 to 86400 seconds)",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SMTP_TITLE = 3;
var I_EMAIL_ACCOUNT = 4;
var I_HOSTNAME = 5;
var I_PORT = 6;
var I_DEFAULT_PORT = 7;
var I_SENDER_ADDRESS = 8;
var I_RECEIVER_ADDRESS = 9;
var I_UID = 10;
var	I_PWD = 11;
var I_AUTH_ENABLE = 12;
var I_NO = 13;
var I_SSLTLS = 14;
var I_STARTTLS = 15;
var I_TEST_EMAIL_ACCOUNT = 16;
var I_TEST = 17;
var I_EMAIL_ACCOUNT_SNAPSHOT = 18;
var I_TEST_EMAIL_ACCOUNT_SNAPSHOT = 19;
var I_INTERVAL = 20;
var I_INTERVAL_SNAPSHOT_DES = 21;
var I_INTERVAL_VIDEOCLIP_DES = 22;

var des_item_name = new Array (
"This section allows you to setup and configure the email notification \
settings for your camera. If your details change or you are experiencing \
issues with alert notifications, you may need to modify these settings.",
"<b>Helpful Hints..</b>\
<br><br><b>SMTP Server Address</b>:\
<br>This is the domain name or IP address of your external email server.\
<br><br><b>Sender E-mail Address</b>:\
<br>This is the email address of the person sending the camera snapshots.\
<br><br><b>Receiver E-mail Address</b>:\
<br>This is the email address of recipient for the SMTP server.\
<br><br><b>User Name</b>: \
<br>The user name of your email account.\
<br><br><b>Password</b>: \
<br>The password of your email account.\
<br><br><b>Use SSL-TLS/STARTTLS</b>: \
<br>Select <b>SSL-TLS</b> or <b>STARTTLS</b> if SMTP server requires TLS authentication.",
"A test e-mail will be sent to the e-mail account listed above.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;
var D_TEST_INFO = 2;

var pop_msg = new Array (
"There was a problem with the request.",
"The format of SMTP Server Port is invalid.",
"Send a test mail success",
"Send a test mail failure",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_PORT = 1;
var PMSG_SMTP_TEST_SUCCESS = 2;
var PMSG_SMTP_TEST_FAILED = 3;
