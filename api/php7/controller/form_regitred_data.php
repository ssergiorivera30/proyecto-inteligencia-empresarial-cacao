<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Forms.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$response = new Response();

$id_form = $array['id_form'];

$sql = "INSERT INTO z_form_$id_form  ";

// foreach ($array['data'] as $key => $value) {

// 	if ($key === array_key_last($array['data'])){

// 		$sql.= strtr($key, " ", "_") .' ) ' ;
	
// 	}else{

// 		$sql.= strtr($key, " ", "_"). ' , ' ;

// 	}

// }

$sql.= ' VALUES ( "", ';

 $size_sentence = sizeof( $array['data']);

for ($i=0; $i <= sizeof( $array['data'] ) - 1; $i++) { 

	if( $size_sentence-2 < $i){

		$sql.= ' ? ';

	}else{

		$sql.= ' ?, ';

	}
	
	
}


$sql.= ' ) ';


$stm=$conection->prepare($sql);

$item = 1;

$mis_values = array_values($array['data']);

for ($i=0; $i < sizeof( $array['data'] ); $i++) {

	   
	    // var_dump($mis_values[$i]);
	    $stm->bindParam($item, $mis_values[$i]);

	    $item = $item  + 1;
}


$stm->execute();


if( $stm->rowCount() > 0){

	$response = array('response' => 'success', 'mensaje' => 'Registro guardado' );

}else{

	$response = array('response' => 'warning', 'mensaje' => 'A ocurrido un error' );
}

echo json_encode( $response );

var_dump($sql);



