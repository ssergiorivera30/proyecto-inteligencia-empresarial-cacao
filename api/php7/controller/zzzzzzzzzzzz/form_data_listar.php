<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

$id_form = $array['id_form'];

require_once "../services/Conexion.php";
$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();


$NAME_TABLE = "table_form_".$id_form;

$sql = "SELECT * FROM $NAME_TABLE";
$stm = $conection -> prepare($sql);
$stm -> execute();


require_once "../services/Response.php";
$response = new Response();
$response_view = $response -> ResponseInfiniteObjects($stm->fetchAll());