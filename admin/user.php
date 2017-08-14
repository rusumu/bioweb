<?php
//panggil kelas user

require("class.user.php");
//buat instance
$user = new user();
//panggil method tampil
///kepala tabel user
echo "
    <a class='btn btn-primary' href='?menu=adduser'>+ User </a>
	<table class='table'>
";
//panggil fungsi userTampil
$user->userTampil(0);
echo "
	</table>
";
 ?>