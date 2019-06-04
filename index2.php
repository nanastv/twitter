<!DOCTYPE html>
<html>
	<head>
		<title>Table</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<meta charset="utf-8">
	</head>
	<body class="">
		
		<table class="table">
			<?php 
			$connect = mysqli_connect('127.0.0.1','root','','nanastv');
			$query = mysqli_query($connect, 'SELECT * FROM tab');
		  ?>

      <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
     <?php for ($i=0; $i < $query->num_rows ; $i++) {  
      $who = $query->fetch_assoc();?>  
    <tr>
      <th scope="row"><?php echo $who['num']?></th>
      <td><?php echo $who['first']?></td>
      <td><?php echo $who['last']?></td>
      <td><?php echo $who['handle']?></td>
    </tr>
     <?php }?>
  </tbody>
</table>
 
	 
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>