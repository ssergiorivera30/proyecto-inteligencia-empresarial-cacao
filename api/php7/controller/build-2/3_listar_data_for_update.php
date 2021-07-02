<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();


$id_service = intval($array['id_service']);
$id_record = intval($array['id_service']);



// Obtener datos de la tabla

require_once "../../model-build/ServicesBuild.php";
$ServiceInformation = new ServicesBuild();
$TYPE_SERVICE = $ServiceInformation->GetTypeService( $conexion, $id_service );
$NAME_TABLE = $ServiceInformation->GetInfoTypeService($TYPE_SERVICE['id'], $id_service);

// Obtener el JSON e información del Servicio (formulario)

$JSON_DATA_SERVICE = (new ServicesBuild())->GetFullService($conexion, $id_service);
foreach ($JSON_DATA_SERVICE['data_json'] as $key => $value) {
	 // var_dump($value['input']['token']);
}

require_once "../../model-build/Service_Listar_Update.php";
$data_record_by_id = (new Service_Listar_Update())->SelectDataById($conexion, $id_record, $NAME_TABLE);
// var_dump( $data_record_by_id );

// foreach ($data_record_by_id as $key_hijo => $value_hijo) {
// 	 var_dump($value_hijo['key']);
// }


// foreach ($JSON_DATA_SERVICE['data_json'] as $key_padre => $value_padre) {
// 		echo $value_padre['input']['token'];
// 		 echo '<br>'; echo '<br>';

		

		
// 	}

// 	 echo '<br>'; echo '<br>';

// 	echo '<br>';

// 	foreach ($data_record_by_id as $key_hijo => $value_hijo) {
// 			// echo $value_hijo['key'];
// var_dump($value_hijo['key']);
			
// 			// echo ' = ';
// 			// echo $value_hijo['value'];
// 			echo '<br>';

// 		}




require_once "../../services/Response.php";
$response = new Response();
$response_view = $response -> ResponseMsgObject($JSON_DATA_SERVICE['respuesta'], $JSON_DATA_SERVICE['object']);
