<?php 
	$connect = mysqli_connect('127.0.0.1','root','','nanastv'); 
	$query = mysqli_query($connect,"UPDATE post SET text ='". $_POST['text'] ."' WHERE id ='". $_POST['id'] ."' ");
	header('Location: http://twee/index1.php');	
?>