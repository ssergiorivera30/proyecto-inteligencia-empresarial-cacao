<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

$id_service = $array['id_service'];

require_once "../../services/Conexion.php";
$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();

require_once "../../model-build/ServicesBuild.php";

$ServiceInformation = new ServicesBuild();

$TYPE_SERVICE = $ServiceInformation->GetTypeService( $conexion, $id_service );
$NAME_TABLE = $ServiceInformation->GetInfoTypeService($TYPE_SERVICE['id'], $id_service);


require_once "../../model-build/ListNameAndData.php";
$List_data_and_name = new ListNameAndData();


// GET TH -> NOMBRE DE LAS COLUMNAS DE DATOS

$columns = $List_data_and_name->GetNameDataService($conexion, $id_service);

// GET DATA

$rows = $List_data_and_name->GetDataRegistredService($conexion, $NAME_TABLE);


$arrayResponse = array('rows' => $rows, 'columns' =>  $columns);

require_once "../../services/Response.php";
$response = new Response();
$response_view = $response -> ResponseInfiniteObjects($arrayResponse);

