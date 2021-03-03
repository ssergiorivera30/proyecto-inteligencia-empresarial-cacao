<?php 

class Conexion{

	function BDMysqlBigNovaSoftware(){		

		$host = "localhost";		
		$database   = "big_nova_software";
		$usuario = "root";
		$password = "";
		$conexion =new PDO("mysql:host=$host;dbname=$database; charset utf-8", $usuario, $password);
    	return $conexion;
	}
}