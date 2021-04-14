<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Projects.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$ProjectName = $array['ProjectName'];
$ProjectCode = $array['ProjectCode'];
$ProjectEntity = $array['ProjectEntity'];


$create = (new Projects())->CreateProjects($conection, $ProjectName);


$message = $create['respuesta'] > 0 ? '✨ Excelente ! ahora construye tu formulario' : '😬 Algo a slaido mal, favor reintentar';

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