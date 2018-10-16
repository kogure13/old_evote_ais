<?php
if(isset($_GET['req'])){
	$req = $_GET['req'];
	$id = $_GET['id'];
	$data_kandidat = mysql_fetch_array(mysql_query("select * from master_kandidat where master_kandidat.id = '$id'"));
	if($req == "edit"){
		$title_val = "Update"; $btn_name = "update"; $btn_val = "Update";

		$nama_kandidat = $data_kandidat['nama_kandidat'];
		$pic_src = $data_kandidat['foto'];

	}elseif($req=="delete"){
		$delete = mysql_query("delete from master_kandidat where id = '$id'");
		if($delete){				
				if($data_kandidat['foto']!=NULL){
					unlink($data_kandidat['foto']);
				}
			?>
			<script> window.alert('Data berhasil dihapus'); </script>
			<meta http-equiv="refresh" content="0;url='?page=data_kandidat'">
			<?php
		}else{
			?>
			<script> window.alert('Data gagal dihapus'); </script>
			<meta http-equiv="refresh" content="0;url='?page=data_kandidat'">
			<?php
		}
	}
}else{
	$title_val = "Tambah"; $btn_name = "simpan"; $btn_val = "Simpan";
	$nama_kandidat = ""; 
	$pic_src = "images/no-image.jpg";
}

if(isset($_POST['simpan']) || isset($_POST['update'])){
	$kondisi = "where nama_kandidat = '$_POST[nama_kandidat]'";

	if(empty($_FILES['pic_name']['name'])){
		$upload = "";
		if(isset($_POST['update'])){
			$pic_name = $_POST['pic_update'];
		}else{
			$pic_name = "";
		}

	}else{
		$filename = basename($_FILES['pic_name']['name']);
		$ext = pathinfo($filename, PATHINFO_EXTENSION);
		$filename = $filename."+".$_POST['nama_kandidat'];
		$hash_pic = substr(md5($filename), 0, 6);
		$pic_name = "upload/".$hash_pic.'.'.$ext;
		$upload = move_uploaded_file($_FILES['pic_name']['tmp_name'], $pic_name);
	}

	if(isset($_POST['simpan'])){
		$insert_array = array("'',","'$_POST[nama_kandidat]',","'$pic_name'");
		$push_array = implode($insert_array);
		$getRow = mysql_num_rows(mysql_query("select * from master_kandidat $kondisi"));
		if($getRow > 0){
		?><script> alert('Data sudah tersedia'); </script>
<?php
		}else{
			$save = mysql_query("insert into master_kandidat values ($push_array)");
			if($save){				
				$upload;
			?><script> alert('Data berhasil disimpan'); </script>
<?php
			}else{
				?><script> alert('Data gagal disimpan'); </script>
<?php
			}
		}
	}elseif (isset($_POST['update'])) {
		$command = "nama_kandidat = '$_POST[nama_kandidat]', foto = '$pic_name'";
		$update = mysql_query("update master_kandidat set $command where id = '$id'");
		if($update){
			$upload;
			?><script>alert('Data berhasil diupdate'); window.location='?page=data_kandidat';</script>
<?php
		}else{
			?><script>alert('Data gagal diupdate');</script>
<?php
		}
	}
}
