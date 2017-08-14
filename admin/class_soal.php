<?php
class babsoal
{
	//fungsi untuk koneksi
	function transact($sql){
		include ("koneksi.inc.php");
		$qry = $conn->prepare($sql);
		return $qry;
	}
	
	// fungsi menampilkan bab
	function babTampil(){
		$sql = "SELECT * FROM bab ORDER BY nomor";
		$qry = $this->transact($sql);
		$qry->execute();
		while($r = $qry->fetch()){
			echo "
			<tr>
				<td>".$r['nomor']."</td>
				<td>".strtoupper($r['pembahasan'])."</td>
				<td>
					<a class='btn btn-primary' href='./?menu=babEdit&id=".$r['nomor']."'>Edit</a>
					<a class='btn btn-danger' href='babHapus.php?id=".$r['nomor']."'>Hapus</a>
					<a class='btn btn-success' href='./?menu=soal&id=".$r['nomor']."'>Soal</a>
				</td>
			<tr>
			";
		}
	}
	
	//fungsi menampilkan soal per bab
	function soalBab($bab){
		$sql = "SELECT * FROM soal WHERE bab = '$bab' ORDER BY nomor";
		$qry = $this->transact($sql);
		$qry->execute();
		while($r = $qry->fetch()){
			echo "
			<table class='table table-sm'>
				<tr><td width='200'>Nomor Urut</td><td>".$r['nomor']."</td></tr>
				<tr><td width='200'>Pertanyaan</td><td>".$r['pertanyaan']."</td></tr>
				<tr><td width='200'>Jawaban A</td><td>".$r['a']."</td></tr>
				<tr><td width='200'>Jawaban B</td><td>".$r['b']."</td></tr>
				<tr><td width='200'>Jawaban C</td><td>".$r['c']."</td></tr>
				<tr><td width='200'>Jawaban D</td><td>".$r['d']."</td></tr>
				<tr><td width='200'>Jawaban Kunci</td><td>".$r['kunci']."</td></tr>
				<tr><td width='200'>Tindakan</td>
					<td><a class='btn btn-primary' href='./?menu=soalEdit&id=".$r['idxsoal']."'>Edit</a></td>
					</tr>
			</table>
			";
		}
	}
	
	// fungsi nambah bab
	function babTambah ($pembahasan){
		$sql = "INSERT INTO	bab
				SET pembahasan='$pembahasan'";
		$qry = $this->transact($sql);
		$qry->execute();
		$qry=null;
	}
	
	//fungsi menambah soal
	function soalTambah($bab,$nomor,$pertanyaan,$gbr,$aud,$a,$b,$c,$d,$kunci){
		$sql = "INSERT INTO	soal
				SET bab='$bab', nomor = '$nomor',
					pertanyaan = '$pertanyaan',
					gambar = '$gbr',
					audio = '$aud',
					a='$a', b = '$b',
					c = '$c',d = '$d', kunci='$kunci'";
		$qry = $this->transact($sql);
		$qry->execute();
		$qry=null;
	}
	
	//fungsi nomor terakhir sebuah bab
	function nomorAkhir($bab){
		$ada = $this->jumlahSoal($bab);
		if($ada==0){
			return('1');
		}else{
			$sql = "SELECT MAX(nomor) AS nomor	
					FROM soal WHERE bab='$bab'";
			$qry = $this->transact($sql);
			$qry->execute();
			$r=$qry->fetch();
			$nomorBerikut = $r['nomor'] + 1;
			return($nomorBerikut);
			$qry=null;
		}
	}
	
	// fungsi hitung jumlah soal suatu bab
	function jumlahSoal($bab){
		$sql = "SELECT COUNT(nomor) AS nomor 
				FROM soal
				WHERE bab = '$bab'";
		$qry = $this->transact($sql);
		$qry->execute();
		$r = $qry->fetch();
		return($r['nomor']);
		$qry=null;
	}
	//fungsi mengambil bab tertentu
	function pilihBab($nomorBab){
		$sql = "SELECT pembahasan FROM	bab
				WHERE nomor='$nomorBab'";
		$qry = $this->transact($sql);
		$qry->execute();
		$r=$qry->fetch();
		return($r);
		$qry=null;
	}
	//fungsi bab update tertentu
	function babUpdate($no,$bahas){
		$sql = "update bab SET pembahasan ='$bahas'
				WHERE nomor='$no'";
		$qry = $this->transact($sql);
		$qry->execute();
		$r=$qry->fetch();
		$qry=null;
	}
	
	//fungsi memilih soal degan idxsoal tertentu
	function soalPilih($idxsoal){
		$sql = "SELECT bab,nomor,pertanyaan,a,b,c,d 
				FROM soal
				WHERE idxsoal='$idxsoal'";
		$qry = $this->transact($sql);
		$qry->execute();
		$r=$qry->fetch();
		return($r);
		$qry=null;
	}
	
	// fungsi update soAL
	function soalUpdate($idx,$prt,$jwa,$jwb,$jwc,$jwd,$knc){
		$sql = "update soal SET pertanyaan ='$prt',
				a ='$jwa',b ='$jwb',c ='$jwc',d ='$jwd',kunci ='$knc'
				WHERE idxsoal='$idx'";
		$qry = $this->transact($sql);
		$qry->execute();
		$r=$qry->fetch();
		$qry=null;
		
		
	}	
}
?>
