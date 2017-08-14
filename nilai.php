<?php
header("Access-Control-Allow-Origin: *");
error_reporting(0);
require("class.php");
$nilai = new biologi();
$na = $nilai->nilaiAkhir($_GET['nis']);
echo "Skor akhirnu adalah ".$na;
?>