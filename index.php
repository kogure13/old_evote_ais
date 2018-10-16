<?php

session_start();
include "inc/config.php";

if (isset($_GET['page'])) {
  $title = str_replace("_", " ", $_GET['page']);
} elseif (!isset($_SESSION['evote_user'])) {
  $title = "User Verifikasi ";
} else {
  $title = "E-Vote";
}

print "
<!DOCTYPE html>
<html>
<head>
<title> .:: " . ucwords($title) . " | Al-Irsyad Satya Islamic School ::.</title>
";
include("model/head.php");

print "
</head>
<body>
";
if (!isset($_SESSION['evote_user'])) {
  include "model/login.php";
} else {
  include "model/main.php";
}
include "model/footer.php";

print "
</body>
</html>
";
?>