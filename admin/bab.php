<?php
require('class_soal.php');
$bab = new babsoal();

?>
<a class="btn btn-primary" href="./?menu=babAdd">+ BAB</a>
<div class="table-responsive">
<table class="table table-striped">
<tr>
  <th>Nomor Bab</th>
  <th>Nama Topik Bahasan</th>
  <td>Edit / Hapus</td>
</tr>
<?php
	$bab->babTampil();
?>
</table>
</div>