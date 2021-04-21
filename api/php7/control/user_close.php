<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

session_start();

$_SESSION['USER_STATE'] = false;
$_SESSION['USER_CODE']  = null;
$_SESSION['USER_NAME']  = null;

session_destroy();

$response = array('state_user' => false);

echo json_encode($response);