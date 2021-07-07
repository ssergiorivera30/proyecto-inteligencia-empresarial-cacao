<?php 

class PermissionsUserLoad
{	
	function PermissionsUserLoadInfoBasic( $conexion, $IdentificatorNotMember){

		$IdentificatorNotMember = '%'.$IdentificatorNotMember.'%';
		
		$sql = "SELECT 
					udp_user_id as code, udp_name as name, 
					usr_email as email,
					usava_avatar as avatar
				FROM 
					user_data_personals,
					users_credentials,
					users_avatars
				WHERE
					udp_user_id = usr_user_id 
						and udp_user_id = usava_id_user
						and udp_name LIKE ? OR usr_email LIKE ? limit 5";


		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $IdentificatorNotMember);
		$stm -> bindParam(2, $IdentificatorNotMember);
		$stm -> execute();		
		return $stm->fetchAll();		
	}




}
