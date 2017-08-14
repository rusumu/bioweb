<?php
//print_r($_POST);
require('class_soal.php');
$bab = new babsoal();
$bab->babTambah($_POST['pembahasan']);

echo "
<script>
alert('Penambahan Bab Berhasil');
window.location='./?menu=bab';
</script>
";

?>