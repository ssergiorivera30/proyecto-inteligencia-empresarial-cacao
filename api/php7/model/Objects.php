<?php 

class Objects
{
	function CreateObject($conection, $name, $description, $id){

		$sql = "INSERT INTO objects_initials(obin_name, obin_description, obin_created)VALUES(?,?, NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $name);
		$stm -> bindParam(2, $description);
		$stm -> execute();

		$ID_OBJECT =  $conection->lastInsertId();

		$sql_pro = "INSERT INTO objects_projects(obpr_id_object, obpr_id_projects, obpr_date_created, obpr_hour_created ) VALUES ( ?,?, NOW(), NOW() )";
		$stm_pro = $conection -> prepare( $sql_pro );
		$stm_pro -> bindParam(1, $ID_OBJECT);
		$stm_pro -> bindParam(2, $IdFormProject);
		$stm_pro -> execute();

		return $respuesta = array('respuesta' => $stm->rowCount(), 'id' => $ID_OBJECT );
	}


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

	function LoadInfoBasicObject($conection, $id_form){

		// SELECT `obin_auto_id`, `obin_name`, `obin_description`, `obin_created`, `obin_updated`, `obin_status`, `obin_vigence` FROM `objects_initials` WHERE 1
		
		$sql = "SELECT obin_name as name, obin_description as description FROM objects_initials WHERE obin_auto_id=? and obin_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_form);
		$stm -> execute();		
		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $stm->fetchAll() );				
	}




	function LoadObjectsByUsers($conection){
		$sql = "SELECT obin_auto_id as id, obin_name as name, obin_description as description, obin_updated as updated FROM objects_initials WHERE obin_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> execute();
		return $stm->fetchAll();
	}

	function LoadAdvancedForm($conection, $id_form){
		
		$sql = "SELECT mta_auto_id, mta_form_id, mta_date_created, mta_hour_created, mta_updated, mta_status, mta_vigence, mta_json FROM mother_tables WHERE mta_form_id=? limit 1";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_form);
		$stm -> execute();
		$mi_json = $stm->fetchAll();

		$formulario = $mi_json[0]['mta_json'];


		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $formulario );				
	}
}
