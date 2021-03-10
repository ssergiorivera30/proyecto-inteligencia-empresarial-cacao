<?php 

class Response
{
	function ResponseMsgIcono($mensaje, $icono){
		$response = array('mensaje'=> $mensaje, 'icono' => $icono);
		echo json_encode($response);
		exit();
	}
	function ResponseMsgIconoCode($mensaje, $icono, $code){
		$response = array('mensaje'=> $mensaje, 'icono' => $icono, 'code' => $code);
		echo json_encode($response);
		exit();
	}
	function ResponseMsgObject($mensaje, $object){
		$response = array('mensaje'=> $mensaje, 'datos' => $object);
		echo json_encode($response);
		exit();
	}
	function ResponseInfiniteObjects($object){
		echo json_encode($object);
		exit();
	}
}