<?php
//mulai session
session_start();

//cek variabel $_POST dari form login.php
if(isset($_POST)){
	// JIKA ADA , CEK name = admin, password = admin
	$katakunci = md5('admin123admin');
	$datalogin = md5($_POST['name'].'123'.$_POST['password']);
	if($datalogin==$katakunci){
		$_SESSION['user']=$_POST['name'];
		// arahkan ke halaman index
		header("Location:./");
	}
}else{
	// jika tidak arahkan lagi ke halaman login.php
	header("Location:./login.php");
}
?>