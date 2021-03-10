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

$NameForm = $array['NameForm'];
$DescriptionForm = $array['DescriptionForm'];

$create = (new Forms())->CreateForm($conection, $NameForm, $DescriptionForm);

$create = isset($create) ? $create : 0;

$message = $create['respuesta'] > 0 ? '✨ Excelente ! ahora construye tu formulario' : '😬 Algo a slaido mal, favor reintentar';
$icono = $create['respuesta'] > 0 ? 'success' : 'warning';

$response = new Response();
$response_view = $response -> ResponseMsgIconoCode($message, $icono, $create['id']);