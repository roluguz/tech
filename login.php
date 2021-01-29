<?php
	include('admin/lib/dbcon.php');
	$cnx=dbcon(); 
	session_start();	
	$username = $_POST['username'];
	$password = $_POST['password'];
	/*.......... admin ................................*/
		$query = "SELECT * FROM admin WHERE username='$username' AND password='$password'";
		$result = mysqli_query($cnx, $query);
		$row = mysqli_fetch_array($result);
		$num_row = mysqli_num_rows($result);	
	/*..............................Technical Staff ............... */
	/*
	echo "<pre>";
	print_r($_REQUEST);
	print_r(get_defined_vars());
	echo "</pre>";
	die();
	*/
	$query_client = mysqli_query($cnx, "SELECT * FROM client WHERE username='$username' AND password='$password'");
	$num_row_client = mysqli_num_rows($query_client);
	$row_client = mysqli_fetch_array($query_client);	
	if( $num_row > 0 ) { 
		$_SESSION['id']=$row['admin_id'];	
		echo 'true_admin';	
		mysqli_query($cnx, "insert into user_log (username,login_date,admin_id)values('$username',NOW(),".$row['admin_id'].")");	
	}else if ($num_row_client > 0){
		$_SESSION['client']=$row_client['client_id'];
		echo 'true';	
		mysqli_query($cnx, "insert into user_log (username,login_date,client_id)values('$username',NOW(),".$row_client['client_id'].")");	
	 }else{ 
		echo 'false';
	}	
?>