var languageNum = new Array("en","sc","tc");
var item_name = new Array("SUPPORT MENU", "Wizard", "Network Setup",
"Wireless Setup",
"Extender Setup",
"Dynamic DNS",
"IP Filter",
"Image Setup",
"Audio and Video",
"Privacy Mask",
"Motion Detection",
"Sound Detection",
"Mail",
"FTP",
"Snapshot",
"Video Clip",
"Time and Date",
"Day/Night Mode",
"SD Management",
""
);
var I_SUPPORT_MENU = 0;
var I_WIZARD = 1;
var I_NETWORK_SETUP = 2;
var I_WIRELESS_SETUP = 3;
var I_EXTENDER_SETUP = 4;
var I_DDNS = 5;
var I_IPFILTER = 6;
var I_IMAGE_SETUP = 7;
var I_AUDIO_VIDEO_SETUP = 8;
var I_PRIVACY_MASK = 9;
var I_MOTION_DETECTION = 10;
var I_SOUND_DETECTION = 11;
var I_MAIL = 12;
var I_FTP = 13;
var I_SNAPSHOT = 14;
var I_VIDEO_CLIP = 15;
var I_TIME_AND_DATE = 16;
var I_DAY_NIGHT_MODE = 17;
var I_SD_MANAGEMENT = 18;

var des_item_name = new Array (
"<b>Internet Connection Setup Wizard</b> - This page is used to set up the DCS-935L using the Wizard to walk you \
through setting up the camera for your network. This can be done manually using the static IP, automatically \
using the DHCP client (Dynamic Host Configuration Protocol is a networking protocol that will allow leasing \
of an IP address by the client from a server for a specified amount of time.) or PPPoE.<br><br>\
<b>PPPoE</b> -  (Point-to-Point Protocol over Ethernet) If you use the DCS-935L to connect directly to the \
Internet you will need to put in the user name and password that was given to you when you set up your account with \
the Internet Service Provider in these fields.<br><br>\
<b>DDNS</b> - (Dynamic Domain Name Server) If you have set up the DDNS service you will need to put in your \
user name and password in these fields if your DCS-935L is using a public IP Address. This will allow the DDNS \
to track your IP Address even if it changes.",
"<b>LAN Settings</b> -  This can be done manually by entering a fixed IP address or automatically using the DHCP Client \
(Dynamic Host Configuration Protocol is a networking protocol that will allow leasing of an IP address by the client from a server for a \
specified amount of time) or PPPoE.<br><br>\
<b>PPPoE(Point-to-Point Protocol over Ethernet)</b> - If you use the DCS-935L to connect directly to the Internet, you will need to enter the \
valid user name and password that are provided by your Internet Service Provider.<br><br>\
<b>DNS</b> (Domain Name System) server is an Internet service that translates domain names (i.e. www.dlink.com) into IP addresses \
(i.e. 192.168.0.20). The DNS IP address can be received from your ISP.<br><br>\
<b>Port Settings</b> - Most ISPs do not open port 80 (a DCS-935L default video transfer port) for their residential customers, the DCS-935L \
has the ability to use a different port by enabling the second http port for its video streaming. Any unused ports can be used such as port 800, \
801, etc. Remember that if the DCS-935L is behind a router, you will need to forward that port to the DCS-935L\'s IP Address. When accessing the \
camera, you would need to type the camera\'s IP Address followed by the colon character and the port number (for example http://192.168.0.20:800).<br><br>\
<b>UPnP Settings</b> - UPnP is short for Universal Plug and Play, which is a networking architecture that provides compatibility among \
networking equipment, software, and peripherals. The DCS-935L is an UPnP enabled Internet camera that will work with other UPnP devices. \
This function is enabled by default. If you do not want to use this feature, you may disable it by selecting <b>Disabled</b>.<br><br>\
<b>UPnP port forwarding</b> - UPnP port forwarding will allow an IP camera to communicate with an UPnP compatible network router for simplified \
local network device access as well as remote access via the Internet. In order to allow UPnP port forwarding you will first need to ensure that \
UPnP is supported and enabled on your router. Once this has been confirmed you will then need to enable UPnP port forwarding on your IP camera. \
If the default ports used are free for port forwarding, you can use those. Otherwise, you will need to change the HTTP ports that are in use to \
allow for proper UPnP port forwarding. After the proper network ports have been assigned to your IP camera, you should then be able to access your \
IP camera over the Internet. <br><br>\
<b>Bonjour</b> - If enabled, the camera is accessible through a Bonjour-enabled browser, such as the Apple Mac Safari browser.<br><br>\
<b>Bonjour Name</b> - Enter the name of your camera here. This is the name the Bonjour service will display.",
"<b>SSID</b> - The unique identifier of a wireless network.<br><br>\
<b>Channel</b> - Any channels can be selected for your network. You may always change the channel if there is a lot of interference on a certain channel.<br><br>\
<b>Connection mode</b>  - <b>Infrastructure</b> connection is a wireless connection using an access point as a transmission point for all wireless clients. <b>Ad-Hoc</b> connection is a wireless connection used without an access point while the camera is directly connected to the PC.<br><br>\
<b>Site Survey</b> - A pop-up window will be displayed to allow you to select a wireless network for the connection.<br><br>\
<b>Wireless Security Mode -</b><br>\
<b>None</b> - No encryption setting.<br>\
<b>WEP Encryption</b> - Wired Equivalent Privacy, 64-bit and 128-bit in HEX (0 - 9, a - f) or ASCII (text) format.\
<br>64 bit  -> 10 in HEX or 5 in ASCII\
<br>128 bit -> 26 in HEX and 13 in ASCII\
<br><b>WPA-PSK / WPA2-PSK</b> - Wireless Protected Access with <b>Pre-shared Key</b>, the key field needs to be filled out. TKIP (Temporal Key Integrity Protocol) and AES are supported.",
"<b>Extended Wireless Network settings</b> - In this section, you can configure the wireless extender feature of your camera, which allows \
you to extend the range of an existing wireless network. You can choose to keep the same wireless network name for the extended network, \
or you can create a new one.<br><br><b>Wireless Security Mode -</b><br>\
<b>None</b> - No encryption setting.\
<br><b>WEP Encryption</b> - Wired Equivalent Privacy, 64-bit and 128-bit in HEX (0 - 9, a - f) or ASCII (text) format.\
<br>64 bit  -> 10 in HEX or 5 in ASCII\
<br>128 bit -> 26 in HEX and 13 in ASCII\
<br><b>WPA-PSK / WPA2-PSK</b> - Wireless Protected Access with <b>Pre-shared Key</b>, the key field needs to be filled out. TKIP (Temporal Key Integrity Protocol) and AES are supported.",
"<b>Dynamic DNS</b>(Dynamic Domain Name Server) - It automatically synchronizes the public IP address of the modem. Every user can connect to your camera using the <b>Host Name</b> you have purchased from your ISP. The user name and password are required when using the DDNS service.<br><br>\
<b>Server Address</b> - The address of your DDNS. You may enter the address manually or select a DDNS server from the drop-down menu.<br><br>\
<b>Host Name</b> - The domain name chosen from the DDNS service.<br><br>\
<b>User Name</b> - The account name of the DDNS service.<br><br>\
<b>Password</b> - The password for the account of DDNS service.<br><br>\
<b>Timeout</b> - Time interval for DDNS to re-initiate the connection.",
"<b>IP Filter</b> - In order to enable your camera IP filters, you must select the checkbox of 'Access List Filtering'. Then, change your detail settings by this page.\
<br><br><b>Filter Type</b> - You can select Allow or Deny to those IP addresses specified at Filter List.\
<br><br><b>Filter List</b> - IP addresses specified.\
<br><br><b>Single</b> - Specify one single IP address.\
<br><br><b>Subnet</b> - Specify a subnet of IP addresses.\
<br><br><b>Range</b> - Specify a range of IP addresses.\
<br><br><b>Administrator IP Address</b> - You can enable and set an IP address as Administrator IP Address to always allow it accessible to this camera.",
"<b>Brightness</b> - It is used to compensate for backlit scenes.\
<br><br><b>Saturation</b> - It controls the strength of color from black and white to bold colors.\
<br><br><b>Contrast</b> - Adjustable to control the contrast of colors between the object. It helps improve the image under a dull grey sky.\
<br><br><b>Hue</b> - It controls different degree of a color stimulating to human eyes.\
<br><br><b>Sharpness</b> - It is used to adjust image sharpness.\
<br><br><b>B/W</b> - Select to enable or disable black-and-white mode for your camera.\
<br><br><b>Mirror</b> - Select this feature to obtain mirror image.\
<br><br><b>Flip</b> - Select this feature when your camera is installed up-side down on the ceiling.\
<br><br><b>Frequency</b> - You may need to choose Off, 50 or 60 Hz frequency (depends on country).",
"<b>Video Profile</b> - you can separately set up different image settings (such as image quality and frame rate) for the four video types of the camera: H.264 and JPEG.\
<br><br><b>Resolution</b> - There are several options for dimension.\
<br><br><b>FPS</b> (Frames per Second) - The maximum number of frames that is displayed in 1 second. 30fps is the highest video quality for this camera. In general, any frame rate above 15 fps is imperceptible to the human eyes.\
<br><br><b>bps</b> (Bits per Second) - Select a fixed bandwidth for your camera operation. This option allows the user to select custom frame rate suitable for the bandwidth and the storage space.\
<br><br><b>Quality</b> - Set the quality for image. When Excellent is selected, the best image quality is achieved.\
<br><br><b>AUDIO SETUP</b> - You can use the microphone on/off or adjust the volume.\
<br><br><b>Enable Microphone</b> - When selecting Enable, you can monitor the audio from the IP Camera’s microphone.\
<br><br><b>Microphone Volume</b> - You can adjust the microphone volume using the volume level setting.",
"<b>Privacy Mask</b> - Click the attached box to activate this function. Now use your mouse to draw a rectangle covering the area you want hidden.",
"<b>Motion Detection</b> - When enabled, motion detection is turned on. When disabled, motion detection is turned off.",
"<b>Sound Detection</b> - When enabled, sound detection is turned on. When disabled, sound detection is turned off.",
"<b>SMTP Server Address</b> - This is the domain name or IP address of your external email server.\
<br><br><b>Sender E-mail Address</b> - This is the email address of the person sending the camera images.\
<br><br><b>Receiver E-mail Address</b> - This is the email address of recipient for the SMTP server.\
<br><br><b>User Name</b> - The user name of the email account.\
<br><br><b>Password</b> - The password of the email account.\
<br><br><b>Interval</b> - The time interval between each Snapshot / Video Clip.\
<br><br><b>Use SSL-TLS/STARTTLS</b> - Select SSL-TLS or STARTTLS if SMTP server requires TLS authentication.\
<br><br><b>Test email account</b> - This will send a snapshot to the email account that you have configured. If you have configured the SMTP account correctly you will be able to send a test file to the email account of the recipient.",
"<b>Host Name</b> - This is the IP address of the FTP server that you will be connecting to.\
<br><br><b>Port</b> - Default is port 21.\
<br><br><b>User Name</b> - The user name required to access the external FTP server.\
<br><br><b>Password</b> - The password required to access the external FTP server.\
<br><br><b>Path</b> - The destination directory or folder on the external FTP server.\
<br><br><b>Interval</b> - The time interval between each Snapshot / Video Clip.\
<br><br><b>Passive mode</b> - Enabling passive mode will allow access to an external FTP server if your camera is behind a router protected by firewall.\
<br><br><b>Test FTP server</b> - An image file will be sent to the FTP server after you click Test. ",
"<b>Snapshot</b> - When select the option, you can send one or 6 still images from this unit to an E-mail or to a FTP server.\
<br><br><b>Trigger by</b>\
<br><b>Motion</b> - Begin snapshot after a motion is detected.\
<br><b>Schedule</b> - Snapshot in a specified time.\
<br><b>Always</b> - Continuous Snapshot.\
<br><b>Sound</b> - Begin snapshot after sound is detected.\
<br><br><b>Snapshot Type</b> - Single snapshot or 6 snapshots here.\
<br><br><b>Target</b> - You can select the target as FTP or E-mail for the snapshot.",
"<b>Video Clip</b> - When select the option, you can send a video clip from this unit to an E-mail or to a FTP server.\
<br><br><b>Trigger by</b>\
<br><b>Motion</b> - Begin video clip after a motion is detected.\
<br><b>Schedule</b> - Video clip in a specified time.\
<br><b>Always</b> - Continuous video clip.\
<br><b>Sound</b> - Begin video clip after sound is detected.\
<br><br><b>Video Clip</b> - You can select the desired video profile for recording the video clips and set the Pre-event recording and Maximum duration here.\
<br><br><b>Pre-event recording</b> - Specify how much seconds of video will be recorded, before the video clip is taken.\
<br><br><b>Maximum duration</b> - Specify how much seconds of video clip.\
<br><br><b>Target</b> - You can select the target as FTP or E-mail for the video clip.",
"<b>Time Zone</b> - The geographical zone for the camera local time setting.\
<br><br><b>Enable Daylight Saving</b> - Turns on Daylight Saving mode that will adjust the time depending on the daylight saving time offset and dates.\
<br><br><b>Auto Daylight Saving</b> - When you select it, the clock is automatically adjusted according to the daylight saving time of the selected time zone.\
<br><br><b>Set DST Manually</b> - Manually adjust and set the Daylight Saving rules.\
<br><br><b>Offset</b> - Set the amount of time to add or remove from the time when Daylight Saving is enabled.\
<br><br><b>Daylight Saving Dates</b> - Set the dates and time that Daylight Saving begins and ends.\
<br><br><b>Synchronize with NTP Server</b> - With the option selected, the camera will synchronize the time settings with the NTP server over the Internet whenever the camera starts up. If the NTP server cannot be reached, no time settings will be applied.\
<br><br><b>NTP Server</b> - The IP address or domain name of the NTP Server.\
<br><br><b>Set Date and Time Manually</b> - Manually adjust and set the date and time.\
<br><br><b>Copy Your Computer's Time Settings</b> - To synchronize the date and time of your camera with your computer.",
"<b>Auto</b> - Camera automatically switches between Day and Night mode. The camera normally works in Day mode. It automatically changes to Night mode in darker lighting.\
<br><br><b>Manual</b> - User can manually control the camera to work in Day or Night mode on the live video view page.\
<br><br><b>Always Day Mode</b> - The camera always works in the Day mode.\
<br><br><b>Always Night Mode</b> - The camera always works in the Night mode.\
<br><br><b>Day Mode Schedule</b> - The camera works in Day mode based on the day and time configured in the schedule. The camera changes to Night mode during all other times.",
"<b>SD Card</b> - This can indicate the current path of SD Card.\
<br><br><b>SD Status</b> - This can indicate the current SD Card status (whether it is inserted or detected).\
<br><br><b>Files per Page</b> - The number of files per page.\
<br><br><b>Refresh</b> - The option is used to reloads the contents of Webpage with the most current data.\
<br><br><b>Pages</b> - You can select which page to display here.\
<br><br><b>Delete</b> - The Delete button is used to delete the files or folders which are selected.\
<br><br><b>Name</b> - This shows all save file or folder name.\
<br><br><b>Size</b> - This shows the file size.\
<br><br><b>Format SD Card</b> - This option is used to delete all save data on the SD Card.\
<br><br><b>Total</b> - The total capability of SD Card.\
<br><br><b>Used</b> - The used capability of SD Card.\
<br><br><b>Free</b> - The free capability of SD Card.",
""
);

var D_WIZARD = 0;
var D_NETWORK_SETUP = 1;
var D_WIRELESS_SETUP = 2;
var D_EXTENDER_SETUP = 3;
var D_DDNS = 4;
var D_IPFILTER = 5;
var D_IMAGE_SETUP = 6;
var D_AUDIO_VIDEO_SETUP = 7;
var D_PRIVACY_MASK = 8;
var D_MOTION_DETECTION = 9;
var D_SOUND_DETECTION = 10;
var D_MAIL = 11;
var D_FTP = 12;
var D_SNAPSHOT = 13;
var D_VIDEO_CLIP = 14;
var D_TIME_AND_DATE = 15;
var D_DAY_NIGHT_MODE = 16;
var D_SD_MANAGEMENT = 17;