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
        <h1 class="display-3 mt-3">Administratsioon ></h1>
    </div>
    <div class="container">
        <h1 class="display-6 mt-3"></h1>
    </div>


    <?php 
    ?>



    <footer class="fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h6 class="text-end ">Thorian</h6>
                </div>
            </div>
        </div>
    </footer>
    <div class="container">
        <form action="logout.php" method="post">
            <input type="submit" value="Logi välja" name="logout">
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>

