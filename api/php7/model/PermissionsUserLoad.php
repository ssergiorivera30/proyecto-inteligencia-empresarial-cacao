<?php 

class PermissionsUserLoad
{	
	function PermissionsUserLoadInfoBasic( $conexion, $IdentificatorNotMember){

		$data = array();
		$IdentificatorNotMember = '%'.$IdentificatorNotMember.'%';
		
		$sql = "SELECT 
					a.usr_user_id as code, a.usr_email as email, b.udp_name as name, c.usava_avatar as avatar
				FROM 
					users_credentials a
					INNER JOIN user_data_personals b ON a.usr_user_id = b.udp_user_id
					INNER JOIN users_avatars c ON a.usr_user_id = c.usava_id_user
				WHERE
				b.udp_name LIKE ? OR a.usr_email LIKE ? limit 5";

		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $IdentificatorNotMember);
		$stm -> bindParam(2, $IdentificatorNotMember);
		$stm -> execute();

		if( $stm->rowCount() > 0 ){

			foreach ($stm->fetchAll()as $key => $value) {
				$NestData['code'] = $value['code'];
				$NestData['email'] = $value['email'];
				$NestData['name'] = $value['name'];
				$NestData['avatar'] = $value['avatar'] == 0 ? intval( $value['avatar'] ) :  $value['avatar'] ;
				$NestData['permissions'] = 2;
				$data[] = $NestData;
			}
		}

		return $data;		
	}



}