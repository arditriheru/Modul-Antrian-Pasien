			<?php
	            include '../koneksi.php';
	            include "controller/max-anak.php";
	            $c = mysqli_query($koneksi,
		        	"SELECT id_ant_anak, nomor_ant_anak
		            FROM ant_anak
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_anak'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_anak = $d['id_ant_anak']+1;
				}
			}
	            if($id_ant_anak>$max){
	            	echo "<script>alert('Antrian Terakhir!!');document.location='dashboard-anak'</script>";
	            }else{
	            	mysqli_query($koneksi,"UPDATE ant_anak SET status='2'
	              WHERE status='1'");
	            mysqli_query($koneksi,"UPDATE ant_anak SET status='1'
	              WHERE id_ant_anak=$id_ant_anak");
	            header("location:dashboard-anak");
	            }
	  		?>