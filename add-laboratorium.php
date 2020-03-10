			<?php
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_lab) AS max
		            FROM ant_lab;");
		            while($b = mysqli_fetch_array($a)){
		            $max 				= $b['max'];
		        }

	            date_default_timezone_set("Asia/Jakarta");
	            $tanggal				= date('Y-m-d');
	            $id_ant_lab				= $max+1;
	            $nomor_ant_lab			= $max+1;
	            $status					= 2;

	            mysqli_query($koneksi,"INSERT INTO ant_lab(id_ant_lab, nomor_ant_lab, tanggal, status)VALUES('$id_ant_lab',
	            	'$nomor_ant_lab','$tanggal',$status)");
	            header("location:dashboard-laboratorium");
	        ?>
