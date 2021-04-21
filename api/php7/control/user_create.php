<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";

require_once "../model/Users.php";
require_once "../services/Response.php";

$conectar = new Conexion();
$conexion = $conectar -> BDMysqlBigNovaSoftware();

$UserNames = $array['UserNames'];
$UserNewEmail = $array['UserNewEmail'];
$UserFirstPassword = $array['UserFirstPassword'];
$UserConfirmPassword = $array['UserConfirmPassword'];

$ClassStyle = 'text-red-900';
$MsgResponse = 'Este correo ya se encuentra registrado';

$ClassUsers = new Users();

$result_verification = $ClassUsers->VerifyExitence($conexion, $UserNewEmail );

if( $result_verification < 1){
	
	$result_created_id = $ClassUsers->CreateUserFirstStep($conexion, $UserNewEmail );

	if($result_created_id < 1){

		$ClassStyle = 'text-red-900';
		$MsgResponse = 'Error de sistema';	

	} else{

		$result_created_credentials = $ClassUsers->CreateUserCredentials($conexion, $result_created_id, $UserNewEmail, $UserFirstPassword );
		$result_created_data_basic = $ClassUsers->CreateUserDataPersonalBasic($conexion, $result_created_id, $UserNames );

		$ClassStyle = 'text-green-900';		
		$MsgResponse = 'Su cuenta fue creada exitosamente';
		
	}
}

$response = array( 'ClassStyle'=>$ClassStyle, 'MsgResponse'=> $MsgResponse );

$ClassResponse = new Response();
$ClassResponse->ResponseInfiniteObjects($response);
