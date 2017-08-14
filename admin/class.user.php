<?php
class user
{
	//fungsi untuk koneksi
	function transact($sql){
		include ("koneksi.inc.php");
		$qry = $conn->prepare($sql);
		return $qry;
	}
	//fungsi menampilkan user
	function userTampil($awal=0){
		//tentukan queri/perintah sql 
		$sql="SELECT nis,nama,kelas
			  FROM biouser
		      ORDER BY nama
		      LIMIT $awal,30";
			 
		//kemas kedalam transaksi mysql 
		$qry= $this->transact($sql);
		
		//eksekusi sql yang sudah dikemas
		$qry->execute();
		
		//tampung hasil eksekusi
		while($r=$qry->fetch()){
			echo "
			<tr>
				<td>".$r['nis']."</td>
				<td>".$r['nama']."</td>
				<td>".$r['kelas']."</td>
				<td>
					<a href= './?menu=userEdit&id=".$r['nis']."'>Edit </a>
					<a href= 'userHapus.php?id=".$r['nis']."'>Hapus </a>
					<a href= 'userPassword.php?id=".$r['nis']."'>Password </a>
					</td>
			</tr>";
					
			
		}
	}
	//fungsi menambah user
	function userTambah($nis,$nama,$kelas){
		$sql = "INSERT INTO	biouser
				SET nis='$nis', nama = '$nama',
					kelas = '$kelas'";
		$qry = $this->transact($sql);
		$qry->execute();
		$qry=null;
	}
	
	//fungsi mengubah user
	function userUpdate($nis,$nama,$kelas){
		$sql = "UPDATE	biouser
				SET nama = '$nama',kelas = '$kelas'
				WHERE nis='$nis'";
				
		$qry = $this->transact($sql);
		$qry->execute();
		$qry=null;
	}
	
	//fungsi mengambil user tertentu
	function pilihUser($nis){
		$sql = "SELECT nama,kelas FROM	biouser
				WHERE nis='$nis'";
		$qry = $this->transact($sql);
		$qry->execute();
		$r=$qry->fetch();
		return($r);
		$qry=null;
	}
	//fungsi menghapus user tertentu
	//fungsi pagging/halaman
}
?>