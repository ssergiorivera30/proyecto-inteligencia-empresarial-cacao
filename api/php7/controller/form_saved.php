<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/CoreTables.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$FormId = $array['FormId'];
$ArrayInputs = $array['ArrayInputs'];

$ID_MOTHER_TABLE = (new CoreTables())->CreateRegisterMotherTable( $conection, $FormId, $ArrayInputs );

$NAME_TABLE = 'table_form_'.$FormId;

$QUERY_TABLE = array('nombre_tabla'=> "CREATE TABLE $NAME_TABLE ( id INT AUTO_INCREMENT PRIMARY KEY ");
$QUERY_FINA_TABLE = array();


// var_dump($ArrayInputs);


foreach ($ArrayInputs as $key => $value) {


	if( $value['input']['type'] == 'text'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(120) ');

	}

	if( $value['input']['type'] == 'number'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' INT(10) ');
		
	}
	

	if( $value['input']['type'] == 'textarea'){
		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' TEXT(600) ');		
	}

	if( $value['input']['type'] == 'email'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(50) ');
		
	}

	if( $value['input']['type'] == 'tel'){

			$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(15) ');
		
	}


	if( $value['input']['type'] == 'file'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(120) ');
		
	}


	if( $value['input']['type'] == 'password'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(120) ');
		
	}

	if( $value['input']['type'] == 'url'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(200) ');
		
	}

	if( $value['input']['type'] == 'date'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' DATE ');
		
	}

	if( $value['input']['type'] == 'datetime-local'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' DATETIME ');

	}

	if( $value['input']['type'] == 'time'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' TIME ');
		
	}

	if( $value['input']['type'] == 'color'){

		$input_name = strtr($value['input']['name'], " ", "_");
		array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(8) ');
		
	}

}

// foreach ($ArrayInputs as $key => $value) {

// 	if( $value['input']['type'] == 'select'){
		
// 	}


// 	if( $value['input']['type'] == 'checkbox'){

// 	}

// 	if( $value['input']['type'] == 'radio'){
		
// 	}
// }



	


// foreach ($QUERY_TABLE as $key => $value) {

// 	$_THE_QUERY = $value;
	
// 	$QUERY_FINA_TABLE[] = $_THE_QUERY;
// }


$QUERY_TABLE_SENTENCE_END = ' )';

array_push($QUERY_TABLE, $QUERY_TABLE_SENTENCE_END);

$separado_por_comas = implode(" ", $QUERY_TABLE);


$sql = "SELECT ? FROM information_schema.tables WHERE table_schema = 'big_nova_software' AND table_name = ?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $NAME_TABLE);
		$stm -> bindParam(2, $NAME_TABLE);
		$stm -> execute();



if( $stm->rowCount() > 0 ){

	$message = '😬 Este formulario ya cuanta con entradas personalizadas';
	$icono = 'warning';

}else{

	$MYSQL_TABLE_IS = $separado_por_comas;

	$CREATE_TABLE = $conection -> prepare( $MYSQL_TABLE_IS );
	$CREATE_TABLE -> bindParam(1, $id_form);
	$CREATE_TABLE -> execute();	


	if( $CREATE_TABLE->rowCount() > 0){

		$message = '✨ Excelente ! Entradas del formulario creadas';
		$icono = 'success';

	}else{

		$message = '✨ Verificar formularios en el módulo anterior';
		$icono = 'warning';

	}

}


$response = new Response();
$response -> ResponseMsgIconoCode($message, $icono, null);