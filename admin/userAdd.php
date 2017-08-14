<?php
require('class.user.php');
$user = new user();
if(!isset($_GET['id'])){
	$nis = '';
	$nama = '';
	$kelas ='';
	$act = 'addUserAct.php';
}else{
	$nis = $_GET['id'];
	$data = $user->pilihUser($_GET['id']);
	$nama = $data['nama'];
	$kelas =$data['kelas'];
	$act = 'editUserAct.php';
}
?>
<form class="form-horizontal" action="<?php echo $act; ?>" method="post">
<div class="form-group">
  <label class="col-sm-2">Nomor Induk Siswa</label>
  <div class="col-sm-10">
    <input type="text" name="nis" class="form-control" value ='<?php echo $nis;?>' ">
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">Nama Siswa</label>
  <div class="col-sm-10">
    <input type="text" name="nama" value ='<?php echo $nama;?>' class="form-control">
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">Kelas</label>
  <div class="col-sm-10">
    <input type="text" name="kelas" value ='<?php echo $kelas;?>' class="form-control">
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">Cek Data !</label>
  <div class="col-sm-10">
    <input type="submit" value="Sinpan" class="btn btn-primary">
  </div>
</div>
</form>