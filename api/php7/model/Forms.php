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
}
