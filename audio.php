<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Menggunakan Tag Audio</title>
<script type="text/javascript" src="jquery-1.7.2.js"></script>
<script type="text/javascript" >
$(document).ready(function(){
	$("#play").click(function(){
		document.getElementById('suarabel').play();		
	});
	
	$("#pause").click(function(){
		document.getElementById('suarabel').pause();		
	});
	
	$("#stop").click(function(){
		document.getElementById('suarabel').pause();		
		document.getElementById('suarabel').currentTime=0;		
	});
});
</script>
</head>
<body>
	<audio id="suarabel" src="Airport_Bell.mp3"></audio>
    <input id="play" name="play" type="button" value="Play" />
    <input id="pause" name="pause" type="button" value="Pause" />
    <input id="stop" name="stop" type="button" value="Stop" />
</body>
</html>