<?php
require('class_soal.php');
$bab = new babsoal();
if(!isset($_GET['id'])){
	$nomor = '';
	$pembahasan = '';
	$act = 'addbabAct.php';
}else{
	$nomor = $_GET['id'];
	$data = $bab->pilihBab($_GET['id']);
	$pembahasan = $data['pembahasan'];
	$act = 'editbabAct.php';
}
?>
<form class="form-horizontal" action="<?php echo $act; ?>" method="post">
<input type="hidden" name="nomor" value="<?php echo $nomor; ?>" />
<div class="form-group">
  <label class="col-sm-2">Pembahasan</label>
  <div class="col-sm-10">
    <input type="text" name="pembahasan" class="form-control" value='<?php echo $pembahasan; ?>' />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">Cek Data !</label>
  <div class="col-sm-10">
    <input type="submit" value="Simpan" class="btn btn-primary">
  </div>
</div>
</form>