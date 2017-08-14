<?php
// periksa apakah ada id= di address bar
if(isset($_GET['id'])){
// kalau ada
// ambil data soal dengan id tersebut
// panggil file clas_soal.php
require ("class_soal.php");
// buat instance clas babsoal
$soal = new babsoal();
// panggil method soalPilih()
$data=$soal->soalPilih($_GET['id']);
print_r($data);
// tampung hasil pemanggilan ke sejumlah variabel
/*
$bab = $data['bab']; 
$nmr = $data['nomor'];
$prt = $data['pertanyaan'];
$jwa = $data['a'];
$jwb = $data['b'];
$jwc = $data['c'];
$jwd = $data['d'];
*/
}else{
// kalau takada	
$bab = ''; 
$nmr = '';
$prt = '';
$jwa = '';
$jwb = '';
$jwc = '';
$jwd = '';
}

?>
<!---
<form class="form-horizontal" action="addSoalAct.php" method="post">
<div class="form-group">
  <label class="col-sm-2">bab</label>
  <div class="col-sm-10">
    <input type="text" name="bab" class="form-control" value="<?php echo $bab;?>" />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">nomor</label>
  <div class="col-sm-10">
    <input type="text" name="nomor" class="form-control" value="<?php echo $nmr;?>" />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">pertanyaan</label>
  <div class="col-sm-10">
    <input type="text" name="pertanyaan" class="form-control" value="<?php echo $prt;?>" />
  </div>
</div>

 <label class="col-sm-2">a</label>
  <div class="col-sm-10">
    <input type="text" name="a" class="form-control" value="<?php echo $a;?>" />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">b</label>
  <div class="col-sm-10">
    <input type="text" name="b" class="form-control" value="<?php echo $b;?>" />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">c</label>
  <div class="col-sm-10">
    <input type="text" name="c" class="form-control" value="<?php echo $c;?>" />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">d</label>
  <div class="col-sm-10">
    <input type="text" name="d" class="form-control" value="<?php echo $d;?>" />
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">Cek Data !</label>
  <div class="col-sm-10">
    <input type="submit" value="Sinpan" class="btn btn-primary">
  </div>
</div>
</form>
-->