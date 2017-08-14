<?php
header("Access-Control-Allow-Origin: *");
//panggil file class php
require("class.php");

//instance kelas biologi
$bio=new biologi();

//panggil fungsi tampil bab
//$bab=$bio->pilihBab();
$bab=$bio->pilihBab();

//cetak dalam format json
echo json_encode($bab);
?>