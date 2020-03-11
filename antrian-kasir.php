<?php include "views/header.php";?>
<script type="text/javascript">
var antriankasir = setInterval(
function ()
{
$('#antriankasir').load('antrian-kasir.php').fadeIn("slow");
}, 100);
</script>
<?php
				include '../koneksi.php';

		        $a = mysqli_query($koneksi,
		        	"SELECT id_ant_kasir, nomor_ant_kasir
		            FROM ant_kasir
		            WHERE status=1;");
		            while($b = mysqli_fetch_array($a)){
		            $nomor_ant_kasir 	= $b['nomor_ant_kasir'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_kasir) AS max
		            FROM ant_kasir;");
		            while($d = mysqli_fetch_array($c)){
		            $max 		= $d['max'];
		        }
?>
<div id="antriankasir">
	<font class="antrian">C<?php echo $nomor_ant_kasir; ?></font>
	<font class="redtext"><h3>Total <?php echo $max; ?> Antrian</h3></font>
</div>
<?php include "views/footer.php";?>