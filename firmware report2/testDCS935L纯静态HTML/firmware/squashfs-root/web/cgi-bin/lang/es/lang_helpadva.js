var languageNum = new Array("en","sc","tc");
var item_name = new Array("MENÚ DE SOPORTE", "Asistente", "CONFIGURACIÓN DE RED:",
"Wireless Setup",
"Configuración del extensor",
"DNS dinámico",
"FILTRO IP",
"Configuración de la imagen",
"AUDIO Y VÍDEO",
"Máscara de privacidad",
"Detección de movimiento",
"Sound Detection",
"Correo electrónico",
"FTP",
"Instantánea",
"Clip de vídeo",
"Fecha y hora",
"Día y noche",
"Gestión de SD",
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
"<b>Asistente para la configuración de la conexión a Internet</b>: esta página se usa para configurar la DCS-935L, \
que utiliza el asistente para guiarle a través de la configuración de la cámara para su red. Esto puede hacerse manualmente \
utilizando la IP estática, de forma automática utilizando el cliente DHCP (el Protocolo de configuración de host dinámico es un \
protocolo de conexión en red que permitirá que el cliente alquile una dirección IP al servidor durante un periodo de tiempo especificado)\
 o PPPoE.<br><br><b>PPPoE</b>: (Protocolo de punto a punto a través de Ethernet) si utiliza la DCS-935L para conectar directamente a Internet,\
 necesitará introducir en estos campos el nombre de usuario y la contraseña suministrados al configurar su cuenta con el proveedor de \
 servicios de .<br><br><b>DDNS</b>: (Servidor de nombre de dominio dinámico) si ha configurado el servicio DDNS, necesitará introducir en \
 estos campos el nombre de usuario y la contraseña si su DCS-935L está utilizando una dirección IP pública. Esto permitirá al DDNS realizar\
 el seguimiento de su dirección IP incluso si cambia.",
"<b>Parámetros de LAN</b>: esto puede hacerse manualmente introduciendo una dirección IP fija o de forma automática utilizando el \
cliente DHCP (el Protocolo de configuración de host dinámico es un protocolo de conexión en red que permitirá que el cliente alquile \
una dirección IP al servidor durante un periodo de tiempo especificado) o PPPoE.<br><br><b>PPPoE (Protocolo de punto a punto a través de Ethernet)\
</b>: si utiliza la DCS-935L para conectar directamente a Internet, necesitará introducir el nombre de usuario y \
la contraseña válidos suministrados por su proveedor de servicios de Internet.<br><br><b>El servidor DNS</b> (Sistema de nombre de dominio) \
es un servicio de Internet que traduce los nombres de dominio (p. ej., www.dlink.com) a direcciones IP (p. ej., 192.168.0.20). \
Puede obtener la dirección IP del DNS de su ISP.<br><br><b>Parámetros de puerto</b>: la mayoría de los ISP no abren el puerto 80 \
(un puerto de transferencia de vídeo predeterminado de la DCS-935L) para sus clientes de zonas residenciales, la DCS-935L tiene \
la capacidad de utilizar un puerto diferente activando el segundo puerto http para su canalización de vídeo. Pueden utilizarse \
todos los puertos sin usar, como el puerto 800, 801, etc. Recuerde que si la DCS-935L está detrás de un router, necesitará enviar\
 ese puerto a la dirección IP de la DCS-935L. Al acceder a la cámara, necesitará escribir la dirección IP de la cámara, seguida \
 de dos puntos y el número de puerto (por ejemplo, http://192.168.0.20:800).<br><br><b>Parámetros de UPnP</b>: UPnP es la abreviatura \
 de Plug and Play universal, una arquitectura de red que proporciona compatibilidad entre equipos de conexión en red, software y \
 periféricos. La DCS-935L es una cámara de Internet compatible con UPnP que funcionará con otros dispositivos UPnP. \
Esta función está activada de forma predeterminada. Si no desea utilizar esta característica, puede desactivarla seleccionado \
<b>Desactivado</b>.<br><br><b>Direccionamiento de puertos UPnP</b>: el direccionamiento de puertos UPnP permitirá que una cámara IP \
se comunique con un router de red compatible con UPnP para un acceso simplificado del dispositivo a la red local, así como un acceso \
remoto a través de Internet. Para permitir el direccionamiento de puertos UPnP, primero necesitará asegurarse de que UPnP es compatible \
y está activado en su router. Una vez que lo ha confirmado, necesitará activar el direccionamiento de puertos UPnP en su cámara IP. \
Si los puertos predeterminados utilizados están libres para el direccionamiento de puertos, puede utilizarlos. Si no es así, necesitará cambiar los puertos que se estén utilizando para permitir un direccionamiento de puertos UPnP adecuado. Una vez que se hayan asignado los puertos de red adecuados a su cámara IP, deberá ser capaz de acceder a la cámara IP a través de Internet. <br><br><b>Bonjour</b> : si está activado, se puede acceder a la cámara a través de un explorador habilitado para Bonjour, como el explorador Apple Mac Safari.<br><br><b>Nombre de Bonjour</b>: introduzca aquí el nombre de la cámara. Este es el nombre que mostrará el servicio Bonjour.",
"<b>SSID</b>: el identificador exclusivo de una red inalámbrica.<br><br><b>Canal</b>: \
puede seleccionarse cualquier canal para su red. Siempre puede cambiar el canal si hay muchas interferencias en un canal determinado.\
<br><br><b>Modo de conexión</b>: la conexión de  <b>infraestructura</b> es una conexión inalámbrica que utiliza un punto de acceso \
como punto de transmisión para todos los clientes inalámbricos. La conexión <b>Ad-Hoc</b> es una conexión inalámbrica utilizada sin un \
punto de acceso mientras que la cámara está conectada directamente al PC.<br><br><b>Estudio del sitio</b>: se mostrará una ventana emergente \
para permitirle seleccionar una red inalámbrica para la conexión.<br><br><b>Modo de seguridad inalámbrica: </b><br><b>Ninguno</b>: no hay \
parámetro de cifrado.<br><b>Cifrado WEP</b>: privacidad equivalente a cableado, 64 bits y 128 bits en formato hexadecimal (0 - 9, a - f) o \
ASCII (texto).<br>64 bits -> 10 en hexadecimal o 5 en ASCII<br>128 bits -> 26 en hexadecimal y 13 en ASCII<br><b>WPA-PSK / WPA2-PSK</b>: acceso protegido inalámbrico con <b>clave precompartida</b>, debe rellenarse el campo de clave. Compatible con TKIP (Protocolo de integridad de clave temporal) y AES.",
"<b>Parámetros de red inalámbrica ampliada</b>: en esta sección, puede configurar la característica de extensor inalámbrico de la cámara \
que le permite ampliar el rango de una red inalámbrica existente. Puede elegir entre mantener el mismo nombre de red para la red extendida \
o puede crear uno nuevo.<br><br><b>Modo de seguridad inalámbrica: </b><br><b>Ninguno</b>: no hay parámetro de cifrado.\
<br><b>Cifrado WEP</b>: intimidad equivalente con cables, 64 bits y 128 bits en formato hexadecimal (0 - 9, a - f) o ASCII (texto).\
<br>64 bits -> 10 en hexadecimal HEX o 5 en ASCII<br>128 bits -> 26 en hexadecimal y 13 en ASCII<br><b>WPA-PSK / WPA2-PSK</b>: acceso protegido inalámbrico con <b>clave precompartida</b>, debe rellenarse el campo de clave. Compatible con TKIP (Protocolo de integridad de clave temporal) y AES.",
"<b>DNS dinámico</b>(Servidor de nombre de dominio dinámico): sincroniza automáticamente la dirección IP pública del módem. \
Todos los usuarios pueden conectarse a su cámara utilizando el <b>nombre de host</b> que ha adquirido de su ISP. Al utilizar el servicio DDNS, \
son necesarios el nombre de usuario y la contraseña.<br><br><b>Dirección del servidor</b>: la dirección del DDNS. Puede introducir la dirección \
manualmente o seleccionar un servidor DDNS del menú desplegable.<br><br><b>Nombre de host</b>: el nombre de dominio elegido del servicio DDNS.\
<br><br><b>Nombre de usuario</b>: el nombre de cuenta del servicio DDNS.<br><br><b>Contraseña</b>: la contraseña de la cuenta del servicio DDNS.\
<br><br><b>Tiempo de espera</b>: el intervalo de tiempo para que el DDNS reinicie la conexión.",
"<b>Filtro IP</b>: para activar los filtros IP de la cámara, debe seleccionar la casilla de selección de \"Filtrado de lista de acceso\". A continuación, cambie los parámetros detallados correspondientes a esta página.\
<br><br><b>Tipo de filtro</b>: puede seleccionar Permitir o Denegar para las direcciones IP especificadas en la Lista de filtros.\
<br><br><b>Lista de filtros</b>: las direcciones IP especificadas.\
<br><br><b>Única</b>: especifique una dirección IP única.\
<br><br><b>Subred</b>: especifique una subred de direcciones IP.\
<br><br><b>Rango</b>: especifique un rango de direcciones IP.\
<br><br><b>Dirección IP del administrador</b>: puede activar y establecer una dirección IP como dirección IP del administrador para permitir que siempre esté accesible para esta cámara.",
"<b>Brillo</b>: se utiliza para compensar en las escenas con retroiluminación.\
<br><br><b>Saturación</b>: controla la fuerza del color, desde el blanco y negro hasta los colores en negrita.\
<br><br><b>Contraste</b>: se puede ajustar para controlar el contraste de los colores entre los objetos. Ayuda a mejorar una imagen tomada bajo un cielo gris plomizo.\
<br><br><b>Matiz</b>: controla el distinto nivel de un color que estimula el ojo humano.\
<br><br><b>Nitidez</b>: se utiliza para ajustar la nitidez de la imagen.\
<br><br><b>B/N</b>: seleccione esta opción para activar o desactivar el modo blanco y negro de la cámara.\
<br><br><b>Reflejo</b>: seleccione esta característica para obtener una imagen reflejada.\
<br><br><b>Dar la vuelta</b>: seleccione esta característica cuando se instale la cámara invertida en el techo.\
<br><br><b>Frecuencia</b>: puede que necesite elegir una frecuencia Off, de 50 o de 60 Hz (dependiendo del país).",
"<b>Perfil de vídeo</b>: puede configurar por separado diferentes parámetros de imagen (como calidad de imagen y frecuencia de imagen) para los cuatro tipos de vídeo de la cámara: H.264 y JPEG.\
<br><br><b>Resolución</b>: existen varias opciones para dimensionar.\
<br><br><b>IPS</b> (Imágenes por segundo): el número máximo de imágenes mostradas en 1 segundo. 30 ips es la calidad de vídeo más alta para esta cámara. En general, cualquier frecuencia de imagen por encima de los 15 ips es imperceptible para el ojo humano.\
<br><br><b>bps</b> (bits por segundo): seleccione un ancho de banda fijo para el funcionamiento de la cámara. Esta opción permite al usuario seleccionar una frecuencia de imagen personalizada adecuada para el ancho de banda y el espacio de almacenamiento.\
<br><br><b>Calidad</b>: establezca la calidad de imagen. Cuando se selecciona Excelente, se consigue la mejor calidad de imagen.\
<br><br><b>CONFIGURACIÓN DE AUDIO</b>: puede encender o apagar el micrófono o ajustar el volumen.\
<br><br><b>Activar micrófono</b>: cuando se selecciona Activar, puede supervisar el audio desde el micrófono de la cámara IP.\
<br><br><b>Volumen del micrófono</b>: puede ajustar el volumen del micrófono utilizando el parámetro de nivel de volumen.",
"<b>Máscara de privacidad</b>: haga clic en el cuadro adjunto para activar esta función. Utilice ahora el ratón para dibujar un rectángulo que cubra la zona que desee ocultar.",
"<b>Detección de movimiento</b>: cuando está activada, la detección de movimiento está encendida. Cuando está desactivada, la detección de movimiento está apagada.",
"<b>Detección de sonido</b>: cuando está activada, la detección de sonido está encendida. Cuando está desactivada, la detección de sonido está apagada.",
"<b>Dirección del servidor SMTP</b>: este es el nombre de dominio o la dirección IP de su servidor de correo electrónico externo.\
<br><br><b>Dirección de correo electrónico del remitente</b>: es la dirección de correo electrónico de la persona que envía las imágenes de la cámara.\
<br><br><b>Dirección de correo electrónico del destinatario</b>: es la dirección de correo electrónico del destinatario para el servidor SMTP.\
<br><br><b>Nombre de usuario</b>: nombre de usuario de la cuenta de correo electrónico.\
<br><br><b>Contraseña</b>: la contraseña de la cuenta de correo electrónico.\
<br><br><b>Intervalo</b>: el intervalo de tiempo entre cada instantánea/clip de vídeo.\
<br><br><b>Utilice SSL-TLS/STARTTLS</b>: seleccione SSL-TLS o STARTTLS si el servidor SMTP requiere autenticación TLS.\
<br><br><b>Probar cuenta de correo electrónico</b>: se enviará una instantánea a la cuenta de correo electrónico que ha configurado. Si ha configurado correctamente la cuenta SMTP, podrá enviar un archivo de prueba a la dirección de correo electrónico del destinatario.",
"<b>Nombre de host</b>: se trata de la dirección IP del servidor FTP al que se va a conectar.\
<br><br><b>Puerto</b>: el puerto predeterminado es el 21.\
<br><br><b>Nombre de usuario</b>: el nombre de usuario requerido para acceder al servidor FTP externo.\
<br><br><b>Contraseña</b>: la contraseña requerida para acceder al servidor FTP externo.\
<br><br><b>Ruta</b>: el directorio o carpeta de destino en el servidor FTP externo.\
<br><br><b>Intervalo</b>: el intervalo de tiempo entre cada instantánea/clip de vídeo.\
<br><br><b>Modo pasivo</b>: activando el modo pasivo se permitirá el acceso a un servidor FTP externo si la cámara está detrás de un router protegido mediante cortafuegos.\
<br><br><b>Probar servidor FTP</b>: después de hacer clic en Probar, se enviará un archivo de imagen al servidor FTP. ",
"<b>Instantánea</b>: al seleccionar esta opción, puede enviar una o 6 imágenes fijas desde esta unidad a un servidor de correo electrónico o FTP.\
<br><br><b>Activado por</b><br><b>Movimiento</b>: empieza la instantánea tras la detección de un movimiento.\
<br><b>Programar</b>: instantánea a una hora especificada.\
<br><b>Siempre</b>: instantánea continua.\
<br><b>Sonido</b>: inicia la instantánea después de detectar el sonido.\
<br><br><b>Tipo de instantánea</b>: Instantánea única o 6 instantáneas.\
<br><br><b>Destino</b>: puede seleccionar el destino de la instantánea como FTP o correo electrónico.",
"<b>Clip de vídeo</b>: al seleccionar esta opción, puede enviar un clip de vídeo desde esta unidad a un servidor de correo electrónico o FTP.\
<br><br><b>Activado por</b><br><b>Movimiento</b>: empieza el clip de vídeo tras la detección de un movimiento.\
<br><b>Programar</b>: crear clip de vídeo a una hora especificada.\
<br><b>Siempre</b>: clip de vídeo continuo.\
<br><b>Sonido</b>: inicia el clip de vídeo después de detectar el sonido.\
<br><br><b>Clip de vídeo</b>: puede seleccionar el perfil de vídeo que desee para grabar los clips de vídeo y establecer aquí la grabación del evento previo y la duración máxima.\
<br><br><b>Grabación del evento previo</b>: especifique cuántos segundos de vídeo se grabarán antes de realizar el clip de vídeo.\
<br><br><b>Duración máxima</b>: especifique los segundos de clip de vídeo.\
<br><br><b>Destino</b>: puede seleccionar el destino del clip de vídeo como FTP o correo electrónico.",
"<b>Zona horaria</b>: la zona geográfica para el ajuste de la hora local de la cámara.\
<br><br><b>Activar el horario de verano</b>: enciende el modo de horario de verano que ajustará la hora, en función del desfase horario del horario de verano y de las fechas.\
<br><br><b>Horario de verano automático</b>: al seleccionarlo, el reloj se ajusta automáticamente de acuerdo con el horario de verano de la zona horaria seleccionada.\
<br><br><b>Configurar DST manualmente</b>: ajuste y establezca manualmente las reglas de horario de verano.\
<br><br><b>Desfase</b>: establezca la cantidad de tiempo que se debe añadir o quitar a la hora cuando se activa el horario de verano.\
<br><br><b>Fechas del horario de verano</b>: establezca las fechas y la hora en que comienza y termina el horario de verano.\
<br><br><b>Sincronizar con el servidor NTP</b>: con la opción seleccionada, la cámara sincronizará los parámetros de tiempo con el servidor NTP a través de Internet siempre que se inicie la cámara. Si no se puede llegar al servidor NTP, no se aplicarán los parámetros de tiempo.\
<br><br><b>Servidor NTP</b>: la dirección IP o el nombre de dominio del servidor NTP.\
<br><br><b>Establecer fecha y hora manualmente</b>: ajuste y establezca de forma manual la fecha y la hora.\
<br><br><b>Copiar los parámetros horarios del ordenador</b>: para sincronizar la fecha y la hora de la cámara con su ordenador.",
"<b>Automático</b>: la cámara alterna automáticamente entre los modos de día y de noche. La cámara funciona normalmente en modo Día. Cambia automáticamente al modo Noche cuando la iluminación es más oscura.\
<br><br><b>Manual</b>: el usuario puede controlar manualmente el funcionamiento de la cámara en el modo Día o Noche en la página de visualización de vídeo en directo.\
<br><br><b>Siempre en modo Día</b>: la cámara siempre funciona en modo Día.\
<br><br><b>Siempre en modo Noche</b>: la cámara siempre funciona en modo Noche.\
<br><br><b>Programa de modo de Día</b>: la cámara funciona en modo Día en función del día y la hora configurados en el programa. La cámara cambia al modo Noche durante todas las horas restantes.",
"<b>Tarjeta SD</b> : esto puede indicar la ruta actual de la tarjeta SD.\
<br><br><b>Estado de la SD</b> : esto puede indicar el estado actual de la tarjeta SD (si se ha introducido o detectado).\
<br><br><b>Archivos por página</b> : el número de archivos por página.\
<br><br><b>Actualizar</b> : esta opción se utiliza para cargar de nuevo el contenido de la página web con los datos más actuales.\
<br><br><b>Páginas</b> : puede seleccionar la página que desea mostrar aquí.\
<br><br><b>Eliminar</b> : el botón borrar se utiliza para borrar los archivos o carpetas seleccionados.\
<br><br><b>Nombre</b> : muestra el nombre de todos los archivos o carpetas guardados.\
<br><br><b>Tamaño</b> : muestra el tamaño del archivo.\
<br><br><b>Formatear tarjeta SD</b> : esta opción se utiliza para eliminar todos los datos guardados en la tarjeta SD.\
<br><br><b>Total</b> : la capacidad total de la tarjeta SD.\
<br><br><b>Utilizado</b> : la capacidad utilizada de la tarjeta SD.\
<br><br><b>Libre</b> : la capacidad libre de la tarjeta SD.",
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