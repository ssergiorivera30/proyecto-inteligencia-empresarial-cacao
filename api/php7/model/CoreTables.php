<?php 

class CoreTables
{
	function CreateRegisterMotherTable($conection, $FormId, $ArrayInputs ){

		$data = json_encode($ArrayInputs);

		$sql = "INSERT INTO mother_tables(mta_form_id, mta_date_created, mta_hour_created, mta_json)VALUES(?, NOW(), NOW(), ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $FormId);
		$stm -> bindParam(2, $data);
		$stm -> execute();
		return $conection->lastInsertId();
	}

	function CreateRegisterMotherTableObject($conection, $ObjectId, $ArrayInputs ){

		$data = json_encode($ArrayInputs);

		$sql = "INSERT INTO objects_mother_tables(mtao_object_id, mtao_date_created, mtao_hour_created, mtao_json)VALUES(?, NOW(), NOW(), ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ObjectId);
		$stm -> bindParam(2, $data);
		$stm -> execute();
		return $conection->lastInsertId();
	}


	function VeridicarExistenciaTabla($conection, $NAME_TABLE){

		$sql = "SHOW TABLES LIKE ?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $NAME_TABLE);
		$stm -> execute();
		return $stm->rowCount();
	}

	function CreateTableTabla($conection, $sql_tabla_construida, $NAME_TABLE){		
		$stm = $conection -> prepare($sql_tabla_construida);
		$stm -> execute();
		return self::VeridicarExistenciaTabla($conection, $NAME_TABLE);
	}

}
