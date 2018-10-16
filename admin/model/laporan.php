<?php
$db = new dbObj();
$connString = $db->getConstring();

//$total_pemilih = mysql_fetch_array(mysql_query("select count(*) as jmlh from data_pemilih"));
//$total = mysql_fetch_array(mysql_query("select sum(hasil_vote) as total
//			from master_kandidat, master_vote
//			where
//			master_vote.id_kandidat = master_kandidat.id"));

$sql = "SELECT COUNT(*) AS jmlh FROM data_pemilih";
$query = mysqli_query($connString, $sql) or die('error A');
$total_pemilih = mysqli_fetch_assoc($query) or die('error B');

$sql2 = "SELECT SUM(hasil_vote) AS total";
$sql2 .= " FROM master_kandidat, master_vote";
$sql2 .= " WHERE master_vote.id_kandidat = master_kandidat.id";

$q2 = mysqli_query($connString, $sql2) or die('error C');
$total = mysqli_fetch_assoc($q2) or die('error D');
?>

<div class="container">
  <div class="container panel panel-default">
    <p align="center"><b>VOTING RESULT</b></p>

    <?php
    $sqlvote = "SELECT kandidat_ketua, kandidat_wakil, foto, hasil_vote";
    $sqlvote .= " FROM master_kandidat, master_vote";
    $sqlvote .= " WHERE master_vote.id_kandidat = master_kandidat.id";

    $query = mysqli_query($connString, $sqlvote) or die('error E');
    while ($data = mysqli_fetch_assoc($query)) {
      $persen = $data['hasil_vote'] / $total['total'] * 100;
      $persen = round($persen, 1);
      ?>
      <p><b> <?= $data['kandidat_ketua'] ?> &AMP; <?= $data['kandidat_wakil'] ?></b></p> (Jumlah: <?= $data['hasil_vote'] ?> | <?= $persen ?> %)
      <div class="progress">
        <div class="progress-bar progress-bar-primary progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="height: 30px; width: <?= $persen ?>%;"></div>
      </div>
    <?php } ?>

    <p align="center"><b>TOTAL = <?php echo $total['total'] . " PEMILIH, DARI " . $total_pemilih['jmlh'] . ""; ?></b></p>	
  </div>
</div>
