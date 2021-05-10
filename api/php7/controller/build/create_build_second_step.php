<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

// #####################################################

require_once "../../services/Conexion.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

// #####################################################

require_once "../../model/ServicesBuild.php";

$class_object = new ServicesBuild();

// #####################################################

require_once "../../model/CoreTables.php";
$class_core_table = new CoreTables();

// #####################################################

require_once "../../model/ConstructorTable.php";
$class_constructor = new ConstructorTable();

// #####################################################

$id_service = $array['id_service'];
$JSON_inputs = $array['JSON_inputs'];


$ingrese_json_inputs = $class_object->CreateServiceMotherTable( $conection, $id_service, $JSON_inputs );

if( $ingrese_json_inputs < 1 ){

	ResponseSystem('El código de este objeto ya se encuentra en uso', 'warning');
}

$type_service = 3;
$NAME_TABLE = 'z_entity_'.$type_service;

$verificar_existencia_tabla = $class_core_table->VeridicarExistenciaTabla( $conection, $NAME_TABLE );

if( $verificar_existencia_tabla > 0 ){

	ResponseSystem('El objeto ya existe', 'error');
}




// if( $ingrese_json_inputs >= 1 && $verificar_existencia_tabla < 1 ){

// 	ResponseSystem('✨ Consulta SQL de la tabla generada correctamente', 'success');

// 	
// 	$sql_tabla_construida = $class_constructor ->GeneratorSqlTable($NAME_TABLE, $ArrayInputs);


// 	$ejecucion_consulta = $class_core_table->CreateTableTabla( $conection, $sql_tabla_construida, $NAME_TABLE);

// 	if( $ejecucion_consulta > 0 ){				
			
// 		ResponseSystem('✨ Excelente! Tu objeto fue creado correctamente', 'success');

// 	} else {

// 		ResponseSystem('Error al crear el registro', 'warning');
// 	}		
// }


function ResponseSystem($message, $icono){
	require_once "../../services/Response.php";
	$response = new Response();
	$response -> ResponseMsgIconoCode( $message, $icono, null);
}