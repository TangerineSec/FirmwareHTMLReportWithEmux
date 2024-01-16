var languageNum = new Array("en","sc","tc");
var item_name = new Array("SUPPORT-MENÜ", "Admin", "System",
"Firmware-Upgrade",
""
);
var I_SUPPORT_MENU = 0;
var I_ADMIN = 1;
var I_SYSTEM = 2;
var I_FWUPGRADE = 3;

var des_item_name = new Array (
"Sie können diese Seite zum Einrichten beider Admin-Kennwort- und Benutzerkennwortkonten verwenden.<br><br>",
"<b>Camera name</b> (Kameraname) - Eindeutiger Name für Ihre Kamera.<br><br>",
"<b>LED Control</b> (LED-Steuerung) - Wählen Sie 'Normal', um die LED auf der Vorderseite des Geräts zu aktivieren Wählen Sie 'Aus' (Off), um die LED-Anzeige zu deaktivieren.<br><br>",
"<b>User Access Control</b> (Benutzerzugriffskontrolle) - Bei Aktivierung dieser Option können andere Benutzer auf Ihre Kamera zugreifen.<br><br>",
"<b>Snapshot URL Authentication</b> (URL-Authentifizierung für Momentaufnahmen) - \
Wenn Sie diese Option aktivieren, müssen Sie den Benutzernamen und das Kennwort zum Zugriff auf \
http://IP Camera IP address/image/jpeg.cgi eingeben, um ein Standbild zu erhalten.<br><br>",
"<b>OSD Time</b> (OSD-Zeit) - Aktivieren Sie diese Option, um das On-Screen Display (OSD) zu ermöglichen.<br><br>",
"<b>User name</b> (Benutzername) - Richten Sie einen neuen Benutzer für den Zugriff auf das Videobild ein. Bis zu maximal \
8 Benutzerkonten können der Benutzerliste hinzugefügt werden. Hier können Sie darüber hinaus auch Benutzerkonten ändern und löschen.",
"<b>Save To Local Hard Drive</b> (Auf der lokalen Festplatte speichern) - Sobald Sie die Einstellungen für Ihre Kamera vorgenommen haben, \
können Sie diese auf Ihrer Festplatte speichern, um in Zukunft bei Bedarf darauf zurückgreifen zu können.<br><br>",
"<b>Load From Local Hard Drive</b> (Von der lokalen Festplatte laden) - Lädt eine vorher gespeicherten Datei und stellt die Konfigurationseinstellungen auf Ihrer Kamera wieder her.\
<br><br>",
"<b>Restore To Factory Default</b> (Auf Werkseinstellungen zurücksetzen) - \
Diese Option stellt die standardmäßigen Werkseinstellungen für Ihre Kamera wieder her. Damit werden alle vorher vorgenommenen \
Konfigurationseinstellungen gelöscht.<br><br>",
"<b>Reboot The Device</b> (Gerät neu starten) - Mithilfe dieser Option wird ein Neustart der Kamera durchgeführt.",
"<b>Update firmware</b> (Firmware aktualisieren) - Diese Option bietet dem Benutzer die Möglichkeit, die Firmware über den Browser \
zu aktualisieren. Klicken Sie auf<b>Durchsuchen</b>, um die Datei zu finden, die die neue Firmware enthält, und klicken Sie dann auf  \
<b>Hochladen</b>, um die neue Firmware auf der Kamera zu installieren.",
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
