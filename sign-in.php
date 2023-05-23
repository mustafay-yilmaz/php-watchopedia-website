<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.111.3">
  <title>Signin Template · Bootstrap v5.3</title>
  <link href="bootstrap.min.css" rel="stylesheet">
  <link href="sign-in.css" rel="stylesheet">
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
  <main class="form-signin w-100 m-auto text-center">

    <?php
    session_start();
    if ($_SESSION != NULL && !isset($_SESSION['username'])) {
      echo '<div class="alert alert-danger">' . $_SESSION['login_error'] . '</div>';
      unset($_SESSION['login_error']);
    }
    ?>

    <form action="login.php" method="POST">
      <a href="index.php">
        <img class="mb-4" src="logo2.png" alt="" width="300" height="150">
      </a>
      <h1 class="h3 mb-3 fw-normal">Giriş Yap</h1>

      <div class="form-floating">
        <input type="text" class="form-control" id="username" name=username required>
        <label for="floatingInput">Kullanıcı Adı</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="password" name=password placeholder="Password" required>
        <label for="floatingPassword">Parola</label>
      </div>
      <button class="w-100 btn btn-lg btn-primary" type="submit">Giriş Yap</button>
      <div class="mt-2 mb-2">Hesabın yok mu?</div>
      <button class="w-100 btn btn-lg btn-warning" type="button" onclick="openSignUpPage()">Kaydol</button>
    </form>

  </main>

</body>

</html>