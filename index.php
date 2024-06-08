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
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Otsi" aria-label="Search">
                </form>
            </div>
        </div>
    </div>
    <div class="container table-container">
        <table class="table table-bordered text-start  mt-1">
            <thead>
                <th scope="col">Nimi</th>
                <th scope="col">Asukoht</th>
                <th scope="col">Keskmine hinne</th>
                <th scope="col">Hinnatud (korda)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>sdad</td>
                    <td>ssss</td>
                    <td>3333</td>
                    <td>69</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-end">
                <button class="btn btn-primary" id="prevPage">
                    < Eelmised </button><a>&nbsp</a>
                        <button class="btn btn-primary" id="nextPage"> Järgmised > </button>
            </div>
        </div>
    </div>

    <footer class="fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5 class="text-end">Thorian</h5>
                </div>
            </div>
        </div>
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>