			<?php
				$a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_lab) AS max
		            FROM ant_lab;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
			?>