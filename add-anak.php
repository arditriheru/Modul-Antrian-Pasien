		<?php 
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_anak) AS max
		            FROM ant_anak;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
		        
	            date_default_timezone_set("Asia/Jakarta");
	            $tanggal		= date('Y-m-d');
	            $id_ant_anak	= $max+1;
	            $nomor_ant_anak	= $max+1;
	            $status			= 2;

	            mysqli_query($koneksi,"INSERT INTO ant_anak(id_ant_anak, nomor_ant_anak, tanggal, status)VALUES('$id_ant_anak',
	            	'$nomor_ant_anak','$tanggal',$status)");
	            header("location:dashboard-anak");
	    ?>