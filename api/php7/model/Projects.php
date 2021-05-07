<?php 

class Projects
{
	function LoadProjects($conection, $USER_CODE){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_id_type_service = 2 and tbse_vigence = 1";
		$stm = $conection -> prepare( $sql );
		// $stm -> bindParam(1, $USER_CODE);
		$stm -> execute();

		foreach ($stm->fetchAll() as $key => $value) {

			$row['id'] = $value['tbse_auto_id'];
			$row['name'] = $value['tbse_name'];
			$row['description'] = $value['tbse_description'];
			$row['create_date'] = $value['tbse_date_created'];
			$row['create_hour'] = $value['tbse_hour_created'];
			$datos[] = $row;		
		}

		return $datos;
	}



	function CreateProjects($conection, $ProjectName, $USER_CODE){
		$sql = "INSERT projects(pro_name, pro_date_create, pro_hour_create)VALUES(?, NOW(), NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectName);
		$stm -> execute();

		$ID_PROJECT = $conection->lastInsertId();

		$sql_pro = "INSERT INTO projects_users (pus_id_project, pus_id_user, pus_date_create, pus_hour_create ) VALUES ( ?,?, NOW(), NOW() )";
		$stm_pro = $conection -> prepare( $sql_pro );
		$stm_pro -> bindParam(1, $ID_PROJECT);
		$stm_pro -> bindParam(2, $USER_CODE);
		$stm_pro -> execute();

		return $respuesta = array('respuesta' => $stm->rowCount(), 'id' => $ID_PROJECT );
	}

	function RegisterCodeProjects($conection, $ProjectCodeID, $ProjectCode, $ProjectEntity){
		$sql = "INSERT projects_codes(prco_project_id, prco_code, prco_entity ) VALUES(?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectCodeID);
		$stm -> bindParam(2, $ProjectCode);
		$stm -> bindParam(3, $ProjectEntity);
		$stm -> execute();
		return $respuesta = array('respuesta' => $stm->rowCount());
	}



	function LoadProjectsIdBasics($conection, $ProjectId){		 

		$sql = "SELECT pro_auto_id, pro_name, pro_date_create, pro_hour_create, pro_updated, pro_status, pro_vigence, prco_auto_id, prco_project_id, prco_code, prco_entity  FROM projects, projects_codes WHERE pro_auto_id = ? and pro_auto_id = prco_project_id and pro_vigence = 1";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectId);		
		$stm -> execute();
		return $stm->fetchAll();
	}

}
