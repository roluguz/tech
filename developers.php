<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Sistema gestion hardware software">
  <meta name="author" content="DesarrollosGRAM">
  <link rel="shortcut icon" href="images/newLogo.png" />
</head>
<?php include('header_dashboard.php'); ?>
  <body id="home">
    <?php include('navbar_about.php'); ?>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12" id="content">
          <div class="row-fluid">
            <!-- block -->
            <div class="block">
              <div class="navbar navbar-inner block-header">
                <div id="" class="muted pull-right">
                  <a id="return" data-placement="left" title="Click para regresar" href="index.php">
                    <i class="icon-arrow-left"></i> Regresar
                  </a>
                </div>
                <script type="text/javascript">
                  $(document).ready(function(){
                  $('#return').tooltip('show');
                  $('#return').tooltip('hide');
                  });
                </script> 
              </div>
              <div class="block-content collapse in">
                <h3></i><i class="icon-group"></i>&nbsp;Equipo Desarrolladores</h3>
                <hr>
                <div class="span3">
                  <center>
                    <img id="developers" src="admin/images/NO-IMAGE-AVAILABLE.jpg" class="img-circle">
                    <hr>
                    <p>Name: Andres Felipe Rivera</p>
                    <p>Address: Medellin Colombia</p>
                    <p>Email: xxxxx@gmail.com</p>
                  <p>Position: Head Programmer</p>
                  </center>
                </div>
                <div class="span3">
                  <center>
                    <img id="developers" src="admin/images/NO-IMAGE-AVAILABLE.jpg" class="img-circle">
                    <hr>
                    <p>Name: Gabriel Barrios Fierro </p>
                    <p>Address: Barranquilla, Atlantico</p>
                    <p>Email: xxxxxxxx@hotmail.com</p>
                    <p>Position: Ing. Desarrollador </p>
                  </center>
                </div>
                <div class="span3">
                  <center>
                    <img id="developers" src="admin/images/NO-IMAGE-AVAILABLE.jpg" class="img-circle">
                    <hr>
                    <p>Name: Manolo Pajaro Borras</p>
                    <p>Address: Medellin Colombia</p>
                    <p>Email: xxxxx@gmail.com</p>
                    <p>Position: Ing. Desarrollador </p>
                  </center>
                </div>
                <div class="span3">
                  <center>
                    <img id="developers" src="admin/images/NO-IMAGE-AVAILABLE.jpg" class="img-circle">
                    <hr>
                    <p>Name: Rodolfo Luna Guzman</p>
                    <p>Address: Medellin Colombia</p>
                    <p>Email: xxxxx@gmail.com</p>
                    <p>Position: Ing. Desarrollador </p>
                  </center>
                </div>
              </div>
            </div>
            <!-- /block -->
          </div>
        </div>
      </div>
    <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
  </body>
</html>