<?php
//header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Origin: *");
//print_r($_POST);

require('class.php');
$user = new biologi();
$nis = $_POST['nis'];
$pwd = $_POST['pwd'];
$login = $user->userLogin($nis,$pwd);
echo "
	<label>NAMA SISWA</label>
	<p>".$login[0]['nama']."</p>
			
	<label>STATUS LOGIN</label>
	<p>".$login[0]['status']."</p>
		
	<div>
	<a href='".$login[0]['href']."' 
	class='form-control'>".$login[0]['lanjut']."</a>
	</div>
";

 ?>