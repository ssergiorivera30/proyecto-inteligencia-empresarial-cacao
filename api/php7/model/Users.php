<?php 

class Users
{	
	function VerifyExitence($conection, $UserNewEmail){
		
		$sql = "SELECT usr_auto_id, usr_user_id, usr_email, usr_password, usr_update FROM users_credentials WHERE usr_email =?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $UserNewEmail);
		$stm -> execute();		
		return $stm->rowCount();				
	}

	function CreateUserFirstStep($conection){
	
		$response_id_user = 0;

		$sql = "INSERT users_keys(usk_date_created, usk_hour_created,usk_status, usk_vigence) VALUES (NOW(), NOW(), 1, 1 )";
		$stm = $conection -> prepare( $sql );
		$stm -> execute();

		if($stm->rowCount() > 0){

			$response_id_user = $conection->lastInsertId();
		}

		return $response_id_user;
		
	}

	function CreateUserCredentials($conection, $result_created_id, $UserNewEmail, $UserFirstPassword ){
	
		$PasswordCyfred = sha1($UserFirstPassword);

		$sql = "INSERT users_credentials (usr_user_id, usr_email, usr_password ) VALUES (?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $result_created_id);
		$stm -> bindParam(2, $UserNewEmail);
		$stm -> bindParam(3, $PasswordCyfred);
		$stm -> execute();
		return $stm->rowCount();		
	}

	function CreateUserDataPersonalBasic($conection, $result_created_id, $UserNames ){

		$sql = "INSERT user_data_personals (udp_user_id, udp_name ) VALUES (?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $result_created_id);
		$stm -> bindParam(2, $UserNames);
		$stm -> execute();

		return $stm->rowCount();		
	}

	function CreateUserDataPersonalFull($conection, $result_created_id, $UserNames){
	
		$PasswordCyfred = sha1($UserFirstPassword);

		$sql = "INSERT user_data_personals (udp_user_id, udp_name, udp_gender, udp_date_birth, udp_type_id, udp_numer_id ) VALUES (?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $result_created_id);
		$stm -> bindParam(2, $UserNames);
		$stm -> bindParam(3, $UserNames);
		$stm -> execute();
		return $stm->rowCount();		
	}


}
