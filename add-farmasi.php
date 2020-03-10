			<?php
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_farmasi) AS max
		            FROM ant_farmasi;");
		            while($b = mysqli_fetch_array($a)){
		            $max 				= $b['max'];
		        }

	            date_default_timezone_set("Asia/Jakarta");
	            $tanggal				= date('Y-m-d');
	            $id_ant_farmasi			= $max+1;
	            $nomor_ant_farmasi		= $max+1;
	            $status					= 2;

	            mysqli_query($koneksi,"INSERT INTO ant_farmasi(id_ant_farmasi, nomor_ant_farmasi, tanggal, status)VALUES('$id_ant_farmasi',
	            	'$nomor_ant_farmasi','$tanggal',$status)");
	            header("location:dashboard-farmasi");
	        ?>