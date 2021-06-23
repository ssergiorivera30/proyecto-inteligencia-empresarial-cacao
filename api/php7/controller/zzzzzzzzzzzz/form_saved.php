<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/CoreTables.php";
require_once "../model/ConstructorTable.php";




$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();


$ID_FORM = $array['FormId'];
$ArrayInputs = $array['ArrayInputs'];

$NAME_BD = "big_nova_software";
$NAME_TABLE = 'z_form_'.$ID_FORM;

$class_core_table = new CoreTables();
$registrar_formulario = $class_core_table->CreateRegisterMotherTable( $conection, $ID_FORM, $ArrayInputs );

if($registrar_formulario > 0){

	$verificar_existencia_tabla = $class_core_table->VeridicarExistenciaTabla( $conection, $NAME_TABLE );

	if($verificar_existencia_tabla > 0){

		$message = 'El formulario ya existe';
		$icono = 'error';		

	}else{

		$message = '✨ Consulta SQL de la tabla generada correctamente';
		$icono = 'success';

		$class_constructor = new ConstructorTable();
		$sql_tabla_construida = $class_constructor ->GeneratorSqlTable($NAME_TABLE, $ArrayInputs);

		// echo $sql_tabla_construida;

		$ejecucion_consulta = $class_core_table->CreateTableTabla( $conection, $sql_tabla_construida, $NAME_TABLE);

			if($ejecucion_consulta > 0){
				
				$message = '✨ Excelente! Tu formulario fue creado correctamente';
				$icono = 'success';

			}else{

				$message = 'Error al crear el registro';
				$icono = 'warning';
			}		


	}


}else{


		$message = 'El código de este formulario ya se encuentra en uso.';
		$icono = 'warning';

}


$response = new Response();
$response -> ResponseMsgIconoCode($message, $icono, null);