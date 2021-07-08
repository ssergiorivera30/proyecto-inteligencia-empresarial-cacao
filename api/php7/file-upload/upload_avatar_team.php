<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

var_dump($_POST);
var_dump($array);
var_dump($_GET);
var_dump($_FILES);

$random_var = $_POST['titulo'].'-'.date("ymdhmsms").rand(1, 1000);


$nombre_archivo = $random_var.'.'.pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);

if (	move_uploaded_file($_FILES["file"]["tmp_name"], "../file/profesiones/". $nombre_archivo ) ) {

        $sql ="UPDATE profesiones SET n_profesion_icono =? WHERE id_profesion = ? ";
		$stm = $conexion -> prepare($sql);
        $stm->bindParam(1, $nombre_archivo );
        $stm->bindParam(2, $_POST['titulo']);
		$stm->execute();
		
		if( $stm -> rowCount() > 0 ){

			$response = array('response' => 'success', 'mensaje' => 'Imagen guardada', 'image'=> $nombre_archivo);

		} else {

			$response = array('response' => 'error', 'mensaje' => 'Error');
		}

    } else {

			$response = array('response' => 'error', 'mensaje' => 'Error de directorio');		
    }

 
echo json_encode($response);