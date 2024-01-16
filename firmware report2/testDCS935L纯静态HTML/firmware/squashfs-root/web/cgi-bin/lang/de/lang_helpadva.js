var languageNum = new Array("en","sc","tc");
var item_name = new Array("SUPPORT-MENÜ", "Assistent", "NETZWERK-SETUP",
"Wireless Setup",
"Extender Setup",
"Dynamischer DNS",
"IP-FILTER",
"Bild-SETUP",
"AUDIO UND VIDEO",
"Privatbereich-Maske",
"Bewegungsmelder",
"Sound Detection",
"E-Mail",
"FTP",
"Momentaufnahme",
"Videoclip",
"Zeit und Datum",
"Tag und Nacht",
"SD-Management",
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
"<b>Internet Connection Setup Wizard</b> (Setup-Assistent für die Internetverbindung) - \
Diese Seite dient zum Einrichten der DCS-935L mithilfe des Assistenten, der Ihnen schrittweise Anleitungen gibt, \
wie Sie die Kamera für Ihr Netzwerk einrichten können. Das kann manuell erfolgen, indem die statische IP-Adresse verwendet wird, \
automatisch mithilfe des DHCP Client (Dynamic Host Configuration Protocol (DHCP) ist ein Netzwerkprotokoll, das es ermöglicht, eine \
IP-Adresse von einem Server für eine bestimmte Zeit zu leasen) oder mithilfe von PPPoE.<br><br><b>PPPoE</b> -  (Point-to-Point Protocol \
over Ethernet) Wenn Sie die DCS-935L direkt mit dem Internet verbinden, müssen Sie in diesen Feldern den Benutzernamen und das Kennwort \
eingeben, die Ihnen beim Einrichten Ihres Kontos bei Ihrem Internetdienstanbieter gegeben wurden.<br><br><b>DDNS</b> - \
(Dynamic Domain Name Server) Wenn Sie den DDNS-Dienst eingerichtet haben, müssen Sie in diesen Feldern Ihren Benutzernamen \
und Ihr Kennwort eingeben, sofern Ihre DCS-935L eine öffentliche IP-Adresse verwendet. Das bietet dem DDNS-Dienst die Möglichkeit, \
Ihre IP-Adresse nachzuverfolgen, sogar wenn sie sich ändert.",
"<b>LAN Settings</b> (LAN-Einstellungen) - Das kann manuell erfolgen, indem die statische IP-Adresse verwendet wird, automatisch mithilfe des \
DHCP Client (Dynamic Host Configuration Protocol (DHCP) ist ein Netzwerkprotokoll, das es ermöglicht, eine IP-Adresse von einem Server für eine \
bestimmte Zeit zu leasen) oder mithilfe von PPPoE.<br><br><b>PPPoE(Point-to-Point Protocol over Ethernet)</b> - Wenn Sie die DCS-935L direkt mit \
dem Internet verbinden, müssen Sie den gültigen Benutzernamen und das Kennwort eingeben, die Ihnen von Ihrem Internetdienstanbieter gegeben \
wurden.<br><br><b>DNS</b> (Domain Name System) ist ein Internetdienst, der Domänennamen (z. B. www.dlink.com) in IP-Adressen (z. B. 192.168.0.20) \
umwandelt. Die DNS IP-Adresse können Sie von Ihrem Internetdienstanbieter bekommen.<br><br> <b>Port Settings</b> (Porteinstellungen) - \
Die meisten Internetdienstanbieter öffnen den Port 80 nicht (ein standardmäßiger DCS-935L Videoübertragungs-Port für ihre spezifischen Kunden). \
Die DCS-935L kann einen anderen Port verwenden, indem sie den zweiten Http-Port für ihr Video Streaming aktiviert. Alle ungenutzten \
Ports können verwendet werden, wie z. B. Port 800, 801, usw. Befindet sich die DCS-935L hinter einem Router, muss dieser Port an die \
IP-Adresse der DCS-935L weitergeleitet werden. Bei Zugriff auf die Kamera müssten Sie die IP-Adresse der Kamera gefolgt von der Portnummer \
(z. B: http://192.168.0.20:800) eingeben.<br><br> <b>UPnP Settings</b> (UPnP-Einstellungen) - UPnP steht als Abkürzung für Universal \
Plug and Play. Dabei handelt es sich um eine Netzwerkarchitektur, die die Kompatibilität zwischen Netzwerkgeräten, Software und \
Peripheriegeräten sicherstellt. Die DCS-935L ist eine UPnP-fähige Internetkamera, die mit anderen UPnP-Geräten verwendet werden kann. \
Diese Funktion ist standardmäßig aktiviert. Wenn Sie diese Funktion nicht verwenden möchten, wählen Sie <b>Disabled</b> (Deaktiviert).\
<br><br><b>UPnP port forwarding</b> (UPnP-Portweiterleitung) - Die UPnP-Portweiterleitung ermöglicht einer IP-Kamera, mit einem \
UPnP-kompatiblen Netzwerkrouter zu kommunizieren und so in einem vereinfachten lokalen Netz Zugriff auf das Gerät zu bekommen sowie \
auch aus der Ferne über Internet. Um eine UPnP-Portweiterleitung zu ermöglichen, müssen Sie zunächst sicherstellen, dass UPnP unterstützt \
wird und auf Ihrem Router aktiviert ist. Sobald Sie das sichergestellt haben, müssen Sie die UPnP-Portweiterleitung auf Ihrer IP-Kamera aktivieren. \
Sind die Standard-Ports frei für die Portweiterleitung, können Sie diese verwenden. Ansosnten müssen Sie die HTTP-Ports ändern, die verwendet werden, um eine korrekte UPnP-Portweiterleitung zu ermöglichen. Nachdem die entsprechenden Netzwerk-Ports Ihrer IP-Kamera zugeordnet sind, sollten Sie auf Ihre IP-Kamera über Internet zugreifen können. <br><br><b>Bonjour</b> - Wenn aktiviert, können Sie über einen Bonjour-fähigen Browser, wie z. B. den Apple Mac Safari-Browser, auf die Kamera zugreifen.<br><br><b>Bonjour Name</b> - Geben Sie hier den Namen Ihrer Kamera ein. Das ist der Name, den der Bonjour-Service anzeigen wird.",
"<b>SSID</b> - Die eindeutige Kennung für ein drahtloses Netzwerk.<br><br><b>Channel</b> (Kanal) - Es können alle Kanäle für Ihr Netz gewählt \
werden. Ein Wechseln des Kanals ist jederzeit möglich, sollte es auf einem bestimmten Kanal zu unverhältnismäßig vielen Störungen kommen.\
<br><br><b>Connection mode</b> (Verbindungsmodus) - <b>Infrastructure</b> (Infrastruktur)-Verbindung ist ein drahtloser Verbindungsmodus, \
bei dem ein Access Point als Übertragungspunkt für alle drahtlosen Clients verwendet wird. <b>Ad-Hoc</b>-Verbindung ist ein drahtloser \
Verbindungsmodus, bei dem kein Access Point verwendet wird und die Kamera direkt mit dem PC verbunden ist.<br><br><b>Site Survey</b> \
(Standortübersicht) - Es wird ein Popup-Fenster angezeigt, auf dem Sie für die Verbindung ein drahtloses Netz wählen können.<br><br> \
<b>Wireless Security Mode -  ((Drahtloser Sicherheitsmodus)</b><br><b>None</b>(Keine) - Keine Verschlüsselung.<br><b>WEP Encryption</b> - \
(WEP-Verschlüsselung/WEP (Wired Equivalent Privacy) 64-Bit und 128-Bit in HEX (0 - 9, a - f) oder ASCII (Text) Format.\
<br>64 Bit  -> 10 in HEX oder 5 in ASCII<br>128 Bit -> 26 in HEX und 13 in ASCII<br><b>WPA-PSK / WPA2-PSK</b> - Wireless Protected Access mit\
 <b>Pre-shared Key</b>; das WEP-Schlüsselfeld muss ausgefüllt werden. TKIP (Temporal Key Integrity Protocol) und AES werden unterstützt.",
"<b>Erweiterte Einstellungen für das drahtlose Netzwerk</b> - In diesem Abschnitt können Sie die drahtlose Extender-Funktion Ihrer Kamera \
konfigurieren, die es Ihnen ermöglicht, den Bereich eines bestehenden drahtlosen Netzes zu erweitern. Sie können denselben Namen des \
drahtlosen Netzes für das erweiterte Netzwerk verwenden oder einen neuen erstellen.<br><br><b>Wireless Security Mode - (Drahtloser \
Sicherheitsmodus) </b><br><b>None (Keine)</b> - Keine Verschlüsselung.\
<br><b>WEP-Verschlüsselung</b> - WEP (Wired Equivalent Privacy) 64-Bit und 128-Bit in HEX (0 - 9, a - f) oder ASCII (Text) Format.\
<br>64 Bit  -> 10 in HEX oder 5 in ASCII <br>128 Bit -> 26 in HEX und 13 in ASCII <br><b>WPA-PSK / WPA2-PSK</b> - Wireless protected Access mit \
<b>Pre-shared Key</b>;das WEP-Schlüsselfeld muss ausgefüllt werden. TKIP (Temporal Key Integrity Protocol) und AES werden unterstützt.",
"<b>Dynamic DNS</b> (Dynamic Domain Name Server) - Synchronisiert die öffentliche IP-Adresse des Modems automatisch. Jeder Benutzer \
kann unter Verwendung des <b>Host-Namens</b>, den Sie von Ihrem Internetdienstanbieter erworben haben, auf Ihre Kamera zugreifen. Für \
die Nutzung des DDNS-Dienstes werden Benutzername und Kennwort benötigt.<br><br><b>Server Address</b> (Serveradresse) - Die Adresse Ihres \
DDNS-Dienstes. Sie können die Adresse des DDNS-Servers manuell eingeben oder von dem Dropdown-Menü wählen.<br><br><b>Host Name</b> - \
(Host-Name) Der von Ihnen vom DDNS-Dienst gewählte Domänenname.<br><br><b>User Name</b> - (Benutzername) Der Kontoname des DDNS-Dienstes.\
<br><br><b>Password</b> - (Kennwort) Das Kennwort für das Konto des DDNS-Dienstes.<br><br><b>Timeout</b> - (Zeitüberschreitung) Ist das \
Zeitintervall für den DDNS zum erneuten Verbindungsaufbau.",
"<b>IP Filter</b> - Um die IP-Filter Ihrer Kamera zu aktivieren, müssen Sie das Kontrollkästchen bei 'Zugriffslistenfilterung' \
(Access List Filtering) aktivieren. Ändern Sie dann Ihre Detaileinstellungen über diese Seite.\
<br><br><b>Filter Type</b> (Filtertyp) - Sie können für die in einer Filterliste angegebenen IP-Adressen 'Zulassen' \
(Allow) oder 'Verweigern' (Deny) auswählen.\
<br><br><b>Filter List</b> (Filterliste) - Die angegebenen IP-Adressen.\
<br><br><b>Single</b>(Einzel) - Geben Sie eine einzelne IP-Adresse an.\
<br><br><b>Subnet</b> (Subnetz)  - Geben Sie ein Subnetz für die IP-Adressen an.\
<br><br><b>Range</b> (Bereich) - Geben Sie einen IP-Adressenbereich an.\
<br><br><b>Administrator IP-Adresse</b> - Sie können dies aktivieren und eine IP-Adresse als IP-Adresse des Administrators einstellen, die immer Zugriff auf diese Kamera hat.",
"<br><br><b>Brightness</b>(Helligkeit)  - Wird in bestimmten Situationen zur Gegenlichtkompensation verwendet.\
<br><br><b>Saturation</b> (Sättigung) - Steuert die Stärke der Farbe von schwarz und weiß bis zu kräftigen Farben.\
<br><br><b>Contrast</b> (Kontrast) - Kann zur Steuerung der Farbkontraste zwischen Objekten Ihren Wünschen entsprechend eingestellt werden und zur Verbesserung der Bildqualität bei grauen Lichtverhältnissen beitragen.\
<br><br><b>Hue</b> (Farbton) - Steuert unterschiedliche Farbtöne, die für das menschliche Auge stimulierend wirken.\
<br><br><b>Sharpness</b> (Bildschärfe) - Wird zum Einstellen der Bildschärfe verwendet.\
<br><br><b>B/W</b> (S/W) - Sie können den Schwarz/Weiß-Modus für Ihre Kamera aktivieren oder deaktivieren.\
<br><br><b>Mirror</b> (Spiegeln) - Wählen Sie diese Funktion, wenn die Bilder spiegelverkehrt angezeigt werden sollen.\
<br><br><b>Flip</b> (Bild umdrehen) - Wählen Sie diese Funktion, wenn Ihre Kamera an der Wand umgedreht installiert ist.\
<br><br><b>Frequency</b> (Frequenz) - Sie müssen möglicherweise zwischen einer Frequenz von 'Off', '50' oder '60' Hz (je nach Land) wählen.",
"<b>Video Profile</b> (Videoprofil) - Sie können unterschiedliche Bildeinstellungen (wie z. B. die Bildqualität und die Bildfrequenz) für die vier Videoarten der Kamera gesondert einrichten: H.264 und JPEG.\
<br><br><b>Resolution</b> (Auflösung) - Es stehen mehrere Bemessungsoptionen zur Verfügung.\
<br><br><b>FPS</b> (Frames per Second/Bildfrequenz) - Die maximale Anzahl an Bildern, die in 1 Sekunde angezeigt werden. 30 fps (Frames per sec/Bilder pro Sekunde) ist die für diese Kamera höchste Videoqualität. Im Allgemeinen sind Bildfrequenzen über 15 fps für das menschliche Auge nicht mehr wahrnehmbar.\
<br><br><b>bps</b> (Bits pro Sek.) - Wählen Sie eine feste Bandbreite für den Betrieb Ihrer Kamera. Mithilfe dieser Funktion kann der Benutzer die für die Bandbreite und die Speicherkapazität passende Bildfrequenzrate wählen.\
<br><br><b>Quality</b> (Qualität) - Festlegen der Bildqualität. Die beste Bildqualität wird erreicht, wenn 'Exzellent' gewählt wird.\
<br><br><b>AUDIO SETUP</b> - Sie können das Mikrofon ein-/ausschalten oder die Lautstärke einstellen.\
<br><br><b>Enable Microphone</b> (Mikrofon aktivieren) - Wenn Sie 'Aktivieren' wählen, können Sie die Audiosignale vom Mikrofon der IP-Kamera überwachen.\
<br><br><b>Microphone Volume</b> (Mikrofonlautstärke) - Sie können die Mikrofonlautstärke der IP-Kamera mithilfe der Lautstärkenregelung ändern.",
"<b>Privacy Mask</b> (Bereichsmaske) - Klicken Sie auf das entsprechende Feld, um diese Funktion zu aktivieren. Verwenden Sie dann Ihre Maus, um ein Rechteck über den Bereich zu ziehen, den Sie als Privat kennzeichnen und damit verbergen möchten.",
"<b>Motion Detection</b> - Bei Aktivierung ist die Bewegungserkennung (Bewegungsmelderfunktion) eingeschaltet. Bei Deaktivierung ist sie ausgeschaltet.",
"<b>Sound Detection</b> (Tonerkennung) - Bei Aktivierung ist die Tonerkennung eingeschaltet. Bei Deaktivierung ist die Tonerkennung ausgeschaltet.",
"<b>SMTP Server Address</b> (SMTP-Serveradresse) - Dies ist der Domänennamen oder die IP-Adresse Ihres externen E-Mail-Servers.\
<br><br><b>Sender E-mail Address</b> (E-Mail-Adresse des Absenders) - Dies ist die E-Mail-Adresse der Person, die die Kamerabilder sendet.\
<br><br><b>Receiver E-mail Address</b> (E-Mail-Adresse des Empfängers) - Dies ist die E-Mail-Adresse des Empfängers für den SMTP-Server.\
<br><br><b>User Name</b> (Benutzername) - Der Benutzername des E-Mail-Kontos.\
<br><br><b>Password</b> (Kennwort) - Das ist das Kennwort für das E-Mail-Konto.\
<br><br><b>Intervall</b> - Das Zeitintervall zwischen jedem Momentaufnahme/Videoclip.\
<br><br><b>Use SSL-TLS/STARTTLS</b> (SSL-TLS/STARTTLS verwenden) - Wählen Sie SSL-TLS oder STARTTLS, wenn der SMTP-Server eine TLS-Authentifizierung erfordert.\
<br><br><b>Test email account</b> (E-Mail-Konto testen) - Sendet eine Momentaufnahme an das von Ihnen konfigurierte E-Mail-Konto. Wenn Sie das SMTP-Konto korrekt konfiguriert haben, können Sie eine Testdatei an das E-Mail-Konto des Empfängers senden.",
"<b>Host Name</b> (Host-Name) - Dies ist die IP-Adresse des FTP-Servers, zu dem Sie eine Verbindung herstellen.\
<br><br><b>Port</b> - Die Standard-Porteinstellung ist 21.\
<br><br><b>User Name</b> - (Benutzername) Der für den Zugang zum externen FTP-Server erforderliche Benutzername.\
<br><br><b>Password</b> (Kennwort) - Das für den Zugang zum externen FTP-Server erforderliche Kennwort.\
<br><br><b>Path</b> (Pfad) - Das Zielverzeichnis oder der Zielordner auf dem externen FTP-Server.\
<br><br><b>Intervall</b> - Das Zeitintervall zwischen jedem Momentaufnahme/Videoclip.\
<br><br><b>Passive mode</b> (Passiv-Modus) - Das Aktivieren des Passiv-Modus ermöglicht den Zugang zu einem externen FTP-Server, wenn sich Ihre Kamera hinter einem von einer Firewall geschützten Router befindet.\
<br><br><b>Test FTP server</b>  (FTP-Server-Test) - Wenn Sie auf 'Test' klicken, wird eine Bilddatei an den FTP-Server gesendet. ",
"<b>Snapshot</b> (Momentaufnahme) - Bei Wahl dieser Option können Sie eine oder sechs Standbilder von diesem System an eine E-Mail oder an einen FTP-Server senden.\
<br><br><b>Trigger by</b> (Auslösen durch)<br><b>Bewegung</b> - Beginnt eine Momentaufnahme, nachdem eine Bewegung erkannt wurde.\
<br><b>Zeitplan</b> - Momentaufnahme in einer angegebenen Zeit.\
<br><b>Immer</b> - Fortlaufende Momentaufnahme.\
<br><b>Ton</b> - Beginnt eine Momentaufnahme, nachdem ein Ton/Geräusch erkannt wurde.\
<br><br><b>Snapshot Type</b> Einzelmomentaufnahmen oder 6 Momentaufnahmen hier einrichten.\
<br><br><b>Target</b> (Ziel) - Sie können das Ziel als FTP oder E-Mail für die Momentaufnahme wählen.",
"<b>Video Clip</b> - Bei Wahl dieser Option können Sie ein Videoclip von diesem System an eine E-Mail oder an einen FTP-Server senden.\
<br><br><b>Trigger by</b>  (Auslösen durch)<br><b>Bewegung</b> - Videoclip-Aufnahmen nach einer Bewegungserkennung beginnen.\
<br><b>Zeitplan</b> - Videoclip-Aufnahmen in einer angegebenen Zeit.\
<br><b>Immer</b> - Fortlaufende Videoclip-Aufnahmen.\
<br><b>Ton</b> - Videoclip-Aufnahmen nach einer Tonerkennung beginnen.\
<br><br><b>Video Clip</b> (Art des Videoclips) - Sie können das gewünschte Videoprofil für Aufnahmen von Videoclips auswählen und die Aufnahme vor dem Ereignis sowie die max. Dauer hier angeben.\
<br><br><b>Pre-event recording</b> (Aufnahme vor dem Ereignis) - Geben Sie an, wie viele Sekunden aufgenommen werden sollen, bevor der Videoclip aufgenommen wird.\
<br><br><b>Maximum duration</b> (Max. Dauer) - Geben Sie an, wie viele Sekunden des Videoclips aufgenommen werden sollen.\
<br><br><b>Target</b> (Ziel) - Sie können das Ziel als FTP oder E-Mail für den Videoclip wählen.",
"<b>Time Zone</b> (Zeitzone) - Die geographische Zone für die lokale Kamerazeiteinstellung.\
<br><br><b>Enable Daylight Saving</b> (Sommerzeit aktivieren) - Ein Aktivieren des Sommerzeitmodus passt die Zeit je nach Sommerzeitausgleich und Datumsangabe an.\
<br><br><b>Auto Daylight Saving</b> (Autom. Zeitumstellung) - Bei Wahl dieser Option wird die Uhr automatisch entsprechend der Sommer-/Winterzeit der jeweiligen Zeitzone eingestellt.\
<br><br><b>Set DST Manually</b> (Sommerzeit manuell festlegen) - Stellen Sie die Sommerzeitregeln manuell ein.\
<br><br><b>Offset</b> (Ausgleich) - Gibt an, wieviel Zeit bei aktivierter Zeitumstellung hinzugefügt oder von ihr abgezogen wird..\
<br><br><b>Daylight Saving Dates</b> (Daten für die Zeitumstellung) - Gibt an, wieviel Zeit bei aktivierter Zeitumstellung hinzugefügt oder von ihr abgezogen wird.\
<br><br><b>Synchronize with NTP Server</b> (Mit NTP-Server synchronisieren) - Bei Wahl dieser Option synchronisiert die Kamera bei jedem Kamerastart die Zeiteinstellungen mit dem NTP-Server über das Internet. Kann keine Verbindung zum NTP-Server hergestellt werden, werden keine Zeiteinstellungen vorgenommen.\
<br><br><b>NTP Server</b> - Geben Sie die IP-Adresse oder den Domänennamen des NTP-Servers an\
<br><br><b>Set Date and Time Manually</b> (Datum und Uhrzeit manuell einstellen) - Stellen Sie das Datum und die Uhrzeit manuell ein.\
<br><br><b>Copy Your Computer's Time Settings</b> (Zeiteinstellungen des Computers kopieren) - Zur Synchronisierung des Datums und der Uhrzeit Ihrer Kamera mit Ihrem Computer.",
"<b>Auto</b> - Die Kamera wechselt automatisch in den Tag- bzw. Nacht-Modus. Die Kamera ist normalerweise im Tagmodus. Sie wechselt automatisch bei dunkleren Lichtverhältnissen in den Nachtmodus.\
<br><br><b>Manual</b> (Manuell) - Die Kamera kann auf der Video Live-Anzeigeseite manuell in den Tag- oder Nachtmodus gesetzt werden.\
<br><br><b>Always Day Mode</b> (Immer-Tag-Modus) - Die Kamera ist immer im Tagmodus.\
<br><br><b>Always Night Mode</b> (Immer-Nacht-Modus) - Die Kamera ist immer im Nachtmodus.\
<br><br><b>Day Mode Schedule</b> (Tag-Modus-Zeitplan) - Die Kamera ist zu dem von Ihnen im Zeitplan angegebenen Datum und der angegebenen Uhrzeit im Tagmodus. Sie wechselt während aller anderen Zeiten in den Nachtmodus.",
"<b>SD-Karte</b> - Dies kann den aktuellen Pfad der SD-Karte anzeigen.\
<br><br><b>SD-Status</b> - Dies kann den aktuellen Status der SD-Speicherkarte anzeigen (d. h. ob eine Karte eingesetzt ist oder erkannt wurde).\
<br><br><b>Dateien pro Seite</b> - Die Anzahl der Dateien pro Seite.\
<br><br><b>Aktualisieren</b> - Die Option wird zum Neuladen des Webseiteninhalts mit den neuesten Daten verwendet.\
<br><br><b>Seiten</b> - Sie können wählen, welche Seite hier angezeigt werden soll.\
<br><br><b>Löschen</b> - Mithilfe der Schaltfläche 'Löschen' werden ausgewählte Dateien oder Ordner gelöscht.\
<br><br><b>Name</b> - Zeigt alle gespeicherten Datei- oder Ordnernamen an.\
<br><br><b>Größe</b> - Zeigt die Dateigröße an.\
<br><br><b>SD-Karte formatieren</b> - Diese Option wird verwendet, um alle auf der SD-Karte abgelegten Daten zu löschen.\
<br><br><b>Gesamt</b> - Die gesamte Leistungsfähigkeit der SD-Karte.\
<br><br><b>Verwendet</b> - Die genutzte Leistungsfähigkeit der SD-Karte.\
<br><br><b>Frei</b> - Die frei verfügbare Leistungsfähigkeit der SD-Karte.",
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