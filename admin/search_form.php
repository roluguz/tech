
<!-----------------------------------------------Advance Search Form Modal --------------------------------------------------->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
<h3 id="myModalLabel">Busqueda Avanzada</h3>
</div>

<div class="modal-body">
    <form class="form-horizontal" method="post" action="advance_search.php">	
	    <div class="control-group">
		    <label class="control-label" for="inputEmail">Ubicación</label>
			  <div class="controls">
			  <select name="stdev_location_name" class="" required/>
			  <option>&larr; Seleccion Ubicación &rarr;</option>
			  <?php
				$class_query = mysqli_query($cnx, "select * from stlocation")or die(mysqli_error());
				while($location_row = mysqli_fetch_array($class_query)){			
				?>
			  <option><?php echo $location_row['stdev_location_name']; ?></option>
			  <?php } ?>
			  </select>
		    </div>
	          </div>
							
			  <div class="control-group">
		      <label class="control-label" for="inputEmail">Nombre Equipo</label>
			  <div class="controls">
			  <select name="dev_name" class="" required/>
			  <option>&larr; Seleccionar Nombre de Equipo &rarr;</option>
			  <?php
				$device_query = mysqli_query($cnx, "select * from device_name")or die(mysqli_error());
				while($device_row = mysqli_fetch_array($device_query)){			
				?>
			  <option><?php echo $device_row['dev_name']; ?></option>
			  <?php } ?>
			  </select>
		      </div>
	          </div>
			  			  			
			  <div class="control-group">
		      <label class="control-label" for="inputEmail">Numero de Serie</label>
			  <div class="controls">
			  <select name="dev_serial"  class="" required/>
			  <option>&larr; Selccionar Numero de Serie &rarr;</option>
			  <?php
				$serial_query = mysqli_query($cnx, "select * from stdevice")or die(mysqli_error());
				while($row = mysqli_fetch_array($serial_query)){			
				?>
			  <option><?php echo $row['dev_serial']; ?></option>
			  <?php } ?>
			  </select>
		      </div>
	          </div>
												
                <div class="control-group">
                <div class="controls">
                <button type="submit" id="search" data-placement="left" title="Click to Search" class="btn btn-primary"><i class="icon-search"></i> Buscar</button>
				 <script type="text/javascript">
		        $(document).ready(function(){
		        $('#search').tooltip('show');
		        $('#search').tooltip('hide');
		        });
		        </script> 
                </div>
                </div>
				
    </form>
</div>

<div class="modal-footer">
<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i> Cerrar</button>
</div>
</div>