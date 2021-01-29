 <?php
 include('./lib/dbcon.php'); 
 $cnx= dbcon(); 
 include('session.php');
 $new_password  = $_POST['new_password'];
 mysqli_query($cnx, "update admin set password = '$new_password' where admin_id = '$session_id'")or die(mysql_error());
 ?>