<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../services/Response.php";

require_once "../../model-build/registrar_data.php";

$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();

$response = new Response();

$id_service = $array['id'];
$name_table = 'z3_entity_4';
$data = $array['data'];


$get_data_table_service = RegistrarData::GedDataTabeService($conexion, $id_service);


$name_table = $get_data_table_service['tbl_name_service'].$id_service;

// Obtención de parametros

$name_camp = '';

foreach ($data as $key => $value) {
	$name_camp = $name_camp .  ' ' . $value['input']['token'].'_'.$id_service.', ';
}


$name_camp = ''.$name_camp.' '.$name_table.'_hour_created, '.$name_table.'_date_created';


$sql = "INSERT INTO $name_table ( $name_camp ) VALUES ( ";

// Creación de parametros anonimos (?,?,?,?,?)

$size_sentence = sizeof( $array['data']);

for ($i=0; $i <= sizeof( $array['data'] ) - 1; $i++) { 

	if( $size_sentence-2 < $i){

		$sql.= ' ? ';

	}else{

		$sql.= ' ?, ';
	}	
}

// 	Ejecución de la consulta SQL

$stm = $conexion->prepare($sql.', NOW(), NOW() ) ');


	$item = 1;
	$mis_values = array_values($array['data']);

	for ($i=0; $i < sizeof( $array['data'] ); $i++) {

		$stm->bindParam($item, $mis_values[$i]['input']['value']);
		$item = $item  + 1;
	}

$stm->execute();

// Verificamos la respuesta de la ejecución de la consulta SQL

if( $stm->rowCount() > 0){

	$response = array('status' => 'success', 'message' => 'Registro guardado' );

}else{

	$response = array('status' => 'warning', 'message' => 'A ocurrido un error' );
}

echo json_encode( $response );