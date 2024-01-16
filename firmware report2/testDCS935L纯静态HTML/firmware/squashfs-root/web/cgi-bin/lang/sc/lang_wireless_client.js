var languageNum = new Array("en","sc","tc");
var item_name = new Array("保存设置", "不保存设置", "保存",
"无线设置", 
"无线设置",
"频段",
"2.4 GHz",
"5 GHz",
"SSID",
"站点搜索",
"信道",
"连接模式",
"Infrastructure",
"Ad-Hoc",
"安全模式",
"无",
"WEP",
"WPA-PSK",
"WPA2-PSK",
"认证",
"打开系统",
"共享密钥",
"加密模式",
"密钥格式",
"默认密钥",
"密钥 1",
"密钥 2",
"密钥 3",
"密钥 4",
"密码类型",
"TKIP",
"AES",
"预共享密钥",
"(8-63个ASCII或64个十六进制字符)",
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
"在此章节中，您可以设定和配置摄像机的无线设置。",
"<b>帮助提示..</b>\
<br><br>您可以在摄像机上启用无线设置，然后输入<b>SSID</b>(您的无线网络唯一的名称)进\
入无线网络，或是点击 <b>站点搜索</b> 按钮来选择一个可用的无线网络。 然后您可以选择一个\
信道。 当无线网络出现重叠干扰时，您可以改变信道，选择接入性能最佳的无线网络。\
<br><br>有两种连接模式。<b>Infrastructure</b>是采用接入点作为所有无线设备传输点的无\
线连接方式。<b>Ad-Hoc</b>是无需接入点，直接连接计算机和DCS-935L的无线连接\
方式。<br><br>安全性方面有三种无线加密选项，<b>无</b>、<b>WEP</b>和<b>WPA-PSK / WPA2-PSK</b>。\
选择与您的无线设备/路由器相同的加密方式。 如果您选择了<b>WPA-PSK</b>或<b>WPA2-PSK</b>\
设置，您可能需要输入正确的<b>预共享密钥</b>，以便能接入无线网络。",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"64位",
"128位",
"HEX",
"ASCII",
"密钥 1",
"密钥 2",
"密钥 3",
"密钥 4",
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
"請求失敗",
"密钥的格式必须为5个ASCII字符。",
"密钥的格式必须为10个十六进制字符。",
"密钥的格式必须为13个ASCII字符。",
"密钥的格式必须为26个十六进制字符。",
"预共享密钥格式无效。",
""
);

var PMSG_REQUEST_FAILED = 0;
var PMSG_INVALID_5_ASCII_CHAR = 1;
var PMSG_INVALID_10_HEX_CHAR = 2;
var PMSG_INVALID_13_ASCII_CHAR = 3;
var PMSG_INVALID_26_HEX_CHAR = 4;
var PMSG_INVALID_PRESHARED_KEY = 5;
