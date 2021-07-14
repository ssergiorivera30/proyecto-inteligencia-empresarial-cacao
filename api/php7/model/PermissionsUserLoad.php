<?php 

class PermissionsUserLoad
{	
	function PermissionsUserLoadInfoBasic( $conexion, $IdentificatorNotMember){

		$data = array();
		$IdentificatorNotMember = '%'.$IdentificatorNotMember.'%';
		
		$sql = "SELECT 
					a.usr_user_id as code, a.usr_email as email,
					b.udp_name as name, 
					c.usava_avatar as avatar
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

		foreach ($stm->fetchAll() as $key => $value) {

			$NestData['code'] = $value['code'];
			$NestData['email'] = $value['email'];
			$NestData['name'] = $value['name'];
			$NestData['avatar'] = $value['avatar'] == 0 ? intval( $value['avatar'] ) :  $value['avatar'] ;
			$NestData['permissions'] = 2;
			$data[] = $NestData;
		}	

		return $data;		
	}

	function UserPermissionCreate( $conexion, $id_service, $id_user, $permissions  ){

		$response_permissions_config = self::PermissionsAdapateBD($permissions);
		
		$sql = "INSERT INTO 
					tbl_service_permissions 
						(	tbsep_id_service, tbsep_id_user, 
						tbsep_is_create, tbsep_is_read, tbsep_is_update, tbsep_is_delete, tbsep_is_share, 
						tbsep_date_created, tbsep_hour_created	) 
					VALUES 
						(?, ?, ?, ?, ?, ?, ?, NOW(), NOW() )";

		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $id_service);
		$stm -> bindParam(2, $id_user);
		$stm -> bindParam(3, $response_permissions_config['is_create']);
		$stm -> bindParam(4, $response_permissions_config['is_read']);
		$stm -> bindParam(5, $response_permissions_config['is_update']);
		$stm -> bindParam(6, $response_permissions_config['is_delete']);
		$stm -> bindParam(7, $response_permissions_config['is_share']);
		$stm -> execute();

		return array( 'response' => $stm->rowCount() );
	}

	function LoadUsersByService( $conexion, $id_service ){

		$data = array();

		$sql = "SELECT
					a.tbsep_id_service, a.tbsep_id_user,
						a.tbsep_is_create as is_create, a.tbsep_is_read as is_read,
						a.tbsep_is_update as is_update, a.tbsep_is_delete as is_delete, a.tbsep_is_share as is_share,
					b.usr_user_id AS code, b.usr_email AS email,
					c.udp_name AS name, 
					d.usava_avatar AS avatar					
				FROM
					tbl_service_permissions a
					INNER JOIN users_credentials b ON a.tbsep_id_user = b.usr_user_id
					INNER JOIN user_data_personals c ON a.tbsep_id_user = c.udp_user_id
					INNER JOIN users_avatars d ON a.tbsep_id_user = d.usava_id_user					
				WHERE				
					a.tbsep_id_service = ?";

		$stm = $conexion -> prepare( $sql );
		$stm -> bindParam(1, $id_service);
		$stm -> execute();		

		foreach ($stm->fetchAll() as $key => $value) {

			$NestData['code'] = $value['code'];
			$NestData['email'] = $value['email'];
			$NestData['name'] = $value['name'];
			$NestData['avatar'] = $value['avatar'] == 0 ? intval( $value['avatar'] ) :  $value['avatar'];

			$NestData['permissions'] = self::PermissionsReduceForUser( $value['is_create'], $value['is_read'], $value['is_update'],
																	   $value['is_delete'], $value['is_share'] );			
			$data[] = $NestData;
		}	

		return $data;
	}

	function PermissionsAdapateBD($permissions){

		$is_create = 0;
		$is_read = 0;
		$is_update = 0;
		$is_delete = 0;
		$is_share = 0;

		if( $permissions === 1 ){

			$is_create = 1; $is_read = 1; $is_update = 1; $is_delete = 1; $is_share = 1; 
		}

		if( $permissions === 2 ){

			$is_read = 1;		
		}

		if( $permissions === 3 ){

			$is_create = 1; $is_read = 1; $is_update = 1; $is_delete = 1;		
		}

		$permissions_config = array( 'is_create' => $is_create, 'is_read' => $is_read, 
									 'is_update' => $is_update, 'is_delete' => $is_delete,
									 'is_share' => $is_share );
		return $permissions_config;
	}


	function PermissionsReduceForUser( $is_create, $is_read, $is_update, $is_delete, $is_share ){

		if( $is_create == 1 && $is_read == 1 && $is_update == 1 && $is_delete == 1 && $is_share == 1 ){

			$permissions = 1;
		}

		if( $is_create == 0 && $is_read == 1 && $is_update == 0 && $is_delete == 0 && $is_share == 0 ){

			$permissions = 2;
		}

		if( $is_create == 1 && $is_read == 1 && $is_update == 1 && $is_delete == 1 && $is_share == 0 ){

			$permissions = 3;
		}

		return $permissions;
	}



}