<?php
//panggil file kelas babsoal
require('class_soal.php');

//buat instance objek / kelas
$bab = new babsoal();

//panggil method update user
$bab->babUpdate($_POST['nomor'],$_POST['pembahasan']);

//kembalikan ke file ?menu=user
echo "
<script>
alert('Perubahan Data Bab Berhasil');
window.location='./?menu=bab';
</script>
";
?>