<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../../services/Conexion.php";
require_once "../../control/user_session_verify.php";
require_once "../../services/Response.php";

require_once "../../model/Projects.php";
require_once "../../model/Groups.php";

$USER_CODE = $_SESSION['USER_CODE'];

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();


$ListGroups = (new Groups())->GroupsLoad($conection, $USER_CODE);

$ListProjects = (new Projects())->LoadProjects($conection, $USER_CODE);

$arrayName = array('groups' => $ListGroups, 'projects' => $ListProjects );

$response = new Response();
$response -> ResponseInfiniteObjects( $arrayName );