<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$random_var = $_POST['service'].'-'.date("ymdhmsms").rand(1, 1000);
$nombre_archivo = $random_var.'.'.pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
$respuesta = array('response' => 'error', 'mensaje' => 'Error de directorio');

if ( $_POST['type_service'] == 1){
	$route_repose_final_file =  '../../../public/grupos/';
}

if ( $_POST['type_service'] == 2){
	$route_repose_final_file =  '../../../public/proyectos/';
}





if ( move_uploaded_file($_FILES["file"]["tmp_name"], $route_repose_final_file. $nombre_archivo ) ) {

	$sql ="UPDATE tbl_services SET tbse_logo =? WHERE tbse_auto_id = ? ";
		$stm = $conection -> prepare($sql);
        $stm->bindParam(1, $nombre_archivo );
        $stm->bindParam(2, $_POST['service']);
        $stm->execute();
		
		if( $stm -> rowCount() > 0 ){

			$respuesta = array('response' => 'success', 'mensaje' => 'Imagen guardada', 'image'=> $nombre_archivo);

		} else {

			$respuesta = array('response' => 'error', 'mensaje' => 'Error');
		}

    }

require_once "../../services/Response.php";
$response = new Response();
$response -> ResponseInfiniteObjects( $respuesta );