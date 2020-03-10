<?php include "views/header.php";?>
<script type="text/javascript">
var antrianc = setInterval(
function ()
{
$('#antrianf').load('antrian-f.php').fadeIn("slow");
}, 100);
</script>
<?php
				include '../koneksi.php';

		        $a = mysqli_query($koneksi,
		        	"SELECT id_ant_lab, nomor_ant_lab
		            FROM ant_lab
		            WHERE status=1;");
		            while($b = mysqli_fetch_array($a)){
		            $nomor_ant_lab= $b['nomor_ant_lab'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_lab) AS max
		            FROM ant_lab;");
		            while($d = mysqli_fetch_array($c)){
		            $max 		= $d['max'];
		        }
?>
<div id="antrianf">
	<font class="antrian">F<?php echo $nomor_ant_lab; ?></font>
	<font class="redtext"><h3>Total <?php echo $max; ?> Antrian</h3></font>
</div>
<?php include "views/footer.php";?>