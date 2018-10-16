
<div class="container">
  <div class="text-center">
    <h3><b> E-vote System</b></h3>
    <h3><b> Al-Irsyad Satya Islamic School </b></h3>
  </div>
  <div class="items">
    <form name="form" method="post">
      <div class="row">
        <?php        
        $db = new dbObj();
        $connString = $db->getConstring();
        $sql = "SELECT * FROM master_kandidat";
        $query = mysqli_query($connString, $sql);
        while ($data = mysqli_fetch_assoc($query)) {
          ?>
          <div class="col-lg-4 col-md-6 col-sm-12">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <span class="">
                  Ketua : <?= $data['kandidat_ketua'] ?> 
                </span>                
                <span class="pull-right">
                  Wakil : <?= $data['kandidat_wakil'] ?>
                </span>                
              </div>
              <div class="panel-body">
                <div class="cc-selector">
                  <input type="radio" name="tanya" class="radio" id="<?= $data['id'] ?>" 
                         value="<?= $data['id'] ?>" onclick="this.form.submit()">
                  <label class="drinkcard-cc" 
                         style="background-image:url(admin/<?= $data['foto'] ?>);" 
                         for="<?= $data['id'] ?>"></label>
                </div>						
              </div>		
            </div>
          </div>
          <?php
        }
        ?>  
      </div>
    </form>
  </div>
</div>

<?php
if (isset($_POST['tanya'])) {
  $db = new dbObj();
  $connString = $db->getConstring();
  $id_pemilih = $_SESSION['evote_id'];

  // cek hitung voting
  $sql = "SELECT * FROM master_vote";
  $sql .= " WHERE id_kandidat = '" . $_POST['tanya'] . "'";
  $query = mysqli_query($connString, $sql) or die('error to executing data');
  $rows_vote = mysqli_num_rows($query);

  ///$rows_vote = mysql_num_rows(mysql_query("select * from master_vote where id_kandidat = '$_POST[tanya]'"));
  $hitung = 0;
  if ($rows_vote < 1) {
    $hitung = $hitung + 1;
    $sqlh = "INSERT INTO master_vote";
    $sqlh .= " values('', '" . $_POST['tanya'] . "', '" . $hitung . "')";
    $queryh = mysqli_query($connString, $sqlh) or die('error insert count');
//    $query = mysql_query("insert into master_vote values('','$_POST[tanya]','$hitung')");
  } else {
//    $dta_vote = mysql_fetch_array(mysql_query("select * from master_vote where id_kandidat = '$_POST[tanya]'"));
//    $hitung = $dta_vote['hasil_vote'] + 1;
//    $query = mysql_query("update master_vote set hasil_vote = '$hitung' where id_kandidat = '$_POST[tanya]'");
    $sqlv = "SELECT * FROM master_vote";
    $sqlv .= " WHERE id_kandidat = '" . $_POST['tanya'] . "'";
    $qv = mysqli_query($connString, $sqlv) or die('cannot get data value');
    $rqv = mysqli_fetch_assoc($qv);

    $hitung = $rqv['hasil_vote'] + 1;

    $sqluv = "UPDATE master_vote";
    $sqluv .= " SET hasil_vote = '" . $hitung . "'";
    $sqluv .= " WHERE id_kandidat = '" . $_POST['tanya'] . "'";
    $queryh = mysqli_query($connString, $sqluv) or die('error to udpate count');
  }

  if ($queryh) {
    # code...
    $sqlu = "UPDATE data_pemilih";
    $sqlu .= " SET status_vote = 1";
    $sqlu .= " WHERE id = '" .$id_pemilih."'";
    
    //$update_pemilih = mysql_query("update data_pemilih set status_vote = 1 where id = '$id_pemilih'");
    $update_pemilih = mysqli_query($connString, $sqlu) or die('cannot update transaction');
    echo '<script> alert("Terima kasih atas partisipasi anda"); </script>';
    echo '<meta http-equiv="refresh" content="0;url=\'model/logout.php\'" />';
  }
}
?>