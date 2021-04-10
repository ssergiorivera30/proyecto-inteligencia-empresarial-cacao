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
$NAME_TABLE = 'table_form_'.$ID_MOTHER_TABLE;

$QUERY_TABLE = array('nombre_taba'=> "CREATE TABLE $NAME_TABLE ( id INT AUTO_INCREMENT PRIMARY KEY ");
$QUERY_FINA_TABLE = array();



var_dump($ArrayInputs);


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



	
var_dump($QUERY_TABLE);

// foreach ($QUERY_TABLE as $key => $value) {

// 	$_THE_QUERY = $value;
	
// 	$QUERY_FINA_TABLE[] = $_THE_QUERY;
// }


$QUERY_TABLE_SENTENCE_END = ' );';

array_push($QUERY_TABLE, $QUERY_TABLE_SENTENCE_END);

$separado_por_comas = implode(" ", $QUERY_TABLE);


var_dump($separado_por_comas);

