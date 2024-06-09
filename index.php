<!doctype html>
<html lang="et">

<head>
    <title>PHP ja MySQL Tieto KT</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" type="text/css" href="stylesk/styles.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2 rounded-0" type="search" placeholder="Otsi" aria-label="Search">
                </form>
            </div>
        </div>
    </div>
    <?php include('config.php'); ?>
    <?php 
    		$paring = 'SELECT * FROM kohvikud LIMIT 10';	
            $valjund = $yhendus->query($paring);
        
    echo "<div class='container table-container'>";
        echo "<table class='table table-bordered text-start rounded-0 mt-1'>";

            echo "<thead>";
                echo "<tr>";
                    echo "<th scope='col'>Nimi</th>";
                    echo "<th scope='col'>Asukoht</th>";
                    echo "<th scope='col'>Keskmine hinne</th>";
                    echo "<th scope='col'>Hinnatud (korda)</th>";
                echo "</tr>";
            echo "</thead>";

            if ($valjund->num_rows > 0) {
                // output data of each row
                while($rida = $valjund->fetch_assoc()) {
                    echo "<tbody>"; 
                        echo "<tr>";
                            echo "<td>" . $rida["nimi"] . "</td>";
                            echo "<td>" . $rida["asukoht"] . "</td>";
                            echo "<td>" . $rida["hinnang"] . "</td>";
                            echo "<td>" . $rida["korda"] . "</td>";
                        echo "</tr>";	
                    echo "</tbody>"; 		
                }
            } else {
                echo "0 results";
            }
            echo "</table>";
        echo "</div>";
    ?>
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-end">
                <button class="btn btn-outline-secondary rounded-0 text-dark" id="prevPage"> < Eelmised </button><a>&nbsp</a>
                <button class="btn btn-outline-secondary rounded-0 text-dark" id="nextPage"> Järgmised > </button>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3 mx-auto">
                    <h5 class="text-start">Thorian</h5>
                </div>
            </div>
        </div>
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>