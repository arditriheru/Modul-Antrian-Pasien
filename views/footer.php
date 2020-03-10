<!-- Javascript -->
	<script>
		window.setTimeout("waktu()", 1000);

		function waktu() {
			var waktu = new Date();
			setTimeout("waktu()", 1000);
			document.getElementById("jam").innerHTML = waktu.getHours();
			document.getElementById("menit").innerHTML = waktu.getMinutes();
			document.getElementById("detik").innerHTML = waktu.getSeconds();
		}
	</script>
	<script>
      // Loading Page
      var myVar;
      function myFunction() {
      myVar = setTimeout(showPage, 500);
      }
      function showPage() {
      document.getElementById("loader").style.display = "none";
      document.getElementById("myDiv").style.display = "block";
      }
    </script>
	<script src="../js/jquery-1.10.2.js"></script>
    <script src="../js/bootstrap.js"></script>
    <!-- Page Specific Plugins -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>
    <script src="../js/morris/chart-data-morris.js"></script>
    <script src="../js/tablesorter/jquery.tablesorter.js"></script>
    <script src="../js/tablesorter/tables.js"></script>

  </body>
</html>