<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

// Conexión a la base de datos

require_once "../../services/Conexion.php";
$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();

// Parametros enviados por el clientes desde el frontend 

$id_service = intval($array['id_service']);
$id_record = intval($array['id_record']);

// Obtener datos del servicio para poder identificar tabla en la que se
// almacenan los datos personalizados del servico

require_once "../../model-build/ServicesBuild.php";
$ServiceInformation = new ServicesBuild();

$TYPE_SERVICE = $ServiceInformation->GetTypeService( $conexion, $id_service );
$NAME_TABLE = $ServiceInformation->GetInfoTypeService($TYPE_SERVICE['id'], $id_service);

// Obtener el JSON e información del Servicio (formulario)

$JSON_DATA_SERVICE = (new ServicesBuild())->GetFullService($conexion, $id_service);

// lista de llaves, nombres de los campos de la Bases de datos y sus values

require_once "../../model-build/Service_Listar_Update.php";
$data_record_by_id = (new Service_Listar_Update())->SelectDataById($conexion, $id_record, $NAME_TABLE);

// Asociamos los datos a los del data_json que se usa para mostrar los inputs en el formulario

foreach ($JSON_DATA_SERVICE['data_json'] as $key_padre => $value_padre) {

	$JSON_DATA_SERVICE['data_json'][$key_padre]['input']['value'] = $data_record_by_id[$value_padre['input']['token']];	
}

$ResponseObject = array( 'object' =>  $JSON_DATA_SERVICE['object'], 'complete' =>  $JSON_DATA_SERVICE['data_json']  );

require_once "../../services/Response.php";
$response = new Response();
$response_view = $response -> ResponseInfiniteObjects($ResponseObject);

// $obj_arr = (array) $JSON_DATA_SERVICE['data_json'];