<?php 

class RegistrarData
{

	// Obtenemos con el id del servico, el tipo para obtener el nobre de la tabla

	public function GedDataTabeService($conexion, $id_service){

		$respuesta = null;

		$sql = 'SELECT tbse_auto_id, tbse_id_type_service, tbtse_auto_id, tbtse_prefix 
					FROM tbl_services, tbl_type_service 
					WHERE tbse_auto_id=? and tbse_id_type_service = tbtse_auto_id';
		$stm = $conexion->prepare($sql);
		$stm -> bindParam(1, $id_service);
		$stm -> execute();

		if($stm->rowCount() > 0){

			$the_data = $stm->fetchAll();
			$respuesta = array( 'tbl_name_service' => $the_data[0]['tbtse_prefix'] );
		}

		return $respuesta;

	}
}