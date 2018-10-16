<body>
    <?php
    include 'navigasi.php';
    
    if (!isset($_GET['page'])) {
        include("home.php");
    } else {
        $page = $_GET['page'];
        switch ($page) {
            case 'data_kandidat': include "model/data_kandidat/index.php";
                break;
            case 'tambah_kandidat': include "model/data_kandidat/kandidat.form.php";
                break;
            case 'data_pemilih': include "model/data_pemilih/index.php";
                break;
            case 'laporan': include "model/laporan.php";
                break;
            case 'logout':
                session_destroy();
                echo '<meta http-equiv="refresh" content="0;url=\'./index.php\'" />';
                break;
            default: include("home.php");
                break;
        }
    }
    ?>

</body>
