<?php 

class ServiceInfoBasic
{

		function LoadListPrincipalServices($conection_bd, $type_service, $user_code){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_id_type_service = ? and tbse_vigence = 1";
		$stm = $conection_bd -> prepare( $sql );
		$stm -> bindParam(1, $type_service);
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
}