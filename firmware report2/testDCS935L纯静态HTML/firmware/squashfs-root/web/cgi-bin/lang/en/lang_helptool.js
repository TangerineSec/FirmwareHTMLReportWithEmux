var languageNum = new Array("en","sc","tc");
var item_name = new Array("SUPPORT MENU", "Admin", "System",
"Firmware Upgrade",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"You may use this page to configure both admin password user accounts.<br><br>",
"<b>Camera name</b> - A unique name for your camera.<br><br>",
"<b>LED Control</b> - Select Normal to enable the LED. Select Off to disable the LED.<br><br>",
"<b>User Access Control</b> - Enable this option to allow other users to access your camera.<br><br>",
"<b>Snapshot URL Authentication</b> - To enable this option, you must \
enter the username and password to access http://IP Camera&#39;s IP \
address/image/jpeg.cgi for getting a still image.<br><br>",
"<b>OSD Time</b> - Enable this option to allow OSD time display.<br><br>",
"<b>User name</b> - Create new user for accessing the video image. A \
maximum if 8 user accounts can be added to the user list. You can also \
modify and delete the user accounts here.",
"<b>Save To Local Hard Drive</b> - After configuration your camera, you can save the settings to your hard drive for future restoration.<br><br>",
"<b>Load From Local Hard Drive</b> - This will load a previously saved \
file and restore the configuration settings on your camera.<br><br>",
"<b>Restore To Factory Default</b> - This option will reset the camera \
and restore the factory default settings for your camera. This will \
remove all the configuration settings that were made previously.<br><br>",
"<b>Reboot The Device</b> - This option will restart the camera.",
"<b>Update firmware</b> - The option allows the user to upgrade the \
firmware via the Browser. Click <b>Browse</b> to locate the file that \
contains the new firmware and then click <b>Upload</b> to apply the new \
firmware to the camera.",
""
);

var D_ADMIN_INFO = 0;
var D_CAM_NAME_INFO = 1;
var D_LED_CONTROL_INFO = 2;
var D_USER_ACCESS_CONTROL_INFO = 3;
var D_SNAPSHOT_URL_INFO = 4;
var D_OSD_TIME_INFO = 5;
var D_USER_NAME_INFO = 6;
var D_SAVE_TO_LOCAL_INFO = 7;
var D_LOAD_FROM_LOCAL_INFO = 8;
var D_FACTORY_RESET_INFO = 9;
var D_REBOOT_INFO = 10;
var D_FWIPGRADE_INFO = 11;
