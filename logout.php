<?php

session_start();

if (isset($_POST['signout'])) {
    // Oturumu kapat
    setcookie("username", "0", time() - 60);
    session_unset();
    session_destroy();
  
    session_start();
    session_regenerate_id();

    // Yönlendirme yap
    header('Location: index.php');
    exit();
  }
  ?>
