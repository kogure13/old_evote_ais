<?php
if (isset($_POST['import'])) {
    if (empty($_FILES['uploadFile']['name'])) {
        print "<script> 
				alert('Silakan pilih file yang akan diupload (*.xls)');
				window.location='?page=data_pemilih';
			</script>";
    } else {
        require_once ("../inc/excel_reader2.php");
        $filename = basename($_FILES['uploadFile']['name']);
        $ext = pathinfo($filename, PATHINFO_EXTENSION);
        if ($ext != "xls") {
            print "<script> 
				alert('File yang diperbolehkan diupload dalam bentuk (*.xls)');
				window.location='?page=data_siswa&q=list_siswa';
				</script>";
        } else {
            $pengacak = "NDJS3289JSKS190JISJI";

            $data = new Spreadsheet_Excel_Reader($_FILES['uploadFile']['tmp_name']);
            $row = $data->rowcount($sheet_index = 0);

            for ($i = 1; $i <= $row; $i++) {
                $nis = $data->val($i, 1);
                $nama_lengkap = $data->val($i, 2);
                $kelas = $data->val($i, 3);

                $nis_hash = md5($pengacak . md5($nis) . $pengacak);
                $nis = substr($nis_hash, 0, 6);

                $data_array = array("'',", "'$nis',", "'" . addslashes($nama_lengkap) . "',", "'" . addslashes($kelas) . "',", "''");
                $push_array = implode($data_array);
                $cek_data = mysql_num_rows(mysql_query("select * from data_pemilih where no_reg = '$nis'"));
                if ($cek_data < 1) {
                    $upload = mysql_query("insert into data_pemilih values($push_array)");
                }
            }
            if ($upload) {
                print "<script> alert('Data Berhasil di Upload')</script>";
                ?> <meta http-equiv="refresh" content="0;url='?page=data_pemilih'" /><?php
            } else {
                print "<script> alert('Data Gagal Di Upload') </script>";
                ?> <meta http-equiv="refresh" content="0;url='?page=data_pemilih'" /><?php
            }
        }
    }
}
?>