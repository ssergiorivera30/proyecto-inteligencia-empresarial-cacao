<?php 

class Users
{	
	function VerifyExitence($conection, $UserNewEmail){
		
		$sql = "SELECT usr_email FROM users_credentials WHERE usr_email=?";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $UserNewEmail);
		$stm -> execute();		
		return $stm->rowCount();				
	}

	public static function CreateUserFirstStep($conection, $UserNewEmail){
	
		$CODE_USER = 0;
		$status = 1;
		$mi_date = date('Y-m-d');
		$mi_hour = date('H:m:s');

		$sql = "INSERT INTO users_keys(usk_date_created, usk_hour_created, usk_status, usk_vigence, usk_name) VALUES ( ?, ?, ?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $mi_date);
		$stm -> bindParam(2, $mi_hour);
		$stm -> bindParam(3, $status);
		$stm -> bindParam(4, $status);
		$stm -> bindParam(5, $UserNewEmail);
		$stm -> execute();


		if($stm->rowCount() > 0){

			$CODE_USER = $conection->lastInsertId();
		}

		return $CODE_USER;
		
	}

	function CreateUserCredentials($conection, $result_created_id, $UserNewEmail, $UserFirstPassword ){
	
		$PasswordCyfred = sha1($UserFirstPassword);

	
		$sql = "INSERT INTO users_credentials (usr_user_id, usr_count_id_type, usr_email, usr_password ) VALUES (?, 1, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $result_created_id);
		$stm -> bindParam(2, $UserNewEmail);
		$stm -> bindParam(3, $PasswordCyfred);
		$stm -> execute();
		return $stm->rowCount();	

	}

	function CreateUserDataPersonalBasic($conection, $result_created_id, $UserNames, $UserLastNames ){

		$sql = "INSERT INTO user_data_personals (udp_user_id, udp_name, udp_last_name ) VALUES (?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $result_created_id);
		$stm -> bindParam(2, $UserNames);
		$stm -> bindParam(3, $UserLastNames);
		$stm -> execute();

		return $stm->rowCount();		
	}

	function CreateUserDataPersonalFull($conection, $result_created_id, $UserNames){
	
		$PasswordCyfred = sha1($UserFirstPassword);

		$sql = "INSERT INTO user_data_personals (udp_user_id, udp_name, udp_gender, udp_date_birth, udp_type_id, udp_numer_id ) VALUES (?, ?, ? )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $result_created_id);
		$stm -> bindParam(2, $UserNames);
		$stm -> bindParam(3, $UserNames);
		$stm -> execute();
		return $stm->rowCount();		
	}

	function UserCreateAvatar($conection, $id_user, $avatar){
	
		$sql = "INSERT INTO users_avatars ( usava_id_user, usava_avatar, usava_date_created, usava_hour_date ) VALUES (?, ?, NOW(), NOW() )";
		$stm = $conection -> prepare( $sql );
		$stm -> bindParam(1, $id_user);
		$stm -> bindParam(2, $avatar);
		$stm -> execute();
		return $stm->rowCount();		
	}




}
