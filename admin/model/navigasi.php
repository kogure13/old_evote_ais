<header class="navbar navbar-default panel-primary navbar-static-top bs-docs-nav" id="top" role="banner">
  <div class="">        
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse" title="Main Menu">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>    
      <a href="index.php?page=home" class="navbar-brand">
        <span class="glyphicon glyphicon-"></span>
        Al-Irsyad E-Vote | Panel Admin            
      </a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav navbar-right">
        <?php if (!isset($_SESSION['admin_vote'])) { ?> 
          <form method="post" class="form-group form-inline" style="padding:10px">
            <div class="form-group">
              <input type="text" name="username" placeholder="Username" class="input-sm form-control" autofocus>
            </div><div class="form-group">
              <input type="password" name="password" placeholder="Password" class="input-sm form-control">
            </div><div class="form-group">
              <input type="submit" name="login" value="Sign In" class="btn btn-sm">
            </div>
          </form>
        <?php } else { ?>
          <!-- <li>
              <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                  <span class="glyphicon glyphicon-th-list"></span> Menu
              </a>
              <ul class="dropdown-menu">
                  <li><a href="?page=dish_menu">Dish Menu</a></li>
                  <li><a href="?page=menu">List Menu</a></li>
              </ul>
          </li> -->
          <li><a href="?page=data_kandidat"><span class="glyphicon glyphicon-user"></span> Candidate</a></li>
          <li><a href="?page=data_pemilih"><span class="glyphicon glyphicon-list-alt"></span> Voters</a></li>
          <li><a href="?page=laporan"><span class="glyphicon glyphicon-file"></span> Report</a></li>
          <li><a href="?page=logout"><span class="glyphicon glyphicon-off"></span> Log out</a></li>            
        </ul>
      <?php } ?>
    </nav>    
  </div>
</header>	

<?php
if (isset($_POST['login'])) {
  $db = new dbObj();
  $connString = $db->getConstring();

//  $query = mysql_query("select * from master_user where username = '$_POST[username]'");
  $sql = "SELECT * FROM master_user";
  $sql .= " WHERE username = '".$_POST['username']."'";
  $qlogin = $sql;
  
  $query = mysqli_query($connString, $sql) or die(0);
  $rows = mysqli_num_rows($query);
//  $rows = mysql_num_rows($query);
  if ($rows < 1) {
    print "<script> alert('Userid : " . $_POST['username'] . " undefined') </script>";
  } else {
    $queryLogin = mysqli_query($connString, $qlogin) or die(0);
//    $data = mysql_fetch_array($query);
    $data = mysqli_fetch_assoc($queryLogin) or die(0);
    if ($data['password'] != $_POST['password']) {
      print "<script> alert('Wrong password')</script>";
    } else {
      $_SESSION['admin_vote'] = $data['username'];
      $_SESSION['admin_level'] = $data['level'];
      header("location:./index.php");
    }
  }
}
?>