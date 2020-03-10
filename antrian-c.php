<?php include "views/header.php";?>
<script type="text/javascript">
var antrianc = setInterval(
function ()
{
$('#antrianc').load('antrian-c.php').fadeIn("slow");
}, 100);
</script>
<?php
				include '../koneksi.php';

		        $a = mysqli_query($koneksi,
		        	"SELECT id_ant_kandungan, nomor_ant_kandungan
		            FROM ant_kandungan
		            WHERE status=1;");
		            while($b = mysqli_fetch_array($a)){
		            $nomor_ant_kandungan= $b['nomor_ant_kandungan'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_kandungan) AS max
		            FROM ant_kandungan;");
		            while($d = mysqli_fetch_array($c)){
		            $max 		= $d['max'];
		        }
?>
<div id="antrianc">
	<font class="antrian">C<?php echo $nomor_ant_kandungan; ?></font>
	<font class="redtext"><h3>Total <?php echo $max; ?> Antrian</h3></font>
</div>
<?php include "views/footer.php";?>