<?php 

/**
 * 
 */
class Service_Listar_Update 
{
	
	function SelectDataById($conexion, $id_record, $NAME_TABLE)
	{

		$data = array();

		$name_id_table = "id_$NAME_TABLE"; // name ID de la tabla

		$sql = "SELECT * FROM $NAME_TABLE where $name_id_table = ? limit 1";
		$stm = $conexion -> prepare($sql);
		$stm -> bindParam(1, $id_record);
		$stm -> execute();
		$ArrayaData = $stm->fetchAll();

		foreach ( $ArrayaData[0] as $key => $value ) {

			$nestedData = array(); 

			$nestedData['key'] = $key;
			$nestedData['value'] = $value;
			$data[] = $nestedData;
		}
		
		return $data;

		
	}
}