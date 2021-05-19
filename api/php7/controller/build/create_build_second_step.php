<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

// ****************************************************** //

$id_service = $array['id_service'];
$JSON_inputs = $array['JSON_inputs'];


// ****************************************************** //








require_once "../../model/ServicesBuild.php";

$class_object = new ServicesBuild();

// AQUÍ GUARDAMOS EL JSON EN LA TABLA => tbl_services

$ingrese_json_inputs = $class_object->UpdateJSONServices( $conection, $id_service, $JSON_inputs );

if( $ingrese_json_inputs < 1 ){

	ResponseSystem('😬 Sin cambios registrados', 'warning');
}







// LA SIGUIENTE CONDICIÓN ES PARA FILTRAR LOS SERVICIOS A LOS QUE NO SE LES CREA TABLA EN MYSQL, ES DECIR 
// QUE LOS DATOS SE ALMACENARÁN EN EL MISMO JSON

$type_service = $class_object->GetTypeService( $conection, $id_service );

if($type_service['id'] == 1 || $type_service['id'] == 2){

	ResponseSystem('✨ Excelente! Entradas creadas correctamente', 'success');
}











// ****************************************************** //

require_once "../../model/CoreTables.php";
$class_core_table = new CoreTables();


// NOBRE DE LOS SERVICIOS DISPONIBLES EN EL SOFTWARE



$NAME_TABLES_SERVICES = array(	1 => 'z1_group_'.$id_service, 
								2 => 'z2_project_'.$id_service,
								3 => 'z3_entity_'.$id_service,
								4 => 'z4_form_'.$id_service  );

$NAME_TABLE = $NAME_TABLES_SERVICES[$type_service['id']];

// VERIFICAMOS SI EXISTE EL NOMBRE DE LA TABLA EN LA BASE DE DATOS

$verificar_existencia_tabla = $class_core_table->VeridicarExistenciaTabla( $conection, $NAME_TABLE );

if( $verificar_existencia_tabla > 0 ){

	ResponseSystem('😬 El objeto ya existe', 'error');
}











// ****************************************************** //

require_once "../../model/ConstructorTable.php";
$class_constructor = new ConstructorTable();

// ****************************************************** //


// SI NO EXISTE LA TABLA, GENERAMOS LA CONSULTA SQL DE LA TABLA

if( $ingrese_json_inputs >= 1 && $verificar_existencia_tabla < 1 )
{	
	
	$sql_tabla_construida = $class_constructor ->GeneratorSqlTable($NAME_TABLE, $JSON_inputs);

	// CON EL SQL DE LA TABLA GENERADO, AHORA LO EJECUTAMOS PARA GENERAR LA TABLA EN MYSQL

	$ejecucion_consulta = $class_core_table->CreateTableTabla( $conection, $sql_tabla_construida, $NAME_TABLE);

	if( $ejecucion_consulta > 0 ){				
			
		ResponseSystem('✨ Excelente! Entradas creadas correctamente', 'success');

	} else {

		ResponseSystem('😬 Error al crear el registro', 'warning');
	}		
}









// ****************************************************** //


// FUNCIÓN QUE ENVIA LA RESPUESTA AL USUARIO

function ResponseSystem($message, $icono){
	require_once "../../services/Response.php";
	$response = new Response();
	$response -> ResponseMsgIconoCode( $message, $icono, null);
}