<?php include('config.php'); ?>
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
        <h1 class="display-3 mt-3">Administratsioon > Muuda kohvikut</h1>
    </div>
    <?php 
	//muutmine
	if (!empty($_GET["id"]) && !empty($_GET["edit"])) {
		$id = htmlspecialchars(trim($_GET["id"]));
		$paring = "SELECT * FROM kohvikud WHERE id=$id";
		$valjund = mysqli_query($yhendus, $paring);
		$rida = mysqli_fetch_assoc($valjund);
	
	}

    if (!empty($_GET["id"]) && !empty($_GET["edit2"])) {
		$id = htmlspecialchars(trim($_GET["id"]));
		$nimi = htmlspecialchars(trim($_GET["nimi"]));
		$asukoht = htmlspecialchars(trim($_GET["asukoht"]));
		$paring = "UPDATE kohvikud SET nimi = '$nimi', asukoht = '$asukoht' WHERE id = $id";	
		$valjund = mysqli_query($yhendus, $paring);
		$tulemus = mysqli_affected_rows($yhendus);
		if ($tulemus == 1) {
			echo "Rida muudetud";
			header("Location: admin.php");
		}
	}


        if (!empty($_GET["edit"])) {
            

    ?>
    <div class="container">
        <form action="" method="get">
            <div class="row mt-5 justify-content-center">
                <div class="col-3 mb-3">
                    <input type="text" class="form-control rounded-0" value="<?php echo $id; ?>" name="id" hidden>
                </div>
            </div>
            <div class="row mt-1 justify-content-center">
                <label for="nimi" class="col-sm-2 col-form-label">Nimi</label>
                <div class="col-3 mb-3">
                    <input type="text" class="form-control rounded-0" name="nimi" value="<?php if (!empty($_GET["id"]) && !empty($_GET["edit"])) { echo htmlspecialchars($rida["nimi"]); } ?>" required>
                </div>
            </div>
            <div class="row mt-1 justify-content-center">
                <label for="asukoht" class="col-sm-2 col-form-label">Aadress</label>
                <div class="col-3 mb-3">
                    <input type="text" class="form-control rounded-0" name="asukoht" value="<?php if (!empty($_GET["id"]) && !empty($_GET["edit"])) { echo htmlspecialchars($rida["asukoht"]); } ?>" required>
                </div>
            </div>
            <div class="row mt-1 justify-content-end">
                <div class="col-sm-1">
                    <a class="btn btn-link" href="admin.php">
                        < Tagasi</a>
                </div>
                <div class="col-5">
                    <button type="submit" name="edit2" value="MUUDA" class="btn btn-outline-dark rounded-0">Saada!</button>
                </div>
            </div>

        <?php } else { ?>


        <?php } ?>



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

