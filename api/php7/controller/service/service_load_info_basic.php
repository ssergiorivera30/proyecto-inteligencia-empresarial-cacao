<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../services/Response.php";
require_once "../../model/ServiceInfoBasic.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$response = new Response();

$service_id = $array['service_id'];

$respuesta = (new ServiceInfoBasic())->LoadInfoBasicOneService($conection, $service_id, 1);
$response_view = $response -> ResponseMsgObject($respuesta['respuesta'], $respuesta['object']);