<?php include "views/header.php";?>
<script type="text/javascript">
var antriana = setInterval(
function ()
{
$('#antriana').load('antrian-a.php').fadeIn("slow");
}, 100);
</script>
<?php
				include '../koneksi.php';

		        $a = mysqli_query($koneksi,
		        	"SELECT id_ant_pendaftaran, nomor_ant_pendaftaran
		            FROM ant_pendaftaran
		            WHERE status=1;");
		            while($b = mysqli_fetch_array($a)){
		            $nomor_ant_pendaftaran= $b['nomor_ant_pendaftaran'];
		        }

		        $c = mysqli_query($koneksi,
		        	"SELECT MAX(id_ant_pendaftaran) AS max
		            FROM ant_pendaftaran;");
		            while($d = mysqli_fetch_array($c)){
		            $max 		= $d['max'];
		        }
?>
<div id="antriana">
	<font class="antrian">A<?php echo $nomor_ant_pendaftaran; ?></font>
	<font class="redtext"><h3>Total <?php echo $max; ?> Antrian</h3></font>
</div>
<?php include "views/footer.php";?>