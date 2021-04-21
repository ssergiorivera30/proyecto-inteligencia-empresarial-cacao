<?php 

class AutenticationUser
{
		
	function Autentication($conexion, $UserEmail, $UserPassword ){

		$UserIsCorrect = false;
		$UserName = false;
		$MsgResponse = 'Datos invalidos';
		$ClassStyle = 'text-red-900';

		$PasswordCyfred = sha1($UserPassword);

		$sql_login = "SELECT usr_user_id as user_code, udp_name as user_name FROM users_credentials, user_data_personals WHERE 
		usr_user_id = udp_user_id and usr_email = ? and usr_password = ? ";
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
			
			$USER_DATA = $login->fetchAll();

			session_start();
						
			$_SESSION['USER_STATE'] = true;
			$_SESSION['USER_CODE']  = $USER_DATA[0]['user_code'];
			$_SESSION['USER_NAME']  = $USER_DATA[0]['user_name'];

			$UserIsCorrect = $_SESSION['USER_STATE'];
			$UserName = $_SESSION['USER_NAME'];

			$MsgResponse = "Hola ". $_SESSION['USER_NAME'];
			$type = 'text-green-900';
		}

		return $response = array('UserIsCorrect' => $UserIsCorrect, 'UserName' => $UserName, 'MsgResponse' => $MsgResponse, 'ClassStyle' => $ClassStyle  );

	}

}