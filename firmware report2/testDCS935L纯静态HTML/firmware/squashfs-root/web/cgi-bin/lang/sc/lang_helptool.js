var languageNum = new Array("en","sc","tc");
var item_name = new Array("支持菜单", "管理员", "系统",
"固件升级",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"您可以使用该页面来配置管理员密码和用户账户。<br><br>",
"<b>摄像机名</b> - 您的摄像机的唯一名称。<br><br>",
"<b>LED控制</b> - 选择<b>正常</b>启用LED。选择<b>关闭</b>禁用LED。<br><br>",
"<b>用户访问控制</b> - 启用该选项以允许其它用户访问您的摄像机<br><br>",
"<b>抓拍URL验证</b> - 当启用该选项时，您必须输入用户名和密码来访问http://您的摄影机的 IP 位址/image/jpeg.cgi，以获取静态图像。<br><br>",
"<b>OSD时间</b> - 启用此选项显示OSD时间。<br><br>",
"<b>用户名</b> - 创建新用户来访问视频图像。 用户列表中可以添加最多8个用户账户，您可以修改和删除这些用户账户。",
"<b>保存到本地硬盘</b> - 此会提示保存摄像机配置文件到您的计算机，以便将来恢复。<br><br>",
"<b>从本地硬盘加载</b> - 此会查找预存的文件并将预定义的配置或设置恢复到您的摄像机。<br><br>",
"<b>恢复到出厂默认设置</b> - 此选项会复位摄像机并为您的摄像机恢复出厂默认设置。 此会移除之前所做的所有配置设置。<br><br>",
"<b>重启设备</b> - 该选项会重新启动摄像机。",
"<b>更新固件</b> - 该选项允许用户通过浏览器升级固件。 单击浏览来查找包含新固件的文件并单击 <b>上传</b> 将新固件应用到摄像机。",
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
