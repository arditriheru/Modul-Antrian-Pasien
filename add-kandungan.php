		<?php 
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_kandungan) AS max
		            FROM ant_kandungan;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
		        
	            date_default_timezone_set("Asia/Jakarta");
	            $tanggal		= date('Y-m-d');
	            $id_ant_kandungan	= $max+1;
	            $nomor_ant_kandungan	= $max+1;
	            $status			= 2;

	            mysqli_query($koneksi,"INSERT INTO ant_kandungan(id_ant_kandungan, nomor_ant_kandungan, tanggal, status)VALUES('$id_ant_kandungan',
	            	'$nomor_ant_kandungan','$tanggal',$status)");
	            header("location:dashboard-kandungan");
	    ?>