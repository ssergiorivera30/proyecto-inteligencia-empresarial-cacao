<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();


$id_service = intval($array['id_service']);
$id_record = intval($array['id_service']);



// Obtener datos de la tabla

require_once "../../model-build/ServicesBuild.php";
$ServiceInformation = new ServicesBuild();
$TYPE_SERVICE = $ServiceInformation->GetTypeService( $conection, $id_service );
$NAME_TABLE = $ServiceInformation->GetInfoTypeService($TYPE_SERVICE['id'], $id_service);

// Obtener el JSON e información del Servicio (formulario)

$JSON_DATA_SERVICE = (new ServicesBuild())->GetFullService($conection, $id_service);


require_once "../../model-build/Service_Listar_Update.php";
$data_record_by_id = (new Service_Listar_Update())->SelectDataById($conection, $id_record);





require_once "../../services/Response.php";
$response = new Response();
$response_view = $response -> ResponseMsgObject($JSON_DATA_SERVICE['respuesta'], $JSON_DATA_SERVICE['object']);
