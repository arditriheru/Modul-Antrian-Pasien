<script type="text/javascript">
		function mulai(){
			//MAINKAN SUARA BEL PADA SAAT AWAL
			document.getElementById('suarabel').pause();
			document.getElementById('suarabel').currentTime=0;
			document.getElementById('suarabel').play();
			//SET DELAY UNTUK MEMAINKAN REKAMAN NOMOR URUT		
			totalwaktu=document.getElementById('suarabel').duration*1030;	
			//MAINKAN SUARA NOMOR URUT		
			setTimeout(function() {
					document.getElementById('suarabelnomorurut').pause();
					document.getElementById('suarabelnomorurut').currentTime=0;
					document.getElementById('suarabelnomorurut').play();
			}, totalwaktu);
			totalwaktu=totalwaktu+1500;
			//MAINKAN SUARA ABJAD		
			setTimeout(function() {
					document.getElementById('suarabelabjad').pause();
					document.getElementById('suarabelabjad').currentTime=0;
					document.getElementById('suarabelabjad').play();
			}, totalwaktu);
			totalwaktu=totalwaktu+500;
			<?php
				//JIKA KURANG DARI 10 MAKA MAIKAN SUARA ANGKA1
				if($antrian<10){
			?>
			setTimeout(function() {
				document.getElementById('suarabel0').pause();
				document.getElementById('suarabel0').currentTime=0;
				document.getElementById('suarabel0').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php		
				}elseif($antrian ==10){
					//JIKA 10 MAKA MAIKAN SUARA SEPULUH
			?>  
			setTimeout(function() {
				document.getElementById('sepuluh').pause();
				document.getElementById('sepuluh').currentTime=0;
				document.getElementById('sepuluh').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php		
				}elseif($antrian ==11){
					//JIKA 11 MAKA MAIKAN SUARA SEBELAS
			?>  
			setTimeout(function() {
				document.getElementById('sebelas').pause();
				document.getElementById('sebelas').currentTime=0;
				document.getElementById('sebelas').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php		
				}elseif($antrian < 20){
					//JIKA 12-20 MAKA MAIKAN SUARA ANGKA2+"BELAS"
			?>  				
			setTimeout(function() {
				document.getElementById('suarabel1').pause();
				document.getElementById('suarabel1').currentTime=0;
				document.getElementById('suarabel1').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			setTimeout(function() {
				document.getElementById('belas').pause();
				document.getElementById('belas').currentTime=0;
				document.getElementById('belas').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php		
				}elseif($antrian < 100){				
					//JIKA PULUHAN MAKA MAINKAN SUARA ANGKA1+PULUH+AKNGKA2
			?>  
			setTimeout(function() {
				document.getElementById('suarabel0').pause();
				document.getElementById('suarabel0').currentTime=0;
				document.getElementById('suarabel0').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			setTimeout(function() {
				document.getElementById('puluh').pause();
				document.getElementById('puluh').currentTime=0;
				document.getElementById('puluh').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			setTimeout(function() {
				document.getElementById('suarabel1').pause();
				document.getElementById('suarabel1').currentTime=0;
				document.getElementById('suarabel1').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php
				}elseif($antrian == 100){
				//JIKA 100 MAKA MAIKAN SUARA SERATUS
			?>
			setTimeout(function() {
				document.getElementById('seratus').pause();
				document.getElementById('seratus').currentTime=0;
				document.getElementById('seratus').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php
				}elseif($antrian < 200){
				//JIKA 101-109 MAKA MAIKAN SUARA SERATUS
			?>
			setTimeout(function() {
				document.getElementById('seratus').pause();
				document.getElementById('seratus').currentTime=0;
				document.getElementById('seratus').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			setTimeout(function() {
				document.getElementById('suarabel2').pause();
				document.getElementById('suarabel2').currentTime=0;
				document.getElementById('suarabel2').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php
				}elseif($antrian == 110){
				//JIKA 101-109 MAKA MAIKAN SUARA SERATUS
			?>
			setTimeout(function() {
				document.getElementById('seratus').pause();
				document.getElementById('seratus').currentTime=0;
				document.getElementById('seratus').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			setTimeout(function() {
				document.getElementById('sepuluh').pause();
				document.getElementById('sepuluh').currentTime=0;
				document.getElementById('sepuluh').play();
				}, totalwaktu);
				totalwaktu=totalwaktu+800;
			<?php
				}else{
					//JIKA LEBIH DARI 100 
					//Karena aplikasi ini masih sederhana maka logina konversi hanya sampai 100
					//Selebihnya akan langsung disebutkan angkanya saja 
					//tanpa kata "RATUS", "PULUH", maupun "BELAS"
			?>
			<?php 
				for($i=0;$i<$panjang;$i++){
			?>
				totalwaktu=totalwaktu+800;
			setTimeout(function() {
				document.getElementById('suarabel<?php echo $i; ?>').pause();
				document.getElementById('suarabel<?php echo $i; ?>').currentTime=0;
				document.getElementById('suarabel<?php echo $i; ?>').play();
				}, totalwaktu);
			<?php
				}
				}
			?>
			totalwaktu=totalwaktu+200;
			setTimeout(function() {
				document.getElementById('suarabelsuarabelloket').pause();
				document.getElementById('suarabelsuarabelloket').currentTime=0;
				document.getElementById('suarabelsuarabelloket').play();
				}, totalwaktu);
			totalwaktu=totalwaktu+200;
			setTimeout(function() {
				document.getElementById('suarabelloket<?php echo $loket; ?>').pause();
				document.getElementById('suarabelloket<?php echo $loket; ?>').currentTime=0;
				document.getElementById('suarabelloket<?php echo $loket; ?>').play();
				}, totalwaktu);	
	}
</script>