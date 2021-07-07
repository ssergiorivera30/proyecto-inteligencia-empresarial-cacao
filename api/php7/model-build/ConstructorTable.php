<?php 

/**
 * 
*/
class ConstructorTable
{


	public function GeneratorSqlTable($NAME_TABLE, $JSON_inputs, $id_service){

		$QUERY_TABLE = array('nombre_tabla'=> "CREATE TABLE $NAME_TABLE ( id_$NAME_TABLE INT AUTO_INCREMENT PRIMARY KEY ");
		$QUERY_FINA_TABLE = array();

		foreach ($JSON_inputs as $key => $value) {

			$input_name = $value['input']['token'];


			if( $value['input']['type'] == 'text'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(120) ');
			}

			if( $value['input']['type'] == 'number'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' INT(10) ');				
			}			

			if( $value['input']['type'] == 'textarea'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' TEXT(600) ');		
			}

			if( $value['input']['type'] == 'email'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(50) ');				
			}

			if( $value['input']['type'] == 'tel'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(15) ');				
			}


			if( $value['input']['type'] == 'file'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(120) ');				
			}


			if( $value['input']['type'] == 'password'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(120) ');				
			}

			if( $value['input']['type'] == 'url'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(200) ');				
			}

			if( $value['input']['type'] == 'date'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' DATE ');				
			}

			if( $value['input']['type'] == 'datetime-local'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' DATETIME ');
			}

			if( $value['input']['type'] == 'time'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' TIME ');				
			}

			if( $value['input']['type'] == 'color'){
				
				array_push($QUERY_TABLE, ', '.$input_name.' VARCHAR(8) ');				
			}

		}

		// foreach ($JSON_inputs as $key => $value) {

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

		

		$hour_created = $NAME_TABLE."_hour_created TIME NOT NULL, ";
		$date_created = $NAME_TABLE."_date_created DATE NOT NULL, ";
		$updated= $NAME_TABLE."_updated TIMESTAMP NOT NULL, ";
		$status = $NAME_TABLE."_status TINYINT(1) NOT NULL DEFAULT '1', ";
		$vigence = $NAME_TABLE."_vigence TINYINT(1) NOT NULL DEFAULT '1' ";
		$QUERY_TABLE_SENTENCE_END = ' )';

 		array_push($QUERY_TABLE, ', '.$hour_created );
		array_push($QUERY_TABLE, $date_created );
		array_push($QUERY_TABLE, $updated );
		array_push($QUERY_TABLE, $status );
		array_push($QUERY_TABLE, $vigence );		

		array_push($QUERY_TABLE, $QUERY_TABLE_SENTENCE_END);

		// SEPARADO POR COMAS

		$MYSQL_TABLE_IS = implode(" ", $QUERY_TABLE);

		return strval($MYSQL_TABLE_IS);

	}

	
}