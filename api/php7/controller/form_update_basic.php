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

$FormId = $array['FormId'];
$NameForm = $array['NameForm'];
$DescriptionForm = $array['DescriptionForm'];



$create = (new Forms())->UpdateFormBasic($conection, $FormId, $NameForm, $DescriptionForm );

$create = isset($create) ? $create : 0;

$message = $create > 0 ? 'Información actualizada' : '😬 Sin cambios registrados';
$icono = $create > 0 ? 'success' : 'warning';

$response = new Response();
$response_view = $response -> ResponseMsgIcono($message, $icono);