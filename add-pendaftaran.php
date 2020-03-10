			<?php
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_pendaftaran) AS max
		            FROM ant_pendaftaran;");
		            while($b = mysqli_fetch_array($a)){
		            $max 				= $b['max'];
		        }

	            date_default_timezone_set("Asia/Jakarta");
	            $tanggal				= date('Y-m-d');
	            $id_ant_pendaftaran		= $max+1;
	            $nomor_ant_pendaftaran	= $max+1;
	            $status					= 2;

	            mysqli_query($koneksi,"INSERT INTO ant_pendaftaran(id_ant_pendaftaran, nomor_ant_pendaftaran, tanggal, status)VALUES('$id_ant_pendaftaran',
	            	'$nomor_ant_pendaftaran','$tanggal',$status)");
	            header("location:dashboard-pendaftaran");
	        ?>