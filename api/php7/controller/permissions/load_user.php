<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";

$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();

require_once "../../services/Response.php";

require_once "../../model/PermissionsUserLoad.php";
$user_class = new PermissionsUserLoad();


if($array['order'] == 'load_users'){

	$id_service = $array['id_service'];
	$result = $user_class -> LoadUsersByService( $conexion, $id_service );
}


if($array['order'] == 'load'){

	$IdentificatorNotMember = $array['IdentificatorNotMember'];
	$result = $user_class -> PermissionsUserLoadInfoBasic( $conexion, $IdentificatorNotMember );
}

if($array['order'] == 'create'){

	$id_service = $array['id_service'];
	$id_user = $array['id_user'];
	$permissions = $array['permissions'];
	
	$result = $user_class -> UserPermissionCreate( $conexion, $id_service, $id_user, $permissions  );

}


if($array['order'] == 'update_user'){


	$permissions = $array['permissions'];
	$identificator = $array['identificator'];
	
	$result = $user_class -> UpdatePermissionsUser(  $conexion, $permissions, $identificator );

}

if($array['order'] == 'delete_user'){

	$identificator = $array['identificator'];
	
	$result = $user_class -> DeletePermissionsUser(  $conexion, $identificator );
}


echo json_encode($result);