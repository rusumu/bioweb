<?php
error_reporting(0);
//header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Origin: *");
/* blok fungsi di soal.js pada client berikut :
 * fungsi mengirim ke server
		$.post("http://localhost/biologi/jawab.php",{
			nmbab: bab,
			nsoal: nomor,
			jwban: jawaban
		}, function(result);
		});
 *akan menghasilkan variabel berikut:
 *$_POST['nmbab'],$_POST['nsoal'],$_POST['jwban']
 */
 // koreksi jawaban
 require('class.php');
 $jwb = new biologi();
 $nsa = $jwb->urutanSoal($_POST['nmnis']);
 $ns = explode(",",$nsa);
 $es = $_POST['nsoal'] - 1;
 $jwb->koreksi($_POST['nmnis'],$es,$_POST['nmbab'],$_POST['jwban']);
 $sessionMu = $jwb->historyAktif($_POST['nmnis']);
 echo "Jawabanmu adalah : ".$_POST["jwban"];
 ?>