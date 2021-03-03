<?php 

class Forms
{
	function CreateForm($conection, $name_form, $description_form){
		$sql = "INSERT forms_initials(fin_name, fin_description, fin_created)VALUES(?,?, NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $name_form);
		$stm -> bindParam(2, $description_form);
		$stm -> execute();
		return $stm->rowCount();
	}

	function LoadFormsByUsers($conection){
		$sql = "SELECT fin_auto, fin_name as name, fin_description as description, fin_updated as updated FROM forms_initials WHERE fin_vigence = 1 ";
		$stm = $conection -> prepare( $sql );
		$stm -> execute();
		return $stm->fetchAll();
	}
}
