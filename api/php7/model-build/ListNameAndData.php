<?php 

class ListNameAndData
{

	// Obtenemos los nombres de los datos de la tabla = columnas

	public function GetNameDataService($conexion, $id_service){

		$columns = null;

		$sql = "SELECT tbse_json_input_data FROM tbl_services WHERE tbse_auto_id=?";
		$stm = $conexion -> prepare($sql);
		$stm -> bindParam(1, $id_service);
		$stm -> execute();
		$data = $stm->fetchAll();
		$prepareJSON = json_decode( $data[0]['tbse_json_input_data'], true );	

		foreach ($prepareJSON  as $key => $value) {
			$NestData['name'] = $value['input']['name'];
			$columns[] = $NestData;
		}

		return $columns;
	}

	// Obtenemos todos los datos de la tabla = filas

	public function GetDataRegistredService($conexion, $NAME_TABLE){

		$rows = null;

		$sql = "SELECT * FROM $NAME_TABLE";
		$stm = $conexion -> prepare($sql);
		$stm -> execute();

		foreach ($stm->fetchAll()  as $key => $value) {
			$NestData = $value;
			$rows[] = $NestData;
		}

		return $rows;

	}


	
}