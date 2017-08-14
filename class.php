<?php
//header("Access-Control-Allow-Origin: *");
class biologi
{
	//TRANSAKSI KE SQL
	function trx($sql){
		include('koneksi.inc.php');
		$qry=$conn->prepare($sql);
		return $qry;	
	}
//FINGSI MENAMPILKAN SOAL
	function soalTampil()
	{
		//perintah ambil soal
		$sql="select * from soal";
		
		//eksekusi perintah
		$qry=$this->trx($sql);
		$qry->execute();
		
		//variabel penampung semua soal
		$soal=array();
		
		//membaca soal baris per baris
		while($rs=$qry->fetch())
		{
			//variabel penampung satu baris soal
			$q=array('n'=>$rs['nomor'],
					 'p'=>$rs['pertanyaan'],
					 'a'=>$rs['a'],
					 'b'=>$rs['b'],
					 'c'=>$rs['c'],
					 'd'=>$rs['d'],
					 'k'=>$rs['kunci']);
		//mengumpulkan soal ke variabrel $soal
		array_push($soal,$q);
		}
		//mengirim soal soal ke pemanggil
		return($soal);
		
		
	}
	function soalAmbil($bab,$nomor,$urut)
	{
		//perintah ambil soal
		$sql="select * from soal where bab='$bab' && nomor='$nomor'";
		
		//eksekusi perintah
		$qry=$this->trx($sql);
		$qry->execute();
		
		//variabel penampung semua soal
		$soal=array();
		
		//membaca soal baris per baris
		while($rs=$qry->fetch())
		{
			//variabel penampung satu baris soal
			$q=array('n'=>$urut,
					 'p'=>$rs['pertanyaan'],
					 'a'=>$rs['a'],
					 'b'=>$rs['b'],
					 'c'=>$rs['c'],
					 'd'=>$rs['d'],
					 'k'=>$rs['kunci']);
		//mengumpulkan soal ke variabrel $soal
		array_push($soal,$q);
		}
		//mengirim soal soal ke pemanggil
		return($soal);
		
		
	}
	
	function pilihBab(){
		$sql="select*from bab";
		$qry=$this->trx($sql);
		$qry-> execute();
		$babs=array();
		while ($rs=$qry->fetch()){
			$bab=array ('no'=>$rs ['nomor'],'bahasan'=>$rs['pembahasan']);
			array_push($babs,$bab);
		}
	return $babs;
	}
	
	// fungsi buat history
	function buatHistory($nis,$bab,$ns){
		// cari nis sudah garap berapa kali
		$garap = $this->berapaKali($nis);
		$garap++;
		
		$id = $nis."-".sprintf("%02d",$garap);
		$sql = "INSERT INTO history
				SET idHistory = '$id', noBab='$bab', nomorRandom='$ns'";
		$qry=$this->trx($sql);
		$qry->execute();
		$qry=null;
		
	}
	
	// fungsi sudah berapa kali menggarap
	function berapaKali($nis){
		$sql = "SELECT COUNT(idHistory) id 
				FROM history 
				WHERE idHistory LIKE '$nis%'";
		$qry = $this->trx($sql);
		$qry->execute();
		$rs = $qry->fetch();
		return($rs['id']);
		$qry=null;
	}
	
	//fungsi koreksi
	function koreksi($nis,$nomor,$bab,$jwb){
		//ambil kunci jawaban
		$sql = "SELECT kunci FROM soal
				WHERE bab = '$bab' && nomor = '$nomor'";
		$qry = $this->trx($sql);
		$qry->execute();
		$rs = $qry->fetch();
		// echo "Jwb ".$jwb." kunci ".$rs['kunci'];
		//perbandingan kunci dengan jawaban
		if($jwb == $rs['kunci']){
			// panggil fungsi update skor history
			$this->updateSkorHistory($nis,10);
		}
	}
	
	//fungsi update skor history
	function updateSkorHistory($nis,$skor){
		// cari id history aktif
		$hisaktif = $this->historyAktif($nis);
		$idHistory = $hisaktif['idHistory'];
		$nilai = $hisaktif['nilai'];
		$nilaiBaru = $nilai + $skor;
		$sql = "UPDATE history SET nilai = '$nilaiBaru'
				WHERE idHistory='$idHistory'";
		$qry=$this->trx($sql);
		$qry->execute();
		$qry=null;
	}
	
	function historyAktif($nis){
		$sql = "SELECT idHistory,nilai FROM history
				WHERE idHistory LIKE '$nis%'
				ORDER BY idHistory DESC
				LIMIT 1 ";
		$qry = $this->trx($sql);
		$qry->execute();
		$rs = $qry->fetch();
		//print_r($rs);
		return($rs);
	}
	
	// fungsi login user
	function userLogin($nis,$pwd){
	$password = md5($nis."|".$pwd);
		$sql = "SELECT nama FROM biouser
				WHERE password = '$password'
				LIMIT 1";
		$qry = $this->trx($sql);
		$qry->execute();
		$rs = $qry->fetch();
		$login = array();
		if($rs['nama']==null){
			$data = array(	"nama"=>"Tidak Terdaftar",
							"status"=>"Tidak Valid",
							"lanjut"=>"Ulangi",
							"href"=>'index.html');
			array_push($login,$data);
		}else{
			$data = array(	"nama"=>$rs['nama'],
							"status"=>"Valid",
							"lanjut"=>"Lanjut",
							"href"=>'bab.html');
			array_push($login,$data);
		}
		return($login);
	}
	
	function nilaiAkhir($nis)
	{
		$sql = "SELECT nilai FROM history 
				WHERE idHistory LIKE '$nis%'
				ORDER BY idHistory DESC
				LIMIT 1";
		$qry = $this->trx($sql);
		$qry->execute();
		$r = $qry->fetch();
		return($r['nilai']);
	}
	
	// cek jumlah soal
	function jmSoal($bab){
		$sql = "SELECT COUNT(bab) AS bab
				FROM soal WHERE bab = '$bab'";
		$qry = $this->trx($sql);
		$qry->execute();
		$r = $qry->fetch();
		return($r['bab']);
	}
	
	//ambil acakan nomor session aktif/terakhir
	function urutanSoal($nis){
		$sql = "SELECT nomorRandom FROM history 
				WHERE idHistory= (SELECT MAX(idHistory) 
				FROM history WHERE idHistory LIKE '$nis%')";
				
		$qry = $this->trx($sql);
		$qry->execute();
		$r = $qry->fetch();
		return($r['nomorRandom']);
	}
		
}
