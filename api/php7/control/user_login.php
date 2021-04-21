<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/AutenticationUser.php";

$conectar = new Conexion();
$conexion = $conectar -> BDMysqlBigNovaSoftware();

$UserEmail = $array['UserEmail'];
$UserPassword = $array['UserPassword'];

$result_autentication = (new AutenticationUser())->Autentication($conexion, $UserEmail, $UserPassword  );

(new Response())->ResponseInfiniteObjects($result_autentication);
