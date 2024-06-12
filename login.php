<?php include('config.php'); ?>
<?php
	session_start();
	if (isset($_SESSION['tuvastamine'])) {
	  header('Location: admin.php');
	  exit();
	  }
      //var_dump(password_hash('admin', PASSWORD_DEFAULT));
	  //kontrollime kas väljad on täidetud
	if (!empty($_POST['login']) && !empty($_POST['pass'])) {
		//eemaldame kasutaja sisestusest kahtlase pahna
		$login = htmlspecialchars(trim($_POST['login']));
		$pass = htmlspecialchars(trim($_POST['pass']));
		
        //lisa siia kood
        $query = "SELECT * FROM kasutajad WHERE kasutaja = '$login'";
        $result = mysqli_query($yhendus, $query);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $hashedPassword = $row['parool'];
            if (password_verify($pass, $hashedPassword)) {
                echo "Õige";
                    $_SESSION['tuvastamine'] = $login;
                    header('Location: admin.php');
                    exit();
            } else {
                echo "Vale pass";
            }
        } else {
            echo "vale pass";
        }

	}
?>
<h1>Login</h1>
    <form action="" method="post">
        Login: <input type="text" name="login"><br>
        Password: <input type="password" name="pass"><br>
    <input type="submit" value="Logi sisse">
</form>
 