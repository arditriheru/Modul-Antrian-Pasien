<?php
	/**$location_counter = "data.txt";
	$fp = fopen($location_counter,"w");
		fputs($fp, 0);
		fclose($fp);
	header('Location: index.php');**/
	include '../koneksi.php';
	mysqli_query($koneksi,"DELETE FROM ant_kasir WHERE id_ant_kasir!=0");
	mysqli_query($koneksi,"UPDATE ant_kasir SET status='1'
              WHERE id_ant_kasir=0");
	header("location:dashboard-kasir");
?>
