<?php 

class Forms
{


	function FormsLoad($conection, $USER_CODE){

		$datos = array();

		$sql = "SELECT tbse_auto_id, tbse_id_type_service, tbse_name, tbse_description, tbse_business, tbse_logo, tbse_date_created, tbse_hour_created, tbse_updated, tbse_status, tbse_vigence FROM tbl_services WHERE tbse_id_type_service = 3 and tbse_vigence = 1";
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

	function CreateForm($conection, $name_form, $description_form, $IdFormProject){

		$sql = "INSERT INTO forms_initials(fin_name, fin_description, fin_created)VALUES(?,?, NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $name_form);
		$stm -> bindParam(2, $description_form);
		$stm -> execute();

		$ID_FORM =  $conection->lastInsertId();

		$sql_pro = "INSERT INTO forms_projects(fpr_id_form, fpr_id_projects, fpr_date_created, fpr_hour_created ) VALUES ( ?,?, NOW(), NOW() )";
		$stm_pro = $conection -> prepare( $sql_pro );
		$stm_pro -> bindParam(1, $ID_FORM);
		$stm_pro -> bindParam(2, $IdFormProject);
		$stm_pro -> execute();

		return $respuesta = array('respuesta' => $stm->rowCount(), 'id' => $ID_FORM );
	}


	function UserAddForm($conection, $IdForm, $USER_CODE){

		$sql = "INSERT INTO forms_users(fous_id_form, fous_id_user, fous_date_created, fous_hour_created ) VALUES( ?,?, NOW(), NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $IdForm);
		$stm -> bindParam(2, $USER_CODE);
		$stm -> execute();

		return $stm->rowCount();
	}

	function UpdateFormBasic($conection, $FormId, $NameForm, $DescriptionForm ){
		$sql = "UPDATE forms_initials SET fin_name=?, fin_description=? WHERE fin_auto=?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $NameForm);
		$stm -> bindParam(2, $DescriptionForm);
		$stm -> bindParam(3, $FormId);
		$stm -> execute();
		return $stm->rowCount();
	}

	function LoadInfoBasicForm($conection, $id_form){
		
		$sql = "SELECT fin_name as name, fin_description as description FROM forms_initials WHERE fin_auto=? and fin_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_form);
		$stm -> execute();		
		return $respuesta = array('respuesta' => $stm->rowCount(), 'object' => $stm->fetchAll() );				
	}

	function LoadFormsByUsers($conection){
		$sql = "SELECT fin_auto, fin_name as name, fin_description as description, fin_updated as updated FROM forms_initials WHERE fin_vigence = 1 ";
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
