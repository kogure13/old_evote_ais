<?php

class dbObj {

  var $DB_Host = "localhost"; //koneksi localhost
  // var $DB_Host = "192.168.0.128"; //koneksi ip\domain
  var $DB_Name = "evote"; //nama database
  var $DB_User = "root"; //user database
  var $DB_Pass = ""; //password database
  // var $DB_Pass = "password"; //password database
  var $conn;

  function getConstring() {
    $con = mysqli_connect($this->DB_Host, $this->DB_User, $this->DB_Pass, $this->DB_Name) or
            die("Connection failed: " . mysqli_connect_error());

    if (mysqli_connect_errno()) {
      printf("Connect failed: %s\n", mysqli_connect_error());
      exit();
    } else {
      $this->conn = $con;
    }

    return $this->conn;
  }

}

$root = "../..";
$now_day = date("d");
$now_month = date("m");
$now_year = date("Y");
$now_date = date("Y-m-d");

$date_toDisplay = date("M d, Y");

function success_data() {
  ?> <script type="text/javascript">
        alert("data berhasil disimpan");
  </script> <?php

}

function failed_data() {
  ?> <script type="text/javascript">
        alert("data gagal disimpan");
  </script> <?php

}

function thn_masuk($thn_masuk) {
  $tgl = explode("-", $thn_masuk);
  $cek_jmlhr1 = cal_days_in_month(CAL_GREGORIAN, $tgl['1'], $tgl['2']);
  $cek_jmlhr2 = cal_days_in_month(CAL_GREGORIAN, date('m'), date('Y'));
  $sshari = $cek_jmlhr1 - $tgl['0'];
  $ssbln = 12 - $tgl['1'] - 1;
  $hari = 0;
  $bulan = 0;
  $tahun = 0;
  //hari+bulan
  if ($sshari + date('d') >= $cek_jmlhr2) {
    $bulan = 1;
    $hari = $sshari + date('d') - $cek_jmlhr2;
  } else {
    $hari = $sshari + date('d');
  }
  if ($ssbln + date('m') + $bulan >= 12) {
    $bulan = ($ssbln + date('m') + $bulan) - 12;
    $tahun = date('Y') - $tgl['2'];
  } else {
    $bulan = ($ssbln + date('m') + $bulan);
    $tahun = (date('Y') - $tgl['2']) - 1;
  }

  $selisih = $hari;
  return $selisih;
}

//constant
define("G_footer", "copyright &copy; Al-irsyad");
?>