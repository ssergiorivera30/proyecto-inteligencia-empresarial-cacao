<?php 

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");  
$json = file_get_contents('php://input'); 
$array = json_decode($json, true);

session_start();

// $_SESSION['state'] = true;

$STATE_SESSION = isset($_SESSION['state'] ) ? $_SESSION['state'] : false;


$response = array('state' => $STATE_SESSION);
echo json_encode($response);