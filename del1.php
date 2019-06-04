<?php 
	$connect = mysqli_connect('127.0.0.1','root','','nanastv');
	$id = $_POST['id'];
	$query = "DELETE FROM post WHERE id = ' " . $id .  " ' ";
	$result = mysqli_query($connect, $query);
	header('Location: http://twee/index1.php');
 ?>