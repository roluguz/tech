<?php
include('./lib/dbcon.php'); 
$cnx=dbcon(); 
include('session.php');
$oras = strtotime("now");
$ora = date("Y-m-d",$oras);										
mysqli_query($cnx, "update user_log set
logout_Date = '$ora'												
where admin_id = '$session_id' ")or die(mysqli_error());

session_destroy();
header('location:../index.php'); 
?>