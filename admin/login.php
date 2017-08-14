<?php
session_start();
session_unset();
session_destroy();
?>
<!DOCTYPE html>
<html>
  <head>
   <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="js/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="css/biologi.css">
	<script src="js/login.js"></script>
    <title>LOGIN</title>
	</head>
	<body>
	<div class="container-fluid">
		<form action="afterlogin.php" method="post">
			<div class="form-group">
			<label>NIS :</label>
			<input class="form-control" name="name"  placeholder="NIS" type="int" value='admin'>
			</div>
			<div class="form-group">
			<label>Password :</label>
			<input class="form-control" name="password"  placeholder="password" type="password" value='admin'>
			</div>
			<div class="form-group">
			<button class="form-control btn-primary" id="submit">LOGIN</button>
			</div>
		  </div>
		<div class="row" id="LoginResult">
		</form>
   </div>
   

  </body>
</html>






