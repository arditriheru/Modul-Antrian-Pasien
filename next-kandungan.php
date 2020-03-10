			<?php
	            include '../koneksi.php';
	            include "controller/max-kandungan.php";
	            $c = mysqli_query($koneksi,
		        	"SELECT id_ant_kandungan, nomor_ant_kandungan
		            FROM ant_kandungan
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_kandungan'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_kandungan = $d['id_ant_kandungan']+1;
				}
			}
	            if($id_ant_kandungan>$max){
	            	echo "<script>alert('Antrian Terakhir!!');document.location='dashboard-kandungan'</script>";
	            }else{
	            	mysqli_query($koneksi,"UPDATE ant_kandungan SET status='2'
	              WHERE status='1'");
	            mysqli_query($koneksi,"UPDATE ant_kandungan SET status='1'
	              WHERE id_ant_kandungan=$id_ant_kandungan");
	            header("location:dashboard-kandungan");
	            }
	  		?>