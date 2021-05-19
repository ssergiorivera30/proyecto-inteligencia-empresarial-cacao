<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../services/Response.php";
require_once "../../model/ServicesBuild.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$serviceId = $array['serviceId'];
$ServiceName = $array['ServiceName'];
$ServiceDescription = $array['ServiceDescription'];

$create = (new ServicesBuild())->UpdateServiceBasic($conection, $serviceId, $ServiceName, $ServiceDescription );

$create = isset($create) ? $create : 0;

$message = $create > 0 ? '✨ Información actualizada' : '😬 Sin cambios registrados';
$icono = $create > 0 ? 'success' : 'warning';

$response = new Response();
$response_view = $response -> ResponseMsgIcono($message, $icono);