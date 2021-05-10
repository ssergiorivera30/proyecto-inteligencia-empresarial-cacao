<?php 

class ServicesBuild
{

	// PRIMER PASO => REGISTRAR EL SERVICIO => tbl_services.

	function CreateService($conection, $ServiceType, $ServiceName, $ServiceDescription){

		$sql = "INSERT INTO tbl_services (tbse_id_type_service, tbse_name, tbse_description, tbse_date_created, tbse_hour_created) 
				VALUES
				(?,?,?, NOW(), NOW())";

		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ServiceType);
		$stm -> bindParam(2, $ServiceName);
		$stm -> bindParam(3, $ServiceDescription);
		$stm -> execute();

		$ID_OBJECT =  $conection->lastInsertId();

		return $respuesta = array('respuesta' => $stm->rowCount(), 'id' => $ID_OBJECT );
	}

	// SEGUNDO PASO => GUARDAR EL JSON EN LA TABLA => tbl_service_mother_table

	function CreateServiceMotherTable($conection, $id_service, $JSON_inputs ){

		$JSON_inputs = json_encode($JSON_inputs);

		$sql = "INSERT INTO tbl_service_mother_table (tbsede_id_service, tbsede_code_inputs) VALUES(?, ?)";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_service);
		$stm -> bindParam(2, $JSON_inputs);
		$stm -> execute();
		return $stm->rowCount();
	}
}
