<?php include "views/header.php";?>
  <!-- Loading Page -->
<body style="margin:0;">
  <nav>
    <div id="wrapper">
    	</div><!-- /.navbar-collapse <?php include "views/digital-timer.php";?> -->
    </nav>
    <div id="page-wrapper">
       	<div class="col-lg-12">
       		<marquee direction="left" bgcolor="#eea236" width="auto"><h1 class="whitetext">Selamat Datang di RSKIA Rachmi Yogyakarta</h1></marquee>
       		<marquee direction="right" bgcolor="#cccccc" width="auto"><h4 class="blacktext">Melayani Dengan Kasih dan Sayang</h4></marquee>
	        <div class="row">
		<?php include "views/header.php"; ?>
	  	<div id="page-wrapper">
	  	<div class="row">
	    <div class="col-lg-12">
	    <div class="row">
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Pendaftaran</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-pendaftaran.php";?><br>
				    </div>
				</div>
	        </div>
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Farmasi</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-farmasi.php";?><br>
				    </div>
				</div>
	        </div>
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Kasir</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-kasir.php";?><br>
				    </div>
				</div>
	        </div>
	    <br><?php include "../copyright.php";?>
	    </div><!-- /.row -->
	    </div>
	        </div><!-- /.row -->
      	</div>
    </div><!-- /.row -->
    </div><!-- /#page-wrapper -->
</body>
<?php include "views/footer.php";?>
