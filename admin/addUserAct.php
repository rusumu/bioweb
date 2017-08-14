<?php
//print_r($_POST);
require('class.user.php');
$siswa = new user();
$siswa->userTambah($_POST['nis'],$_POST['nama'], $_POST['kelas']);

echo "
<script>
alert('Penambahan User Berhasil');
window.location='./?menu=siswa';
</script>
";

?>