<?php 

class Projects
{
	function LoadProjects($conection, $USER_CODE){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_id_type_service = 2 and tbse_vigence = 1";
		$stm = $conection -> prepare( $sql );
		// $stm -> bindParam(1, $USER_CODE);
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


	function LoadProjectsIdBasics($conection, $ProjectId){	

		$datos = array();	 

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_json_input_data,
						tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence 
				FROM 
					tbl_services 
				WHERE 
					tbse_auto_id = ? and tbse_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectId);		
		$stm -> execute();

		foreach ($stm->fetchAll() as $key => $value) {

			$row['id'] = $value['tbse_auto_id'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['business'] = $value['tbse_business'];
			$row['logo'] = $value['tbse_logo'] == null ? 'default.svg' : $value['tbse_logo'];
			$row['create_date'] = $value['tbse_date_created'];
			$row['create_hour'] = $value['tbse_hour_created'];
			$row['json_input_data'] = $value['tbse_json_input_data'];
			$datos[] = $row;		
		}

		return $datos;
	}

}
