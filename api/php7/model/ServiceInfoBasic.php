<?php 

class ServiceInfoBasic
{

	function LoadListPrincipalServices($conection_bd, $type_service, $user_code){

		$datos = array();

		$sql = "SELECT 
					services.tbse_auto_id, services.tbse_id_type_service, services.tbse_name, services.tbse_description, services.tbse_business, services.tbse_logo, 
					services.tbse_date_created, services.tbse_hour_created,

					user_permiss.tbsep_auto_id, user_permiss.tbsep_id_service, user_permiss.tbsep_id_user


				FROM

					tbl_services services, tbl_service_permissions user_permiss
					
				WHERE
					
					services.tbse_auto_id = user_permiss.tbsep_id_service AND services.tbse_id_type_service = ? AND services.tbse_vigence = 1 AND user_permiss.tbsep_id_user = ? 
					AND (  user_permiss.tbsep_is_create = 1 OR user_permiss.tbsep_is_read = 1 OR user_permiss.tbsep_is_update = 1 OR user_permiss.tbsep_is_delete = 1 OR user_permiss.tbsep_is_share = 1  )  AND user_permiss.tbsep_status = 1 ";

		$stm = $conection_bd -> prepare( $sql );		
		$stm -> bindParam(1, $type_service );
		$stm -> bindParam(2, $user_code);
		$stm -> execute();

		foreach ($stm->fetchAll() as $key => $value) {

			$row['id'] = $value['tbse_auto_id'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['business'] = $value['tbse_business'];
			$row['logo'] = $value['tbse_logo'] == null ? 'default.svg' : $value['tbse_logo'];
			$row['create_date'] = $value['tbse_date_created'];
			$row['create_hour'] = $value['tbse_hour_created'];
			$row['users'] = $value['tbse_hour_created'];
	
			$datos[] = $row;		
		}

		return $datos;
	}


	function UserInService($conection_bd, $id_service ){

		$members = array();

		// SELECT `tbsep_auto_id`, `tbsep_id_service`, `tbsep_id_user`, `tbsep_is_create`, `tbsep_is_read`, `tbsep_is_update`, `tbsep_is_delete`, `tbsep_is_share`, `tbsep_date_created`, `tbsep_hour_created`, `tbsep_updated`, `tbsep_status`, `tbsep_end_permissions` FROM `tbl_service_permissions` WHERE 1"

		$sql = "SELECT 
					permis.tbsep_auto_id, permis.tbsep_id_service, permis.tbsep_id_user,

					a.usr_user_id as code, a.usr_email as email,
					b.udp_name as name, 
					c.usava_avatar as avatar
				FROM 
					tbl_service_permissions permis
					INNER JOIN users_credentials a ON permis.tbsep_id_user = a.usr_user_id
					INNER JOIN user_data_personals b ON permis.tbsep_id_user = b.udp_user_id
					INNER JOIN users_avatars c ON permis.tbsep_id_user = c.usava_id_user					
				WHERE
					permis.tbsep_id_service= ?";

		$stm = $conection_bd -> prepare( $sql );		
		$stm -> bindParam(1, $id_service );
		$stm -> execute();

		foreach ($stm->fetchAll() as $key => $value) {

			$row['id'] = $value['tbse_auto_id'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['business'] = $value['tbse_business'];
			$row['logo'] = $value['tbse_logo'] == null ? 'default.svg' : $value['tbse_logo'];
			$row['create_date'] = $value['tbse_date_created'];
			$row['create_hour'] = $value['tbse_hour_created'];
			$row['users'] = $value['tbse_hour_created'];
			// $row['members'] = $arrayUsersInService[];
			$datos[] = $row;		
		}

		return $members;
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