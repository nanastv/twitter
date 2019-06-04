<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		
		<form action="up1.php" method="POST">
		<?php  
		echo ' <input  name="id" value="' .  $_POST['id'] . '"> ' ;
		echo ' <input  name="text" value="' . $_POST['text'] . '"> ' ;
		?>
		<button>DA</button>
	</form>
	</body>
</html>
