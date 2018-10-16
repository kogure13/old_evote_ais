<style>
  .container{margin-top: 50px;}
</style>
<div class="container">
  <div class="panel panel-success">
    <div class="panel-heading">
      <div class="panel-title text-center">
        <h2><i>Happy Vote</i></h2>
        <h3>e-vote Al-Irsyad Satya</h3>			
      </div>
    </div>
  </div>

  <form method="post" enctype="multipart/form-data">
    <div class="form-group">
      <input type="text" name="kode" class="input-lg form-control" maxlength="6" required="required" placeholder="Reg. No" />	
    </div>
    <div class="form-group">
      <input type="submit" name="proses" value="Login" class="btn btn-md btn-primary form-control" />	
    </div>			
  </form>	
</div>

<?php
if (isset($_POST['proses'])) {
  $db = new dbObj();
  $connString = $db->getConstring();
  $gen_code = strtolower($_POST['kode']);

//    $query = mysql_query("select * from data_pemilih where no_reg = '$gen_code'");
//    $cek_row = mysql_num_rows($query);
  $query = "SELECT * FROM data_pemilih";
  $query .= " WHERE no_reg = '" . $gen_code . "'";
  $qlogin = $query;
  $res = mysqli_query($connString, $query) or die('error to fetch data');
  $cek_row = mysqli_num_rows($res);

  if ($cek_row < 1) {
    echo '<script> alert("No. Reg tidak terdaftar"); </script>';
  } else {
    $reslogin = mysqli_query($connString, $qlogin) or die(0);
    $data = mysqli_fetch_assoc($reslogin);
    if ($data['status_vote'] == 0) {
      $_SESSION['evote_user'] = TRUE;      
      $_SESSION['evote_id'] = $data['id'];
      $_SESSION['no_reg'] = $data['no_reg'];
      header("location: index.php");
    } else {
      echo '<script> alert("Maaf anda hanya dapat memilih satu kali"); </script>';
    }
  }
}
?>  