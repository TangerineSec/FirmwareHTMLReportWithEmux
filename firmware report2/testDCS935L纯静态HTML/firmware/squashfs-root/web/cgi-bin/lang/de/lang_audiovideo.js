var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Audio und Video", 
"VIDEOPROFIL",
"Verschlüsselungstyp",
"Auflösung",
"Bitrate",
"Bildfrequenz",
"URL RTSP",
"H.264",
"JPEG-Qualität",
"MJPEG",
"Audio-Mechanismus",
"Mikrofon aktivieren",
"Lautstärke",
"Mikrofon aktivieren",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_AUDIO_AND_VIDEO = 3;
var I_VIDEO_PROFILE = 4;
var I_ENCODE_TYPE = 5;
var I_RESOLUTION = 6;
var I_BITRATE = 7;
var I_FRAMERATE = 8;
var I_RTSP_URL = 9;
var I_H264 = 10;
var	I_JPEG_QUALITY = 11;
var I_MJPEG = 12;
var I_AUDIO_SETUP = 13;
var I_MICROPHONE_ENABLE = 14;
var I_VOLUME = 15;
var I_SPEAKER_ENABLE = 16;

var des_item_name = new Array (
"Hier können Sie die Videoqualität, Auflösung und Bildfrequenz der Kamera einstellen.",
"<b>Nützliche Hinweise..</b> <br><br><b>Resolution</b><br> (Auflösung) Die Optionen hängen vom verwendeten Anzeigesystem ab.\
<br><br><b>Bit Rate</b><br>(Bitrate) (Bits pro Sekunde) - Wählen Sie eine feste Bandbreite für den Betrieb Ihrer Kamera. Ein höherer Wert bedeutet eine höhere Bildqualität, benötigt aber auch zur Übertragung eine höhere Netzwerkbandbreite.\
<br><br><b>Frame Rate</b><br> (Bildfrequenz/Bilder pro Sekunden) - Je höher die Bildfrequenzrate, umso laufruhiger erscheinen Ihre Videoaufnahmen. Beachten Sie, dass eine höhere Bildfrequenzrate ebenfalls mehr Bandbreite nutzt.\
<br><br><b>Jpeg-Qualität</b><br> - Standardwert ist 'Mittel'. \
<br><br><b>Microphone</b><br> (Mikrofon) - Aktivieren Sie diese Funktion, um vom Mikrofon der Kamera erfasste Audiosignale zu hören.",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"3 Mbps",
"2.5 Mbps",
"2 Mbps",
"1.5 Mbps",
"1 Mbps",
"768 Kbps",
"512 Kbps",
"384 Kbps",
"256 Kbps",
"128 Kbps",
"64 Kbps",
"Sehr niedrig",
"Niedrig",
"Mittel",
"Hoch",
"Sehr hoch",
""
);

var O_BITRATE_3M = 0;
var O_BITRATE_2dot5M = 1;
var O_BITRATE_2M = 2;
var O_BITRATE_1dot5M = 3;
var O_BITRATE_1M = 4;
var O_BITRATE_768K = 5;
var O_BITRATE_512K = 6;
var O_BITRATE_384K = 7;
var O_BITRATE_256K = 8;
var O_BITRATE_128K = 9;
var O_BITRATE_64K = 10;
var O_QUALITY_VERY_LOW = 11;
var O_QUALITY_LOW = 12;
var O_QUALITY_MEDIUM = 13;
var O_QUALITY_HIGH = 14;
var O_QUALITY_VERY_HIGH = 15;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
""
);

var PMSG_REQUEST_FAILED = 0;
