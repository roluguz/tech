<?php include('header_dashboard.php'); ?>
  <body id="home">
		<?php include('navbar_about.php'); ?>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12" id="content">
          <div class="row-fluid">
            <!-- block -->
            <div id="block_bg" class="block">
              <div class="navbar navbar-inner block-header">
                <div id="" class="muted pull-right">
                  <a id="return" data-placement="left" title="Click Regresar" href="index.php">
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
                <div class="span12">
                   <div class="container-fluid">                                    
                    <?php
                      $history_query = mysqli_query($cnx, "select * from content where title  = 'History' ")or die(mysqli_error());
                      $history_row = mysqli_fetch_array($history_query);
                      echo $history_row['content'];
                    ?>
                  </div>
                </div>
              </div>
            </div> <!-- /block -->            
          </div>
        </div>
      </div>
      <?php include('footer.php'); ?>
    </div>
		<?php include('script.php'); ?>
  </body>
</html>