<?php
//panggil file kelas user
require('class.user.php');

//buat instance objek / kelas
$user = new user();

//panggil method update user
$user->userUpdate($_POST['nis'],$_POST['nama'],$_POST['kelas']);

//kembalikan ke file ?menu=user
echo "
<script>
alert('Perubahan Data User Berhasil');
window.location='./?menu=siswa';
</script>
";
?>