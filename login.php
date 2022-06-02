<?php
    include("./modules/header.php");
    if(@$_SESSION['zalogowany']) {
        header("location: sklep/");
    }
?>
<title>Strona logowania</title>

<div class="center">

    <h1>LOGOWANIE</h1>
    <div id="panel">
        <?php
            if(@$_REQUEST['error']=="user_not_exists"){
                ?>
                    <div class="error">Podany użytkownik nie istnieje</div>
                <?php
            }
        ?>
        <form action="logowanie.php" method="POST">
            <label for="nazwa">Nazwa użytkownika:</label>
            <input type="text" id="nazwa" name="nazwa">
            <label for="haslo">Hasło:</label>
            <input type="password" id="haslo" name="haslo">
            <div id="lower">
                <a href="rejestracja.php"><label for="rejestracja">Zarejestruj się!</label></a>
                <input type="submit" value="Zaloguj">
            </div>
        </form>
    </div>
</div>


</body>

</html>