			<?php
				$a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_anak) AS max
		            FROM ant_anak;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
		    ?>
