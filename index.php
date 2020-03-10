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
				        <?php include "antrian-a.php";?><br>
				    </div>
				</div>
	        </div>
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Poli Anak</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-b.php";?><br>
				    </div>
				</div>
	        </div>
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Poli Kandungan</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-c.php";?><br>
				    </div>
				</div>
	        </div>
	    </div>
	    <div class="row">
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Farmasi</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-d.php";?><br>
				    </div>
				</div>
	        </div>
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Kasir</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-e.php";?><br>
				    </div>
				</div>
	        </div>
	        <div class="col-lg-4">
				<div align="center" class="panel panel-primary">
				    <div class="panel-heading">
				    	<h2>Laboratorium</h2>
				    </div><br>
				    <div class="bs-example">
				        <?php include "antrian-f.php";?><br>
				    </div>
				</div>
	        </div>
	    </div><!-- /.row -->
	    <br><?php include "../copyright.php";?>
	    </div>
    	</div><!-- /.row -->
	  	<!--<table width="100%" border="0">
	        <tr>
	            <th class="col-lg-3">
	            	<div class="row">
			    	<div align="center" class="panel panel-primary">
			            <div class="panel-heading">
			            	<h2>Poli Anak</h2>
			            </div><br>
			            <div class="bs-example">
			                <font class="antrian">A<?php echo $nomor_ant_anak; ?></font><br>
			                <font size="5">Poli Anak</font><br><br>
			            </div>
			        </div>
			    	</div>
	            </th>
	            <th rowspan="2">
	            <div align ="right">
	            	
				</div>
	            </th>
	        </tr>
	        <tr>
	            <th class="col-lg-3">
	            	<div class="row">
			    	<div align="center" class="panel panel-primary">
			            <div class="panel-heading">
			            	<h2>Poli Kandungan</h2>
			            </div><br>
			            <div class="bs-example">
			                <font class="antrian">B<?php echo $nomor_ant_kandungan; ?></font><br>
			                <font size="5">Poli Kandungan</font><br><br>
			            </div>
			        </div>
			    	</div>
	            </th>
	        </tr>
    	</table>
	    	<div class="row">
	    	<div class="col-lg-3">
	    	<div align="center" class="panel panel-primary">
	            <div class="panel-heading">
	            	<h2>Nomor Antrian</h2>
	            </div><br>
	            <div class="bs-example">
	                <font size="10">A<?php echo $nomor_ant_anak; ?></font><br>
	                <font size="6">Poli Anak</font><br><br><br>
	            </div>
	        </div>
	    	</div>
	    	</div>
	    	<div class="row">
	    	<div class="col-lg-3">
	    	<div align="center" class="panel panel-primary">
	            <div class="panel-heading">
	            	<h2>Nomor Antrian</h2>
	            </div><br>
	            <div class="bs-example">
	                <font size="10">B<?php echo $nomor_ant_kandungan; ?></font><br>
	                <font size="6">Poli Kandungan</font><br><br><br>
	            </div>
	        </div>
	    	</div>
	    	</div>-->
	    </div>
	        </div><!-- /.row -->
      	</div>
    </div><!-- /.row -->
    </div><!-- /#page-wrapper -->
</body>
<?php include "views/footer.php";?>
