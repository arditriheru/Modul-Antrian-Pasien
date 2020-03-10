			<?php
				$a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_kandungan) AS max
		            FROM ant_kandungan;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }

			?>