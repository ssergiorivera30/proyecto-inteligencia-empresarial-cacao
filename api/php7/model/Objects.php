<?php 

class Objects
{
	function CreateObject($conection, $ServiceType, $ServiceName, $ServiceDescription){

		$sql = "INSERT INTO tbl_services(tbse_id_type_service, tbse_name, tbse_description, tbse_date_created, tbse_hour_created)
				VALUES (?,?,?, NOW(), NOW())";

		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $ServiceType);
		$stm -> bindParam(2, $ServiceName);
		$stm -> bindParam(3, $ServiceDescription);
		$stm -> execute();

		$ID_OBJECT =  $conection->lastInsertId();

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

		// SELECT obin_auto_id, obin_name, obin_description, obin_created, obin_updated, obin_status, obin_vigence FROM objects_initials WHERE 1
		
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
