<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../control/user_session_verify.php";
require_once "../model/Objects.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();


$USER_CODE = $_SESSION['USER_CODE'];

$create = (new Objects())->LoadObjectsByUsers($conection);

$response = new Response();
$response_view = $response -> ResponseInfiniteObjects($create);