<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../model/Conexion.php";
require_once "../model/Forms.php";
require_once "../model/Response.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$CodeUserPetition = $array['CodeUserPetition'];

$create = (new Forms())->LoadFormsByUsers($conection);

$response = new Response();
$response_view = $response -> ResponseInfiniteObjects($create);