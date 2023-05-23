<html lang="en">
<?php
require_once("dbmovies.php");
?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Watchopedia</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="topmovies.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap.bundle.min.js"></script>
    <script>
        function openSignInPage() {
            window.location.href = "sign-in.php";
        }

        function openSignUpPage() {
            window.location.href = "sign-up.php";
        }
    </script>

</head>

<body>
    <?php include("header.php"); ?>
    
    <div class="event-schedule-area-two bg-color pad100">
    <div class="container">
        <!-- row end-->
        <div class="row py-3">
            <div class="col-lg-12">
            <div class="title-text py">
                        <h2>En İyi Filmler</h2>
                    </div>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade active show" id="home" role="tabpanel">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-center" scope="col">Sıra</th>
                                        <th scope="col">Film</th>
                                        <th scope="col">Bilgi</th>
                                        <th scope="col">Puan</th>
                                        <th class="text-center" scope="col">Durum</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php while($data=mysqli_fetch_array($result))
{
echo "<tr class='inner-box'>
        <th scope='row'>
            <div class='event-date'>
                <span>" . $data['rank'] . "</span>
            </div>
        </th>
        <td> 
            <div class='event-img'>
                <img src='" . $data['img'] . "' alt='' />
            </div>
        </td>
        <td>
            <div class='event-wrap'>
                <h3>" . $data['name'] . "</h3>
                <div class='meta'>
                    <div class='time'>
                        <span>" . $data['date'] . "</span>
                    </div>
                </div>
            </div>
        </td>
        <td>
            <div class='r-no'>
                <span>" . $data['score'] . "</span>
            </div>
        </td>
        <td>
        <div class='dropdown show'>
        <a class='btn btn-secondary dropdown-toggle' href='#' role='button' id='dropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
          Listeye Ekle
        </a>
      
        <div class='dropdown-menu' aria-labelledby='dropdownMenuLink'>
          <a class='dropdown-item' href='#'>Action</a>
          <a class='dropdown-item' href='#'>Another action</a>
          <a class='dropdown-item' href='#'>Something else here</a>
        </div>
      </div>
      </div>
      
        </td>
    </tr>";
}?>

                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /col end-->
        </div>
        <!-- /row end-->
    </div>
</div>
</body>

</html>