<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Objects.php";
require_once "../control/user_session_verify.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$USER_CODE = $_SESSION['USER_CODE'];

$id = $array['IdFormProject'];
$name = $array['NameForm'];
$description = $array['DescriptionForm'];

$create_array = (new Objects())->CreateObject($conection, $name, $description, $id);

$add_user = (new Objects())->UserAddObjects($conection, $create_array['id'], $USER_CODE);

$create_array = isset($create_array) ? $create_array : 0;

$message = $create_array['respuesta'] > 0 ? '✨ Excelente ! ahora completa tu objeto' : '😬 Algo a slaido mal, favor reintentar';
$icono = $create_array['respuesta'] > 0 ? 'success' : 'warning';

$response = new Response();
$response_view = $response -> ResponseMsgIconoCode($message, $icono, $create_array['id']);