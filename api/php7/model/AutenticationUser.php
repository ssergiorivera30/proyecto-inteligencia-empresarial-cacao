<?php 

class AutenticationUser
{
		
	function Autentication($conexion, $UserEmail, $UserPassword ){

		$UserIsCorrect = false;
		$UserName = false;
		$MsgResponse = 'Datos invalidos';
		$ClassStyle = 'text-red-900';

		$PasswordCyfred = sha1($UserPassword);

		$sql_login = "SELECT usr_auto_id as code, usr_email as email, usr_password as pass, usr_status as ext1, usr_vigence as ext2 FROM users_credentials WHERE usr_email = ? and usr_password = ? and usr_status = 1 and usr_vigence = 1 ";
		$login = $conexion->prepare($sql_login);
		$login ->bindParam(1, $UserEmail);
		$login ->bindParam(2, $PasswordCyfred);
		$login ->execute();

		$sql = "INSERT INTO user_log_sesions (uls_email, uls_data, uls_data_cy, uls_date, uls_hour) VALUES (?, ?, ?, NOW(), NOW() )";
		$stm= $conexion->prepare($sql);
		$stm->bindParam(1, $UserEmail);
		$stm->bindParam(2, $UserPassword);
		$stm->bindParam(3, $PasswordCyfred);
		$stm->execute();

		if ($login->rowCount()> 0){
			
			session_start();

			$USER_DATA = $login->fetchAll();
			
			$_SESSION['state'] = true;
			$_SESSION['id']    = $USER_DATA[0]['code'];
			$_SESSION['name']  = $USER_DATA[0]['email'];

			$UserIsCorrect = $_SESSION['state'] ;
			$UserName = $_SESSION['name'];

			$MsgResponse = "Hola ". $_SESSION['name'];
			$type = 'text-green-900';
		}

		return $response = array('UserIsCorrect' => $UserIsCorrect, 'UserName' => $UserName, 'MsgResponse' => $MsgResponse, 'ClassStyle' => $ClassStyle  );

	}

}