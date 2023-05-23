<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Watchopedia</title>
  <link href="bootstrap.min.css" rel="stylesheet">
  <link href="sign-up.css" rel="stylesheet">
  <script>
    function openSignInPage() {
      window.location.href = "sign-in.php";
    }

    function openSignUpPage() {
      window.location.href = "sign-up.php";
    }
  </script>
</head>

<body class="text-center">

  <main class="form-signin w-100 m-auto">

    <?php
    session_start();
    if ($_SESSION != NULL && isset($_SESSION['register_succes'])) {
      echo '<div class="alert alert-success" role="alert">' . $_SESSION['register_succes'] . '</div>';
      unset($_SESSION['register_succes']);
    } else if ($_SESSION != NULL && isset($_SESSION['register_danger'])) {
      echo '<div class="alert alert-danger" role="alert">' . $_SESSION['register_error'] . '</div>';
      unset($_SESSION['register_error']);
    } else if ($_SESSION != NULL && isset($_SESSION['name'])) {
      echo '<div class="alert alert-danger" role="alert">' . $_SESSION['name'] . '</div>';
      unset($_SESSION['name']);
    } else if ($_SESSION != NULL && isset($_SESSION['mail'])) {
      echo '<div class="alert alert-danger" role="alert">' . $_SESSION['mail'] . '</div>';
      unset($_SESSION['mail']);
    }
    ?>

    <form action="register.php" method="POST">
      <a href="index.php">
        <img class="mb-2" src="logo2.png" alt="" width="390" height="195">
      </a>
      <h1 class="h3 mb-3 fw-normal">Lütfen Kaydolun</h1>
      <div class="row">
        <div class="col">
          <input type="text" class="form-control" placeholder="İsim" name="firstname" aria-label="First name" required>
        </div>
        <div class="col">
          <input type="text" class="form-control" placeholder="Soyisim" name="lastname" aria-label="Last name" required>
        </div>
      </div>
      <div class="form-floating">
        <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
        <label for="email">E-Posta</label>
      </div>
      <div class="form-floating">
        <input type="text" class="form-control" id="username" name="username" required>
        <label for="username">Kullanıcı Adı</label>
      </div>
      <div class="form-floating">
        <input type="date" class="form-control" name="birthdate" id="birtdate" required>
        <label for="birthdate">Doğum Tarihi</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="password" name="password" placeholder="Parola" required>
        <label for="password">Parola</label>
      </div>
      <button class="w-100 btn btn-lg btn-primary" type="submit">Kaydol</button>
      <div class="mt-2 mb-2">Zaten hesabın var mı?</div>
      <button class="w-100 btn btn-lg btn-warning" type="button" onclick="openSignInPage()">Giriş Yap</button>
    </form>
  </main>
</body>

</html>