<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../model/Projects.php";
require_once "../../services/Response.php";

$id_service = $array['id_service'];

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();


$respuesta = (new Projects())->LoadProjectsIdBasics($conection, $id_service);


$response = new Response();
$response -> ResponseInfiniteObjects( $respuesta );