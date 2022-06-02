<?php 
    include("./modules/header.php");
?>

<title>Dodanie</title>

<?php

    if(!@$_SESSION['zalogowany']) {
        if(trim($_POST['nazwa'])=='' || trim($_POST['haslo'])=='' || trim($_POST['email'])=='') {
            header("Location: rejestracja.php?error=empty_fields");
        }
        @$nazwa = mysqli_real_escape_string($baza, $_POST['nazwa']);
        @$haslo = mysqli_real_escape_string($baza, $_POST['haslo']);
        @$email = mysqli_real_escape_string($baza, $_POST['email']);

        if(mysqli_num_rows(mysqli_query($baza, "SELECT * FROM uzytkownicy WHERE nazwa = '$nazwa'")) >= 1) {
            // o nie! taki użytkownik już istnieje!!!!1 co teraz?? zginiemy
            header("Location: rejestracja.php?error=username_in_use");
        }
        else if(mysqli_num_rows(mysqli_query($baza, "SELECT * FROM uzytkownicy WHERE email = '$email'")) >= 1) {
            // a niech to! adres email też jest zajety!!!!1 teraz to zdecydowanie zginiemy
            header("Location: rejestracja.php?error=email_in_use");
        }
        else {
            // całe szczęście nie znaleziono jeszcze użytkownika o podanej nazwie i haśle (chyba)
            $zapytanie = "INSERT INTO uzytkownicy(nazwa, haslo, email) VALUES('$nazwa', '$haslo', '$email')";
            $qr = mysqli_query($baza, $zapytanie);
            if($qr) {
                echo "<h1>Udało ci się utworzyć konto!</h1>";
                echo "<h2><a href='login.php'>Wróć do strony logowania!</a></h2>";  
            }
            else {                
                echo "<h1>Wystąpił błąd!</h1>";
                echo "<h2><a href='rejestracja.php'>Wróć do strony rejestracji!</a></h2>";  
            }
              
        }
    }
    else{
        // a to na wszelki wypadek, gdyby ktoś był już zalogowany
        header("Location: sklep/");
    }

?>

</body>
</html>