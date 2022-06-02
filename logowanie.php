<?php
    include("./modules/header.php");

    $nazwa_pole = $_POST['nazwa'];
    $haslo_pole = $_POST['haslo'];

    $zapytanie1 = "SELECT * FROM uzytkownicy WHERE uzytkownicy.nazwa = '$nazwa_pole' AND uzytkownicy.haslo = '$haslo_pole'";
    $odp1 = mysqli_query($baza, $zapytanie1);

    if(mysqli_num_rows($odp1)==1) {
        $_SESSION['zalogowany'] = true;
        $_SESSION['nowasesja'] = "zalogowany";
        header("Location: sklep/");
    }
    else {
        header("Location: login.php?error=user_not_exists");
        // echo "<h1 color='color: #ffffff'>Nie znaleziono użytkownika</h1>";
    }
?>