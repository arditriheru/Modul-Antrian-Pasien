			<?php
	            include '../koneksi.php';
	            include "controller/max-kasir.php";
	            $c = mysqli_query($koneksi,
		        	"SELECT id_ant_kasir, nomor_ant_kasir
		            FROM ant_kasir
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_kasir'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_kasir = $d['id_ant_kasir']+1;
				}
			}
	            if($id_ant_kasir>$max){
	            	echo "<script>alert('Antrian Terakhir!!');document.location='dashboard-kasir'</script>";
	            }else{
	            	mysqli_query($koneksi,"UPDATE ant_kasir SET status='2'
	              WHERE status='1'");
	            mysqli_query($koneksi,"UPDATE ant_kasir SET status='1'
	              WHERE id_ant_kasir=$id_ant_kasir");
	            header("location:dashboard-kasir");
	            }
	  		?>
	  		