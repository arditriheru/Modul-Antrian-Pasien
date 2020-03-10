			<?php
	            include '../koneksi.php';
	            include "controller/max-farmasi.php";
	            $c = mysqli_query($koneksi,
		        	"SELECT id_ant_farmasi, nomor_ant_farmasi
		            FROM ant_farmasi
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_farmasi'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_farmasi = $d['id_ant_farmasi']+1;
				}
			}
	            if($id_ant_farmasi>$max){
	            	echo "<script>alert('Antrian Terakhir!!');document.location='dashboard-farmasi'</script>";
	            }else{
	            	mysqli_query($koneksi,"UPDATE ant_farmasi SET status='2'
	              WHERE status='1'");
	            mysqli_query($koneksi,"UPDATE ant_farmasi SET status='1'
	              WHERE id_ant_farmasi=$id_ant_farmasi");
	            header("location:dashboard-farmasi");
	            }
	  		?>
	  		