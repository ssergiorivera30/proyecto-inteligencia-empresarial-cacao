<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../services/Response.php";

require_once "../../control/user_session_verify.php";


require_once "../../model/ServiceInfoBasic.php";


$USER_CODE = $_SESSION['USER_CODE'];

$ListGroups = array();
$ListProjects = array();
$ListComponents = array();

$connect = new Conexion();
$conection_bd = $connect -> BDMysqlBigNovaSoftware();

if( $array['type_service'] == 'all' || $array['type_service'] == 1){

	$ListGroups = ( new ServiceInfoBasic () )-> LoadListPrincipalServices($conection_bd, 1, $USER_CODE);

}

if( $array['type_service'] == 'all' || $array['type_service'] == 2){

	$ListProjects = ( new ServiceInfoBasic () )-> LoadListPrincipalServices($conection_bd, 2, $USER_CODE);

}

if( $array['type_service'] == 'all' || $array['type_service'] == 3){

	$ListComponents =  ( new ServiceInfoBasic () )-> LoadListPrincipalServices($conection_bd, 3, $USER_CODE);

}


$arrayName = array('groups' => $ListGroups, 'projects' => $ListProjects, 'componets' => $ListComponents );

$response = new Response();
$response -> ResponseInfiniteObjects( $arrayName );