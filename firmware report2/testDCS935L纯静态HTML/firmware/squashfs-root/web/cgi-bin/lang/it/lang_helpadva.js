var languageNum = new Array("en","sc","tc");
var item_name = new Array("Menù help", "Wizard", "CONFIGURAZIONE DI RETE",
"Wireless Setup",
"Extender setup",
"DNS dinamico",
"FILTRO IP",
"Configurazione immagine",
"AUDIO E VIDEO",
"Privacy Mask",
"Rilevamento movimento",
"Sound Detection",
"Posta elettronica",
"FTP",
"Istantanea",
"Video clip",
"Data e ora",
"Giorno e Notte",
"Gestione SD",
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
"<b>Configurazione guidata connessione Internet</b>: questa pagina viene utilizzata per configurare il dispositivo DCS-935L mediante la procedura guidata di configurazione di rete della videocamera. Questa operazione può essere eseguita manualmente mediante IP statico, \
automaticamente mediante il client DHCP (Dynamic Host Configuration Protocol è un protocollo di rete che \
consente al client di effettuare il lease di un indirizzo IP da un server per un periodo di tempo specificato) o mediante PPPoE.<br><br>\
<b>PPPoE</b>: acronimo di Point-to-Point Protocol over Ethernet. Se si utilizza il dispositivo DCS-935L per connettersi \
direttamente a Internet, è necessario inserire in questi campi il nome utente e la password forniti durante la \
configurazione dell'account con il provider di servizi Internet.<br><br>\
<b>DDNS</b>: acronimo di Dynamic Domain Name Server. Se è stato configurato il servizio DDNS sarà necessario immettere in questi campi il nome utente e la password se il dispositivo DCS-935L utilizza un indirizzo IP pubblico. Questo consente al DDNS di tenere \
traccia dell'indirizzo IP anche se viene modificato.",
"<b>Impostazioni LAN</b>: questa operazione può essere eseguita manualmente immettendo un indirizzo IP fisso oppure automaticamente mediante PPPoE o il client \
DHCP. DHCP (Dynamic Host Configuration Protocol) è il protocollo di rete che consente al client di effettuare il lease \
di un indirizzo IP da un server per un periodo di tempo specificato.<br><br>\
<b>PPPoE (Point-to-Point Protocol over Ethernet)</b>: se si utilizza il dispositivo DCS-935L per connettersi direttamente a \
Internet, sarà necessario immettere il nome utente e la password validi forniti dal provider di servizi Internet.<br><br>\
<b>DNS</b>: acronimo di Domain Name Server è un servizio Internet \
che converte i nomi di dominio (ad esempio www.dlink.com) in indirizzi IP, ad esempio 192.168.0.20). L'indirizzo IP del DNS può essere ottenuto dall'ISP.<br><br>\
<b>Impostazioni porta</b> : la maggior parte degli ISP non apre la porta 80 (una porta di trasferimento video predefinita del dispositivo DCS-935L) per i clienti privati. Il modello DCS-935L è in grado di utilizzare una porta diversa modificando la porta HTTP per lo streaming video. È possibile usare qualsiasi porta inutilizzata, \
ad esempio le porte 800, 801 e così via. Si noti che se il dispositivo DCS-935L è mascherato da un router, è necessario inoltrare tale porta all'indirizzo IP del dispositivo DCS-935L. Quando si accede alla videocamera, sarà necessario digitare l'indirizzo IP della videocamera seguito da due punti e dal numero di porta, ad esempio http://192.168.0.20:800<br><br>\
<b>Impostazioni UPnP</b>: UPnP è l'acronimo di Universal Plug and Play, un'architettura di rete che garantisce la compatibilità tra apparecchiature di rete, \
software e periferiche. Il dispositivo DCS-935L è una videocamera Internet abilitata UPnP che opera insieme ad altri dispositivi UPnP. \
Questa funzionalità è abilitata per impostazione predefinita. Se non si desidera utilizzare questa funzionalità è possibile disabilitarla selezionando <b>Disabilitata</b>.<br><br>\
<b>Inoltro a porta UPnP</b>: consente a una videocamera IP di comunicare un router di rete compatibile con UPnP per l'accesso semplificato a dispositivi di rete, nonché per l'accesso remoto tramite Internet. Al fine di consentire l'inoltro alla porta UPnP è prima necessario verificare che lo standard UPnP sia supportato e abilitato nel router. Una volta confermata tale condizione è necessario abilitare l'inoltro alla porta UPnP sulla videocamera IP. \
Se le porte predefinite sono disponibili per l'inoltro, è possibile utilizzarle. In caso contrario, per consentire il corretto inoltro alla porta UPnP \
sarà necessario cambiare le porte HTTP in uso. Dopo avere assegnato le porte di rete appropriate alla videocamera IP sarà possibile accedere alla videocamera IP tramite Internet. <br><br>\
<b>Bonjour</b> : se questa opzione è abilitata, la videocamera è accessibile tramite un browser abilitato per Bonjour, ad esempio Apple Mac Safari.<br><br>\
<b>Nome Bonjour</b>: immettere qui il nome della videocamera. Si tratta del nome che verrà visualizzato dal servizio Bonjour.",
"<b>SSID</b>: identificativo univoco di una rete wireless.<br><br>\
<b>Canale</b>: è possibile selezionare qualsiasi canale per la rete. Se su un determinato canale si verificano delle interferenze è possibile sempre cambiarlo.<br><br>\
<b>Modalità di connessione</b>: la connessione di tipo <b>Infrastruttura</b> è una connessione wireless che utilizza un punto di accesso come punto di trasmissione per tutti i client wireless. La connessione <b>Ad hoc</b> è una connessione wireless utilizzata senza punto di accesso con la videocamera direttamente connessa al PC.<br><br>\
<b>Studio sito</b>: viene visualizzata una finestra popup che consente di selezionare una rete wireless per la connessione.<br><br>\
<b>Modalità di protezione wireless -</b><br>\
<b>Nessuna</b>: nessuna impostazione di crittografia.<br>\
<b>Crittografia WEP</b>: acronimo di Wired Equivalent Privacy, da 64 bit e 128 bit in formato esadecimale (0 - 9, a - f) o ASCII (testo).\
<br>64 bit  -> 10 in HEX o 5 in ASCII\
<br>128 bit -> 26 in HEX e 13 in ASCII\
<br><b>WPA-PSK / WPA2-PSK</b>: Wireless Protected Access con <b>chiave precondivisa</b>; è necessario compilare il campo relativo alla chiave. Sono supportati TKIP (Temporal Key Integrity Protocol) e AES.",
"<b>Impostazioni rete wireless estesa</b>: In questa sezione è possibile configurare la funzionalità di extender wireless della videocamera \
che consente di estendere la portata di una rete wireless esistente. È possibile scegliere di mantenere lo stesso nome della rete wireless anche per la rete estesa \
oppure crearne uno nuovo.<br><br><b>Modalità di protezione wireless:</b><br>\
<b>Nessuna</b>: Nessuna impostazione di crittografia.\
<br><b>Crittografia WEP</b>: acronimo di Wired Equivalent Privacy, da 64 bit e 128 bit in formato esadecimale (0 - 9, a - f) o ASCII (testo).\
<br>64 bit  -> 10 in HEX o 5 in ASCII\
<br>128 bit -> 26 in HEX e 13 in ASCII\
<br><b>WPA-PSK / WPA2-PSK</b> - Wireless Protected Access con <b>chiave precondivisa</b>; è necessario compilare il campo relativo alla chiave. Sono supportati TKIP (Temporal Key Integrity Protocol) e AES.",
"<b>DNS dinamico</b>(Dynamic Domain Name Server): sincronizza automaticamente l'indirizzo IP pubblico del modem. Gli utenti possono connettersi alla videocamera utilizzando il <b>nome host</b> acquistato dall'ISP. Quando si utilizza il servizio DDNS sono necessari nome utente e password.<br><br>\
<b>Indirizzo server</b>: indirizzo del server DDNS. È possibile immettere l'indirizzo manualmente oppure selezionare un server DDNS dal menu a discesa.<br><br>\
<b>Nome host</b>: nome di dominio scelto dal servizio DDNS.<br><br>\
<b>Nome utente</b>: nome dell'account del servizio DDNS.<br><br>\
<b>Password</b>: password dell'account del servizio DDNS.<br><br>\
<b>Timeout</b>: corrisponde all'intervallo di tempo per il riavvio della connessione da parte del DDNS.",
"<b>Filtro IP</b>: per abilitare i filtri IP della videocamera, è necessario selezionare la casella di controllo 'Filtro elenco accessi'. In questa pagina è quindi possibile modificare le impostazioni relative ai dettagli.\
<br><br><b>Tipo di filtro</b>: è possibile selezionare Consenti o Nega per gli indirizzi IP specificati nell'elenco filtri.\
<br><br><b>Elenco filtri</b>: indirizzi IP specificati.\
<br><br><b>Singolo</b>: consente di specificare un unico indirizzo IP.\
<br><br><b>Subnet</b>: consente di specificare una subnet di indirizzi IP.\
<br><br><b>Intervallo</b>: consente di specificare un intervallo di indirizzi IP.\
<br><br><b>Indirizzo IP amministratore</b>: è possibile abilitare e impostare un indirizzo IP come indirizzo IP amministratore al quale consentire accesso illimitato alla videocamera.",
"<b>Luminosità</b>: viene utilizzata per compensare le scene in controluce.\
<br><br><b>Saturazione</b>: controlla l'intensità di colore dal bianco e nero ai colori nitidi.\
<br><br><b>Contrasto</b>: regolabile, consente di controllare il contrasto di colori tra oggetti. Migliora l'immagine ripresa con un cielo grigio.\
<br><br><b>Tonalità</b>: consente di controllare diverse gradazioni di un colore rilevabili da un occhio umano.\
<br><br><b>Nitidezza</b>: viene utilizzato per regolare il livello di nitidezza delle immagini.\
<br><br><b>Bianco e nero</b>: selezionare questa opzione per attivare o disattivare la modalità bianco e nero della videocamera.\
<br><br><b>Specchio</b>: selezionare questa opzione per ottenere un'immagine speculare.\
<br><br><b>Capovolgi</b>: selezionare questa funzione quando la videocamera è installata in posizione capovolta sul soffitto.\
<br><br><b>Frequenza</b>: Potrebbe essere necessario scegliere una frequenza tra Off, 50 o 60 Hz (dipende dal paese).",
"<b>Profilo video</b>: è possibile configurare separatamente varie impostazioni dell'immagine (come ad esempio qualità dell'immagine e frequenza dei fotogrammi) per i quattro tipi di video della videocamera: H.264 e JPEG.\
<br><br><b>Risoluzione</b>: esistono diverse opzioni per la dimensione.\
<br><br><b>FPS</b> (Frames per Second): numero massimo di fotogrammi visualizzati in 1 secondo. 30 fps (30 fotogrammi al secondo) rappresenta la qualità video più elevata per questa videocamera. Generalmente, qualsiasi frequenza di fotogrammi superiore a 15 fps è impercettibile per l'occhio umano.\
<br><br><b>bps</b>: bit al secondo. Consente di selezionare una larghezza di banda fissa per il funzionamento della videocamera. Questa opzione consente all'utente di selezionare una frequenza di fotogrammi personalizzata adeguata per la larghezza di banda e lo spazio di archiviazione.\
<br><br><b>Qualità</b>: consente di impostare la qualità dell'immagine. Quando viene selezionato Eccellente si ottiene la migliore qualità d'immagine.\
<br><br><b>CONFIGURAZIONE AUDIO</b>: è possibile utilizzare l'accensione/spegnimento del microfono o regolare il volume.\
<br><br><b>Abilita microfono</b>: selezionando Abilita è possibile controllare l'audio dal microfono della videocamera IP.\
<br><br><b>Volume microfono</b>: è possibile regolare il volume del microfono utilizzando l'impostazione del livello di volume.",
"<b>Privacy Mask</b>: per attivare questa funzione fare clic sulla casella associata. A questo punto utilizzare il mouse per disegnare un rettangolo che copra l'area da nascondere.",
"<b>Rilevamento movimento</b>: quando questa opzione è abilitata, il rilevamento del movimento è attivato. Quando questa opzione è disabilitata, il rilevamento del movimento è disattivato.",
"<b>Rilevamento suoni</b>: quando questa opzione è abilitata, il rilevamento dei suoni è attivato. Quando questa opzione è disabilitata, il rilevamento dei suoni è disattivato.",
"<b>Indirizzo server SMTP</b>: nome di dominio o indirizzo IP del server di posta elettronica esterno.\
<br><br><b>Indirizzo e-mail mittente</b>: indirizzo e-mail della persona che invia le immagini della videocamera.\
<br><br><b>Indirizzo e-mail destinatario</b>: indirizzo e-mail di destinazione per il server SMTP.\
<br><br><b>Nome utente</b>: nome utente dell'account e-mail.\
<br><br><b>Password</b>: password dell'account e-mail.\
<br><br><b>Intervallo </b>: L'intervallo di tempo che intercorre tra ciascun istantanea/clip video.\
<br><br><b>Utilizza SSL-TLS/STARTTLS</b>: selezionare SSL-TLS o STARTTLS se il server SMTP richiede l'autenticazione TLS.\
<br><br><b>Test account e-mail</b>: questa opzione consente di inviare un'istantanea all'account e-mail configurato. Se l'account SMTP è stato configurato correttamente sarà possibile inviare un file di prova all'account e-mail del destinatario.",
"<b>Nome host</b>: corrisponde all'indirizzo IP del server FTP su cui si verrà connessi.\
<br><br><b>Porta</b>: la porta predefinita è la 21.\
<br><br><b>Nome utente</b>: nome utente necessario per accedere al server FTP esterno.\
<br><br><b>Password</b>: password necessaria per accedere al server FTP esterno.\
<br><br><b>Percorso</b>: cartella o directory di destinazione sul server FTP esterno.\
<br><br><b>Intervallo </b>: L'intervallo di tempo che intercorre tra ciascun istantanea/clip video.\
<br><br><b>Modalità passiva</b>: l'abilitazione della modalità passiva consente l'accesso a un server FTP esterno quando la videocamera è mascherata da un router protetto da un firewall.\
<br><br><b>Test server FTP</b>: dopo aver fatto clic su Test, al server FTP verrà inviato un file immagine. ",
"<b>Istantanea</b>: selezionando l'opzione è possibile inviare una o sei immagini fisse da questa unità a un'e-mail oppure a un server FTP.\
<br><br><b>Attivato da</b>\
<br><b>Movimento</b>: inizia la creazione di un'istantanea in seguito al rilevamento di un movimento.\
<br><b>Pianificazione</b>: Crea l'istantanea a un'ora specificata.\
<br><b>Sempre</b>: Istantanea continua.\
<br><b>Suono</b>: inizia la creazione di un'istantanea in seguito al rilevamento di un suono.\
<br><br><b>Tipo di istantanea</b>: Istantanea singola o 6 istantanee.\
<br><br><b>Destinazione</b>: è possibile selezionare FTP o E-mail come destinazione dell'istantanea.",
"<b>Clip video</b>: selezionando l'opzione è possibile inviare una clip video da questa unità a un'e-mail oppure a un server FTP\
<br><br><b>Attivato da</b>\
<br><b>Movimento</b>: inizia la creazione di un clip video in seguito al rilevamento di un movimento.\
<br><b>Pianificazione</b>: Crea clip video a un'ora specificata.\
<br><b>Sempre</b>: Crea clip video in continuo.\
<br><b>Suono</b>: inizia la creazione di un clip video in seguito al rilevamento di un suono.\
<br><br><b>Video clip</b>: qui è possibile selezionare il profilo video desiderato per la registrazione dei clip video e impostare la registrazione pre-evento e la durata massima.\
<br><br><b>Registrazione pre-evento</b>: consente di specificare il numero di secondi di video che verranno registrati prima della creazione del clip video.\
<br><br><b>Durata massima</b>: consente di specificare il numero di secondi del clip video.\
<br><br><b>Destinazione</b>: è possibile selezionare FTP o E-mail come destinazione del clip video.",
"<b>Fuso orario</b>: indica l'area geografica per l'impostazione del fuso orario relativo alla videocamera.\
<br><br><b>Abilita aggiornamento ora legale</b>: consente di attivare la modalità di aggiornamento dell'ora legale che regola l'ora in base all'offset dell'ora legale e alle date.\
<br><br><b>Aggiornamento automatico ora legale</b>: selezionando questa opzione l'orologio viene automaticamente regolato in base all'ora legale del fuso orario selezionato.\
<br><br><b>Imposta ora legale manualmente</b>: consente di regolare e impostare manualmente le regole per l'ora legale.\
<br><br><b>Offset</b>: consente di impostare il periodo di tempo da aggiungere o rimuovere dall'ora quando viene attivata l'ora legale.\
<br><br><b>Date aggiornamento ora legale</b>: consente di impostare le date e l'ora iniziali e finali dell'ora legale.\
<br><br><b>Sincronizza con server NTP</b>: selezionando questa opzione, a ogni accensione la videocamera sincronizza le impostazioni dell'ora con il server NTP via Internet. Se non è possibile raggiungere il server NTP, non verrà applicata alcuna impostazione di orario.\
<br><br><b>Server NTP</b>: il nome di dominio o l'indirizzo IP del server NTP.\
<br><br><b>Imposta data e ora manualmente</b>: consente di regolare e impostare manualmente la data e l'ora.\
<br><br><b>Copia ora dal computer</b>: per sincronizzare la data e l'ora della videocamera con il computer.",
"<b>Automatico</b>: la videocamera di rete alterna automaticamente tra la modalità diurna e notturna. La videocamera normalmente funziona in modalità diurna. In un ambiente scarsamente illuminato passa automaticamente in modalità notturna.\
<br><br><b>Manuale</b> - L'utente può controllare manualmente il funzionamento della videocamera in modalità diurna o notturna nella pagina di visualizzazione del video in diretta.\
<br><br><b>Sempre modalità diurna</b>: la videocamera funziona sempre in modalità diurna.\
<br><br><b>Sempre modalità notturna</b>: la videocamera funziona sempre in modalità notturna.\
<br><br><b>Pianificazione modalità diurna</b>: la videocamera funziona in modalità diurna in base alla data e all'ora configurate nella pianificazione. La videocamera passa alla modalità notturna in tutti gli altri orari.",
"<b>Scheda SD</b> - Può indicare il percorso corrente della scheda SD.\
<br><br><b>Stato SD</b> - Può indicare lo stato corrente della scheda SD (se la scheda è inserita o rilevata).\
<br><br><b>File per pagina</b> - Numero di file per pagina.\
<br><br><b>Aggiorna</b> - Opzione utilizzata per aggiornare i contenuti della pagina Web con i dati più recenti.\
<br><br><b>Pagine</b> - Qui è possibile selezionare la pagina da visualizzare.\
<br><br><b>Elimina</b> - Il pulsante Elimina consente di eliminare i file o le cartelle selezionati.\
<br><br><b>Nome</b> - Mostra tutti i file salvati o il nome della cartella.\
<br><br><b>Dimensione</b> - Mostra la dimensione del file.\
<br><br><b>Formatta scheda SD</b> - Questa opzione è utilizzata per eliminare tutti i dati salvati sulla scheda SD.\
<br><br><b>Totale</b> - Capacità totale della scheda SD.\
<br><br><b>Utilizzato</b> - Capacità usata della scheda SD.\
<br><br><b>Libero</b> - Capacità disponibile della scheda SD.",
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