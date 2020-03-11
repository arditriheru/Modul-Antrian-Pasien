<?php include "views/header.php";?>
<script type="text/javascript">
var antriananak = setInterval(
function ()
{
$('#antriananak').load('antrian-anak.php').fadeIn("slow");
}, 100);
</script>
<?php
				include '../koneksi.php';

		        $a = mysqli_query($koneksi,
		        	"SELECT id_ant_anak, nomor_ant_anak
		            FROM ant_anak
		            WHERE status=1;");
		            while($b = mysqli_fetch_array($a)){
		            $nomor_ant_anak 	= $b['nomor_ant_anak'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_anak) AS max
		            FROM ant_anak;");
		            while($d = mysqli_fetch_array($c)){
		            $max 		= $d['max'];
		        }
?>
<div id="antriananak">
	<font class="antrian">D<?php echo $nomor_ant_anak; ?></font>
	<font class="redtext"><h3>Total <?php echo $max; ?> Antrian</h3></font>
</div>
<?php include "views/footer.php";?>