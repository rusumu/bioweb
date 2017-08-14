<?php
header("Access-Control-Allow-Origin: *");
error_reporting(0);
//panggil file class php
require("class.php");

//instance kelas biologi
$bio=new biologi();
if($_GET['n']==1){
	// cek jumlah soal di bab $_GET[b]
	$jms = $bio->jmSoal($_GET['b']);
	// echo "Jumlah soal =".$jms."<br/>";
	// acak urutan soal
	$nomso = range(1,$jms); 		//nomso = nomor soal
	// print_r($nomso); echo "<br/>";
	shuffle($nomso);		//ranso = random soal
	// print_r($nomso);
	$acakurut = '';
	for($i = 0 ; $i < $jms ; $i++ ){
		if($i == 0){
			$ns = $nomso[$i];
		}else{
			$ns = ",".$nomso[$i];
		}
		$acakurut=$acakurut."$ns";
	}
	// simpan ke tabel histori
	$bio->buatHistory($_GET['nis'],$_GET['b'],$acakurut);
}else{
	
}

//panggil fungsi tampil soal
//$soal=$bio->soalTampil();
// panggil nomor acak
$nsa = $bio->urutanSoal($_GET['nis']);
$ns = explode(",",$nsa);
$es = $_GET['n'] - 1;
$soal=$bio->soalAmbil($_GET['b'],$ns[$es],$_GET['n']);
if(empty($soal)){
	$soal=array();
	$data=array('n'=>'0','p'=>'','a'=>'','b'=>'',
				'c'=>'','d'=>'','k'=>'');
	array_push($soal,$data);
	echo json_encode($soal);
}else{
	//cetak dalam format json
	echo json_encode($soal);
}

?>