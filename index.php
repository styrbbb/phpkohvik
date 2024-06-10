<!doctype html>
<html lang="et">

<head>
    <title>PHP ja MySQL Tieto KT</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" type="text/css" href="stylesk/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script>
        function redirectToPage(nimi) {
            window.location.href = 'form.php?nimi=' + encodeURIComponent(nimi);
        }
    </script>
</head>

<body>

    <div class="container">
        <h1 class="display-6 mt-3">Valige asutus mida hinnata</h1>
    </div>
    <div class="container search_container">
        <div class="row justify-content-end">
            <div class="col-3 text-right mt-5">
                <form class="form-inline my-2 my-lg-0" method="GET" action="">
                    <input class="form-control mr-sm-2 rounded-0" type="search" name="search" placeholder="Otsi" aria-label="Search">
                    <button class="btn btn-outline-secondary rounded-0 text-dark" type="submit">Otsi</button>
                </form>
            </div>
        </div>
    </div>
    <?php include('config.php'); ?>
    <?php 
        $perPage = 10; // Kohvikute arv lehel
        $currentPage = isset($_GET['page']) ? (int)$_GET['page'] : 1; //Kasutab ? ehk kolmeosaline operaator, mis on üks tingismuslike operaatorite liike. Seda põhimõteliselt kasutatakse, et lühendada kooditükki.
        $offset = ($currentPage - 1) * $perPage;
        
        $search = isset($_GET['search']) ? $_GET['search'] : '';

        $totalQuery = 'SELECT COUNT(*) as total FROM kohvikud';
        if ($search) {
            $totalQuery .= " WHERE nimi LIKE '%$search%'";
        }
        $totalResult = $yhendus->query($totalQuery);
        $totalKohvikud = $totalResult->fetch_assoc()['total'];
        $totalPages = ceil($totalKohvikud / $perPage);

        $paring = "SELECT * FROM kohvikud";
        if ($search) {
            $paring .= " WHERE nimi LIKE '%$search%'";
        }
        $paring .= " LIMIT $perPage OFFSET $offset"; 
        $valjund = $yhendus->query($paring);
        
    echo "<div class='container table-container'>";
        echo "<table class='table table-light table-hover table-bordered text-start rounded-0 mt-1'>";

            echo "<thead class='table-secondary'>";
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
                        echo "<tr onclick=\"redirectToPage('" . $rida["nimi"] . "')\">";
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
            <div class="col-12 d-flex justify-content-end mb-5">
                <?php if($currentPage > 1): ?>
                    <a href="?page=<?php echo $currentPage - 1; ?>" class="btn btn-outline-secondary rounded-0 text-dark"> < Eelmised </a>
                <?php endif; ?>
                <?php if($currentPage < $totalPages): ?>
                    <a href="?page=<?php echo $currentPage + 1; ?>" class="btn btn-outline-secondary rounded-0 text-dark"> Järgmised > </a>
                <?php endif; ?>
            </div>
        </div>
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