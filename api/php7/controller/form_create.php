<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../services/Conexion.php";
require_once "../services/Response.php";
require_once "../model/Forms.php";
require_once "../control/user_session_verify.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

echo $USER_CODE = $_SESSION['USER_CODE'];

$IdFormProject = $array['IdFormProject'];
$NameForm = $array['NameForm'];
$DescriptionForm = $array['DescriptionForm'];

$create_form = (new Forms())->CreateForm($conection, $NameForm, $DescriptionForm, $IdFormProject);

echo $add_user = (new Forms())->UserAddForm($conection, $create_form['id'], $USER_CODE);

// $create_form = isset($create_form) ? $create_form : 0;

// $message = $create_form['respuesta'] > 0 ? '✨ Excelente ! ahora construye tu formulario' : '😬 Algo a slaido mal, favor reintentar';
// $icono = $create_form['respuesta'] > 0 ? 'success' : 'warning';

// $response = new Response();
// $response_view = $response -> ResponseMsgIconoCode($message, $icono, $create_form['id']);