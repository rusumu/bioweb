<?php
//print_r($_POST);
require('class_soal.php');
$soal = new babsoal();
$soal->soalTambah($_POST['bab'],$_POST['nomor'], $_POST['pertanyaan'],$_POST['a'], 
					$_POST['b'],$_POST['c'], $_POST['d'],$_POST['kunci']);

echo "
<script>
alert('Penambahan Soal Berhasil');
window.location='./?menu=bab';
</script>
";

?>