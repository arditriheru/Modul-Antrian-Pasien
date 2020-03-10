			<?php
				$a = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_kasir) AS max
		            FROM ant_kasir;");
		            while($b = mysqli_fetch_array($a)){
		            $max 		= $b['max'];
		        }
		    ?>