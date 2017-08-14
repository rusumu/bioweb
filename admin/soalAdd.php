<?php
// panggil file clas_soal.php
require('class_soal.php');

// buat instance clas babsoal
$soal = new babsoal();

// periksa apakah ada id= di address bar
if(isset($_GET['id'])){
// kalau ada
// ambil data soal dengan id tersebut
// panggil method soalPilih()
$data=$soal->soalPilih($_GET['id']);

// tampung hasil pemanggilan ke sejumlah variabel
$bab = $data['bab']; 
$nmr = $data['nomor'];
$prt = $data['pertanyaan'];
$gbr = $data['gambar'];
$aud = $data['audio'];
$jwa = $data['a'];
$jwb = $data['b'];
$jwc = $data['c'];
$jwd = $data['d'];
$act = 'editSoalAct.php';

}else{
// kalau takada	
// panggil method mencari nomor terakhir
$nomor = $soal->nomorAkhir($_GET['bab']);
$bab = $_GET['bab']; 
$nmr = $nomor;
$prt = '';
$gbr = '';
$aud = '';
$jwa = '';
$jwb = '';
$jwc = '';
$jwd = '';
$act = 'addSoalAct.php';
}

?>

<form class="form-horizontal" action="<?php echo $act; ?>" method="post">
<?php
if(isset($_GET['id'])){ echo "<input type='hidden' name='idx' value='".$_GET['id']."'>";}
?>
<div class="form-group">
  <label class="col-sm-2">bab</label>
  <div class="col-sm-10">
    <input type="text" name="bab" class="form-control" value=<?php echo $bab; ?> >
  </div>
</div>


<div class="form-group">
  <label class="col-sm-2">nomor</label>
  <div class="col-sm-10">
    <input type="text" name="nomor" class="form-control" value='<?php echo $nmr; ?>' >
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">pertanyaan</label>
  <div class="col-sm-10">
    <input type="text" name="pertanyaan" class="form-control"value='<?php echo $prt; ?>'>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">gambar</label>
  <div class="col-sm-10">
    <input type="file" name="gambar" class="form-control"value='<?php echo $gbr; ?>'>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">audio</label>
  <div class="col-sm-10">
    <input type="file" name="audio" class="form-control"value='<?php echo $aud; ?>'>
  </div>
</div>

<div class="form-group">
 <label class="col-sm-2">a</label>
  <div class="col-sm-10">
    <input type="text" name="a" class="form-control" value='<?php echo $jwa; ?>'>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">b</label>
  <div class="col-sm-10">
    <input type="text" name="b" class="form-control" value='<?php echo $jwb; ?>'>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">c</label>
  <div class="col-sm-10">
    <input type="text" name="c" class="form-control" value='<?php echo $jwc; ?>'>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">d</label>
  <div class="col-sm-10">
    <input type="text" name="d" class="form-control" value='<?php echo $jwd; ?>'>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">kunci</label>
  <div class="col-sm-10">
    <select name="kunci" class="form-control">
		<option>a</option>
		<option>b</option>
		<option>c</option>
		<option>d</option>
	</select>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2">Cek Data !</label>
  <div class="col-sm-10">
    <input type="submit" value="Sinpan" class="btn btn-primary">
  </div>
</div>
</form>