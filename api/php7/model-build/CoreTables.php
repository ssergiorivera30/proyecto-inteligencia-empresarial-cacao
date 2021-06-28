<?php 

class CoreTables
{
	function VeridicarExistenciaTabla($conection, $NAME_TABLE){

		$sql = "SHOW TABLES LIKE ?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $NAME_TABLE);
		$stm -> execute();
		return $stm->rowCount();
	}

	function CreateTableTabla($conection, $sql_tabla_construida, $NAME_TABLE){		
		$stm = $conection -> prepare($sql_tabla_construida);
		$stm -> execute();
		return self::VeridicarExistenciaTabla($conection, $NAME_TABLE);
	}

}


