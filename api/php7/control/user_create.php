<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Users.php";

$conectar = new Conexion();
$conexion = $conectar -> BDMysqlBigNovaSoftware();

$UserNames = $array['UserNames'];
$UserNewEmail = $array['UserNewEmail'];
$UserFirstPassword = $array['UserFirstPassword'];
$UserConfirmPassword = $array['UserConfirmPassword'];


$ClassStyle = 'text-red-900';
$MsgResponse = 'Este correo ya se encuentra registrado';


$result_verification = (new Users())->VerifyExitence($conexion, $UserNewEmail );

if($result_verification < 1){

	$result_created_id = (new Users())->CreateUserFirstStep($conexion );

	if($result_created_id > 0){

		$ClassStyle = 'text-green-900';

		$result_created_credentials = (new Users())->CreateUserCredentials($conexion, $result_created_id, $UserNewEmail, $UserFirstPassword );

		$result_created_data_basic = (new Users())->CreateUserDataPersonalBasic($conexion, $result_created_id, $UserNames );

		if($result_created_credentials > 0 && $result_created_data_basic > 0){

			$MsgResponse = 'Su cuenta fue creada exitosamente';

		}else{

			$MsgResponse = 'Cuenta creada correctamente';		
		}

	} else{

		$ClassStyle = 'text-red-900';
		$MsgResponse = 'Error de sistema';
	}

}


$response = array( 'ClassStyle'=>$ClassStyle, 'MsgResponse'=> $MsgResponse );




(new Response())->ResponseInfiniteObjects($response);
