<?php include ('config.php'); ?>
<!doctype html>
<html lang="et">

<head>
    <title>PHP ja MySQL Tieto KT</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" type="text/css" href="stylesk/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>

<body>

    <div class="container">
        <h1 class="display-6 mt-3">Valige asutus mida hinnata</h1>
    </div>
    <div class="container search_container">
        <div class="row justify-content-end">
            <div class="col-3 text-right mt-5">
                <form class="form-inline my-2 my-lg-0" method="GET" action="">
                    <input class="form-control mr-sm-2 rounded-0" type="search" name="search" placeholder="Otsi"
                        aria-label="Search">
                    <button class="btn btn-outline-secondary rounded-0 text-dark" type="submit">Otsi</button>
                </form>
            </div>
        </div>
    </div>
    <?php
    $kohvikud = 10;
    //lehtede arvutamine
    $kohvikud_kokku_paring = "SELECT COUNT('id') FROM kohvikud";
    $lehtede_vastus = mysqli_query($yhendus, $kohvikud_kokku_paring);
    $kohvikud_kokku = mysqli_fetch_array($lehtede_vastus);
    $lehti_kokku = $kohvikud_kokku[0];
    $lehti_kokku = ceil($lehti_kokku / $kohvikud);
    //var_dump($lehti_kokku);
    // echo 'Lehekülgi kokku: ' . $lehti_kokku . '<br>';
    // echo 'Kohvikuid lehel: ' . $kohvikud . '<br>';
    //kasutaja valik
    if (isset($_GET['page'])) {
        $leht = $_GET['page'];
    } else {
        $leht = 1;
    }
    //millest näitamist alustatakse
    $start = ($leht - 1) * $kohvikud;

    echo "<div class='container table-container'>";
    echo "<table class='table table-light table-hover table-bordered text-start rounded-0 mt-1'>";

    echo "<thead class='table-secondary'>";
    echo "<tr>";
    echo "<th scope='col'>ID</th>";
    echo "<th scope='col'>Nimi</th>";
    echo "<th scope='col'>Asukoht</th>";
    echo "<th scope='col'>Keskmine hinne</th>";
    echo "<th scope='col'>Hinnatud (korda)</th>";
    echo "</tr>";
    echo "</thead>";

    $paring = "SELECT * FROM kohvikud LIMIT $start, $kohvikud";
    $valjund = mysqli_query($yhendus, $paring);
    while ($rida = mysqli_fetch_assoc($valjund)) {
        $vastus = mysqli_affected_rows($yhendus);
        if ($vastus > 0) {
            // output data of each row
            echo "<tbody>";
            echo "<tr>";
            echo "<tr>";
            echo "<td>" . $rida["id"] . "</td>";
            echo "<td><a href='form.php?id=" . $rida["id"] . "'>" . $rida["nimi"] . "</a></td>";
            echo "<td>" . $rida["asukoht"] . "</td>";
            echo "<td>" . $rida["hinnang"] . "</td>";
            echo "<td>" . $rida["korda"] . "</td>";
            echo "</tr>";
            echo "</tbody>";
        }
    }
    // } else {
    //     echo "0 results";
    // }
    echo "</table>";
    echo "</div>";
    ?>
    <?php
    echo "<div class='container'>";
        echo "<div class='row'>";
            echo "<div class='col-12 d-flex justify-content-end mb-5'>";
                $eelmine = $leht - 1;
                $jargmine = $leht + 1;
                if ($leht > 1) {
                    echo "<a href=\"?page=$eelmine\" class='btn btn-outline-secondary rounded-0 text-dark'>< Eelmised &nbsp</a>";
                }
                    echo "&nbsp";
                if ($leht < $lehti_kokku) { 
                echo "<a href=\"?page=$jargmine\" class='btn btn-outline-secondary rounded-0 text-dark'>Järgmised ></a>";
                } 
            echo "</div>";
        echo "</div>";
    echo "</div>";
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



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>