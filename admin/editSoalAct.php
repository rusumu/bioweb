<?php
echo "<pre>"; print_r($_POST);echo "</pre>";
//panggil file kelas babsoal
require('class_soal.php');

//buat instance objek / kelas
$soal = new babsoal();

//panggil method update soal
// $soal = soalUpdate(idx,prt,jwa,jwb,jwc,jwd,knc);
$soal->soalUpdate($_POST['idx'],$_POST['pertanyaan'],$_POST['a'],
		$_POST['b'],$_POST['c'],$_POST['d'],$_POST['kunci']);

//kembalikan ke file ?menu=user
echo "
<script>
alert('Perubahan Data Bab Berhasil');
window.location='./?menu=bab';
</script>
";
?>
<!--
Array
(
    [idx] => 8
    [bab] => 2
    [nomor] => 1
    [pertanyaan] => Makhluk hidup bernafas tanda membutuhkan
    [a] => stagen
    [b] => oksigen
    [c] => nitrogen
    [d] => prenagen
    [kunci] => a
)
)
-->