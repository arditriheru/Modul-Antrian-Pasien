			<?php
	            include '../koneksi.php';
	            include "controller/max-pendaftaran.php";
	            $c = mysqli_query($koneksi,
		        	"SELECT id_ant_pendaftaran, nomor_ant_pendaftaran
		            FROM ant_pendaftaran
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_pendaftaran'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_pendaftaran = $d['id_ant_pendaftaran']+1;
				}
			}
	            if($id_ant_pendaftaran>$max){
	            	echo "<script>alert('Antrian Terakhir!!');document.location='dashboard-pendaftaran'</script>";
	            }else{
	            	mysqli_query($koneksi,"UPDATE ant_pendaftaran SET status='2'
	              WHERE status='1'");
	            mysqli_query($koneksi,"UPDATE ant_pendaftaran SET status='1'
	              WHERE id_ant_pendaftaran=$id_ant_pendaftaran");
	            header("location:dashboard-pendaftaran");
	            }
	  		?>
	  		