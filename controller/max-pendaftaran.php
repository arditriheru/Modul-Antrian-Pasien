			<?php
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_pendaftaran) AS max
		            FROM ant_pendaftaran;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
		    ?>