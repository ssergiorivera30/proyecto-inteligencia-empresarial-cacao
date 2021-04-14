<?php 

class Projects
{
	function CreateProjects($conection, $ProjectName){
		$sql = "INSERT projects(pro_name, pro_date_create, pro_hour_create)VALUES(?, NOW(), NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectName);
		$stm -> execute();
		return $respuesta = array('respuesta' => $stm->rowCount(), 'id' => $conection->lastInsertId());
	}

	function RegisterCodeProjects($conection, $ProjectCodeID, $ProjectCode, $ProjectEntity){
		$sql = "INSERT projects_codes(prco_project_id, prco_code, prco_entity)VALUES(?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectCodeID);
		$stm -> bindParam(2, $ProjectCode);
		$stm -> bindParam(3, $ProjectEntity);
		$stm -> execute();
		return $respuesta = array('respuesta' => $stm->rowCount());
	}

	function LoadProjects($conection, $UserService){
		$sql = "SELECT pro_auto_id as id, pro_name as name, pro_date_create as create_date, pro_hour_create as create_hour FROM projects WHERE pro_status=1 and pro_vigence=1";
		$stm = $conection -> prepare( $sql );
		$stm -> execute();
		return $stm->fetchAll();
	}

	function LoadProjectsIdBasics($conection, $ProjectId){

		 

		$sql = "SELECT pro_auto_id, pro_name, pro_date_create, pro_hour_create, pro_updated, pro_status, pro_vigence, prco_auto_id, prco_project_id, prco_code, prco_entity  FROM projects, projects_codes WHERE pro_auto_id = ? and pro_auto_id=prco_auto_id";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ProjectId);		
		$stm -> execute();
		return $stm->fetchAll();
	}

}
