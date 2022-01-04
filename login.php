<?php
	
	ob_start();
	session_start();

	$koneksi = new mysqli("localhost","root","","db_marketsibteamfive");
	
	if($_SESSION) {
		
		header("location:index.php");
		
	} else {

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword">

    <title>Maju Terus Login</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body style="background-image :url(assets/img/pic/index.jpg);
  			background-repeat: no-repeat;
            color:#fff;">

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page" style="padding-top:3pc;">
	  	<div class="container">
		      <form class="form-login" method="POST">
		        <h2 class="form-login-heading">Welcome Please Login</h2>
		        <div class="login-wrap">
		            <input type="text" class="form-control" name="user" placeholder="Username" autofocus>
		            <br>
		            <input type="password" class="form-control" name="pass" placeholder="Password">
		            <br>
		            <button class="btn btn-success btn-block" name="proses" type="submit"></i> Login</button>
		        </div>
		      </form>	  	
	  	
	  	</div>
	  </div>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>


<?php

	if(isset($_POST['proses'])){
		require 'config.php';
			
		$user = strip_tags($_POST['user']);
		$pass = strip_tags($_POST['pass']);

		$sql = 'select member.*, login.user, login.pass
				from member inner join login on member.id_member = login.id_member
				where user =? and pass =?';
		$row = $config->prepare($sql);
		$row -> execute(array($user,$pass));
		$jum = $row -> rowCount();
		$sql = $koneksi->query("select * from login where user='$user' and pass='$pass'");
		$data = $sql->fetch_assoc();		
		if($jum > 0){
			session_start();
			$hasil = $row -> fetch();
			
			if($data['level'] == "admin"){
				$_SESSION['admin'] = $hasil;
				echo '<script>window.location="index.php"</script>';
			} else if($data['level'] == "user"){
				$_SESSION['user'] = $hasil;
				echo '<script>window.location="index.php"</script>';
			}
	} else {
			
			?>

				<script type="text/javascript">
					alert("Gagal Melakukan Login, Harap Periksa Username Dan Password")
				</script>
				
			<?php
			
		}
	
	}

	}

?>

