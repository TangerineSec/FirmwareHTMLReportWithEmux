var languageNum = new Array("en","sc","tc");
var item_name = new Array("Guardar parámetros", "No guardar parámetros", "Guardar", 
"GESTION DE SD",
"TARJETA SD",
"NO VALIDA",
"Total:",
"Libre:",
"Formatear tarjeta SD",
" KB",
"Tenga en cuenta que no hay ninguna tarjeta SD enchufada en la camara o no se puede escribir en la tarjeta SD.",
"?Desea desactivar la grabacion y reiniciar?",
"?Desea inicializar?",
"Estado de la SD: ",
"Protegido contra escritura",
"Listo",
"No valido",
"?Desea hacer copia de seguridad de los archivos?",
"?Desea formatear la tarjeta SD?",
"La tarjeta SD esta totalmente formateada.",
"Tarjeta SD",
"Tipo de grabacion: ",
"Tipo de grabacion ",
"Nombre",
"Numero de archivos",
"Tamano",
"Tamano",
"Utilizado:",
"video",
"Fecha",
"Hora",
"Archivo",
"Eliminar",
"Aceptar",
"Se eliminara el archivo seleccionado ?esta seguro?",
"No se ha seleccionado ningun archivo.",
"Actualizar",
"Subir un nivel",
"Archivos por pagina:",
"de",
"Error al formatear la tarjeta SD.",
"La camara esta grabando ahora los archivos en la tarjeta SD, detenga la grabacion antes de formatearla.",
"ACTIVAR GRABACION DE LA TARJETA SD",
"Si desea explorar la tarjeta SD, desactive primero la tarjeta SD en",
"Grabacion",
"la pagina.",
"SISTEMA DE ARCHIVOS DANADO",
"El sistema de archivos de la tarjeta SD esta danado. Siga las instrucciones que aparecen a continuacion para recuperarlo.",
"Capacidad de la tarjeta SD completa",
"Desactive la grabacion y reinicie la camara.",
"Haga copia de seguridad de los archivos grabados y reformatee la tarjeta SD o la grabacion de la tarjeta SD puede fallar facilmente.",
"Tras el paso 2, puede ir a ",
" la pagina para volver a activar la grabacion.",
"Lleve a cabo los pasos siguientes una vez reiniciada la camara:",
"Desactive la grabacion y reinicie la camara",
"Se ha reiniciado la camara, espere durante ",
" segundos ...",
"Error al desactivar la grabacion.",
"Sobre 16 G",
"Espere",
"Espere",
"Reinicializacion",
"Paginas:",
"Procesando",
""
);
var I_SAVE_SETTING = 0;
var I_NOT_SAVE_SETTING = 1;
var I_SAVING = 2;
var I_SDMANAGEMENT = 3
var I_SDMANAGEMENT_ITEM = 4
var I_INVAKID = 5
var I_TOTAL_SPACE = 6
var I_OVER_SPACE = 7
var I_SD_FORMAT = 8
var I_KB = 9
var I_SDNOTE = 10
var I_REBOOT_CONFIRM = 11
var I_REBOOT_CONFIRM2 = 12
var I_SDCARDSTATUS = 13
var I_WRITE_PROTECTED = 14
var I_CARD_READY = 15
var I_CARD_INVALID = 16
var I_BACKUP_CONFIRM = 17
var I_FORMAT_CONFIRM = 18
var I_COMPLETE_FORMAT = 19
var I_RECORDS = 20
var I_RECORD_TYPE = 21
var I_RECORD_TYPE1 = 22
var I_NAME = 23
var I_NUM_OF_FILES = 24
var I_FILE_SIZE = 25
var I_FOLDER_SIZE = 26
var I_USED_SPACE = 27
var I_VIDEO = 28
var I_DATE = 29
var I_HOUR = 30
var I_FILE = 31
var I_DELETE = 32
var I_OK = 33
var I_DELETE_CONFIRM = 34
var I_DELETE_CONFIRM1 = 35
var I_REFRESH = 36
var I_TOP_LEVEL = 37
var I_FILE_PER_PAGE = 38
var I_PAGE_OF = 39
var I_FORMAT_FAILED = 40
var I_FORMAT_RECORDING = 41
var I_SD_REC_ERROR = 42
var I_SD_REC_ERROR1 = 43
var I_RECORDING = 44
var I_SD_REC_ERROR2 = 45
var I_FORMAT_ERROR = 46
var I_FORMAT_ERR_MSG = 47
var I_WRITE_FULL = 48
var I_RECORD_ERR1 = 49
var I_RECORD_ERR2 = 50
var I_RECORD_ERR3 = 51
var I_RECORD_ERR4 = 52
var I_FORMAT_ERR_MSG2 = 53
var I_RECOVER = 54
var I_REBOOT1 = 55
var I_REBOOT2 = 56
var I_DIABLE_REC_FAIL = 57
var I_OVER_4G = 58
var I_WAIT = 59
var I_ONLY_WAIT = 60
var I_REINIT = 61
var I_PAGE = 62
var I_PROCESSING = 63;

var des_item_name = new Array (
"Aquí podrá explorar y gestionar los archivos que se almacenaron en la tarjeta SD.",
"Tenga en cuenta que no hay ninguna tarjeta SD enchufada en la cámara o no se puede escribir en la tarjeta SD.<br>Para formatear la tarjeta SD de la cámara, desactive primero la grabación SD.",
"<b>Sugerencias útiles.</b><br><br><b>Tarjeta SD</b><br>Esto puede indicar la ruta actual de la tarjeta SD.<br><br><b>Estado de la SD</b><br>Esto puede indicar el estado actual de la tarjeta SD (si se ha introducido o detectado).<br><br><b>Archivos por página</b><br>El número de archivos por página.<br><br><b>Páginas</b><br>Puede seleccionar la página que desea mostrar aquí.<br><br><b>Formatear tarjeta SD</b><br>Haga clic en este botón para formatear automáticamente la tarjeta SD y crear la carpeta de instantánea y vídeo. Para formatear la tarjeta SD, necesita desactivar primero la grabación SD.<br><br><b>Total</b><br>La capacidad total de la tarjeta SD.<br><br><b>Utilizado</b><br>La capacidad utilizada de la tarjeta SD.<br><br><b>Libre</b><br>La capacidad libre de la tarjeta SD.<br>",
""
);

var D_TITLE_INFO = 0;
var D_ERROR_INFO = 1;
var D_HELP_INFO = 2;

var pop_msg = new Array (
"Se ha producido un problema con la solicitud.",
""
);

var PMSG_REQUEST_FAILED = 0;