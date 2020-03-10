			<?php
	            include '../koneksi.php';
	            $a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_farmasi) AS max
		            FROM ant_farmasi;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
		    ?>