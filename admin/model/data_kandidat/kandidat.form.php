<?php  include "kandidat.proses.php"; ?>

<div class="container">
	<fieldset>
		<legend> Add New Candidate</legend>
		<form method="post" id="formKandidat" enctype="multipart/form-data">
			<div class="form-group">
				<div class="hiddenFileInputContainter">
					<img id="imagePreview" class="imagePreview table-bordered" src="<?=$pic_src?>" /> 
					<input type="hidden" name="pic_update" value="<?=$pic_src?>">
					<input type="file" name="pic_name" accept="image/*" onchange="showMyImage(this)" class="hidden_pic" id="fupload" >
				</div>
			</div>
			<div class="form-group">
				<input type="text" name="nama_kandidat" value="<?=$nama_kandidat?>" class="input-sm" placeholder="Nama Kandidat">
			</div>
			<div class="form-group">
				<input type="submit" name="<?=$btn_name?>" value="<?=$btn_val?>" class="btn btn-sm btn-success">
				<?=(isset($_GET['req']) ? '<input type="button" value="Batal" class="btn btn-sm btn-danger">':'')?>
				<input type="reset" value="Reset" class="btn btn-sm btn-primary">
                <button type="button" id="btn_cancel" class="btn btn-sm btn-danger">Cancel</button>
			</div>
		</form>
	</fieldset>
</div>