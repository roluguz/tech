 <?php
 include('./lib/dbcon.php'); 
$cnx=dbcon(); 
 include('session.php');
 
 
                            if (isset($_POST['change'])) {
                               

                                $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);

                                move_uploaded_file($_FILES["image"]["tmp_name"], "uploads/" . $_FILES["image"]["name"]);
                                $adminthumbnails = "uploads/" . $_FILES["image"]["name"];
								
								mysqli_query($cnx, "update admin set adminthumbnails = '$adminthumbnails' where admin_id  = '$session_id' ")or die(mysql_error());
								
								?>
 
								<script>
								window.location = "dashboard.php";  
								</script>

                       <?php     }  ?>