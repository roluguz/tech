<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $stdev_id = $_GET['stdev_id']; ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php // este es como esta include('device_location_slidebar.php'); ?>			
				<?php include('device_sidebar.php'); ?>			
						<div class="span9" id="content">
		                    <div class="row-fluid">
								
                          <div class="empty">
			 	             <div class="alert alert-success">
                              <strong>Mover a la ubicación que seleccione</strong>
                            </div>
			               </div>
						   
						    <?php $location_query = mysqli_query($cnx, "select * from stlocation	                     
	                         where stdev_id = '$stdev_id'")or die(mysqli_error());
	                         $location_row = mysqli_fetch_array($location_query);
	                        ?>	
		                        <!-- block -->
		                        <div id="" class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">De:&nbsp;<?php echo $location_row['stdev_location_name']; ?>Transferir Equipo</div>
										<div class="muted pull-right">
										<a id="return" data-placement="left" title="Click para Regresar" href="mydevice.php<?php echo '?stdev_id='.$stdev_id; ?>"><i class="icon-arrow-left"></i> Regresar</a>
										</div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#return').tooltip('show');
										$('#return').tooltip('hide');
										});
										</script>  
		                            </div>
																		 
		                            <div class="block-content collapse in">    
									 
									<?php
									$query = mysqli_query($cnx, "select * from stdevice 
									LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
									where id = '$get_id'")or die(mysqli_error());
									$row = mysqli_fetch_array($query);
									?>
									
									 <form class="form-horizontal" method="post">
									 
									   <div class="control-group">
											<label class="control-label" for="inputEmail">Nombre de Equipo</label>
											<div class="controls">			
												<select id="qtype" name="dev_id" readonly="readonly" required>

													<option value="<?php echo $row['dev_id']; ?>" ><?php echo $row['dev_name']; ?></option>
													<?php
													$device_query = mysqli_query($cnx, "select * from device_name")or die(mysqli_error());
													while($query_device_row = mysqli_fetch_array($device_query)){
													$dev_name = $row['dev_name'];
													?>
													<option value="<?php echo $query_device_row['dev_id']; ?>"><?php echo $query_device_row['dev_name'];  ?></option>
													<?php } ?>

												</select>
											</div>
										</div>
												
										<div class="control-group">
		                                  <label class="control-label" for="inputEmail">Mover a</label>
			                                <div class="controls">
				                            <select name="stdev_id" class="" required/>
				                            <option></option>
			                                 <?php $result =  mysqli_query($cnx, "select * from stlocation")or die(mysqli_error()); 
			                                  while ($row=mysqli_fetch_array($result)){ ?>
				                             <option value="<?php echo $row['stdev_id']; ?>&nbspName&nbsp<?php echo $row['stdev_location_name']; ?>"><?php echo $row['stdev_location_name']; ?></option>
				                             <?php } ?>
				                           </select>
		                                </div>
	                                   </div>
										
								
										<div class="control-group">
										<div class="controls">
										
										<button id="move" data-placement="right" title="Click to Move Device" name="transfer" type="submit" class="btn btn-warning"><i class="icon-move"></i> Move</button>
										</div>
										</div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#move').tooltip('show');
										$('#move').tooltip('hide');
										});
										</script>  
										</form>
										
										<?php
										if (isset($_POST['transfer'])){	
										$oras = strtotime("now");
										$ora = date("Y-m-d",$oras);
										$stdev_id = $_POST['stdev_id'];										
										mysqli_query($cnx, "update location_details set
										            date_deployment = '$ora',
													stdev_id = '$stdev_id'													
													where id = '$get_id' ")or die(mysqli_error());
													
										mysqli_query($cnx, "insert into activity_log (date,username,action) values(NOW(),'$admin_username','transfer Device  $dev_name to location id $stdev_id')")or die(mysqli_error());			
										?>
										<script>
										window.location = "mydevice.php<?php echo '?stdev_id='.$stdev_id; ?>"; 
										$.jGrowl("Device Transfer Successfully", { header: 'Device Transfer' });
										</script>
										<?php
										}
										
										?>
									
								
		                            </div>
		                        </div>
		                        <!-- /block -->
		                    </div>
		                </div>
            </div>	
<script>
	jQuery(document).ready(function(){
		jQuery("#opt11").hide();
		jQuery("#opt12").hide();
		jQuery("#opt13").hide();		

		jQuery("#qtype").change(function(){	
			var x = jQuery(this).val();			
			if(x == '1') {
				jQuery("#opt11").show();
				jQuery("#opt12").hide();
				jQuery("#opt13").hide();
			} else if(x == '2') {
				jQuery("#opt11").hide();
				jQuery("#opt12").show();
				jQuery("#opt13").hide();
			}
		});
		
	});
</script>			
		<?php include('footer.php'); ?>  
		 </div>
		<?php include('script.php'); ?>
    </body>
</html>