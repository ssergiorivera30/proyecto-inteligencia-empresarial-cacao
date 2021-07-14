<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();


require_once "../../services/Response.php";
require_once "../../model-build/ServicesBuild.php";
require_once "../../control/user_session_verify.php";
require_once "../../model-build/Structure_Service.php";
require_once "../../model/PermissionsUserLoad.php";

// Variables de SESSION

$USER_CODE = $_SESSION['USER_CODE'];

// Variables recibidas por POST

$ServiceType = $array['ServiceType'];
$ServiceFather = $array['ServiceFather'];
$ServiceName = $array['ServiceName'];
$ServiceDescription = $array['ServiceDescription'];

// Inicia capa modelo

$create_array = (new ServicesBuild())->CreateService($conexion, $ServiceType, $ServiceName, $ServiceDescription);

$create_array = isset($create_array) ? $create_array : 0;


$create_first_structure = (new Structure_Service())->CreateFirstStructure($conexion, $ServiceFather, $create_array['id']);



$create_propietario = (new PermissionsUserLoad())->UserPermissionCreate($conexion, $create_array['id'], $USER_CODE, 1);

// Uinificamos la respuesta de crear estructura con la de registrar persmisos de propietario => structure_and_permissions

$structure_and_permissions = $create_first_structure.$create_propietario['status'];

// Fin capa modelo

$message = $create_array['respuesta'] > 0 ? '✨ Excelente! ahora falta personalizar los datos requeridos para terminar, '.$structure_and_permissions : '😬 Algo a salido mal, favor reintentar. '.$structure_and_permissions;

$icono = $create_array['respuesta'] > 0 ? 'success' : 'warning';

$response = new Response();
$response_view = $response -> ResponseMsgIconoCode($message, $icono, $create_array['id']);