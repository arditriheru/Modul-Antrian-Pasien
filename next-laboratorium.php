			<?php
	            include '../koneksi.php';
	            include "controller/max-laboratorium.php";
	            $c = mysqli_query($koneksi,
		        	"SELECT id_ant_lab, nomor_ant_lab
		            FROM ant_lab
		            WHERE status=1;");
		            while($d = mysqli_fetch_array($c)){
		            $tcounter 	= $d['nomor_ant_lab'];
					$panjang	= strlen($tcounter);
					$antrian 	= $tcounter;
					for($i=0;$i<$panjang;$i++){
					$id_ant_lab = $d['id_ant_lab']+1;
				}
			}
	            if($id_ant_lab>$max){
	            	echo "<script>alert('Antrian Terakhir!!');document.location='dashboard-laboratorium'</script>";
	            }else{
	            	mysqli_query($koneksi,"UPDATE ant_lab SET status='2'
	              WHERE status='1'");
	            mysqli_query($koneksi,"UPDATE ant_lab SET status='1'
	              WHERE id_ant_lab=$id_ant_lab");
	            header("location:dashboard-laboratorium");
	            }
	  		?>
	  		