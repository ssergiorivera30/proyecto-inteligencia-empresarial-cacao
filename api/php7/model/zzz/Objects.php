<?php 

class Objects
{

	// Primer paso, crear el id del servicio, el tipo, el nombre y la descripción.

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

	function LoadInfoBasicService($conection, $id_service){

		$sql = "SELECT tbse_name as name, tbse_description as description FROM tbl_services WHERE tbse_auto_id=? and tbse_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_service);
		$stm -> execute();		

		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $stm->fetchAll() );				
	}


	// Primer paso, el caso del proyecto se guarda unicamente el archivo JSON para no crear una nueva tabla por cada grupo de trabajo registrado 

	function CreateServiceMotherTable($conection, $id_service, $JSON_inputs ){

		$JSON_inputs = json_encode($JSON_inputs);

		$sql = "INSERT INTO tbl_service_mother_table (tbsede_id_service, tbsede_code_inputs) VALUES(?, ?)";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_service);
		$stm -> bindParam(2, $JSON_inputs);
		$stm -> execute();
		return $stm->rowCount();
	}

	// Aquí voy


	function LoadInfoBasicByService($conection, $type_service, $id_user){

		$sql = "SELECT tbse_auto_id as id, tbse_name as name, tbse_description as description FROM tbl_services WHERE tbse_id_type_service=? and tbse_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $type_service);
		$stm -> execute();		

		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $stm->fetchAll() );				
	}

	function EntitysLoad($conection, $type_service, $id_user){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_id_type_service = ? and tbse_vigence = 1";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $type_service);
		// $stm -> bindParam(1, $id_user);
		$stm -> execute();

		foreach ($stm->fetchAll() as $key => $value) {

			$row['id'] = $value['tbse_auto_id'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['business'] = $value['tbse_business'];
			$row['logo'] = $value['tbse_logo'] == null ? 'default.svg' : $value['tbse_logo'];
			$row['create_date'] = $value['tbse_date_created'];
			$row['create_hour'] = $value['tbse_hour_created'];
			$datos[] = $row;		
		}

		return $datos;
	}





















	function LoadServiceForm($conection, $service_type, $service_id){

			
		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_emp, tbse_logo, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence, tbsede_id_service, tbsede_code_inputs as mtao_json FROM tbl_services, tbl_service_mother_table WHERE tbse_auto_id = ? and tbse_auto_id = tbsede_id_service and tbse_status = 1 and tbse_vigence = 1";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $service_id);
		$stm -> execute();
		$mi_json = $stm->fetchAll();

		$formulario = $mi_json[0]['mtao_json'];


		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $formulario );				
	}






// Aquí boy







	function UserAddObjects($conection, $id_object, $USER_CODE){

		$sql = "INSERT INTO objects_users(obus_id_object, obus_id_user, obus_date_created, obus_hour_created ) VALUES( ?,?, NOW(), NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_object);
		$stm -> bindParam(2, $USER_CODE);
		$stm -> execute();

		return $stm->rowCount();
	}




	function UpdateObjectBasic($conection, $FormId, $NameForm, $DescriptionForm ){
		$sql = "UPDATE objects_initials SET obin_name=?, obin_description=? WHERE obin_auto_id=?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $NameForm);
		$stm -> bindParam(2, $DescriptionForm);
		$stm -> bindParam(3, $FormId);
		$stm -> execute();
		return $stm->rowCount();
	}






	function LoadObjectsByUsers($conection){
		$sql = "SELECT obin_auto_id as id, obin_name as name, obin_description as description, obin_updated as updated FROM objects_initials WHERE obin_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> execute();
		return $stm->fetchAll();
	}

	function LoadAdvancedObjects($conection, $id_form){

			
		$sql = "SELECT mtao_auto_id, mtao_object_id, mtao_date_created, mtao_hour_created, mtao_updated, mtao_status, mtao_vigence, mtao_json FROM objects_mother_tables WHERE mtao_object_id=? limit 1";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_form);
		$stm -> execute();
		$mi_json = $stm->fetchAll();

		$formulario = $mi_json[0]['mtao_json'];


		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $formulario );				
	}
}
