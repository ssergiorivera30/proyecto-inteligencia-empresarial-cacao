<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../services/Response.php";
require_once "../../model/Objects.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();



$type_service = $array['type_service'];
$id_user = 1;


$respuesta = (new Objects())->EntitysLoad($conection, $type_service, $id_user);

$arrayName = array( 'components' => $respuesta );
$response = new Response();
$response -> ResponseInfiniteObjects( $arrayName );