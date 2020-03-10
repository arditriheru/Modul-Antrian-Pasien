			<?php
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_kasir) AS max
		            FROM ant_kasir;");
		            while($b = mysqli_fetch_array($a)){
		            $max 				= $b['max'];
		        }

	            date_default_timezone_set("Asia/Jakarta");
	            $tanggal				= date('Y-m-d');
	            $id_ant_kasir			= $max+1;
	            $nomor_ant_kasir		= $max+1;
	            $status					= 2;

	            mysqli_query($koneksi,"INSERT INTO ant_kasir(id_ant_kasir, nomor_ant_kasir, tanggal, status)VALUES('$id_ant_kasir',
	            	'$nomor_ant_kasir','$tanggal',$status)");
	            header("location:dashboard-kasir");
	        ?>