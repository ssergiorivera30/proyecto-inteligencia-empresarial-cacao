<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Projects.php";
require_once "../control/user_session_verify.php";


$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$USER_CODE = $_SESSION['USER_CODE'];

$ProjectName = $array['ProjectName'];
$ProjectCode = $array['ProjectCode'];
$ProjectEntity = $array['ProjectEntity'];


$create = (new Projects())->CreateProjects($conection, $ProjectName, $USER_CODE);


$message = $create['respuesta'] > 0 ? '✨ Excelente ! tu proyecto fue creado correctamente' : '😬 Algo a slaido mal, favor reintentar';

$icono = $create['respuesta'] > 0 ? 'success' : 'warning';

if($create['id'] !=  0){

	$create_code_project = (new Projects())->RegisterCodeProjects($conection, $create['id'], $ProjectCode, $ProjectEntity);

}


$response = new Response();



// RegisterCodeProjects

// $create['id']

// ResponseMsgIcono($mensaje, $icono)

// ResponseMsgIconoCode($mensaje, $icono, $code)

// ResponseMsgObject($mensaje, $object)

// ResponseInfiniteObjects($object)


$response_view = $response -> ResponseMsgIcono($message, $icono);