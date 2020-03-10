<?php
	/**$location_counter = "data.txt";
	$fp = fopen($location_counter,"w");
		fputs($fp, 0);
		fclose($fp);
	header('Location: index.php');**/
	include '../koneksi.php';
	mysqli_query($koneksi,"DELETE FROM ant_kandungan WHERE id_ant_kandungan!=0");
	mysqli_query($koneksi,"UPDATE ant_kandungan SET status='1'
              WHERE id_ant_kandungan=0");
	header("location:dashboard-kandungan");
?>
