<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../services/Response.php";
require_once "../../model/PermissionsUserLoad.php";

$connect = new Conexion();
$conexion = $connect -> BDMysqlBigNovaSoftware();

$IdentificatorNotMember = $array['IdentificatorNotMember'];

$UserLoad = new PermissionsUserLoad();
$result = $UserLoad -> PermissionsUserLoadInfoBasic( $conexion, $IdentificatorNotMember );



echo json_encode($result);
