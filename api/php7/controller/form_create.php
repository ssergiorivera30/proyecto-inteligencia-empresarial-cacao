<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

require_once "../model/Conexion.php";
require_once "../model/Forms.php";
require_once "../model/Response.php";

$connect = new Conexion();
$conection = $connect -> BDMysqlBigNovaSoftware();

$NameForm = $array['NameForm'];
$DescriptionForm = $array['DescriptionForm'];

$create = (new Forms())->CreateForm($conection, $NameForm, $DescriptionForm);

$message 	= $create > 0 ? 'Comienza la creación' : 'Sin cambios registrados';
$icono 		= $create > 0 ? 'success' : 'warning';

$response = new Response();
$response_view = $response -> ResponseBasic($message, $icono);