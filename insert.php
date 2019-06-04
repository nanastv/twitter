<?php 
	$connect = mysqli_connect('127.0.0.1','root','','nanastv');
	mysqli_query($connect, "INSERT INTO post( title, text, logo, img) VALUES ('Mary Smith @Maryss','" . $_POST['post_text'] . "', 'images/avatar.jpg','images/avatar.jpg')");
	header('Location: http://twee/index1.php');
 ?>