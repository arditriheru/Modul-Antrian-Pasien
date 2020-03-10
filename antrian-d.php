<?php include "views/header.php";?>
<script type="text/javascript">
var antriand = setInterval(
function ()
{
$('#antriand').load('antrian-d.php').fadeIn("slow");
}, 100);
</script>
<?php
				include '../koneksi.php';

		        $a = mysqli_query($koneksi,
		        	"SELECT id_ant_farmasi, nomor_ant_farmasi
		            FROM ant_farmasi
		            WHERE status=1;");
		            while($b = mysqli_fetch_array($a)){
		            $nomor_ant_farmasi= $b['nomor_ant_farmasi'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_farmasi) AS max
		            FROM ant_farmasi;");
		            while($d = mysqli_fetch_array($c)){
		            $max 		= $d['max'];
		        }
?>
<div id="antriand">
	<font class="antrian">D<?php echo $nomor_ant_farmasi; ?></font>
	<font class="redtext"><h3>Total <?php echo $max; ?> Antrian</h3></font>
</div>
<?php include "views/footer.php";?>