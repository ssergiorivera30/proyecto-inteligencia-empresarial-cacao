<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

session_start();

$_SESSION['USER_STATE'] = true;
$_SESSION['USER_CODE']  = 1;
$_SESSION['USER_NAME']  = 'Sergio Yamit Rivera flor';

$USER_STATE_SESSION = isset($_SESSION['USER_STATE'] ) ? $_SESSION['USER_STATE'] : false;

$response = array('state_user' => $USER_STATE_SESSION);
echo json_encode($response);