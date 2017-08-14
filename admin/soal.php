<?php
require('class_soal.php');
$bab = new babsoal();

?>
<h3>Soal soal Bab <?php echo $_GET['id']; ?></h3>
<a href='./?menu=soalAdd&bab=<?php echo $_GET['id']; ?>' class="btn btn-primary">+ SOAL</a>
<?php
	$bab->soalBab($_GET['id']);
?>
