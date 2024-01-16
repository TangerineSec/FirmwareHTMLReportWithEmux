var languageNum = new Array("en","sc","tc");
var item_name = new Array("Einstellungen speichern", "Einstellungen nicht speichern", "Speichern",
"Bild-SETUP", 
"Live Video",
"BILDEINSTELLUNGEN",
"Helligkeit",
"Sättigung",
"Kontrast",
"Farbton",
"Schärfe",
"S/W",
"Spiegel",
"Bild umdrehen",
"Lichtfrequenz",
"Standard wiederherstellen",
"Verarbeitung",
""
);

var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_IMAGE_SETTING = 3;
var I_LIVE_VIDEO = 4;
var I_IMAGE_SETTING_TITLE = 5;
var I_BRIGHTNESS = 6;
var I_SATURATION = 7;
var I_CONTRAST = 8;
var I_HUE = 9;
var I_SHARPNESS = 10;
var I_BW = 11;
var	I_MIRROR = 12;
var I_FLIP = 13;
var I_FREQUENCY = 14;
var I_RESET_TO_DEFAULT = 15;
var I_PROCESSING = 16;

var des_item_name = new Array (
"Ihre an den Bildeinstellungen vorgenommenen Änderungen werden sofort wirksam. Die Ergebnisse können im Fenster 'Live Video' unten angezeigt und begutachtet werden.",
"<b>Nützliche Hinweise..</b><br><br> Die Parameter Ihrer Bilder können für Helligkeit, Sättigung, Kontrast und Farbton von 0 bis 100 feineingestellt werden.\
<br><br><b>Brightness</b><br>(Helligkeit) Wird in bestimmten Situationen zur Gegenlichtkompensation verwendet.\
<br><br><b>Saturation</b><br> (Sättigung) Steuert die Stärke der Farbe von schwarz und weiß bis zu kräftigen Farben.\
<br><br><b>Contrast</b><br> (Kontrast) Kann zur Steuerung der Farbkontraste zwischen Objekten Ihren Wünschen entsprechend eingestellt werden und zur Verbesserung der Bildqualität bei grauen Lichtverhältnissen beitragen.\
<br><br><b>Hue</b><br> (Farbton) Steuert unterschiedliche Farbtöne, die für das menschliche Auge stimulierend wirken.\
<br><br><b>Sharpness</b><br> (Bildschärfe) Wird zum Einstellen der Bildschärfe verwendet.\
<br><br><b>B/W</b><br> (S/W) Sie können den Schwarz/Weiß-Modus für Ihre Kamera aktivieren oder deaktivieren.\
<br><br><b>Mirror</b><br> (Spiegeln) Wählen Sie diese Funktion, wenn die Bilder spiegelverkehrt angezeigt werden sollen.\
<br><br><b>Flip</b><br> (Bild umdrehen) Wählen Sie diese Funktion, wenn Ihre Kamera an der Wand umgedreht installiert ist.\
<br><br><b>Frequency</b><br> (Frequenz) Sie müssen möglicherweise zwischen einer Frequenz von \'Off\', \'50\' oder \'60\' Hz (je nach Land) wählen.<br><br>",
""
);

var D_TITLE_INFO = 0;
var D_HELP_INFO = 1;

var option_content = new Array (
"Off",
"50Hz",
"60Hz",
""
);

var O_FREQUENCY_AUTO = 0;
var O_FREQUENCY_50 = 1;
var O_FREQUENCY_60 = 2;

var pop_msg = new Array (
"Bei der Anfrage ist ein Problem aufgetreten.",
""
);

var PMSG_REQUEST_FAILED = 0;
