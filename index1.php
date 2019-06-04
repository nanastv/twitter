<!DOCTYPE html>
<html>
	<head>
		<title>Twitter</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<meta charset="utf-8">
	</head>
	<body class="bg-light">
	<div class="header cotainer-fluid bg-success">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae magni sapiente enim soluta! Numquam natus fuga accusantium, delectus necessitatibus fugit totam iure rerum mollitia aliquam quae! Dolores, harum, quae? Expedita.
	</div>
	<div class="content  container">
		<div class="row">
		<div class="col-3 mt-2 ">
			<div class="bg-white">
				<div>
					<img src="images/background.jpg" class="w-100" alt="">
				</div>
				<div class="row pt-3 pl-3 pl-3">
					<div class="col-3">
						<img src="images/avatar.jpg" class="rounded-circle" alt="">
					</div>
					<div class="col-9 ">
						<div>
							<a href="#"> Mary Smith</a>
						</div>
						<div>
							<a href="#"> @Maryss</a>
						</div>
					</div>
				</div>
				<div class="row p-3">
					<div class="col-3">
						<div>
							<h6></h6><a href="#">Твиты</a>
						</div>
						<div>
							<h6></h6><a href="#">222</a>
						</div>
					</div>
					<div class="col-9">
						<div>
							<h6></h6><a href="#">Читаемые</a>
						</div>
						<div>
							<h6></h6><a href="#">272</a>
						</div>
					</div>
				</div>
			</div>
			<div class="bg-white mt-2 p-3">
			<?php 
			$connect = mysqli_connect('127.0.0.1','root','','nanastv');
			$query1 = mysqli_query($connect, 'SELECT * FROM actual');
			 ?>
					<div>
						<h6>Актуальные темы для вас</h6>
					</div>
					 <?php for ($i=0; $i < $query1->num_rows ; $i++) {
					 $twe = $query1->fetch_assoc();  ?>
					<div>
						<a href=<?php echo ' "' . $twe['linkk'] .'" ' ?>> <?php echo $twe['title'] ?></a>
						<p> Твиты: <?php echo $twe['tweet']; ?></p>
					</div>
					<?php } ?>
				</div>
		</div>
		<!-- средняя колонка -->
		<div class="col-6 mt-2">
			<div class="row"> 
				<div class="col-4">
					<img src="images/avatar.jpg" class="rounded-circle w-60" alt="">
				</div>
				<div class="col-8">
					 <form action="insert.php" method="POST">
					 	<input type="text" name="post_text">
					 	<button type="submit" class="btn btn-outline-primary">Твитнуть</button>
					 </form>
				</div>
			</div>
			<!-- post -->
			<?php 
			$connect = mysqli_connect('127.0.0.1','root','','nanastv');
			$query = mysqli_query($connect, 'SELECT * FROM post ORDER BY id DESC');
			 ?>
			 <?php for ($i=0; $i < $query->num_rows ; $i++) {  ?>
			<div class="row  bg-white  p-2">
				<div class="col-2 p-0">
					<a href="#">
						<?php
						$logo = $query->fetch_assoc();
						echo '<img class="rounded-circle" src="' . $logo['logo'] . '">';
						?>
					</a>
				</div>
				<div class="col-10">
					<div>
						<h5>
							<?php 
							echo $logo['title'];
							 ?>
						</h5>
						<a href="#">@dada</a>
					</div>

					<div>
					<?php 
					
					echo '<p>' . $logo['text'] . '</p>';
					 ?>
					</div>
					<div>
						<?php 
					
						echo '<img class="w-100" src="' . $logo['img'] . '">';
						 ?>
					</div>
					<div class="row">
						<div class="col-3 text-center">
							<a href="#" >
								<img src="images/comment.png" alt="">
							</a>
						</div>
						<div class="col-3 text-center">
							<a href="#">
								<img src="images/retweet.png"  alt="">
							</a>
						</div>
						<div class="col-3 text-center">
							<a href="#">
								<img src="images/like.png"  alt="">
							</a>
						</div>
						<div class="col-3 text-center">
							<a href="#">
								<img src="images/envelope.png"  alt="">
							</a>
						</div>
					</div>
					<div style="text-align: right;">
						<form action="del1.php" method="POST">
								<button class="btn btn-outline-primary btn-sm">Удалить</button>
								<?php 
								$id = $logo['id'];
								echo ' <input type="hidden" name="id" value="' . $id . '"> ' ;
								 ?>
						</form>
						<form action="update.php" method="POST">
							<button type="submit" class="btn btn-outline-primary btn-sm">Редактировать</button>
							<?php 
							$id = $logo['id'];
							$text1 = $logo['text'];
							echo ' <input type="hidden" name="id" value="' . $id . '"> ' ;
							echo ' <input type="hidden" name="text" value="' . $text1 . '"> ' ;
							?>
						</form>
					</div>
				</div>
			</div>
		<?php } ?>
		</div>
		<!-- правая колонка -->
		<div class="col-3">
			<div class="bg-white ">
				<div class="row m-1 mt-2 pl-2 pt-2">
					<h5 class="font-weight-bold mr-1">Кого читать </h5>
					<a class="mr-1" href="#"> Обновить</a>
					<a href="#"> Все</a>
				</div>
				<?php 
				$connect = mysqli_connect('127.0.0.1','root','','nanastv');
				$query3 = mysqli_query($connect, 'SELECT * FROM whoos'); 
				for ($i=0; $i < $query3->num_rows ; $i++) { 
					$who = $query3->fetch_assoc();
				 ?>
				<div class="row m-1 mt-2">
					<div class="col-3">
						<img src=<?php echo '"'. $who['img'].'"' ?> class="rounded-circle w-100" alt="">
					</div>
					<div class="col-9">
						<a class="font-weight-bold" href=<?php echo '"'. $who['link'].'"' ?>>
							<?php echo $who['title'] ?>
						</a>
						<span>@<?php echo $who['name'] ?></span>
						<div>
							<button type="button" class="btn btn-outline-primary btn-sm">Читать</button>
						</div>
					</div>
				</div>
				<hr>
				<?php } ?>
				<div class="row m-1">
					<div class="col-3">
						<img src="images/gmail.png" class="rounded w-100" alt="">
					</div>
					<div class="col-9">
						<h6> Найдите знакомых</h6>
						<p>Импортируйте контакты из Gmail</p>
					</div>
				</div>
				<hr>
				<div class="m-1 mb-2 p-2">
					<a href="#">
						Подключите другие адресные книги
					</a>
				</div>
			</div>
			<div class="bg-white mt-2">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis cum iusto doloremque dolore aut architecto alias itaque provident eos unde dolorem possimus quod, molestiae explicabo. 
			</div>
		</div>
		</div>
	</div>




	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>