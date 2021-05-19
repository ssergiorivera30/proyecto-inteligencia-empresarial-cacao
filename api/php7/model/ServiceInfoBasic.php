<?php 

class ServiceInfoBasic
{



	// Aquí voy

	function LoadInfoBasicOneService($conection, $service_id, $id_user){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_json_input_data,
						tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence 
				FROM 
					tbl_services 
				WHERE 
					tbse_auto_id = ? and tbse_vigence = 1 ";

		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $service_id);
		$stm -> execute();		

		foreach ($stm->fetchAll() as $key => $value) {

			$row['id'] = $value['tbse_auto_id'];
			$row['type_service'] = $value['tbse_id_type_service'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['logo'] = $value['tbse_logo'] == null ? 'default.svg' : $value['tbse_logo'];
			$row['status'] = $value['tbse_status'];
			$datos[] = $row;		
		}

		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $datos );				
	}



	function LoadInfoBasicByService($conection, $type_service, $id_user){

		$sql = "SELECT tbse_auto_id as id, tbse_name as name, tbse_description as description FROM tbl_services WHERE tbse_id_type_service=? and tbse_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $type_service);
		$stm -> execute();		

		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $stm->fetchAll() );				
	}


	function LoadServiceForm($conection, $service_type, $service_id){

			
		$sql = "SELECT 
					tbse_auto_id, tbse_id_type_service, tbse_json_input_data, tbse_vigence 
				FROM 
					tbl_services 
				WHERE 
					tbse_auto_id = ? and tbse_vigence = 1";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $service_id);
		$stm -> execute();
		$mi_json = $stm->fetchAll();

		$formulario = $mi_json[0]['tbse_json_input_data'];


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
