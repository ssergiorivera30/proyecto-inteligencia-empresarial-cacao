<?php 

class Structure_Service
{

	function CreateFirstStructure($conexion, $ServiceFather, $ServiceSon ){

		$ServiceFather = $ServiceFather == 0 ? $ServiceSon : $ServiceFather;

		$sql = "INSERT INTO tbl_service_structure(tbsst_id_service_phather, tbsst_id_service_son) VALUES ( ?, ? )";
		$stm = $conexion -> prepare( $sql );		
		$stm -> bindParam(1, $ServiceFather );
		$stm -> bindParam(2, $ServiceSon );
		$stm -> execute();

		// CEC Creación de Estructura creada
		// CEC Creación de Estructura fallida

		$respuesta = $stm->rowCount() > 0 ? 'CEC' : 'CEF';
		return $respuesta;
	}	
}
