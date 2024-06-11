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
        <?php
        $id = $_GET['id'];
        $paring = "SELECT nimi FROM kohvikud WHERE id = " . $id . " ";
        $valjund = mysqli_query($yhendus, $paring);
        $rida = mysqli_fetch_assoc($valjund);
        ?>
        <h1 class="display-6 mt-3 text-center">Hinda kohvikut ><?php echo $rida["nimi"]; ?></h1>
    </div>
    <?php
    if (isset($_GET["kommentaar"])) {
        $id = $_GET["id"];
        $nimi = $_GET["nimi"];
        $kommentaar = $_GET["kommentaar"];
        $hinne = $_GET["hinne"];

        $paring = "INSERT INTO hinnangud (nimi, kommentaar, kohvikud_id, hinne) VALUES ('" . $nimi . "', '" . $kommentaar . "', '" . $id . "', '" . $hinne . "')";
        var_dump($paring);
        $valjund = mysqli_query($yhendus, $paring);
        if ($valjund) {
            header("Location: form.php?id=" . $id . "");
        }
    }
    ?>
    <div class="container">
        <form>
            <div class="row mt-5 justify-content-center">
                <div class="col-3 mb-3">
                    <input type="text" class="form-control rounded-0" value="<?php echo $id; ?>" name="id" hidden>
                </div>
            </div>
            <div class="row mt-1 justify-content-center">
                <label for="nimi" class="col-sm-2 col-form-label">Nimi</label>
                <div class="col-3 mb-3">
                    <input type="text" class="form-control rounded-0" name="nimi" required>
                </div>
            </div>
            <div class="row mt-1 justify-content-center">
                <label for="kommentaar" class="col-sm-2 col-form-label">Kommentaar</label>
                <div class="col-3 mb-3">
                    <textarea class="form-control" name="kommentaar" required></textarea>
                </div>
            </div>
            <div class="row mt-1 justify-content-center">
                <label class="col-sm-1 col-form-label">Hinnang</label>
                <div class="col-4 mb-3">
                    <fieldset>
                        <div class="text-end">
                            <input type="radio" id="1" name="hinne" value="1" checked />
                            <label for="1">1</label>
                            <input type="radio" id="2" name="hinne" value="2" />
                            <label for="2">2</label>
                            <input type="radio" id="3" name="hinne" value="3" />
                            <label for="3">3</label>
                            <input type="radio" id="4" name="hinne" value="4" />
                            <label for="4">4</label>
                            <input type="radio" id="5" name="hinne" value="5" />
                            <label for="5">5</label>
                            <input type="radio" id="6" name="hinne" value="6" />
                            <label for="6">6</label>
                            <input type="radio" id="7" name="hinne" value="7" />
                            <label for="7">7</label>
                            <input type="radio" id="8" name="hinne" value="8" />
                            <label for="8">8</label>
                            <input type="radio" id="9" name="hinne" value="9" />
                            <label for="9">9</label>
                            <input type="radio" id="10" name="hinne" value="10" />
                            <label for="10">10</label>
                        </div>
                    </fieldset>
                </div>
            </div>
            <div class="row mt-1 justify-content-end">
                <div class="col-sm-1">
                    <a class="btn btn-link" href="index.php">
                        < Tagasi</a>
                </div>
                <div class="col-5">
                    <button type="submit" class="btn btn-outline-dark rounded-0">Saada!</button>
                </div>
            </div>
        </form>
        <h1 class="display-6 mt-5 text-center">Kasutajate tagasiside</h1>
        <div class="row">
            <?php
            $paring = "SELECT * FROM hinnangud WHERE kohvikud_id = " . $id . "";
            $valjund = mysqli_query($yhendus, $paring);
            while ($rida = mysqli_fetch_assoc($valjund)) {
                echo "<p><strong>" . $rida["nimi"] . " ( " . $rida["hinne"] . "/10)</strong></p><br>";
                echo "<p>" . $rida["kommentaar"] . "</p><br><br>";

            }
            ?>
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

    <script src="https://kit.fontawesome.com/56055df5c8.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>