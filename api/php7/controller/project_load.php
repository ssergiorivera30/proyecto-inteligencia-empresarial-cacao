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

$response = new Response();

$UserService = $array['UserService'];

$respuesta = (new Projects())->LoadProjects($conection, $UserService);

$response -> ResponseInfiniteObjects( $respuesta );