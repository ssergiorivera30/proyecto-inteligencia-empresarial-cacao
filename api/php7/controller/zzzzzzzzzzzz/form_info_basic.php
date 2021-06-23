<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Forms.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$response = new Response();

$Form = $array['Form'];
$OrderForm = $array['OrderForm'];

if($array['OrderForm'] == 'load'){

	$respuesta = (new Forms())->LoadInfoBasicForm($conection, $Form);
	$response_view = $response -> ResponseMsgObject($respuesta['respuesta'], $respuesta['object']);

}
