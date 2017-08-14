<?php
// mulai aktifkan session
session_start();

// cek adakah $_SESSION['user'];
if(!isset($_SESSION['user']))
{
	header('Location:login.php');
}
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
	
	<link rel="stylesheet" href="css/adminbiologi.css">
	<script src="js/adminbiologi.js"></script>
    <title>ADMIN PANEL</title>
</head>
<body>
<div class="container-fluid">
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="./?menu=siswa">SISWA</a>
  <a href="./?menu=bab">BAB</a>
  <a href="./?menu=soal&id=1">SOAL</a>
  <a href="./login.php">SELESAI</a>
</div>

<!-- Use any element to open the sidenav -->
<div id ="main-menu"onclick="openNav()">MAIN MENU</div>

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">
  <?php
  if(!isset($_GET['menu'])){
	echo "<script>window.location='./?menu=siswa';</script>"; 
  }
	$menu = $_GET['menu'];
	switch($menu){
		
		case 'siswa': include('user.php'); break;
		case 'bab': include('bab.php'); break;
		case 'soal': include('soal.php'); break;
		case 'adduser': include('userAdd.php'); break;
		case 'babAdd': include('babAdd.php'); break;
		case 'soalAdd': include('soalAdd.php'); break;
		case 'userEdit': include('userAdd.php'); break;
		case 'babEdit': include('babAdd.php'); break;
		case 'soalEdit': include('soalAdd.php'); break;
	}
 
  ?>
</div>

</div>
</body>
</html>






