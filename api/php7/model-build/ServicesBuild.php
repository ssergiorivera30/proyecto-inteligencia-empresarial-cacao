<?php 

class ServicesBuild
{

	function GetInfoTypeService($ServiceType, $id_service){

		$NAME_TABLES_SERVICES = array(	1 => 'z1_group_'.$id_service, 
										2 => 'z2_project_'.$id_service,
										3 => 'z3_entity_'.$id_service,
										4 => 'z4_form_'.$id_service  );

		return $NAME_TABLES_SERVICES[$ServiceType];

		
	}

	// SEGUNDO PASO => ACTUALIZAR EL CAMPO JSON DE LA TABLA => tbl_services
	function UpdateJSONServices($conexion, $id_service, $JSON_inputs ){	
		$JSON_inputs = json_encode($JSON_inputs);
		$sql = "UPDATE tbl_services SET tbse_json_input_data = ? WHERE tbse_auto_id = ?";
		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $JSON_inputs);
		$stm -> bindParam(2, $id_service);
		$stm -> execute();
		return $stm->rowCount();
	}

	// TERCER PASO => VERIFICAR EL TIPO DE SERVICIO A CREAR => tbl_services.
	function GetTypeService($conexion, $ServiceType){
		$sql = "SELECT tbse_auto_id, tbse_id_type_service FROM tbl_services WHERE tbse_auto_id=? ";
		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $ServiceType);
		$stm -> execute();
		$type_service = $stm->fetchAll();
		return $respuesta = array('id' => intval($type_service[0]['tbse_id_type_service']) );
	}	


	// PRIMER PASO => REGISTRAR EL SERVICIO => tbl_services.
	function CreateService($conexion, $ServiceType, $ServiceName, $ServiceDescription){	    

		$sql = "INSERT INTO 
					tbl_services (tbse_id_type_service, tbse_name, tbse_description, tbse_date_created, tbse_hour_created) 
				VALUES
				(?,?,?, NOW(), NOW())";

		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $ServiceType);
		$stm -> bindParam(2, $ServiceName);
		$stm -> bindParam(3, $ServiceDescription);
		$stm -> execute();
		$ID_OBJECT =  $conexion->lastInsertId();

		return $respuesta = array('respuesta' => $stm->rowCount(), 'id' => $ID_OBJECT );
	}


	function GetFullService($conexion, $id_service){

		$datos = array();
		$data_json = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_json_input_data, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_auto_id = ? and tbse_vigence = 1 ";
		$stm = $conexion -> prepare( $sql );
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

			$data_json =  json_decode($value['tbse_json_input_data'], true);

			$datos[] = $row;
		}

		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $datos, 'data_json' => $data_json  );		
	}

	function UpdateServiceBasic($conexion, $serviceId, $ServiceName, $ServiceDescription ){
		$sql = "UPDATE tbl_services SET tbse_name=?, tbse_description=? WHERE tbse_auto_id=?";
		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $ServiceName);
		$stm -> bindParam(2, $ServiceDescription);
		$stm -> bindParam(3, $serviceId);
		$stm -> execute();
		return $stm->rowCount();
	}

	

}
