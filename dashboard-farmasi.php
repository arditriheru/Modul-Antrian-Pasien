<?php include "views/header.php";?>
  <!-- Loading Page -->
<body onload="myFunction()" style="margin:0;">
<div id="loader"></div>
<div style="display:none;" id="myDiv">
  <nav>
    <div id="wrapper">
    	</div><!-- /.navbar-collapse -->
    </nav>
    <div id="page-wrapper">
    	<img class="img-responsive" src="../images/header.jpg" width="100%">
  	<div class="row">
    	<div class="col-lg-12">
	        <div class="row">
		    <?php $loket="1";?>
			<audio id="suarabel" src="rekaman/bell-bandara.mp3"></audio>
			<audio id="suarabelnomorurut" src="rekaman/nomor-antrian.mp3"></audio>
			<audio id="suarabelabjad" src="rekaman/d.mp3"></audio>  
			<audio id="suarabelsuarabelloket" src="rekaman/ke-farmasi.mp3">
			</audio>
			<audio id="belas" src="rekaman/belas.mp3"></audio> 
			<audio id="sebelas" src="rekaman/sebelas.mp3"></audio> 
		    <audio id="puluh" src="rekaman/puluh.mp3"></audio> 
		    <audio id="sepuluh" src="rekaman/sepuluh.mp3"></audio> 
		    <audio id="ratus" src="rekaman/ratus.mp3"></audio> 
		    <audio id="seratus" src="rekaman/seratus.mp3"></audio> 
		    <!--<audio id="suarabelloket1" src="rekaman/<?php echo $loket; ?>.mp3"></audio>-->
	        <?php
				include '../koneksi.php';
		        
		        $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_farmasi) AS max
		            FROM ant_farmasi;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT id_ant_farmasi, nomor_ant_farmasi
		            FROM ant_farmasi
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_farmasi'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_farmasi = $d['id_ant_farmasi']+1;
			?>
			<!--SUARA NOMOR URUT-->
	        <audio id="suarabel<?php echo $i;?>"
	        	src="rekaman/<?php echo substr($tcounter,$i,1); ?>.mp3" >
	        </audio>
	    <?php
			}
		}
	?>   
		<?php include "views/header.php"; ?>
	  	<div id="page-wrapper">
	    	<div class="row">
	    	<div class="col-lg-6">
	    	<div align="center" class="panel panel-primary">
	            <div class="panel-heading">
	                <h2>Jumlah Antrian</h2>
	            </div><br>
	            <div class="bs-example">
	            	<font size="10"><?php echo $max; ?></font><br>
	                <font size="6">Farmasi</font><br><br>
					<form method="post" action="add-farmasi" role="form">
						<button name="add" type="submit" class="btn btn-success btn-lg">Tambah</button>
					</form><br>
	            </div>
	        </div>
	    	</div>
	    	<div class="col-lg-6">
	    	<div align="center" class="panel panel-primary">
	            <div class="panel-heading">
	            	<h2>Nomor Antrian</h2>
	            </div><br>
	            <div class="bs-example">
	                <font size="10">D<?php echo $tcounter; ?></font><br>
	                <font size="6">Farmasi</font><br><br>
	            <form method="post" action="next-farmasi" role="form">
	            	<a href="reset-farmasi" name="reset" 
	            	onclick="javascript: return confirm('Yakin Reset?')" 
	            	type="button" class="btn btn-warning btn-lg">Reset</a>&nbsp;&nbsp;&nbsp;
					<button name="next" type="submit" 
						class="btn btn-success btn-lg">Next</button>&nbsp;&nbsp;&nbsp;
					<a name="play" onclick="mulai();" type="button" 
						class="btn btn-primary btn-lg">Play</a>
				</form><br>
	            </div>
	        </div>
	    	</div>
	    	</div>
	    </div>
	        </div><!-- /.row -->
      	</div><?php include "../copyright.php";?>
    </div><!-- /.row -->
    </div><!-- /#page-wrapper -->
    <!-- JavaScript -->
    <?php include "controller/suara.php";?>
</body>
<?php include "views/footer.php";?>
