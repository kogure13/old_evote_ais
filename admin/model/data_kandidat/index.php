<div class="container panel panel-body">
  <fieldset>
    <legend>Candidate</legend>
    <div class="form-group">
      <input type="button" value="Add Candidate" class="btn btn-sm form_reg" id="tambah_kandidat">	
    </div>

    <table class="tbl-scroll display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th width="5%">#</th><th width="15%">Candidate Name</th><th>Photo</th><th width="15%"></th>
        </tr>
      </thead>
      <tbody>
        <?php
        $db = new dbObj();
        $connString = $db->getConstring();
        $i = 0;
        $sql = "SELECT * FROM master_kandidat";
        $query = mysqli_query($connString, $sql) or die(0);
        while ($data = mysqli_fetch_assoc($query)) {
          ?>
          <tr>
            <td> <?= $i + 1 ?></td>		
            <td> <?= $data['kandidat_ketua'] ?> &AMP; <?=$data['kandidat_wakil']?></td>
            <td align="center"> <img src="<?= $data['foto'] ?>" width="20%" heigth="95" /></td>
            <td class="text-center">
              <a href="?page=tambah_kandidat&req=edit&id=<?= $data['id'] ?>" class="btn btn-sm btn-primary" title="Edit" data-toggle="tooltip" data-placement="top">
                <i class="glyphicon glyphicon-edit"></i>
              </a>			
              <a href="?page=tambah_kandidat&req=delete&id=<?= $data['id'] ?>" class="btn btn-sm btn-danger" title="Hapus" data-toggle="tooltip" data-placement="top" onclick="return confirm('Yakin happus data ini ?')">
                <i class="glyphicon glyphicon-remove"></i>
              </a>
            </td>
          </tr>
          <?php
          $i++;
        }
        ?>
      </tbody>
    </table>
  </fieldset>
</div>