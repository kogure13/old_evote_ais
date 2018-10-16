<div class="container panel panel-body">
	<fieldset>
		<legend>Voters</legend>
		<form method="post" enctype="multipart/form-data">
			<div class="form-group form-inline">
				<label>
					<input type="file" class="input-sm form-control" name="uploadFile" accept="application/vnd.ms-excel">
					<input type="submit" value="Import" name="import" class="btn btn-sm btn-success">
				</label>			
			</div>
		</form>

		<table class="tbl-scroll display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th width="5%">#</th><th>No. Reg</th><th>Voters</th><th>Class</th><th>Status</th><th></th>
				</tr>
			</thead>
			<tbody>
<?php
	$i = 0;
	$query = mysql_query("select * from data_pemilih");
	while ($data = mysql_fetch_array($query)){
?>
	<tr>
		<td align="center"> <?=$i+1?></td>		
		<td align="center"> <?=strtoupper($data['no_reg'])?></td>
		<td> <?=ucwords($data['nama_peserta'])?></td>
		<td> <?=ucwords($data['kelas'])?></td>
		<td> <?=$data['status_vote']==1 ? "Sudah memilih":""?></td>
		<th align="center">
<?=($_SESSION['admin_level'] == 0)? '
<a href="?page=<?=$_GET[\'page\']?>&q=delete&id=<?=$data[\'id\']?>" onclick="return confirm(\'Yakin menghapus data ini ?\')">
	<i class="glyphicon glyphicon-remove"></i>
</a>
':'' ?>
		
		</th>
	</tr>
<?php
		$i++;
	}
?>
			</tbody>
		</table>
	</fieldset>
</div>

<?php
include("pemilih.import.php");
if (isset($_GET['q'])) {
	$q = $_GET['q'];
	switch ($q) {
		case 'delete': 
			$id = $_GET['id'];
			$query = mysql_query("delete from data_pemilih where id = '$id'");
			if($query){
				echo '<script> alert("data berhasil dihapus"); </script>';
				echo '<meta http-equiv="refresh" content="0;url=\'?page=data_pemilih\'" />';
			}else{
				echo '<script> alert("data gagal dihapus"); </script>';
				echo '<meta http-equiv="refresh" content="0;url=\'?page=data_pemilih\'" />';
			}
		break;

	}
}

?>