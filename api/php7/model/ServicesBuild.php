<?php 

class ServicesBuild
{

	// PRIMER PASO => REGISTRAR EL SERVICIO => tbl_services.
	function CreateService($conection, $ServiceType, $ServiceName, $ServiceDescription){		

		$sql = "INSERT INTO 
					tbl_services (tbse_id_type_service, tbse_name, tbse_description, tbse_date_created, tbse_hour_created) 
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

	// SEGUNDO PASO => ACTUALIZAR EL CAMPO JSON DE LA TABLA => tbl_services
	function UpdateJSONServices($conection, $id_service, $JSON_inputs ){	
		$JSON_inputs = json_encode($JSON_inputs);
		$sql = "UPDATE tbl_services SET tbse_json_input_data = ? WHERE tbse_auto_id = ?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $JSON_inputs);		
		$stm -> bindParam(2, $id_service);
		$stm -> execute();
		return $stm->rowCount();
	}

	// TERCER PASO => VERIFICAR EL TIPO DE SERVICIO A CREAR => tbl_services.
	function GetTypeService($conection, $ServiceType){
		$sql = "SELECT tbse_auto_id, tbse_id_type_service FROM tbl_services WHERE tbse_auto_id=? ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ServiceType);
		$stm -> execute();
		$type_service = $stm->fetchAll();
		return $respuesta = array('id' => intval($type_service[0]['tbse_id_type_service']) );
	}

	function GetFullService($conection, $id_service){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_json_input_data, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_auto_id = ? and tbse_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_service);
		$stm -> execute();	

		foreach ( $stm->fetchAll() as $key => $value ) {

			$row['id'] = $value['tbse_auto_id'];
			$row['type'] = $value['tbse_id_type_service'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['business'] = $value['tbse_business'];
			$row['logo'] = $value['tbse_logo'] == null ? 'default.svg' : $value['tbse_logo'];
			$row['create_date'] = $value['tbse_date_created'];
			$row['create_hour'] = $value['tbse_hour_created'];
			$row['updated'] = $value['tbse_updated'];
			$row['status'] = $value['tbse_status'];
			$row['data_json'] = $value['tbse_json_input_data'];

			$datos[] = $row;		
		}

		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $datos );				
	}

		function UpdateServiceBasic($conection, $serviceId, $ServiceName, $ServiceDescription ){
		$sql = "UPDATE tbl_services SET tbse_name=?, tbse_description=? WHERE tbse_auto_id=?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ServiceName);
		$stm -> bindParam(2, $ServiceDescription);
		$stm -> bindParam(3, $serviceId);
		$stm -> execute();
		return $stm->rowCount();
	}

}
