
<div class="row-fluid">
  <!-- block -->
  <div class="block">
    <div class="navbar navbar-inner block-header">
      <div class="muted pull-left"><i class="icon-plus-sign icon-large"> Nuevo Equipo</i></div>
    </div>
    <div class="block-content collapse in">
      <div class="span12">
        <!-- ------------------form----------------- -->
        <form method="post">
          <div class="control-group">
            <div class="controls">
              <input class="input focused" name="dev_name" id="focusedInput" type="text" placeholder = "Nombre y/o Descripci&oacute;n" required>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button name="save" class="btn btn-info" id="save" data-placement="right" title="Guardar Registro">
                <i class="icon-plus-sign icon-large"> Guardar</i>
              </button>
              <script type="text/javascript">
              $(document).ready(function(){
              $('#save').tooltip('show');
              $('#save').tooltip('hide');
              });
              </script>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- /block -->
</div>				 
					<?php
if (isset($_POST['save'])){
  $dev_name = $_POST['dev_name'];
  $query = mysqli_query($cnx, "select * from device_name where dev_name = '$dev_name'")or die(mysqli_error());
  $count = mysqli_num_rows($query);
  if ($count > 0){ ?>
  <script>
    alert('Davice Name Already Exist');
  </script>
  <?php
  }else{
    mysqli_query($cnx, "insert into device_name (dev_name) values('$dev_name')")or die(mysqli_error());
    mysqli_query($cnx, "insert into activity_log (date,username,action) values(NOW(),'$admin_username','Add device Type $dev_name')")or die(mysqli_error());
  ?>
  <script>
  window.location = "dev_name.php";
  $.jGrowl("Device Name Successfully added", { header: 'Device Name add' });
  </script>
  <?php
  }
}
?>