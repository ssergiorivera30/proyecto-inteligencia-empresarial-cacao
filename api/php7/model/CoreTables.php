<?php 

class CoreTables
{
	function CreateRegisterMotherTable($conection, $FormId, $ArrayInputs ){

		$data = json_encode($ArrayInputs);

		$sql = "INSERT mother_tables(mta_form_id, mta_date_created, mta_hour_created, mta_json)VALUES(?, NOW(), NOW(), ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $FormId);
		$stm -> bindParam(2, $data);
		$stm -> execute();
		return $conection->lastInsertId();
	}
	
}
