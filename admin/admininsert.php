<?php include('../config.php'); ?>
<?php
session_start();
if (!isset($_SESSION['tuvastamine'])) {
  header('Location: login.php');
  exit();
  }
?>
<!doctype html>
<html lang="et">

<head>
    <title>PHP ja MySQL Tieto KT Admin</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" type="text/css" href="stylesk/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>

<body>
    <div class="container">
        <h1 class="display-3 mt-3">Administratsioon > Lisa kohvikut</h1>
    </div>
    <?php 
	if (!empty($_GET['nimi']) && !empty($_GET['asukoht'])) {
		$nimi = htmlspecialchars(trim($_GET['nimi']));
		$asukoht = htmlspecialchars(trim($_GET['asukoht']));

		//päring
		$paring = "INSERT INTO kohvikud (nimi,asukoht) VALUES ('".$nimi."','".$asukoht."')";
		$valjund = mysqli_query($yhendus, $paring);
		//päringu vastuste arv
		$tulemus = mysqli_affected_rows($yhendus);
		if ($tulemus == 1) {
			echo "Kirje edukalt lisatud";
		} else {
			echo "Kirjet ei lisatud";
		}
		//suunan tagasi avalehele
		header("Location: index.php");
	}
            
    ?>
    <div class="container">
            <form action="">
                <div class="row mt-5 justify-content-center">
                    <div class="col-3 mb-3">
                        <input type="text" class="form-control rounded-0" value="<?php echo $id; ?>" name="id" hidden>
                    </div>
                </div>
                <div class="row mt-1 justify-content-center">
                    <label for="nimi" class="col-sm-2 col-form-label">Nimi</label>
                    <div class="col-3 mb-3">
                        <input type="text" class="form-control rounded-0" name="nimi" value="" required>
                    </div>
                </div>
                <div class="row mt-1 justify-content-center">
                    <label for="asukoht" class="col-sm-2 col-form-label">Aadress</label>
                    <div class="col-3 mb-3">
                        <input type="text" class="form-control rounded-0" name="asukoht" value="" required>
                    </div>
                </div>
                <div class="row mt-1 justify-content-end">
                    <div class="col-sm-1">
                        <a class="btn btn-link" href="index.php">
                            < Tagasi</a>
                    </div>
                    <div class="col-5">
                        <button type="submit" name="add" class="btn btn-outline-dark rounded-0">Saada!</button>
                    </div>
                </div>
            </form>
        </div>



    <footer class="fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h6 class="text-end ">Thorian</h6>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>

