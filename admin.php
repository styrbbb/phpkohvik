<?php include('config.php'); ?>
<h1>Salajane info</h1>
<p>"phpmyadmin"</p>
<?php
session_start();
if (!isset($_SESSION['tuvastamine'])) {
  header('Location: login.php');
  exit();
  }
  if (!empty($_POST['kasutaja']) && !empty($_POST['parool'])) {
    //eemaldame kasutaja sisestusest kahtlase pahna
    $kasutaja = htmlspecialchars(trim($_POST['kasutaja']));
    $parool = htmlspecialchars(trim($_POST['parool']));
  }
    // Kui vorm on esitatud
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $kasutaja = $_POST["kasutaja"];
        $parool = $_POST["parool"];

        // Parooli krüpteerimine
        $krüptitud_parool = password_hash($parool, PASSWORD_DEFAULT);

        // SQL-lause uue kasutaja lisamiseks
        $uuskasutaja = "INSERT INTO `kasutajad` (`kasutaja`, `parool`) VALUES ('$kasutaja', '$krüptitud_parool')";

        if ($yhendus->query($uuskasutaja) === TRUE) {
            echo "Uus kasutaja on loodud.";
        } else {
            echo "Viga: " . $uuskasutaja . "<br>" . $yhendus->error;
        }
    }
?>

<!-- Vorm uue kasutaja loomiseks -->
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    Kasutajanimi: <input type="text" name="kasutaja" required><br>
    Parool: <input type="password" name="parool" required><br>
    <input type="submit" value="Loo kasutaja">
</form>

<form action="6_logout.php" method="post">
    <input type="submit" value="Logi välja" name="logout">
</form>