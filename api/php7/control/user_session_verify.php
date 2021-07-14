<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

session_start();

// comentar estas variables cuando se ponga el software en producción

$_SESSION['USER_STATE'] = true;
$_SESSION['USER_CODE']  = 1;
$_SESSION['USER_NAME']  = 'Sergio Yamit Rivera Flor';

// Fin de código a comentar

$USER_STATE_SESSION = isset($_SESSION['USER_STATE'] ) ? $_SESSION['USER_STATE'] : false;
$USER_CODE_SESSION = isset($_SESSION['USER_CODE'] ) ? $_SESSION['USER_CODE'] : null;
$USER_NAME_SESSION = isset($_SESSION['USER_NAME'] ) ? $_SESSION['USER_NAME'] : null;

$RUTA_LOGIN = 'https://grupodeinvestigacionnova.com/';

